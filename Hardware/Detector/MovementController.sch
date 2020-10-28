EESchema Schematic File Version 4
LIBS:CosmicRayDetector-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4100 3900 4000 3900
Wire Wire Line
	4100 4000 4000 4000
Wire Wire Line
	4100 4100 4000 4100
Wire Wire Line
	4100 4200 4000 4200
Text GLabel 4000 3900 0    50   Input ~ 0
STEP_MOTOR_IN_1
Text GLabel 4000 4000 0    50   Input ~ 0
STEP_MOTOR_IN_2
Text GLabel 4000 4100 0    50   Input ~ 0
STEP_MOTOR_IN_3
Text GLabel 4000 4200 0    50   Input ~ 0
STEP_MOTOR_IN_4
$Comp
L power:GND #PWR032
U 1 1 5D727C8E
P 4450 4400
F 0 "#PWR032" H 4450 4150 50  0001 C CNN
F 1 "GND" H 4455 4227 50  0000 C CNN
F 2 "" H 4450 4400 50  0001 C CNN
F 3 "" H 4450 4400 50  0001 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4400 4450 4350
$Comp
L Device:CP C9
U 1 1 5D728564
P 4650 3350
F 0 "C9" H 4768 3396 50  0000 L CNN
F 1 "10u/10V" H 4768 3305 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 4688 3200 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D72969A
P 4650 3550
F 0 "#PWR033" H 4650 3300 50  0001 C CNN
F 1 "GND" H 4655 3377 50  0000 C CNN
F 2 "" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 5D72A8B0
P 4450 3050
F 0 "#PWR031" H 4450 2900 50  0001 C CNN
F 1 "+5V" H 4465 3223 50  0000 C CNN
F 2 "" H 4450 3050 50  0001 C CNN
F 3 "" H 4450 3050 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3150 4650 3150
Wire Wire Line
	4650 3150 4650 3200
Wire Wire Line
	4450 3150 4450 3750
Wire Wire Line
	4650 3550 4650 3500
Wire Wire Line
	4450 3050 4450 3150
Connection ~ 4450 3150
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 5D72CC96
P 5500 3950
F 0 "J?" H 5528 3926 50  0000 L CNN
F 1 "Conn_01x06_Female" H 5528 3835 50  0000 L CNN
F 2 "" H 5500 3950 50  0001 C CNN
F 3 "~" H 5500 3950 50  0001 C CNN
	1    5500 3950
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:A3901SEJTR-T U3
U 1 1 5D7272FF
P 4100 3800
F 0 "U3" H 4100 3950 50  0000 C CNN
F 1 "A3901SEJTR-T" H 4100 3850 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-10-1EP_3x3mm_P0.5mm_EP1.55x2.48mm" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC