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
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P601
U 1 1 556AD1B6
P 3700 2000
F 0 "P601" H 3650 2250 50  0000 C CNN
F 1 "BRUSA_CANCON" V 3800 2000 50  0000 C CNN
F 2 "" H 3700 2000 60  0000 C CNN
F 3 "" H 3700 2000 60  0000 C CNN
	1    3700 2000
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P602
U 1 1 556AD1EA
P 3700 3150
F 0 "P602" H 3650 3400 50  0000 C CNN
F 1 "A123_CANCON" V 3800 3150 50  0000 C CNN
F 2 "" H 3700 3150 60  0000 C CNN
F 3 "" H 3700 3150 60  0000 C CNN
	1    3700 3150
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P604
U 1 1 55735835
P 3700 4400
F 0 "P604" H 3650 4550 50  0000 C CNN
F 1 "CON-" V 3800 4400 50  0000 C CNN
F 2 "" H 3700 4400 60  0000 C CNN
F 3 "" H 3700 4400 60  0000 C CNN
	1    3700 4400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P603
U 1 1 55735868
P 3700 3800
F 0 "P603" H 3650 3950 50  0000 C CNN
F 1 "CON+" V 3800 3800 50  0000 C CNN
F 2 "" H 3700 3800 60  0000 C CNN
F 3 "" H 3700 3800 60  0000 C CNN
	1    3700 3800
	-1   0    0    -1  
$EndComp
Text HLabel 4200 3750 2    60   Input ~ 0
CON+_HIGH
Text HLabel 4200 3850 2    60   Input ~ 0
CON+_LOW
Text HLabel 4200 4350 2    60   Input ~ 0
CON-_HIGH
Text HLabel 4200 4450 2    60   Input ~ 0
CON-_LOW
$Comp
L CONN_01X02 P605
U 1 1 55735995
P 3700 5000
F 0 "P605" H 3650 5150 50  0000 C CNN
F 1 "CONPRE" V 3800 5000 50  0000 C CNN
F 2 "" H 3700 5000 60  0000 C CNN
F 3 "" H 3700 5000 60  0000 C CNN
	1    3700 5000
	-1   0    0    -1  
$EndComp
Text HLabel 4200 4950 2    60   Input ~ 0
CONPRE_HIGH
Text HLabel 4200 5050 2    60   Input ~ 0
CONPRE_LOW
Text HLabel 4150 1950 2    60   BiDi ~ 0
CAN1_H_I
Text HLabel 4150 2050 2    60   BiDi ~ 0
CAN1_L_I
Wire Wire Line
	4150 2150 4150 2250
Wire Wire Line
	3900 1850 4450 1850
Wire Wire Line
	3900 5050 4200 5050
Wire Wire Line
	4200 4950 3900 4950
Wire Wire Line
	3900 4450 4200 4450
Wire Wire Line
	4200 4350 3900 4350
Wire Wire Line
	3900 3850 4200 3850
Wire Wire Line
	3900 3750 4200 3750
Wire Wire Line
	4200 3300 3900 3300
Wire Wire Line
	3900 3200 4200 3200
Wire Wire Line
	4200 3100 3900 3100
Wire Wire Line
	3900 3000 4200 3000
Wire Wire Line
	4150 2150 3900 2150
Wire Wire Line
	4150 2050 3900 2050
Wire Wire Line
	4150 1950 3900 1950
$Comp
L GND #PWR601
U 1 1 557AC427
P 4150 2250
F 0 "#PWR601" H 4150 2000 50  0001 C CNN
F 1 "GND" H 4150 2100 50  0000 C CNN
F 2 "" H 4150 2250 60  0000 C CNN
F 3 "" H 4150 2250 60  0000 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
Text Label 4050 1850 0    60   ~ 0
14V0_BRUSA
NoConn ~ 4450 1850
Wire Wire Line
	4200 3300 4200 3400
$Comp
L GND #PWR603
U 1 1 557AC516
P 4200 3400
F 0 "#PWR603" H 4200 3150 50  0001 C CNN
F 1 "GND" H 4200 3250 50  0000 C CNN
F 2 "" H 4200 3400 60  0000 C CNN
F 3 "" H 4200 3400 60  0000 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Text HLabel 4200 3200 2    60   BiDi ~ 0
CAN2_L_I
Text HLabel 4200 3100 2    60   BiDi ~ 0
CAN2_H_I
$Comp
L +12V #PWR602
U 1 1 557AC58E
P 4200 2900
F 0 "#PWR602" H 4200 2750 50  0001 C CNN
F 1 "+12V" H 4200 3040 50  0000 C CNN
F 2 "" H 4200 2900 60  0000 C CNN
F 3 "" H 4200 2900 60  0000 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3000 4200 2900
$EndSCHEMATC
