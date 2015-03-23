#include "board.h"
#include "util.h"
#include "mcp2515.h"
#include "brusa.h"
#include "a123mbb.h"

#define UART_BAUD 9600
#define SPI_BAUD  500000
#define CCAN_BAUD 500000

#define MCP_BAUD_KHZ  500
#define MCP_INP_CLK_MHZ 11
#define MCP_SJW 1
#define MCP_CS_GPIO 2
#define MCP_CS_PIN 2

#define MODULE_COUNT 1
#define CELL_SERIES 22
#define CELL_PARALLEL 3
#define CELL_COUNT MODULE_COUNT * CELL_SERIES
#define NODES_PER_MODULE 2
#define NODE_COUNT MODULE_COUNT * NODES_PER_MODULE

#define MAX_CELL_V 	mVolts2Num(4000) 		// Maximum Allowed Cell Voltage of 4.0V
#define MIN_CELL_V  mVolts2Num(2700) 		// Minimum Allowed Cell Voltage of 2.7V

#define ERROR_CONTACTOR 5

// ------------------------------------------------
// Structs and Enum

typedef enum {IDLE, CHARGING, DRAINING} MODE_T;
typedef enum {REQ_IDLE, REQ_CHARGING, REQ_NONE} MODE_REQUEST_T;
typedef enum {CHRG_BALANCING, CHRG_CHARGING, CHRG_NONE} CHARGING_MODE_T;

typedef struct {
	uint32_t pack_v_min;
	uint8_t  pack_node_min;
	uint32_t pack_v_max;
	uint8_t  pack_node_max;
	uint32_t pack_v_avg;
	uint32_t messagesReceived;
} PACK_STATE;

// ------------------------------------------------
// Global Variables

volatile uint32_t msTicks; // Milliseconds 

static char str[100]; // For use with String Manipulation
static char int_str[100]; // For use within interrupts

static CCAN_MSG_OBJ_T mcp_msg_obj;
static NLG5_CTL_T brusa_control;
static NLG5_STATUS_T brusa_status;
static NLG5_ACT_I_T brusa_actual_1;
static NLG5_ACT_II_T brusa_actual_2;
static NLG5_TEMP_T brusa_temp;

// On-Chip CCAN
static CCAN_MSG_OBJ_T can_msg_obj;
static RINGBUFF_T rx_buffer;
static CCAN_MSG_OBJ_T _rx_buffer[8];

static MBB_CMD_T mbb_cmd;
static MBB_STD_T mbb_std;

static MODE_T mode = IDLE;
static MODE_REQUEST_T requested_mode = REQ_NONE;
static CHARGING_MODE_T charging_mode = CHRG_NONE;

static PACK_STATE pack_state;

// ------------------------------------------------
// IRQs

void SysTick_Handler(void) {
	msTicks++;
}

void TIMER32_0_IRQHandler(void) {
	if (Chip_TIMER_MatchPending(LPC_TIMER32_0, 0)) {
		Chip_TIMER_ClearMatch(LPC_TIMER32_0, 0);

		Brusa_MakeCTL(&brusa_control, &mcp_msg_obj);
		MCP2515_LoadBuffer(0, &mcp_msg_obj);
		MCP2515_SendBuffer(0);
	}
}

// Used for sending BCM_CMD and checking for available data
void TIMER32_1_IRQHandler(void) {

	// Update Battery Status
	if (!RingBuffer_IsEmpty(&rx_buffer)) {
		CCAN_MSG_OBJ_T temp_msg;
		RingBuffer_Pop(&rx_buffer, &temp_msg);
		uint8_t mod_id = temp_msg.mode_id * 0xFF;
		if ((temp_msg.mode_id & MBB_STD_MASK) == MBB_STD) {
			MBB_DecodeStd(&mbb_std, &temp_msg);
			if (mbb_std.mod_v_min < pack_state.pack_v_min) {
				pack_state.pack_v_min = mbb_std.mod_v_min;
				pack_state.pack_node_min = mod_id;
			}

			if (mbb_std.mod_v_max > pack_state.pack_v_max) {
				pack_state.pack_v_max = mbb_std.mod_v_max;
				pack_state.pack_node_max = mod_id;
			}
			pack_state.messagesReceived++;
			pack_state.pack_v_avg = (pack_state.pack_v_avg * (pack_state.messagesReceived - 1) + mbb_std.mod_v_avg) / pack_state.messagesReceived;
		}
	} else {
		// Send BCM_CMD
		mbb_cmd.request_type = 0;
		mbb_cmd.request_id = 5; 		// Should I change this?
		mbb_cmd.balance_target = BCM_BALANCE_OFF;

		can_msg_obj.msgobj = 2;
		MBB_MakeCMD(&mbb_cmd, &can_msg_obj);
		LPC_CCAN_API->can_transmit(&can_msg_obj);	

	}
}

