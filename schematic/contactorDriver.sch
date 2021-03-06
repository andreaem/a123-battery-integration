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
Sheet 5 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8000 3950 0    60   Input ~ 0
CON+
Text HLabel 5500 3950 0    60   Input ~ 0
CON-
Text HLabel 3000 3950 0    60   Input ~ 0
CONPRE
Text HLabel 8950 3450 2    60   Output ~ 0
CON+_HIGH
Text HLabel 8950 3550 2    60   Output ~ 0
CON+_LOW
Text HLabel 6450 3450 2    60   Output ~ 0
CON-_HIGH
Text HLabel 6450 3550 2    60   Output ~ 0
CON-_LOW
Text HLabel 3950 3450 2    60   Output ~ 0
CONPRE_HIGH
Text HLabel 3950 3550 2    60   Output ~ 0
CONPRE_LOW
Wire Wire Line
	3000 3950 3400 3950
Wire Wire Line
	3700 4100 3700 4200
$Comp
L GND #PWR027
U 1 1 55738792
P 3700 4200
F 0 "#PWR027" H 3700 3950 50  0001 C CNN
F 1 "GND" H 3700 4050 50  0000 C CNN
F 2 "" H 3700 4200 60  0000 C CNN
F 3 "" H 3700 4200 60  0000 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3700 3700 3550
Wire Wire Line
	3700 3550 3950 3550
Wire Wire Line
	3950 3450 3700 3450
Wire Wire Line
	3700 3450 3700 3300
Wire Wire Line
	5500 3950 5900 3950
Wire Wire Line
	6200 4100 6200 4200
$Comp
L GND #PWR028
U 1 1 5573884D
P 6200 4200
F 0 "#PWR028" H 6200 3950 50  0001 C CNN
F 1 "GND" H 6200 4050 50  0000 C CNN
F 2 "" H 6200 4200 60  0000 C CNN
F 3 "" H 6200 4200 60  0000 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3700 6200 3550
Wire Wire Line
	6200 3550 6450 3550
Wire Wire Line
	6450 3450 6200 3450
Wire Wire Line
	6200 3450 6200 3300
Wire Wire Line
	8000 3950 8400 3950
Wire Wire Line
	8700 4100 8700 4200
$Comp
L GND #PWR029
U 1 1 55738890
P 8700 4200
F 0 "#PWR029" H 8700 3950 50  0001 C CNN
F 1 "GND" H 8700 4050 50  0000 C CNN
F 2 "" H 8700 4200 60  0000 C CNN
F 3 "" H 8700 4200 60  0000 C CNN
	1    8700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3700 8700 3550
Wire Wire Line
	8700 3550 8950 3550
Wire Wire Line
	8950 3450 8700 3450
Wire Wire Line
	8700 3450 8700 3300
$Comp
L +15V #PWR030
U 1 1 557A45E1
P 3700 3300
F 0 "#PWR030" H 3700 3150 50  0001 C CNN
F 1 "+15V" H 3700 3440 50  0000 C CNN
F 2 "" H 3700 3300 60  0000 C CNN
F 3 "" H 3700 3300 60  0000 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
$Comp
L +15V #PWR031
U 1 1 557A45F9
P 6200 3300
F 0 "#PWR031" H 6200 3150 50  0001 C CNN
F 1 "+15V" H 6200 3440 50  0000 C CNN
F 2 "" H 6200 3300 60  0000 C CNN
F 3 "" H 6200 3300 60  0000 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L +15V #PWR032
U 1 1 557A460A
P 8700 3300
F 0 "#PWR032" H 8700 3150 50  0001 C CNN
F 1 "+15V" H 8700 3440 50  0000 C CNN
F 2 "" H 8700 3300 60  0000 C CNN
F 3 "" H 8700 3300 60  0000 C CNN
	1    8700 3300
	1    0    0    -1  
$EndComp
$Comp
L IRF7101PbF Q2
U 1 1 5585ABA4
P 8600 3900
F 0 "Q2" H 8800 3975 50  0000 L CNN
F 1 "IRF7101PbF" H 8800 3900 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8800 3825 50  0001 L CIN
F 3 "" H 8600 3900 50  0000 L CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
$Comp
L IRF7101PbF Q1
U 2 1 5585ABDE
P 3600 3900
F 0 "Q1" H 3800 3975 50  0000 L CNN
F 1 "IRF7101PbF" H 3800 3900 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3800 3825 50  0001 L CIN
F 3 "" H 3600 3900 50  0000 L CNN
	2    3600 3900
	1    0    0    -1  
$EndComp
$Comp
L IRF7101PbF Q1
U 1 1 5585AC97
P 6100 3900
F 0 "Q1" H 6300 3975 50  0000 L CNN
F 1 "IRF7101PbF" H 6300 3900 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6300 3825 50  0001 L CIN
F 3 "" H 6100 3900 50  0000 L CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3700 8700 3700
Wire Wire Line
	6300 3700 6200 3700
Wire Wire Line
	3800 3700 3700 3700
$Comp
L C_Small C801
U 1 1 558EF94E
P 3300 3500
F 0 "C801" H 3310 3570 50  0000 L CNN
F 1 "10uF" H 3310 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3300 3500 60  0001 C CNN
F 3 "" H 3300 3500 60  0000 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3350 3300 3350
Wire Wire Line
	3300 3350 3300 3400
Connection ~ 3700 3350
$Comp
L GND #PWR033
U 1 1 558EFA2B
P 3300 3650
F 0 "#PWR033" H 3300 3400 50  0001 C CNN
F 1 "GND" H 3300 3500 50  0000 C CNN
F 2 "" H 3300 3650 60  0000 C CNN
F 3 "" H 3300 3650 60  0000 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3600 3300 3650
$Comp
L C_Small C802
U 1 1 558EFB12
P 5800 3500
F 0 "C802" H 5810 3570 50  0000 L CNN
F 1 "10uF" H 5810 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5800 3500 60  0001 C CNN
F 3 "" H 5800 3500 60  0000 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3350 5800 3350
Wire Wire Line
	5800 3350 5800 3400
$Comp
L C_Small C803
U 1 1 558EFB48
P 8300 3500
F 0 "C803" H 8310 3570 50  0000 L CNN
F 1 "10uF" H 8310 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8300 3500 60  0001 C CNN
F 3 "" H 8300 3500 60  0000 C CNN
	1    8300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3350 8300 3350
Wire Wire Line
	8300 3350 8300 3400
$Comp
L GND #PWR034
U 1 1 558EFB58
P 8300 3650
F 0 "#PWR034" H 8300 3400 50  0001 C CNN
F 1 "GND" H 8300 3500 50  0000 C CNN
F 2 "" H 8300 3650 60  0000 C CNN
F 3 "" H 8300 3650 60  0000 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 558EFB78
P 5800 3650
F 0 "#PWR035" H 5800 3400 50  0001 C CNN
F 1 "GND" H 5800 3500 50  0000 C CNN
F 2 "" H 5800 3650 60  0000 C CNN
F 3 "" H 5800 3650 60  0000 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3600 5800 3650
Wire Wire Line
	8300 3600 8300 3650
Connection ~ 6200 3350
Connection ~ 8700 3350
$EndSCHEMATC
