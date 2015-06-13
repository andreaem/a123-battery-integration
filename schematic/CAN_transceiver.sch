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
LIBS:MITEVT_power
LIBS:BCM-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2850 5200 0    60   Input ~ 0
CAN2_TX
Text HLabel 2850 5100 0    60   Output ~ 0
CAN2_RX
Text HLabel 5150 5200 2    60   BiDi ~ 0
CAN2_L_I
Text HLabel 5150 5400 2    60   BiDi ~ 0
CAN2_H_I
Wire Wire Line
	4550 5200 5150 5200
Wire Wire Line
	4550 5400 5150 5400
Wire Wire Line
	4050 5700 4050 5950
Wire Wire Line
	2850 5100 3550 5100
Wire Wire Line
	3550 5200 2850 5200
Text HLabel 2800 2550 0    60   Input ~ 0
CAN1_TX
Text HLabel 2800 2450 0    60   Output ~ 0
CAN1_RX
Text HLabel 5100 2550 2    60   BiDi ~ 0
CAN1_L_I
Text HLabel 5100 2750 2    60   BiDi ~ 0
CAN1_H_I
$Comp
L +5V #PWR013
U 1 1 55455030
P 4050 4350
F 0 "#PWR013" H 4050 4200 50  0001 C CNN
F 1 "+5V" H 4050 4490 50  0000 C CNN
F 2 "" H 4050 4350 60  0000 C CNN
F 3 "" H 4050 4350 60  0000 C CNN
	1    4050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4350 4050 4900
Wire Wire Line
	4550 2550 5100 2550
Wire Wire Line
	4550 2750 5100 2750
Wire Wire Line
	4050 3050 4050 3300
Wire Wire Line
	2800 2450 3550 2450
Wire Wire Line
	3550 2550 2800 2550
$Comp
L C_Small C302
U 1 1 556A4BBA
P 3500 4550
F 0 "C302" H 3510 4620 50  0000 L CNN
F 1 "0.1uF" H 3510 4470 50  0000 L CNN
F 2 "" H 3500 4550 60  0000 C CNN
F 3 "" H 3500 4550 60  0000 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4450 3500 4400
Wire Wire Line
	3500 4400 4050 4400
Connection ~ 4050 4400
Wire Wire Line
	3500 4650 3500 4750
$Comp
L GND #PWR014
U 1 1 556A4DEE
P 3500 4750
F 0 "#PWR014" H 3500 4500 50  0001 C CNN
F 1 "GND" H 3500 4600 50  0000 C CNN
F 2 "" H 3500 4750 60  0000 C CNN
F 3 "" H 3500 4750 60  0000 C CNN
	1    3500 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 556A4F66
P 4050 1700
F 0 "#PWR015" H 4050 1550 50  0001 C CNN
F 1 "+5V" H 4050 1840 50  0000 C CNN
F 2 "" H 4050 1700 60  0000 C CNN
F 3 "" H 4050 1700 60  0000 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1700 4050 2250
$Comp
L C_Small C301
U 1 1 556A4F72
P 3500 1900
F 0 "C301" H 3510 1970 50  0000 L CNN
F 1 "0.1uF" H 3510 1820 50  0000 L CNN
F 2 "" H 3500 1900 60  0000 C CNN
F 3 "" H 3500 1900 60  0000 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1800 3500 1750
Wire Wire Line
	3500 1750 4050 1750
Connection ~ 4050 1750
Wire Wire Line
	3500 2000 3500 2100
$Comp
L GND #PWR016
U 1 1 556A4F86
P 3500 2100
F 0 "#PWR016" H 3500 1850 50  0001 C CNN
F 1 "GND" H 3500 1950 50  0000 C CNN
F 2 "" H 3500 2100 60  0000 C CNN
F 3 "" H 3500 2100 60  0000 C CNN
	1    3500 2100
	1    0    0    -1  
$EndComp
$Comp
L MCP2551-I/SN U301
U 1 1 557A952D
P 4050 2650
F 0 "U301" H 3650 3000 50  0000 L CNN
F 1 "MCP2551-I/SN" H 4150 3000 50  0000 L CNN
F 2 "SO-8" H 4050 2650 50  0000 C CIN
F 3 "" H 4050 2650 60  0000 C CNN
	1    4050 2650
	1    0    0    -1  
$EndComp
$Comp
L MCP2551-I/SN U302
U 1 1 557A9677
P 4050 5300
F 0 "U302" H 3650 5650 50  0000 L CNN
F 1 "MCP2551-I/SN" H 4150 5650 50  0000 L CNN
F 2 "SO-8" H 4050 5300 50  0000 C CIN
F 3 "" H 4050 5300 60  0000 C CNN
	1    4050 5300
	1    0    0    -1  
$EndComp
NoConn ~ 3550 5400
Wire Wire Line
	3550 5500 3100 5500
Wire Wire Line
	3100 5500 3100 5600
$Comp
L R_Small R302
U 1 1 557A97C8
P 3100 5700
F 0 "R302" H 3130 5720 50  0000 L CNN
F 1 "33k" H 3130 5660 50  0000 L CNN
F 2 "" H 3100 5700 60  0000 C CNN
F 3 "" H 3100 5700 60  0000 C CNN
	1    3100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5800 3100 5900
Wire Wire Line
	3100 5900 4050 5900
Connection ~ 4050 5900
$Comp
L R_Small R301
U 1 1 557ACB26
P 3100 3050
F 0 "R301" H 3130 3070 50  0000 L CNN
F 1 "33k" H 3130 3010 50  0000 L CNN
F 2 "" H 3100 3050 60  0000 C CNN
F 3 "" H 3100 3050 60  0000 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2850 3100 2850
Wire Wire Line
	3100 2850 3100 2950
Wire Wire Line
	3100 3150 3100 3250
Wire Wire Line
	3100 3250 4050 3250
Connection ~ 4050 3250
$Comp
L GND #PWR017
U 1 1 557ACBBC
P 4050 5950
F 0 "#PWR017" H 4050 5700 50  0001 C CNN
F 1 "GND" H 4050 5800 50  0000 C CNN
F 2 "" H 4050 5950 60  0000 C CNN
F 3 "" H 4050 5950 60  0000 C CNN
	1    4050 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 557ACC00
P 4050 3300
F 0 "#PWR018" H 4050 3050 50  0001 C CNN
F 1 "GND" H 4050 3150 50  0000 C CNN
F 2 "" H 4050 3300 60  0000 C CNN
F 3 "" H 4050 3300 60  0000 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
Text Label 2900 2450 0    60   ~ 0
CAN1_RX
Text Label 2900 2550 0    60   ~ 0
CAN1_TX
Text Label 3100 2850 0    60   ~ 0
CAN1_RS
Text Label 4550 2550 0    60   ~ 0
CAN1_L_I
Text Label 4550 2750 0    60   ~ 0
CAN1_H_I
Text Label 3100 5500 0    60   ~ 0
CAN2_RS
Text Label 4550 5200 0    60   ~ 0
CAN2_L_I
Text Label 4550 5400 0    60   ~ 0
CAN2_H_I
Text Label 2950 5100 0    60   ~ 0
CAN2_RX
Text Label 2950 5200 0    60   ~ 0
CAN2_TX
NoConn ~ 3550 2750
$EndSCHEMATC
