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
LIBS:special
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L SPX2920M3-3.3 U201
U 1 1 553BF7B4
P 3000 1800
F 0 "U201" H 3000 2050 40  0000 C CNN
F 1 "SPX2920M3-3.3" H 3000 2000 40  0000 C CNN
F 2 "SOT223" H 3000 1900 35  0000 C CIN
F 3 "" H 3000 1800 60  0000 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR201
U 1 1 553BF801
P 3000 2300
F 0 "#PWR201" H 3000 2300 30  0001 C CNN
F 1 "GND" H 3000 2230 30  0001 C CNN
F 2 "" H 3000 2300 60  0000 C CNN
F 3 "" H 3000 2300 60  0000 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$Comp
L C C203
U 1 1 553BF822
P 2500 1900
F 0 "C203" H 2500 2000 40  0000 L CNN
F 1 "C" H 2506 1815 40  0000 L CNN
F 2 "" H 2538 1750 30  0000 C CNN
F 3 "" H 2500 1900 60  0000 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L C C201
U 1 1 553BF859
P 2200 1900
F 0 "C201" H 2200 2000 40  0000 L CNN
F 1 "C" H 2206 1815 40  0000 L CNN
F 2 "" H 2238 1750 30  0000 C CNN
F 3 "" H 2200 1900 60  0000 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L C C205
U 1 1 553BF886
P 3500 1900
F 0 "C205" H 3500 2000 40  0000 L CNN
F 1 "C" H 3506 1815 40  0000 L CNN
F 2 "" H 3538 1750 30  0000 C CNN
F 3 "" H 3500 1900 60  0000 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
$Comp
L C C207
U 1 1 553BF8AF
P 3800 1900
F 0 "C207" H 3800 2000 40  0000 L CNN
F 1 "C" H 3806 1815 40  0000 L CNN
F 2 "" H 3838 1750 30  0000 C CNN
F 3 "" H 3800 1900 60  0000 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L SPX2920M3-5.0 U202
U 1 1 553BF9C9
P 3000 2800
F 0 "U202" H 3000 3050 40  0000 C CNN
F 1 "SPX2920M3-5.0" H 3000 3000 40  0000 C CNN
F 2 "SOT223" H 3000 2900 35  0000 C CIN
F 3 "" H 3000 2800 60  0000 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1750 2600 1750
Wire Wire Line
	3400 1750 4150 1750
Connection ~ 2000 1750
$Comp
L GND #PWR202
U 1 1 553BFC84
P 3000 3300
F 0 "#PWR202" H 3000 3300 30  0001 C CNN
F 1 "GND" H 3000 3230 30  0001 C CNN
F 2 "" H 3000 3300 60  0000 C CNN
F 3 "" H 3000 3300 60  0000 C CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
$Comp
L C C204
U 1 1 553BFC8A
P 2500 2900
F 0 "C204" H 2500 3000 40  0000 L CNN
F 1 "C" H 2506 2815 40  0000 L CNN
F 2 "" H 2538 2750 30  0000 C CNN
F 3 "" H 2500 2900 60  0000 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$Comp
L C C202
U 1 1 553BFC90
P 2200 2900
F 0 "C202" H 2200 3000 40  0000 L CNN
F 1 "C" H 2206 2815 40  0000 L CNN
F 2 "" H 2238 2750 30  0000 C CNN
F 3 "" H 2200 2900 60  0000 C CNN
	1    2200 2900
	1    0    0    -1  
$EndComp
$Comp
L C C206
U 1 1 553BFC96
P 3500 2900
F 0 "C206" H 3500 3000 40  0000 L CNN
F 1 "C" H 3506 2815 40  0000 L CNN
F 2 "" H 3538 2750 30  0000 C CNN
F 3 "" H 3500 2900 60  0000 C CNN
	1    3500 2900
	1    0    0    -1  
$EndComp
$Comp
L C C208
U 1 1 553BFC9C
P 3800 2900
F 0 "C208" H 3800 3000 40  0000 L CNN
F 1 "C" H 3806 2815 40  0000 L CNN
F 2 "" H 3838 2750 30  0000 C CNN
F 3 "" H 3800 2900 60  0000 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3050 3000 3300
Wire Wire Line
	3400 2750 4150 2750
Connection ~ 3800 2750
Wire Wire Line
	2000 1750 2000 2750
Wire Wire Line
	2000 2750 2600 2750
Text HLabel 1900 1750 0    60   Input ~ 0
15V
Text HLabel 4150 1750 2    60   Output ~ 0
3.3V
Text HLabel 4150 2750 2    60   Output ~ 0
5V
Connection ~ 2200 2750
Connection ~ 2500 2750
Connection ~ 3500 2750
Wire Wire Line
	2200 2050 3800 2050
Connection ~ 2500 2050
Connection ~ 3000 2050
Connection ~ 3500 2050
Wire Wire Line
	3000 2050 3000 2300
Connection ~ 3000 2300
Connection ~ 3800 2050
Connection ~ 2200 2050
Connection ~ 2200 1750
Connection ~ 2500 1750
Connection ~ 2600 1750
Connection ~ 3400 1750
Connection ~ 3500 1750
Connection ~ 3800 1750
Wire Wire Line
	2200 3050 3800 3050
Connection ~ 3500 3050
Connection ~ 3000 3050
Connection ~ 2500 3050
Connection ~ 3400 2750
Connection ~ 2600 2750
Connection ~ 2200 3050
Connection ~ 3800 3050
Connection ~ 3000 3300
$EndSCHEMATC
