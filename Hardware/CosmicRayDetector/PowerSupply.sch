EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L power:GND #PWR?
U 1 1 5FA5A87A
P 1650 4050
AR Path="/5CEF836A/5FA5A87A" Ref="#PWR?"  Part="1" 
AR Path="/5FA5724C/5FA5A87A" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 1650 3800 50  0001 C CNN
F 1 "GND" H 1655 3877 50  0000 C CNN
F 2 "" H 1650 4050 50  0001 C CNN
F 3 "" H 1650 4050 50  0001 C CNN
	1    1650 4050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FA5A886
P 1650 3800
AR Path="/5CEF836A/5FA5A886" Ref="C?"  Part="1" 
AR Path="/5FA5724C/5FA5A886" Ref="C6"  Part="1" 
F 0 "C6" H 1535 3846 50  0000 R CNN
F 1 "100n" H 1535 3755 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 3650 50  0001 C CNN
F 3 "~" H 1650 3800 50  0001 C CNN
	1    1650 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 3650 1650 3550
Connection ~ 1650 3550
Text GLabel 2050 3550 2    50   Input ~ 0
+5V
Wire Wire Line
	1650 3950 1650 4050
$Comp
L CosmicRayDetector-rescue:USB_B_Micro-Connector J8
U 1 1 5F9F0594
P 1000 3750
AR Path="/5F9F0594" Ref="J8"  Part="1" 
AR Path="/5FA5724C/5F9F0594" Ref="J8"  Part="1" 
F 0 "J8" H 1057 4217 50  0000 C CNN
F 1 "USB_B_Micro" H 1057 4126 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1150 3700 50  0001 C CNN
F 3 "~" H 1150 3700 50  0001 C CNN
	1    1000 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9F6DBA
P 1000 4300
AR Path="/5CEF836A/5F9F6DBA" Ref="#PWR?"  Part="1" 
AR Path="/5FA5724C/5F9F6DBA" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1000 4050 50  0001 C CNN
F 1 "GND" H 1005 4127 50  0000 C CNN
F 2 "" H 1000 4300 50  0001 C CNN
F 3 "" H 1000 4300 50  0001 C CNN
	1    1000 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 4150 1000 4250
Wire Wire Line
	900  4150 900  4250
Wire Wire Line
	900  4250 1000 4250
Connection ~ 1000 4250
Wire Wire Line
	1000 4250 1000 4300
NoConn ~ 1300 3750
NoConn ~ 1300 3850
NoConn ~ 1300 3950
Wire Wire Line
	1300 3550 1650 3550
Wire Wire Line
	1650 3550 2050 3550
$EndSCHEMATC
