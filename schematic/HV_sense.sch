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
Sheet 5 8
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
L HCNR200 U501
U 1 1 553C12F2
P 5200 3200
F 0 "U501" H 5250 3900 60  0000 C CNN
F 1 "HCNR200" H 5750 2350 60  0000 C CNN
F 2 "" H 5200 3200 60  0000 C CNN
F 3 "" H 5200 3200 60  0000 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
Text HLabel 1050 2500 0    60   Input ~ 0
HV+
Text HLabel 1100 3950 0    60   Input ~ 0
HV-
Text HLabel 7900 3850 2    60   Output ~ 0
HVSENSE_OUT
$Comp
L OP342 U?
U 1 1 554502DF
P 7200 3850
F 0 "U?" H 7200 4000 60  0000 L CNN
F 1 "OP342" H 7200 3700 60  0000 L CNN
F 2 "" H 7200 3850 60  0000 C CNN
F 3 "" H 7200 3850 60  0000 C CNN
	1    7200 3850
	1    0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5545049C
P 7200 3450
F 0 "#PWR?" H 7200 3450 30  0001 C CNN
F 1 "GND" H 7200 3380 30  0001 C CNN
F 2 "" H 7200 3450 60  0000 C CNN
F 3 "" H 7200 3450 60  0000 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55450509
P 6500 4150
F 0 "#PWR?" H 6500 4150 30  0001 C CNN
F 1 "GND" H 6500 4080 30  0001 C CNN
F 2 "" H 6500 4150 60  0000 C CNN
F 3 "" H 6500 4150 60  0000 C CNN
	1    6500 4150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5545053F
P 7150 3150
F 0 "R?" V 7230 3150 40  0000 C CNN
F 1 "100k" V 7157 3151 40  0000 C CNN
F 2 "" V 7080 3150 30  0000 C CNN
F 3 "" H 7150 3150 30  0000 C CNN
	1    7150 3150
	0    1    1    0   
$EndComp
$Comp
L OP342 U?
U 1 1 5545075E
P 3300 2600
F 0 "U?" H 3300 2750 60  0000 L CNN
F 1 "OP342" H 3300 2450 60  0000 L CNN
F 2 "" H 3300 2600 60  0000 C CNN
F 3 "" H 3300 2600 60  0000 C CNN
	1    3300 2600
	1    0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 55450766
P 3300 2200
F 0 "#PWR?" H 3300 2200 30  0001 C CNN
F 1 "GND" H 3300 2130 30  0001 C CNN
F 2 "" H 3300 2200 60  0000 C CNN
F 3 "" H 3300 2200 60  0000 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 554507E6
P 4250 2600
F 0 "R?" V 4330 2600 40  0000 C CNN
F 1 "100k" V 4257 2601 40  0000 C CNN
F 2 "" V 4180 2600 30  0000 C CNN
F 3 "" H 4250 2600 30  0000 C CNN
	1    4250 2600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 55450B2C
P 2300 2500
F 0 "R?" V 2380 2500 40  0000 C CNN
F 1 "100k" V 2307 2501 40  0000 C CNN
F 2 "" V 2230 2500 30  0000 C CNN
F 3 "" H 2300 2500 30  0000 C CNN
	1    2300 2500
	0    1    1    0   
$EndComp
NoConn ~ 8200 350 
$Comp
L C C?
U 1 1 554508E9
P 3250 1900
F 0 "C?" H 3250 2000 40  0000 L CNN
F 1 "1n" H 3256 1815 40  0000 L CNN
F 2 "" H 3288 1750 30  0000 C CNN
F 3 "" H 3250 1900 60  0000 C CNN
	1    3250 1900
	0    1    1    0   
$EndComp
NoConn ~ 6150 2600
NoConn ~ 6150 3050
$Comp
L +3.3VP #PWR?
U 1 1 554534A0
P 4800 2950
F 0 "#PWR?" H 4850 2980 20  0001 C CNN
F 1 "+3.3VP" H 4800 3040 30  0000 C CNN
F 2 "" H 4800 2950 60  0000 C CNN
F 3 "" H 4800 2950 60  0000 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3VP #PWR?
U 1 1 5545350A
P 7200 4250
F 0 "#PWR?" H 7250 4280 20  0001 C CNN
F 1 "+3.3VP" H 7200 4340 30  0000 C CNN
F 2 "" H 7200 4250 60  0000 C CNN
F 3 "" H 7200 4250 60  0000 C CNN
	1    7200 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 554539DD
P 7200 4550
F 0 "C?" H 7210 4620 50  0000 L CNN
F 1 "10n" H 7210 4470 50  0000 L CNN
F 2 "" H 7200 4550 60  0000 C CNN
F 3 "" H 7200 4550 60  0000 C CNN
	1    7200 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55453A81
