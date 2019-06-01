EESchema Schematic File Version 4
LIBS:chamber-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Device:R R21
U 1 1 5CEF8D50
P 1500 900
F 0 "R21" H 1570 946 50  0000 L CNN
F 1 "R" H 1570 855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 900 50  0001 C CNN
F 3 "~" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5CEF8EC2
P 1500 2050
F 0 "#PWR022" H 1500 1800 50  0001 C CNN
F 1 "GND" H 1505 1877 50  0000 C CNN
F 2 "" H 1500 2050 50  0001 C CNN
F 3 "" H 1500 2050 50  0001 C CNN
	1    1500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5CF08E0B
P 4050 6350
F 0 "C23" H 4165 6396 50  0000 L CNN
F 1 "C" H 4165 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 6200 50  0001 C CNN
F 3 "~" H 4050 6350 50  0001 C CNN
	1    4050 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CF09188
P 4700 7050
F 0 "#PWR030" H 4700 6800 50  0001 C CNN
F 1 "GND" H 4705 6877 50  0000 C CNN
F 2 "" H 4700 7050 50  0001 C CNN
F 3 "" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR029
U 1 1 5CF094A6
P 4700 5750
F 0 "#PWR029" H 4700 5600 50  0001 C CNN
F 1 "VCC" H 4717 5923 50  0000 C CNN
F 2 "" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0001 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7050 4700 7000
Wire Wire Line
	4050 6500 4050 7000
Wire Wire Line
	4050 7000 4700 7000
Connection ~ 4700 7000
Wire Wire Line
	4050 6200 4050 5800
Wire Wire Line
	4050 5800 4700 5800
Wire Wire Line
	4700 5800 4700 5750
Connection ~ 4700 5800
Wire Wire Line
	1500 1700 1500 1600
Connection ~ 1500 1600
Wire Wire Line
	1500 2050 1500 2000
$Comp
L Device:C C21
U 1 1 5CF13FFC
P 1800 1850
F 0 "C21" H 1915 1896 50  0000 L CNN
F 1 "C" H 1915 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1838 1700 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5CF1479D
P 1800 2050
F 0 "#PWR027" H 1800 1800 50  0001 C CNN
F 1 "GND" H 1805 1877 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2050 1800 2000
Wire Wire Line
	1800 1700 1800 1600
Wire Wire Line
	1800 1600 1500 1600
Wire Wire Line
	1500 750  1500 700 
$Comp
L Device:R R23
U 1 1 5CF1C4AE
P 1500 2800
F 0 "R23" H 1570 2846 50  0000 L CNN
F 1 "R" H 1570 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 2800 50  0001 C CNN
F 3 "~" H 1500 2800 50  0001 C CNN
	1    1500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CF1C4B4
P 1500 3950
F 0 "#PWR024" H 1500 3700 50  0001 C CNN
F 1 "GND" H 1505 3777 50  0000 C CNN
F 2 "" H 1500 3950 50  0001 C CNN
F 3 "" H 1500 3950 50  0001 C CNN
	1    1500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3600 1500 3500
Connection ~ 1500 3500
Wire Wire Line
	1500 3950 1500 3900
$Comp
L Device:C C22
U 1 1 5CF1C4D1
P 1800 3750
F 0 "C22" H 1915 3796 50  0000 L CNN
F 1 "C" H 1915 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1838 3600 50  0001 C CNN
F 3 "~" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5CF1C4D7
P 1800 3950
F 0 "#PWR028" H 1800 3700 50  0001 C CNN
F 1 "GND" H 1805 3777 50  0000 C CNN
F 2 "" H 1800 3950 50  0001 C CNN
F 3 "" H 1800 3950 50  0001 C CNN
	1    1800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3950 1800 3900
Wire Wire Line
	1800 3600 1800 3500
Wire Wire Line
	1800 3500 1500 3500
Wire Wire Line
	1500 2650 1500 2600
