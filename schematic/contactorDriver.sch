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
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7850 3950 0    60   Input ~ 0
CON+
Text HLabel 5500 3900 0    60   Input ~ 0
CON-
Text HLabel 2950 3950 0    60   Input ~ 0
CONPRE
Text HLabel 8800 3500 2    60   Output ~ 0
CON+_HIGH
Text HLabel 8800 3600 2    60   Output ~ 0
CON+_LOW
Text HLabel 6450 3450 2    60   Output ~ 0
CON-_HIGH
Text HLabel 6450 3550 2    60   Output ~ 0
CON-_LOW
Text HLabel 3900 3500 2    60   Output ~ 0
CONPRE_HIGH
Text HLabel 3900 3600 2    60   Output ~ 0
CONPRE_LOW
$Comp
L Q_NMOS_DGS Q701
U 1 1 5573875A
P 3550 3950
F 0 "Q701" H 3850 4000 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 4200 3900 50  0000 R CNN
F 2 "" H 3750 4050 29  0000 C CNN
F 3 "" H 3550 3950 60  0000 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3950 3350 3950
Wire Wire Line
	3650 4150 3650 4250
$Comp
L GND #PWR046
U 1 1 55738792
P 3650 4250
F 0 "#PWR046" H 3650 4000 50  0001 C CNN
F 1 "GND" H 3650 4100 50  0000 C CNN
F 2 "" H 3650 4250 60  0000 C CNN
F 3 "" H 3650 4250 60  0000 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3750 3650 3600
Wire Wire Line
	3650 3600 3900 3600
Wire Wire Line
	3900 3500 3650 3500
Wire Wire Line
	3650 3500 3650 3350
$Comp
L +12V #PWR047
U 1 1 557387D0
P 3650 3350
F 0 "#PWR047" H 3650 3200 50  0001 C CNN
F 1 "+12V" H 3650 3490 50  0000 C CNN
F 2 "" H 3650 3350 60  0000 C CNN
F 3 "" H 3650 3350 60  0000 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q702
U 1 1 55738845
P 6100 3900
F 0 "Q702" H 6400 3950 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 6750 3850 50  0000 R CNN
F 2 "" H 6300 4000 29  0000 C CNN
F 3 "" H 6100 3900 60  0000 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3900 5900 3900
Wire Wire Line
	6200 4100 6200 4200
$Comp
L GND #PWR048
U 1 1 5573884D
P 6200 4200
F 0 "#PWR048" H 6200 3950 50  0001 C CNN
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
$Comp
L +12V #PWR049
U 1 1 55738857
P 6200 3300
F 0 "#PWR049" H 6200 3150 50  0001 C CNN
F 1 "+12V" H 6200 3440 50  0000 C CNN
F 2 "" H 6200 3300 60  0000 C CNN
F 3 "" H 6200 3300 60  0000 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q703
U 1 1 55738888
P 8450 3950
F 0 "Q703" H 8750 4000 50  0000 R CNN
F 1 "Q_NMOS_DGS" H 9100 3900 50  0000 R CNN
F 2 "" H 8650 4050 29  0000 C CNN
F 3 "" H 8450 3950 60  0000 C CNN
	1    8450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3950 8250 3950
Wire Wire Line
	8550 4150 8550 4250
$Comp
L GND #PWR050
U 1 1 55738890
P 8550 4250
F 0 "#PWR050" H 8550 4000 50  0001 C CNN
F 1 "GND" H 8550 4100 50  0000 C CNN
F 2 "" H 8550 4250 60  0000 C CNN
F 3 "" H 8550 4250 60  0000 C CNN
	1    8550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3750 8550 3600
Wire Wire Line
	8550 3600 8800 3600
Wire Wire Line
	8800 3500 8550 3500
Wire Wire Line
	8550 3500 8550 3350
$Comp
L +12V #PWR051
U 1 1 5573889A
P 8550 3350
F 0 "#PWR051" H 8550 3200 50  0001 C CNN
F 1 "+12V" H 8550 3490 50  0000 C CNN
F 2 "" H 8550 3350 60  0000 C CNN
F 3 "" H 8550 3350 60  0000 C CNN
	1    8550 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