P 7200 4750
F 0 "#PWR?" H 7200 4500 50  0001 C CNN
F 1 "GND" H 7200 4600 50  0000 C CNN
F 2 "" H 7200 4750 60  0000 C CNN
F 3 "" H 7200 4750 60  0000 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3VP #PWR?
U 1 1 55453D63
P 3300 2950
F 0 "#PWR?" H 3350 2980 20  0001 C CNN
F 1 "+3.3VP" H 3300 3040 30  0000 C CNN
F 2 "" H 3300 2950 60  0000 C CNN
F 3 "" H 3300 2950 60  0000 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 55453D69
P 3300 3250
F 0 "C?" H 3310 3320 50  0000 L CNN
F 1 "10n" H 3310 3170 50  0000 L CNN
F 2 "" H 3300 3250 60  0000 C CNN
F 3 "" H 3300 3250 60  0000 C CNN
	1    3300 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55453D6F
P 3300 3350
F 0 "#PWR?" H 3300 3100 50  0001 C CNN
F 1 "GND" H 3150 3300 50  0000 C CNN
F 2 "" H 3300 3350 60  0000 C CNN
F 3 "" H 3300 3350 60  0000 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3350 7100 3550
Wire Wire Line
	7100 4150 7100 4350
Wire Wire Line
	7100 3350 7200 3350
Wire Wire Line
	7200 3350 7200 3450
Wire Wire Line
	7100 4350 7200 4350
Wire Wire Line
	7200 4250 7200 4450
Wire Wire Line
	6150 3950 6850 3950
Wire Wire Line
	6500 3950 6500 4150
Connection ~ 6500 3950
Wire Wire Line
	6400 3750 6850 3750
Wire Wire Line
	6400 2800 6400 3750
Wire Wire Line
	6400 3500 6150 3500
Wire Wire Line
	6400 3150 7000 3150
Connection ~ 6400 3500
Wire Wire Line
	7300 3150 7700 3150
Wire Wire Line
	7700 2800 7700 3850
Wire Wire Line
	7550 3850 7900 3850
Wire Wire Line
	6400 2800 7000 2800
Connection ~ 6400 3150
Wire Wire Line
	7300 2800 7700 2800
Connection ~ 7700 3150
Connection ~ 7700 3850
Wire Wire Line
	3200 2100 3200 2300
Wire Wire Line
	3200 2100 3300 2100
Wire Wire Line
	3300 2100 3300 2200
Wire Wire Line
	3650 2600 4100 2600
Wire Wire Line
	4400 2600 5000 2600
Wire Wire Line
	4800 2950 4800 3050
Wire Wire Line
	4800 3050 5000 3050
Wire Wire Line
	3400 1900 3800 1900
Wire Wire Line
	3800 1900 3800 2600
Connection ~ 3800 2600
Wire Wire Line
	2700 1900 3100 1900
Wire Wire Line
	2700 1900 2700 2500
Wire Wire Line
	1100 3950 5000 3950
Wire Wire Line
	2600 3950 2600 2700
Wire Wire Line
	2600 2700 2950 2700
Connection ~ 4850 3950
Connection ~ 2600 3950
Wire Wire Line
	2450 2500 2950 2500
Connection ~ 2700 2500
Wire Wire Line
	5000 3500 2800 3500
Wire Wire Line
	2800 3500 2800 2500
Connection ~ 2800 2500
Connection ~ 7100 3550
Connection ~ 6850 3750
Connection ~ 6850 3950
Connection ~ 7550 3850
Connection ~ 7100 4150
Connection ~ 7300 3150
Connection ~ 7000 3150
Connection ~ 5000 2600
Connection ~ 5000 3050
Connection ~ 5000 3500
Connection ~ 5000 3950
Connection ~ 3200 2900
Connection ~ 3200 2300
Connection ~ 2950 2500
Connection ~ 2950 2700
Connection ~ 3650 2600
Connection ~ 3400 1900
Connection ~ 3100 1900
Connection ~ 2150 2500
Connection ~ 2450 2500
Connection ~ 7200 4350
Wire Wire Line
	7200 4650 7200 4750
Wire Wire Line
	3200 3050 3300 3050
Wire Wire Line
	3300 2950 3300 3150
Connection ~ 3300 3050
Wire Wire Line
	3200 3050 3200 2900
Connection ~ 7300 2800
Connection ~ 7000 2800
$Comp
L C C?
U 1 1 5545087D
P 7150 2800
F 0 "C?" H 7150 2900 40  0000 L CNN
F 1 "1n" H 7156 2715 40  0000 L CNN
F 2 "" H 7188 2650 30  0000 C CNN
F 3 "" H 7150 2800 60  0000 C CNN
	1    7150 2800
	0    1    1    0   
$EndComp
Text Notes 600  2300 0    60   ~ 0
This won't work yet. need to attenuate things\n
$EndSCHEMATC