$Comp
L Device:R R37
U 1 1 5CF2D49B
P 4100 950
F 0 "R37" H 4170 996 50  0000 L CNN
F 1 "R" H 4170 905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 950 50  0001 C CNN
F 3 "~" H 4100 950 50  0001 C CNN
	1    4100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5CF2D4A1
P 4100 2100
F 0 "#PWR038" H 4100 1850 50  0001 C CNN
F 1 "GND" H 4105 1927 50  0000 C CNN
F 2 "" H 4100 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1750 4100 1650
Connection ~ 4100 1650
Wire Wire Line
	4100 2100 4100 2050
$Comp
L Device:C C24
U 1 1 5CF2D4BE
P 4400 1900
F 0 "C24" H 4515 1946 50  0000 L CNN
F 1 "C" H 4515 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4438 1750 50  0001 C CNN
F 3 "~" H 4400 1900 50  0001 C CNN
	1    4400 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5CF2D4C4
P 4400 2100
F 0 "#PWR042" H 4400 1850 50  0001 C CNN
F 1 "GND" H 4405 1927 50  0000 C CNN
F 2 "" H 4400 2100 50  0001 C CNN
F 3 "" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2100 4400 2050
Wire Wire Line
	4400 1750 4400 1650
Wire Wire Line
	4400 1650 4100 1650
Wire Wire Line
	4100 800  4100 750 
$Comp
L Device:R R39
U 1 1 5CF43CA6
P 4100 2850
F 0 "R39" H 4170 2896 50  0000 L CNN
F 1 "R" H 4170 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 2850 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5CF43CAC
P 4100 4000
F 0 "#PWR040" H 4100 3750 50  0001 C CNN
F 1 "GND" H 4105 3827 50  0000 C CNN
F 2 "" H 4100 4000 50  0001 C CNN
F 3 "" H 4100 4000 50  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3650 4100 3550
Connection ~ 4100 3550
Wire Wire Line
	4100 4000 4100 3950
$Comp
L Device:C C25
U 1 1 5CF43CC9
P 4400 3800
F 0 "C25" H 4515 3846 50  0000 L CNN
F 1 "C" H 4515 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4438 3650 50  0001 C CNN
F 3 "~" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5CF43CCF
P 4400 4000
F 0 "#PWR045" H 4400 3750 50  0001 C CNN
F 1 "GND" H 4405 3827 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4000 4400 3950
Wire Wire Line
	4400 3650 4400 3550
Wire Wire Line
	4400 3550 4100 3550
Wire Wire Line
	4100 2700 4100 2650
$Comp
L Device:R R47
U 1 1 5CF8ECFB
P 7150 750
F 0 "R47" V 6943 750 50  0000 C CNN
F 1 "R" V 7034 750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 750 50  0001 C CNN
F 3 "~" H 7150 750 50  0001 C CNN
	1    7150 750 
	0    1    1    0   
$EndComp
$Comp
L Device:R R48
U 1 1 5CF8F49A
P 7150 1050
F 0 "R48" V 6943 1050 50  0000 C CNN
F 1 "R" V 7034 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 1050 50  0001 C CNN
F 3 "~" H 7150 1050 50  0001 C CNN
	1    7150 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R49
U 1 1 5CF8F667
P 7100 1750
F 0 "R49" V 6893 1750 50  0000 C CNN
F 1 "R" V 6984 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 1750 50  0001 C CNN
F 3 "~" H 7100 1750 50  0001 C CNN
	1    7100 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R50
U 1 1 5CF8F79C
P 7100 2100
F 0 "R50" V 6893 2100 50  0000 C CNN
F 1 "R" V 6984 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 2100 50  0001 C CNN
F 3 "~" H 7100 2100 50  0001 C CNN
	1    7100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 750  6850 750 
Wire Wire Line
	7000 1050 6850 1050
Wire Wire Line
	6950 1750 6800 1750
Wire Wire Line
	6950 2100 6800 2100
Wire Wire Line
	7250 2100 7350 2100