// ------------------------------------------------
// CAN Callbacks

/*	CAN receive callback */
/*	Function is executed by the Callback handler after
    a CAN message has been received */
void CAN_rx(uint8_t msg_obj_num) {
	// LED_On();
	/* Determine which CAN message has been received */
	can_msg_obj.msgobj = msg_obj_num;
	/* Now load up the msg_obj structure with the CAN message */
	LPC_CCAN_API->can_receive(&can_msg_obj);
	if (msg_obj_num == 1) {
		RingBuffer_Insert(&rx_buffer, &can_msg_obj);
	}
}

/*	CAN transmit callback */
/*	Function is executed by the Callback handler after
    a CAN message has been transmitted */
void CAN_tx(uint8_t msg_obj_num) {
	msg_obj_num++;
}

/*	CAN error callback */
/*	Function is executed by the Callback handler after
    an error has occured on the CAN bus */
void CAN_error(uint32_t error_info) {
	DEBUG_Print("Error: ");
	itoa(error_info, int_str, 10);
	DEBUG_Print(int_str);
	DEBUG_Print("\r\n");
}

// ------------------------------------------------
// Helper functions that don't belong in util because systick and printing

void _delay_ms(uint32_t ms) {
	uint32_t currTicks = msTicks;
	while(msTicks - currTicks < ms) {

	}
}

void _error(uint8_t errorNo, bool flashLED) {
	DEBUG_Print("Error(");
	itoa(errorNo, str, 10);
	DEBUG_Print(str);
	DEBUG_Print(")\r\n");

	if (flashLED) {
		uint8_t i;
		for (i = 0; i < errorNo; i++) {
			Board_LED_Off();
			_delay_ms(800);
			Board_LED_On();
			_delay_ms(800);
		}
	}

	Board_LED_Off();
}

// ------------------------------------------------
// Init Functions

void Init_Core(void) {
	SystemCoreClockUpdate();

	msTicks = 0; 

	// ------------------------------------------------
	// Systick Config
	if (SysTick_Config (SystemCoreClock / 1000)) {
		//Error
		while(1);
	}
}

void Init_Board(void) {
	// ------------------------------------------------
	// Board Periph Init
	Board_LED_Init();
	Board_LED_On();
	Board_Switch_Init();
	Board_Contactors_Init();

	// ------------------------------------------------
	// Communication Init
	Board_UART_Init(UART_BAUD);
	Board_SPI_Init(SPI_BAUD);
	Board_CCAN_Init(CCAN_BAUD, CAN_rx, CAN_tx, CAN_error);
}

void Init_Globals(void) {
	brusa_control.enable = 0;
	brusa_control.clear_error = 0;
	brusa_control.ventilation_request = 0;
	brusa_control.max_mains_current = 0;
	brusa_control.output_voltage = 0;
	brusa_control.output_current = 0;

	brusa_status.mains_type = 0;
	brusa_actual_1.mains_voltage = 0;

	mode = IDLE;
	requested_mode = REQ_NONE;

	pack_state.pack_v_min = 0xFFFFFFFF;
	pack_state.pack_node_min = 0;
	pack_state.pack_v_max = 0;
	pack_state.pack_node_max = 0;
	pack_state.pack_v_avg = 0;
	pack_state.messagesReceived = 0;
}

