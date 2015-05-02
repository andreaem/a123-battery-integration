EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MITEVT_interface
LIBS:MITEVT_mcontrollers
LIBS:MITEVT_OPTO
LIBS:MITEVT_REG
LIBS:MITEVT_ANALOG
LIBS:BCM-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9400 5100 700  700 
U 553C00A1
F0 "Power" 60
F1 "power.sch" 60
F2 "15V" I L 9400 5450 60 
F3 "5V" I R 10100 5250 60 
F4 "3.3V" I R 10100 5550 60 
$EndSheet
$Sheet
S 4500 1750 1850 900 
U 553C01F1
F0 "microController" 60
F1 "microController.sch" 60
F2 "CAN1_RX" I R 6350 1950 60 
F3 "CAN1_TX" I R 6350 2050 60 
F4 "CAN2_H" I R 6350 2250 60 
F5 "CAN2_L" I R 6350 2350 60 
F6 "KEYSWITCH_IN" I L 4500 1900 60 
F7 "CHARGESWITCH_IN" I L 4500 2000 60 
$EndSheet
Wire Wire Line
	9400 5450 9150 5450
Wire Wire Line
	9150 5450 9150 4950
$Comp
L +12V #PWR01
U 1 1 553C033C
P 9150 4950
F 0 "#PWR01" H 9150 4900 20  0001 C CNN
F 1 "+12V" H 9150 5050 30  0000 C CNN
F 2 "" H 9150 4950 60  0000 C CNN
F 3 "" H 9150 4950 60  0000 C CNN
	1    9150 4950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 553C03F9
P 10250 5100
F 0 "#PWR02" H 10250 5190 20  0001 C CNN
F 1 "+5V" H 10250 5190 30  0000 C CNN
F 2 "" H 10250 5100 60  0000 C CNN
F 3 "" H 10250 5100 60  0000 C CNN
	1    10250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5250 10250 5250
Wire Wire Line
	10250 5250 10250 5100
$Comp
L +3.3V #PWR03
U 1 1 553C043E
P 10250 5450
F 0 "#PWR03" H 10250 5410 30  0001 C CNN
F 1 "+3.3V" H 10250 5560 30  0000 C CNN
F 2 "" H 10250 5450 60  0000 C CNN
F 3 "" H 10250 5450 60  0000 C CNN
	1    10250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5550 10250 5550
Wire Wire Line
	10250 5550 10250 5450
$Sheet
S 6850 1800 1300 800 
U 553C04EB
F0 "Can Isolation" 60
F1 "CAN_Isolator.sch" 60
F2 "CAN1_RX" I L 6850 1950 60 
F3 "CAN1_TX" I L 6850 2050 60 
F4 "CAN2_H" I L 6850 2250 60 
F5 "CAN2_L" I L 6850 2350 60 
F6 "CAN1_H_I" I R 8150 1950 60 
F7 "CAN1_L_I" I R 8150 2050 60 
F8 "CAN2_H_I" I R 8150 2250 60 
F9 "CAN2_L_I" I R 8150 2350 60 
$EndSheet
$Sheet
S 2800 3000 1150 1000
U 553C0E55
F0 "High Voltage Sense" 60
F1 "HV_sense.sch" 60
F2 "HV+" I L 2800 3250 60 
F3 "HV-" I L 2800 3650 60 
F4 "HVSENSE_OUT" O R 3950 3500 60 
$EndSheet
$Sheet
S 1700 1750 1000 1050
U 553C18E8
F0 "Input Connectors" 60
F1 "inutConnectors.sch" 60
$EndSheet
$Sheet
S 8950 1800 1100 850 
U 553C1969
F0 "CAN Connectors" 60
F1 "canConnectors.sch" 60
F2 "CAN1_H_I" I L 8950 1950 60 
F3 "CAN1_L_I" I L 8950 2050 60 
F4 "CAN2_H_L" I L 8950 2250 60 
F5 "CAN2_L_I" I L 8950 2350 60 
$EndSheet
Wire Wire Line
	8150 1950 8950 1950
Wire Wire Line
	8950 2050 8150 2050
Wire Wire Line
	8150 2250 8950 2250
Wire Wire Line
	8950 2350 8150 2350
Wire Wire Line
	6350 1950 6850 1950
Wire Wire Line
	6850 2050 6350 2050
Wire Wire Line
	6350 2250 6850 2250
Wire Wire Line
	6850 2350 6350 2350
Wire Wire Line
	3950 3500 4150 3500
Wire Wire Line
	4150 3500 4150 2400
Wire Wire Line
	4150 2400 4500 2400
Text HLabel 8950 2450 2    60   Output ~ 0
CAN_GND_I
Text HLabel 8950 1850 2    60   Output ~ 0
CAN_5V_I
Wire Wire Line
	8950 1850 8150 1850
Wire Wire Line
	8950 2450 8150 2450
Text HLabel 8150 2450 0    60   Output ~ 0
CAN_GND_I
Text HLabel 8150 1850 0    60   Output ~ 0
CAN_5V_I
$EndSCHEMATC