$Comp
L Device:R R65
U 1 1 5CFCD7B6
P 9850 900
F 0 "R65" V 9643 900 50  0000 C CNN
F 1 "R" V 9734 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 900 50  0001 C CNN
F 3 "~" H 9850 900 50  0001 C CNN
	1    9850 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R R66
U 1 1 5CFCD7BC
P 9850 1200
F 0 "R66" V 9643 1200 50  0000 C CNN
F 1 "R" V 9734 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R67
U 1 1 5CFCD7C2
P 9850 1500
F 0 "R67" V 9643 1500 50  0000 C CNN
F 1 "R" V 9734 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1500 50  0001 C CNN
F 3 "~" H 9850 1500 50  0001 C CNN
	1    9850 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R68
U 1 1 5CFCD7C8
P 9850 1850
F 0 "R68" V 9643 1850 50  0000 C CNN
F 1 "R" V 9734 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1850 50  0001 C CNN
F 3 "~" H 9850 1850 50  0001 C CNN
	1    9850 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 900  9550 900 
Wire Wire Line
	9700 1200 9550 1200
Wire Wire Line
	9700 1500 9550 1500
Wire Wire Line
	9700 1850 9550 1850
Wire Wire Line
	10650 1300 10450 1300
Wire Wire Line
	10050 1300 10050 1200
Wire Wire Line
	10050 1200 10000 1200
Wire Wire Line
	10650 1400 10350 1400
Wire Wire Line
	10050 1400 10050 1500
Wire Wire Line
	10050 1500 10000 1500
Wire Wire Line
	10100 1850 10100 1500
Wire Wire Line
	10100 1500 10250 1500
Wire Wire Line
	10000 1850 10100 1850
Wire Wire Line
	10650 1200 10550 1200
Wire Wire Line
	10100 1200 10100 900 
Wire Wire Line
	10000 900  10100 900 
Wire Wire Line
	8300 3550 8100 3550
Wire Wire Line
	7700 3550 7700 3450
Wire Wire Line
	8300 3650 8000 3650
Wire Wire Line
	7700 3650 7700 3750
Wire Wire Line
	7750 4100 7750 3750
Wire Wire Line
	7750 3750 7900 3750
Wire Wire Line
	8300 3450 8200 3450
Wire Wire Line
	7750 3450 7750 3150
$Comp
L Device:R R69
U 1 1 5CFDEFF8
P 9950 3150
F 0 "R69" V 9743 3150 50  0000 C CNN
F 1 "R" V 9834 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 3150 50  0001 C CNN
F 3 "~" H 9950 3150 50  0001 C CNN
	1    9950 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R70
U 1 1 5CFDEFFE
P 9950 3450
F 0 "R70" V 9743 3450 50  0000 C CNN
F 1 "R" V 9834 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 3450 50  0001 C CNN
F 3 "~" H 9950 3450 50  0001 C CNN
	1    9950 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R71
U 1 1 5CFDF004
P 9950 3750
F 0 "R71" V 9743 3750 50  0000 C CNN
F 1 "R" V 9834 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 3750 50  0001 C CNN
F 3 "~" H 9950 3750 50  0001 C CNN
	1    9950 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R72
U 1 1 5CFDF00A
P 9950 4100
F 0 "R72" V 9743 4100 50  0000 C CNN
F 1 "R" V 9834 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 4100 50  0001 C CNN
F 3 "~" H 9950 4100 50  0001 C CNN
	1    9950 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3150 9650 3150
Wire Wire Line
	9800 3450 9650 3450
Wire Wire Line
	9800 3750 9650 3750
Wire Wire Line
	9800 4100 9650 4100
Wire Wire Line
	10650 3550 10500 3550
Wire Wire Line
	10150 3550 10150 3450
Wire Wire Line
	10150 3450 10100 3450
Wire Wire Line
	10650 3650 10400 3650
Wire Wire Line
	10150 3650 10150 3750
Wire Wire Line
	10150 3750 10100 3750
Wire Wire Line
	10200 4100 10200 3750