void Init_CAN(void) {
	// ------------------------------------------------
	// MCP2515 Init
	MCP2515_Init(MCP_CS_GPIO, MCP_CS_PIN);
	uint8_t i = MCP2515_SetBitRate(MCP_BAUD_KHZ, MCP_INP_CLK_MHZ, MCP_SJW);
	itoa(i, str, 10);
	if (i) {
		DEBUG_Print("Baud Error: ");
		DEBUG_Print(str);
		DEBUG_Print("\r\n");
	}

	MCP2515_BitModify(RXB0CTRL, RXM_MASK, RXM_OFF); //Turn off Mask on RXB0

	// ------------------------------------------------
	// On-Chip CCAN Init
	RingBuffer_Init(&rx_buffer, _rx_buffer, sizeof(CCAN_MSG_OBJ_T), 8);
	RingBuffer_Flush(&rx_buffer);

	// Accept all messages on msgobj 1
	can_msg_obj.msgobj = 1;
	can_msg_obj.mode_id = 0x000;
	can_msg_obj.mask = 0x000;
	LPC_CCAN_API->config_rxmsgobj(&can_msg_obj);
}

void Init_Timers(void) {
	// ------------------------------------------------
	// Timer 32_0 Init
	Chip_TIMER_Init(LPC_TIMER32_0);
	Chip_TIMER_Reset(LPC_TIMER32_0);
	Chip_TIMER_MatchEnableInt(LPC_TIMER32_0, 0);
	Chip_TIMER_SetMatch(LPC_TIMER32_0, 0, SystemCoreClock / 1);
	Chip_TIMER_ResetOnMatchEnable(LPC_TIMER32_0, 0);

	// Chip_TIMER_Enable(LPC_TIMER32_0);

	/* Enable timer interrupt */
	NVIC_ClearPendingIRQ(TIMER_32_0_IRQn);
	NVIC_EnableIRQ(TIMER_32_0_IRQn);

	// ------------------------------------------------
	// Timer 32_0 Init
	Chip_TIMER_Init(LPC_TIMER32_1);
	Chip_TIMER_Reset(LPC_TIMER32_1);
	Chip_TIMER_MatchEnableInt(LPC_TIMER32_1, 0);
	Chip_TIMER_SetMatch(LPC_TIMER32_1, 0, SystemCoreClock / 1); 	// 1Hz
	Chip_TIMER_ResetOnMatchEnable(LPC_TIMER32_1, 0);

	/* Enable timer_32_1 interrupt */
	NVIC_ClearPendingIRQ(TIMER_32_1_IRQn);
	NVIC_EnableIRQ(TIMER_32_1_IRQn);

	Chip_TIMER_Enable(LPC_TIMER32_1);
}

// ------------------------------------------------
// Main Program