Wire Wire Line
	10200 3750 10300 3750
Wire Wire Line
	10100 4100 10200 4100
Wire Wire Line
	10650 3450 10600 3450
Wire Wire Line
	10200 3450 10200 3150
Wire Wire Line
	10100 3150 10200 3150
Text GLabel 2800 1450 1    50   Input ~ 0
INT1
Text GLabel 6850 750  1    50   Input ~ 0
INT1
Text GLabel 9550 900  1    50   Input ~ 0
INT1
Text GLabel 9650 3150 1    50   Input ~ 0
INT1
Text GLabel 2800 3400 1    50   Input ~ 0
INT2
Text GLabel 6850 1050 1    50   Input ~ 0
INT2
Text GLabel 9550 1200 1    50   Input ~ 0
INT2
Text GLabel 9650 3450 1    50   Input ~ 0
INT2
Text GLabel 5450 1550 1    50   Input ~ 0
INT3
Text GLabel 6800 1750 1    50   Input ~ 0
INT3
Text GLabel 9550 1500 1    50   Input ~ 0
INT3
Text GLabel 9650 3750 1    50   Input ~ 0
INT3
Text GLabel 5400 3450 1    50   Input ~ 0
INT4
Text GLabel 9650 4100 1    50   Input ~ 0
INT4
$Comp
L power:VCC #PWR0101
U 1 1 5D035C48
P 6150 6050
F 0 "#PWR0101" H 6150 5900 50  0001 C CNN
F 1 "VCC" H 6167 6223 50  0000 C CNN
F 2 "" H 6150 6050 50  0001 C CNN
F 3 "" H 6150 6050 50  0001 C CNN
	1    6150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6050 6150 6150
Wire Wire Line
	6150 6150 6650 6150
Wire Wire Line
	6650 6150 6650 5950
Text GLabel 6650 5950 1    50   Input ~ 0
VCC_5V
Text GLabel 6800 2100 1    50   Input ~ 0
INT4
Text GLabel 9550 1850 1    50   Input ~ 0
INT4
Text GLabel 1500 700  0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 1500 2600 0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 4100 750  0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 4100 2650 0    50   Input ~ 0
GM_LAMP_POLARIZATION
Wire Wire Line
	1500 1050 1500 1150
Wire Wire Line
	1500 1450 1500 1600
Wire Wire Line
	1500 3350 1500 3500
Wire Wire Line
	1500 2950 1500 3050
Wire Wire Line
	4100 1100 4100 1200
Wire Wire Line
	4100 1500 4100 1650
Wire Wire Line
	4100 3000 4100 3100
Wire Wire Line
	4100 3400 4100 3550
$Comp
L MuonDetector:GM- GM2
U 1 1 5D22EE36
P 1500 1450
F 0 "GM2" H 1606 1539 50  0000 L CNN
F 1 "GM-" H 1606 1448 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 1500 1450 50  0001 C CNN
F 3 "" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM- GM6
U 1 1 5D24733D
P 4100 1500
F 0 "GM6" H 4178 1589 50  0000 L CNN
F 1 "GM-" H 4178 1498 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 4100 1500 50  0001 C CNN
F 3 "" H 4100 1500 50  0001 C CNN
	1    4100 1500
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM- GM8
U 1 1 5D2480AC
P 4100 3400
F 0 "GM8" H 4178 3489 50  0000 L CNN
F 1 "GM-" H 4178 3398 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM- GM4
U 1 1 5D248B22
P 1500 3350
F 0 "GM4" H 1578 3439 50  0000 L CNN
F 1 "GM-" H 1578 3348 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM+ GM3
U 1 1 5D249D5F
P 1500 3050
F 0 "GM3" H 1606 3054 50  0000 L CNN
F 1 "GM+" H 1606 2963 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM+ GM7
U 1 1 5D24AAD1
P 4100 3100
F 0 "GM7" H 4206 3104 50  0000 L CNN
F 1 "GM+" H 4206 3013 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 4100 3100 50  0001 C CNN
F 3 "" H 4100 3100 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM+ GM5
U 1 1 5D24B23C
P 4100 1200
F 0 "GM5" H 4206 1204 50  0000 L CNN
F 1 "GM+" H 4206 1113 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 4100 1200 50  0001 C CNN
F 3 "" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM+ GM1
U 1 1 5D24B845
P 1500 1150
F 0 "GM1" H 1606 1154 50  0000 L CNN
F 1 "GM+" H 1606 1063 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Text GLabel 7200 4100 1    50   Input ~ 0
INT4
Text GLabel 7200 3750 1    50   Input ~ 0
INT3
Text GLabel 7200 3450 1    50   Input ~ 0
INT2
Text GLabel 7200 3150 1    50   Input ~ 0
INT1
Wire Wire Line
	7350 4100 7200 4100
Wire Wire Line
	7350 3750 7200 3750
Wire Wire Line
	7350 3450 7200 3450
Wire Wire Line
	7350 3150 7200 3150
Wire Wire Line
	7650 3150 7750 3150
Wire Wire Line
	7650 4100 7750 4100
Wire Wire Line
	7700 3750 7650 3750
Wire Wire Line
	7700 3450 7650 3450
$Comp
L Device:R R54
U 1 1 5CFDEFD8
P 7500 4100
F 0 "R54" V 7293 4100 50  0000 C CNN
F 1 "R" V 7384 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 4100 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R53
U 1 1 5CFDEFD2
P 7500 3750
F 0 "R53" V 7293 3750 50  0000 C CNN
F 1 "R" V 7384 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 3750 50  0001 C CNN
F 3 "~" H 7500 3750 50  0001 C CNN
	1    7500 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R52
U 1 1 5CFDEFCC
P 7500 3450
F 0 "R52" V 7293 3450 50  0000 C CNN
F 1 "R" V 7384 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 3450 50  0001 C CNN
F 3 "~" H 7500 3450 50  0001 C CNN
	1    7500 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R51
U 1 1 5CFDEFC6
P 7500 3150
F 0 "R51" V 7293 3150 50  0000 C CNN
F 1 "R" V 7384 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 3150 50  0001 C CNN
F 3 "~" H 7500 3150 50  0001 C CNN
	1    7500 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 1650 10250 1500
Connection ~ 10250 1500
Wire Wire Line
	10250 1500 10650 1500
Wire Wire Line
	10350 1650 10350 1400
Connection ~ 10350 1400
Wire Wire Line
	10350 1400 10050 1400
Wire Wire Line
	10450 1650 10450 1300
Connection ~ 10450 1300
Wire Wire Line
	10450 1300 10050 1300
Wire Wire Line
	10550 1650 10550 1200
Connection ~ 10550 1200
Wire Wire Line
	10550 1200 10100 1200
Wire Wire Line
	7900 3900 7900 3750
Connection ~ 7900 3750
Wire Wire Line
	7900 3750 8300 3750
Wire Wire Line
	8000 3900 8000 3650
Connection ~ 8000 3650
Wire Wire Line
	8000 3650 7700 3650
Wire Wire Line
	8100 3900 8100 3550
Connection ~ 8100 3550
Wire Wire Line
	8100 3550 7700 3550
Wire Wire Line
	8200 3900 8200 3450
Connection ~ 8200 3450
Wire Wire Line
	8200 3450 7750 3450
Wire Wire Line
	10300 3900 10300 3750
Connection ~ 10300 3750
Wire Wire Line
	10300 3750 10650 3750
Wire Wire Line
	10400 3900 10400 3650
Connection ~ 10400 3650
Wire Wire Line
	10400 3650 10150 3650
Wire Wire Line
	10500 3900 10500 3550
Connection ~ 10500 3550
Wire Wire Line
	10500 3550 10150 3550
Wire Wire Line
	10600 3900 10600 3450
Connection ~ 10600 3450
Wire Wire Line
	10600 3450 10200 3450