int main(void)
{

	Init_Core();
	Init_Board();
	Init_Globals();
	Init_CAN();
	Init_Timers();

	// ------------------------------------------------
	// Begin


	DEBUG_Print("Started Up\r\n");

	// mcp_msg_obj.mode_id = 0x600;
	// mcp_msg_obj.dlc = 6;
	// mcp_msg_obj.data[0] = 0x01;
	// mcp_msg_obj.data[1] = 0x02;
	// mcp_msg_obj.data[2] = 0x03;
	// mcp_msg_obj.data[3] = 0x04;
	// mcp_msg_obj.data[4] = 0x05;
	// mcp_msg_obj.data[5] = 0x06;

	// MCP2515_LoadBuffer(0, &mcp_msg_obj);

	while(1) {

		if (!Board_Switch_Read()) {
			if (mode != CHARGING) {
				requested_mode = REQ_CHARGING;
			}
		} else {
			if (mode == CHARGING) {
				requested_mode = REQ_IDLE;
			}
		}

		if (requested_mode != REQ_NONE) {
			if (requested_mode == REQ_CHARGING) {
				// Is able to charge?
				if (mode == IDLE) {
					// Begin charging
					// Close Contacters
					if (!Board_Contactors_On()) {
						// FUCK We can't turn the contactors on
						DEBUG_Print("Unable to open contactors. Returning to IDLE Mode.\r\n");
					}

					// Set Mode to Charging
					mode = CHARGING;
					charging_mode = CHRG_NONE;
					DEBUG_Print("Charging\r\n");
					requested_mode = REQ_NONE;

				}
			} else if (requested_mode == REQ_IDLE) {
				// Is able to go to idle?

				// Open contactors
				if (!Board_Contactors_Off()) {
					DEBUG_Print("Unable to open contactors. You're officially fucked\r\n");
					// FUCK We can't turn the contactors OFF
				}
				// Go to idle
				mode = IDLE;
				charging_mode = CHRG_NONE;
				DEBUG_Print("Idle\r\n");
				requested_mode = REQ_NONE;
			}
		}

		if (mode == IDLE) {
			// Do nothing?
		} else if (mode == CHARGING) {

			// Do checks
			if (pack_state.pack_v_min < MIN_CELL_V) {
				// We're fucked. Crap out and yell at the battery owners

			}

			if (pack_state.pack_v_max > MAX_CELL_V) {
				// Stop charging and balance down to pack_state.pack_v_min

			}

			// Tell Brusa to do appropriate thing

		}

		// uint8_t count;
		// if ((count = Chip_UART_Read(LPC_USART, Rx_Buf, 8)) != 0) {
		// 	DEBUG_Write(Rx_Buf, count);
		// 	DEBUG_Print("\r\n");
		// 	switch (Rx_Buf[0]) {
		// 		case 's':
		// 			DEBUG_Print("Status Count: ");
		// 			itoa(brusa_status_count, str, 10);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print(" Act_1 Count: ");
		// 			itoa(brusa_actual_1_count, str, 10);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print(" Act_2 Count: ");
		// 			itoa(brusa_actual_2_count, str, 10);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print("\r\n");
					
		// 			DEBUG_Print("Actual Mains Voltage: 0x");
		// 			itoa(brusa_actual_1.mains_voltage, str, 16);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print("\r\n");

		// 			DEBUG_Print("Mains type: ");
		// 			itoa(brusa_status.mains_type, str, 10);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print("\r\n");

		// 			DEBUG_Print("Temp: 0x");
		// 			itoa(brusa_temp.power_temp, str, 16);
		// 			DEBUG_Print(str);
		// 			DEBUG_Print("\r\n");
		// 			break;

		// 	}
		// }

		// if (requested_mode != REQ_NONE) {
		// 	if (requested_mode == REQ_IDLE) {
		// 		mode = IDLE;
		// 		Chip_TIMER_Disable(LPC_TIMER32_0);
		// 	} else if (requested_mode == REQ_CHARGING) {
		// 		mode = CHARGING;
		// 		Chip_TIMER_SetMatch(LPC_TIMER32_0, 0, SystemCoreClock / 10); // 100ms
		// 		Chip_TIMER_Enable(LPC_TIMER32_0);
		// 	}

		// 	requested_mode = REQ_NONE;
		// }

		// uint8_t tmp = 0;
		// MCP2515_Read(CANINTF, &tmp, 1);
		// if (tmp & 1) { //Receive buffer 0 full
		// 	// DEBUG_Print("Received Message\r\n");
		// 	MCP2515_ReadBuffer(&mcp_msg_obj, 0);
		// 	if (mcp_msg_obj.mode_id == NLG5_STATUS) {
		// 		Brusa_DecodeStatus(&brusa_status, &mcp_msg_obj);
		// 		brusa_status_count++;
		// 	} else if (mcp_msg_obj.mode_id == NLG5_ACT_I) {
		// 		Brusa_DecodeActI(&brusa_actual_1, &mcp_msg_obj);
		// 		brusa_actual_1_count++;
		// 	} else if (mcp_msg_obj.mode_id == NLG5_ACT_II) {
		// 		Brusa_DecodeActII(&brusa_actual_2, &mcp_msg_obj);
		// 		brusa_actual_2_count++;
		// 	} else if (mcp_msg_obj.mode_id == NLG5_TEMP) {
		// 		Brusa_DecodeTemp(&brusa_temp, &mcp_msg_obj);
		// 		brusa_temp_count++;
		// 	} else {
		// 		DEBUG_Print("Received unknown message of ID: 0x");
		// 		itoa(mcp_msg_obj.mode_id, str, 16);
		// 		DEBUG_Print(str);
		// 		DEBUG_Print("\r\n");
		// 	}
		// }


	}

	return 0;
}