$Comp
L 74xx:74LS14 U2
U 2 1 5CF3A29A
P 2350 3500
F 0 "U2" H 2350 3817 50  0000 C CNN
F 1 "74LS14" H 2350 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2350 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 2350 3500 50  0001 C CNN
	2    2350 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 3 1 5CF3B0B7
P 5000 1650
F 0 "U2" H 5000 1967 50  0000 C CNN
F 1 "74LS14" H 5000 1876 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5000 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 5000 1650 50  0001 C CNN
	3    5000 1650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 4 1 5CF3C270
P 4950 3550
F 0 "U2" H 4950 3867 50  0000 C CNN
F 1 "74LS14" H 4950 3776 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4950 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4950 3550 50  0001 C CNN
	4    4950 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 5 1 5CF3D3C2
P 2900 6700
F 0 "U2" H 2900 7017 50  0000 C CNN
F 1 "74LS14" H 2900 6926 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2900 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 2900 6700 50  0001 C CNN
	5    2900 6700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 6 1 5CF3E18C
P 2900 6100
F 0 "U2" H 2900 6417 50  0000 C CNN
F 1 "74LS14" H 2900 6326 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2900 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 2900 6100 50  0001 C CNN
	6    2900 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 7 1 5CF3F128
P 4700 6400
F 0 "U2" H 4930 6446 50  0000 L CNN
F 1 "74LS14" H 4930 6355 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4700 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4700 6400 50  0001 C CNN
	7    4700 6400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 1 1 5CF391A8
P 2250 1600
F 0 "U2" H 2250 1917 50  0000 C CNN
F 1 "74LS14" H 2250 1826 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2250 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 2250 1600 50  0001 C CNN
	1    2250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1600 1800 1600
Connection ~ 1800 1600
Wire Wire Line
	2550 1600 2800 1600
Wire Wire Line
	2800 1600 2800 1450
Wire Wire Line
	2050 3500 1800 3500
Connection ~ 1800 3500
Wire Wire Line
	2650 3500 2800 3500
Wire Wire Line
	2800 3500 2800 3400
Wire Wire Line
	4700 1650 4400 1650
Connection ~ 4400 1650
Wire Wire Line
	5300 1650 5450 1650
Wire Wire Line
	5450 1650 5450 1550
Wire Wire Line
	4400 3550 4650 3550
Connection ~ 4400 3550
Wire Wire Line
	5250 3550 5400 3550
Wire Wire Line
	5400 3550 5400 3450
Wire Wire Line
	4700 6900 4700 7000
Wire Wire Line
	4700 5800 4700 5900
$Comp
L power:GND #PWR02
U 1 1 5CFEED3C
P 2400 6900
F 0 "#PWR02" H 2400 6650 50  0001 C CNN
F 1 "GND" H 2405 6727 50  0000 C CNN
F 2 "" H 2400 6900 50  0001 C CNN
F 3 "" H 2400 6900 50  0001 C CNN
	1    2400 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 2400 6700
Wire Wire Line
	2400 6700 2400 6900
Wire Wire Line
	2600 6100 2400 6100
Wire Wire Line
	2400 6100 2400 6700
Connection ~ 2400 6700
$Comp
L Device:D_Zener D2
U 1 1 5CFFC71B
P 1500 1850
F 0 "D2" V 1454 1771 50  0000 R CNN
F 1 "D_Zener" V 1545 1771 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 1500 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 5CFFD5A1
P 4100 1900
F 0 "D4" V 4054 1821 50  0000 R CNN
F 1 "D_Zener" V 4145 1821 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 4100 1900 50  0001 C CNN
F 3 "~" H 4100 1900 50  0001 C CNN
	1    4100 1900
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5CFFDF7F
P 1500 3750
F 0 "D3" V 1454 3671 50  0000 R CNN
F 1 "D_Zener" V 1545 3671 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 1500 3750 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D5
U 1 1 5CFFE60B
P 4100 3800
F 0 "D5" V 4054 3721 50  0000 R CNN
F 1 "D_Zener" V 4145 3721 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 4100 3800 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E38
P 7800 1500
AR Path="/5D291E38" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E38" Ref="J6"  Part="1" 
F 0 "J6" H 7850 1717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 7850 1626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 7800 1500 50  0001 C CNN
F 3 "~" H 7800 1500 50  0001 C CNN
	1    7800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E3E
P 8350 1500
AR Path="/5D291E3E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E3E" Ref="J7"  Part="1" 
F 0 "J7" H 8400 1717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8400 1626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 8350 1500 50  0001 C CNN
F 3 "~" H 8350 1500 50  0001 C CNN
	1    8350 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 4950 8700 4950
Wire Wire Line
	8800 4950 8800 4850
Wire Wire Line
	8800 4850 8700 4850
Connection ~ 8800 4950
Wire Wire Line
	8800 5500 8700 5500
Wire Wire Line
	8700 5400 8800 5400
Connection ~ 8800 5400
Wire Wire Line
	8800 5400 8800 5500
Wire Wire Line
	8200 4850 8150 4850
Wire Wire Line
	8150 4850 8150 4950
Wire Wire Line
	8200 4950 8150 4950
Connection ~ 8150 4950
Wire Wire Line
	8200 5500 8150 5500
Wire Wire Line
	8150 5500 8150 5400
Wire Wire Line
	8200 5400 8150 5400
Connection ~ 8150 5400
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F3875
P 9250 4850
AR Path="/5D2F3875" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F3875" Ref="J9"  Part="1" 
F 0 "J9" H 9300 5067 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 9300 4976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9250 4850 50  0001 C CNN
F 3 "~" H 9250 4850 50  0001 C CNN
	1    9250 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F3D96
P 9850 4850
AR Path="/5D2F3D96" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F3D96" Ref="J10"  Part="1" 
F 0 "J10" H 9900 5067 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 9900 4976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 9850 4850 50  0001 C CNN
F 3 "~" H 9850 4850 50  0001 C CNN
	1    9850 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F40DB
P 10450 4800
AR Path="/5D2F40DB" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F40DB" Ref="J12"  Part="1" 
F 0 "J12" H 10500 5017 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10500 4926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 10450 4800 50  0001 C CNN
F 3 "~" H 10450 4800 50  0001 C CNN
	1    10450 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F432A
P 11050 4800
AR Path="/5D2F432A" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F432A" Ref="J14"  Part="1" 
F 0 "J14" H 11100 5017 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 11100 4926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 11050 4800 50  0001 C CNN
F 3 "~" H 11050 4800 50  0001 C CNN
	1    11050 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F4802
P 9200 5350
AR Path="/5D2F4802" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F4802" Ref="J8"  Part="1" 
F 0 "J8" H 9250 5567 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 9250 5476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 9200 5350 50  0001 C CNN
F 3 "~" H 9200 5350 50  0001 C CNN
	1    9200 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F4C21
P 9850 5350
AR Path="/5D2F4C21" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F4C21" Ref="J11"  Part="1" 
F 0 "J11" H 9900 5567 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 9900 5476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 9850 5350 50  0001 C CNN
F 3 "~" H 9850 5350 50  0001 C CNN
	1    9850 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F505E
P 10550 5350
AR Path="/5D2F505E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F505E" Ref="J13"  Part="1" 
F 0 "J13" H 10600 5567 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10600 5476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 10550 5350 50  0001 C CNN
F 3 "~" H 10550 5350 50  0001 C CNN
	1    10550 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F52CC
P 11200 5350
AR Path="/5D2F52CC" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F52CC" Ref="J15"  Part="1" 
F 0 "J15" H 11250 5567 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 11250 5476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 11200 5350 50  0001 C CNN
F 3 "~" H 11200 5350 50  0001 C CNN
	1    11200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4950 8800 5400
Wire Wire Line
	8150 4950 8150 5400
Wire Wire Line
	7300 750  7400 750 
$EndSCHEMATC
