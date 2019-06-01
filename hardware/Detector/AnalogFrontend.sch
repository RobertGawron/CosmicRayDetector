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
P 2900 6650
F 0 "C23" H 3015 6696 50  0000 L CNN
F 1 "C" H 3015 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2938 6500 50  0001 C CNN
F 3 "~" H 2900 6650 50  0001 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CF09188
P 3550 7350
F 0 "#PWR030" H 3550 7100 50  0001 C CNN
F 1 "GND" H 3555 7177 50  0000 C CNN
F 2 "" H 3550 7350 50  0001 C CNN
F 3 "" H 3550 7350 50  0001 C CNN
	1    3550 7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR029
U 1 1 5CF094A6
P 3550 6050
F 0 "#PWR029" H 3550 5900 50  0001 C CNN
F 1 "VCC" H 3567 6223 50  0000 C CNN
F 2 "" H 3550 6050 50  0001 C CNN
F 3 "" H 3550 6050 50  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7350 3550 7300
Wire Wire Line
	2900 6800 2900 7300
Wire Wire Line
	2900 7300 3550 7300
Connection ~ 3550 7300
Wire Wire Line
	2900 6500 2900 6100
Wire Wire Line
	2900 6100 3550 6100
Wire Wire Line
	3550 6100 3550 6050
Connection ~ 3550 6100
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
P 3450 900
F 0 "R37" H 3520 946 50  0000 L CNN
F 1 "R" H 3520 855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 900 50  0001 C CNN
F 3 "~" H 3450 900 50  0001 C CNN
	1    3450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5CF2D4A1
P 3450 2050
F 0 "#PWR038" H 3450 1800 50  0001 C CNN
F 1 "GND" H 3455 1877 50  0000 C CNN
F 2 "" H 3450 2050 50  0001 C CNN
F 3 "" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1700 3450 1600
Connection ~ 3450 1600
Wire Wire Line
	3450 2050 3450 2000
$Comp
L Device:C C24
U 1 1 5CF2D4BE
P 3750 1850
F 0 "C24" H 3865 1896 50  0000 L CNN
F 1 "C" H 3865 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3788 1700 50  0001 C CNN
F 3 "~" H 3750 1850 50  0001 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5CF2D4C4
P 3750 2050
F 0 "#PWR042" H 3750 1800 50  0001 C CNN
F 1 "GND" H 3755 1877 50  0000 C CNN
F 2 "" H 3750 2050 50  0001 C CNN
F 3 "" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2050 3750 2000
Wire Wire Line
	3750 1700 3750 1600
Wire Wire Line
	3750 1600 3450 1600
Wire Wire Line
	3450 750  3450 700 
$Comp
L Device:R R39
U 1 1 5CF43CA6
P 3450 2800
F 0 "R39" H 3520 2846 50  0000 L CNN
F 1 "R" H 3520 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 2800 50  0001 C CNN
F 3 "~" H 3450 2800 50  0001 C CNN
	1    3450 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5CF43CAC
P 3450 3950
F 0 "#PWR040" H 3450 3700 50  0001 C CNN
F 1 "GND" H 3455 3777 50  0000 C CNN
F 2 "" H 3450 3950 50  0001 C CNN
F 3 "" H 3450 3950 50  0001 C CNN
	1    3450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3600 3450 3500
Connection ~ 3450 3500
Wire Wire Line
	3450 3950 3450 3900
$Comp
L Device:C C25
U 1 1 5CF43CC9
P 3750 3750
F 0 "C25" H 3865 3796 50  0000 L CNN
F 1 "C" H 3865 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3788 3600 50  0001 C CNN
F 3 "~" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5CF43CCF
P 3750 3950
F 0 "#PWR045" H 3750 3700 50  0001 C CNN
F 1 "GND" H 3755 3777 50  0000 C CNN
F 2 "" H 3750 3950 50  0001 C CNN
F 3 "" H 3750 3950 50  0001 C CNN
	1    3750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3950 3750 3900
Wire Wire Line
	3750 3600 3750 3500
Wire Wire Line
	3750 3500 3450 3500
Wire Wire Line
	3450 2650 3450 2600
$Comp
L Device:R R49
U 1 1 5CF8F667
P 6350 1600
F 0 "R49" V 6143 1600 50  0000 C CNN
F 1 "R" V 6234 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 1600 50  0001 C CNN
F 3 "~" H 6350 1600 50  0001 C CNN
	1    6350 1600
	-1   0    0    1   
$EndComp
Text GLabel 2800 1450 1    50   Input ~ 0
INT1
Text GLabel 6050 1200 0    50   Input ~ 0
INT1
Text GLabel 2800 3400 1    50   Input ~ 0
INT2
Text GLabel 4800 1500 1    50   Input ~ 0
INT3
Text GLabel 6050 3600 0    50   Input ~ 0
INT3
Text GLabel 4750 3400 1    50   Input ~ 0
INT4
$Comp
L power:VCC #PWR0101
U 1 1 5D035C48
P 4400 6400
F 0 "#PWR0101" H 4400 6250 50  0001 C CNN
F 1 "VCC" H 4417 6573 50  0000 C CNN
F 2 "" H 4400 6400 50  0001 C CNN
F 3 "" H 4400 6400 50  0001 C CNN
	1    4400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6400 4400 6500
Wire Wire Line
	4400 6500 4900 6500
Wire Wire Line
	4900 6500 4900 6300
Text GLabel 4900 6300 1    50   Input ~ 0
VCC_5V
Text GLabel 6050 3750 0    50   Input ~ 0
INT4
Text GLabel 1500 700  0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 1500 2600 0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 3450 700  0    50   Input ~ 0
GM_LAMP_POLARIZATION
Text GLabel 3450 2600 0    50   Input ~ 0
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
	3450 1050 3450 1150
Wire Wire Line
	3450 1450 3450 1600
Wire Wire Line
	3450 2950 3450 3050
Wire Wire Line
	3450 3350 3450 3500
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
P 3450 1450
F 0 "GM6" H 3528 1539 50  0000 L CNN
F 1 "GM-" H 3528 1448 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 3450 1450 50  0001 C CNN
F 3 "" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM- GM8
U 1 1 5D2480AC
P 3450 3350
F 0 "GM8" H 3528 3439 50  0000 L CNN
F 1 "GM-" H 3528 3348 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 3450 3350 50  0001 C CNN
F 3 "" H 3450 3350 50  0001 C CNN
	1    3450 3350
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
P 3450 3050
F 0 "GM7" H 3556 3054 50  0000 L CNN
F 1 "GM+" H 3556 2963 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L MuonDetector:GM+ GM5
U 1 1 5D24B23C
P 3450 1150
F 0 "GM5" H 3556 1154 50  0000 L CNN
F 1 "GM+" H 3556 1063 50  0000 L CNN
F 2 "MuonDetector:GeigerTube" H 3450 1150 50  0001 C CNN
F 3 "" H 3450 1150 50  0001 C CNN
	1    3450 1150
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
P 4350 1600
F 0 "U2" H 4350 1917 50  0000 C CNN
F 1 "74LS14" H 4350 1826 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4350 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4350 1600 50  0001 C CNN
	3    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 4 1 5CF3C270
P 4300 3500
F 0 "U2" H 4300 3817 50  0000 C CNN
F 1 "74LS14" H 4300 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4300 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4300 3500 50  0001 C CNN
	4    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 5 1 5CF3D3C2
P 1750 7000
F 0 "U2" H 1750 7317 50  0000 C CNN
F 1 "74LS14" H 1750 7226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1750 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 1750 7000 50  0001 C CNN
	5    1750 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 6 1 5CF3E18C
P 1750 6400
F 0 "U2" H 1750 6717 50  0000 C CNN
F 1 "74LS14" H 1750 6626 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1750 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 1750 6400 50  0001 C CNN
	6    1750 6400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U2
U 7 1 5CF3F128
P 3550 6700
F 0 "U2" H 3780 6746 50  0000 L CNN
F 1 "74LS14" H 3780 6655 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3550 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 3550 6700 50  0001 C CNN
	7    3550 6700
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
	4050 1600 3750 1600
Connection ~ 3750 1600
Wire Wire Line
	4650 1600 4800 1600
Wire Wire Line
	4800 1600 4800 1500
Wire Wire Line
	3750 3500 4000 3500
Connection ~ 3750 3500
Wire Wire Line
	4600 3500 4750 3500
Wire Wire Line
	4750 3500 4750 3400
Wire Wire Line
	3550 7200 3550 7300
Wire Wire Line
	3550 6100 3550 6200
$Comp
L power:GND #PWR02
U 1 1 5CFEED3C
P 1250 7200
F 0 "#PWR02" H 1250 6950 50  0001 C CNN
F 1 "GND" H 1255 7027 50  0000 C CNN
F 2 "" H 1250 7200 50  0001 C CNN
F 3 "" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7000 1250 7000
Wire Wire Line
	1250 7000 1250 7200
Wire Wire Line
	1450 6400 1250 6400
Wire Wire Line
	1250 6400 1250 7000
Connection ~ 1250 7000
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
P 3450 1850
F 0 "D4" V 3404 1771 50  0000 R CNN
F 1 "D_Zener" V 3495 1771 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 3450 1850 50  0001 C CNN
F 3 "~" H 3450 1850 50  0001 C CNN
	1    3450 1850
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
P 3450 3750
F 0 "D5" V 3404 3671 50  0000 R CNN
F 1 "D_Zener" V 3495 3671 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 3450 3750 50  0001 C CNN
F 3 "~" H 3450 3750 50  0001 C CNN
	1    3450 3750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F432A
P 5900 6650
AR Path="/5D2F432A" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F432A" Ref="J14"  Part="1" 
F 0 "J14" V 5904 6730 50  0000 L CNN
F 1 "Conn_02x02_Odd_Even" V 5995 6730 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 5900 6650 50  0001 C CNN
F 3 "~" H 5900 6650 50  0001 C CNN
	1    5900 6650
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F52CC
P 6450 6650
AR Path="/5D2F52CC" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F52CC" Ref="J15"  Part="1" 
F 0 "J15" V 6454 6730 50  0000 L CNN
F 1 "Conn_02x02_Odd_Even" V 6545 6730 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 6450 6650 50  0001 C CNN
F 3 "~" H 6450 6650 50  0001 C CNN
	1    6450 6650
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E38
P 6450 2500
AR Path="/5D291E38" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E38" Ref="J6"  Part="1" 
F 0 "J6" H 6500 2717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 6500 2626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 6450 2500 50  0001 C CNN
F 3 "~" H 6450 2500 50  0001 C CNN
	1    6450 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D3964DC
P 6650 1600
F 0 "R3" V 6443 1600 50  0000 C CNN
F 1 "R" V 6534 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 1600 50  0001 C CNN
F 3 "~" H 6650 1600 50  0001 C CNN
	1    6650 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5D3B0333
P 7550 1600
F 0 "R5" V 7343 1600 50  0000 C CNN
F 1 "R" V 7434 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 1600 50  0001 C CNN
F 3 "~" H 7550 1600 50  0001 C CNN
	1    7550 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5D3B0590
P 7850 1600
F 0 "R7" V 7643 1600 50  0000 C CNN
F 1 "R" V 7734 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 1600 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5D3B0BBC
P 8750 1600
F 0 "R9" V 8543 1600 50  0000 C CNN
F 1 "R" V 8634 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 1600 50  0001 C CNN
F 3 "~" H 8750 1600 50  0001 C CNN
	1    8750 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D3B0DBB
P 9050 1600
F 0 "R11" V 8843 1600 50  0000 C CNN
F 1 "R" V 8934 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 1600 50  0001 C CNN
F 3 "~" H 9050 1600 50  0001 C CNN
	1    9050 1600
	-1   0    0    1   
$EndComp
Text GLabel 6050 1350 0    50   Input ~ 0
INT2
Wire Wire Line
	6350 1200 6350 1450
Wire Wire Line
	6050 1200 6350 1200
Connection ~ 6350 1200
Wire Wire Line
	7550 1200 7550 1450
Connection ~ 7550 1200
Wire Wire Line
	8750 1200 8750 1450
Connection ~ 8750 1200
Wire Wire Line
	6650 1350 6650 1450
Wire Wire Line
	6050 1350 6650 1350
Connection ~ 6650 1350
Wire Wire Line
	7850 1350 7850 1450
Connection ~ 7850 1350
Wire Wire Line
	9050 1350 9050 1450
Connection ~ 9050 1350
Wire Wire Line
	6350 1950 6450 1950
Wire Wire Line
	6550 1950 6650 1950
Wire Wire Line
	6650 1950 6650 1800
Wire Wire Line
	7550 1750 7550 1850
Wire Wire Line
	7550 1950 7650 1950
Wire Wire Line
	7850 1750 7850 1800
Wire Wire Line
	7850 1950 7750 1950
Wire Wire Line
	8750 1950 8750 1850
Wire Wire Line
	8750 1950 8850 1950
Wire Wire Line
	8950 1950 9050 1950
Wire Wire Line
	9050 1950 9050 1800
$Comp
L Device:R R13
U 1 1 5D4C9005
P 9950 1600
F 0 "R13" V 9743 1600 50  0000 C CNN
F 1 "R" V 9834 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 1600 50  0001 C CNN
F 3 "~" H 9950 1600 50  0001 C CNN
	1    9950 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5D4C925C
P 10250 1600
F 0 "R15" V 10043 1600 50  0000 C CNN
F 1 "R" V 10134 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 1200 9950 1450
Wire Wire Line
	10250 1350 10250 1450
Wire Wire Line
	9950 1750 9950 1850
Wire Wire Line
	9950 1950 10050 1950
Wire Wire Line
	10150 1950 10250 1950
Wire Wire Line
	10250 1950 10250 1800
$Comp
L Device:R R2
U 1 1 5D51C7C2
P 6350 3350
F 0 "R2" V 6143 3350 50  0000 C CNN
F 1 "R" V 6234 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 3350 50  0001 C CNN
F 3 "~" H 6350 3350 50  0001 C CNN
	1    6350 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5D51D7BD
P 6650 3350
F 0 "R4" V 6443 3350 50  0000 C CNN
F 1 "R" V 6534 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 3350 50  0001 C CNN
F 3 "~" H 6650 3350 50  0001 C CNN
	1    6650 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5D51DE3E
P 7550 3350
F 0 "R6" V 7343 3350 50  0000 C CNN
F 1 "R" V 7434 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 3350 50  0001 C CNN
F 3 "~" H 7550 3350 50  0001 C CNN
	1    7550 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5D51E10C
P 7850 3350
F 0 "R8" V 7643 3350 50  0000 C CNN
F 1 "R" V 7734 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 3350 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
	1    7850 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D51E9C9
P 8750 3350
F 0 "R10" V 8543 3350 50  0000 C CNN
F 1 "R" V 8634 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 3350 50  0001 C CNN
F 3 "~" H 8750 3350 50  0001 C CNN
	1    8750 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D51EC12
P 9050 3350
F 0 "R12" V 8843 3350 50  0000 C CNN
F 1 "R" V 8934 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 3350 50  0001 C CNN
F 3 "~" H 9050 3350 50  0001 C CNN
	1    9050 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5D51F66D
P 9950 3350
F 0 "R14" V 9743 3350 50  0000 C CNN
F 1 "R" V 9834 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 3350 50  0001 C CNN
F 3 "~" H 9950 3350 50  0001 C CNN
	1    9950 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5D51F905
P 10250 3350
F 0 "R16" V 10043 3350 50  0000 C CNN
F 1 "R" V 10134 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 3350 50  0001 C CNN
F 3 "~" H 10250 3350 50  0001 C CNN
	1    10250 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 2950 6350 2950
Wire Wire Line
	6350 2950 6350 3200
Wire Wire Line
	6550 2950 6650 2950
Wire Wire Line
	6650 2950 6650 3200
Wire Wire Line
	7650 2950 7550 2950
Wire Wire Line
	7550 2950 7550 3200
Wire Wire Line
	7750 2950 7850 2950
Wire Wire Line
	7850 2950 7850 3200
Wire Wire Line
	8850 2950 8750 2950
Wire Wire Line
	8750 2950 8750 3200
Wire Wire Line
	8950 2950 9050 2950
Wire Wire Line
	9050 2950 9050 3200
Wire Wire Line
	10050 2950 9950 2950
Wire Wire Line
	9950 2950 9950 3200
Wire Wire Line
	10150 2950 10250 2950
Wire Wire Line
	10250 2950 10250 3200
Wire Wire Line
	6350 3600 6350 3500
Wire Wire Line
	6050 3600 6350 3600
Connection ~ 6350 3600
Wire Wire Line
	7550 3600 7550 3500
Connection ~ 7550 3600
Wire Wire Line
	8750 3600 8750 3500
Connection ~ 8750 3600
Wire Wire Line
	9950 3600 9950 3500
Wire Wire Line
	6650 3750 6650 3500
Wire Wire Line
	6050 3750 6650 3750
Connection ~ 6650 3750
Wire Wire Line
	7850 3750 7850 3500
Connection ~ 7850 3750
Wire Wire Line
	9050 3750 9050 3500
Connection ~ 9050 3750
Wire Wire Line
	10250 3750 10250 3500
$Comp
L power:VCC #PWR04
U 1 1 5D71F41F
P 5700 6300
F 0 "#PWR04" H 5700 6150 50  0001 C CNN
F 1 "VCC" H 5717 6473 50  0000 C CNN
F 2 "" H 5700 6300 50  0001 C CNN
F 3 "" H 5700 6300 50  0001 C CNN
	1    5700 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D71F8AF
P 5700 7100
F 0 "#PWR09" H 5700 6850 50  0001 C CNN
F 1 "GND" H 5705 6927 50  0000 C CNN
F 2 "" H 5700 7100 50  0001 C CNN
F 3 "" H 5700 7100 50  0001 C CNN
	1    5700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6300 5700 6400
Wire Wire Line
	5700 6400 5800 6400
Wire Wire Line
	6450 6400 6450 6450
Wire Wire Line
	6350 6450 6350 6400
Connection ~ 6350 6400
Wire Wire Line
	6350 6400 6450 6400
Wire Wire Line
	5900 6450 5900 6400
Connection ~ 5900 6400
Wire Wire Line
	5900 6400 6350 6400
Wire Wire Line
	5800 6450 5800 6400
Connection ~ 5800 6400
Wire Wire Line
	5800 6400 5900 6400
Wire Wire Line
	5700 7100 5700 7000
Wire Wire Line
	5700 7000 5800 7000
Wire Wire Line
	6450 7000 6450 6950
Wire Wire Line
	6350 6950 6350 7000
Connection ~ 6350 7000
Wire Wire Line
	6350 7000 6450 7000
Wire Wire Line
	5900 6950 5900 7000
Connection ~ 5900 7000
Wire Wire Line
	5900 7000 6350 7000
Wire Wire Line
	5800 6950 5800 7000
Connection ~ 5800 7000
Wire Wire Line
	5800 7000 5900 7000
Wire Wire Line
	6350 3600 7550 3600
Wire Wire Line
	6650 3750 7850 3750
Wire Wire Line
	6350 1200 7550 1200
Wire Wire Line
	6650 1350 7850 1350
Wire Wire Line
	7550 1200 8750 1200
Wire Wire Line
	7850 1350 9050 1350
Wire Wire Line
	7550 3600 8750 3600
Wire Wire Line
	7850 3750 9050 3750
Wire Wire Line
	8750 3600 9950 3600
Wire Wire Line
	9050 3750 10250 3750
Wire Wire Line
	8750 1200 9950 1200
Wire Wire Line
	9050 1350 10250 1350
Wire Wire Line
	6550 1950 6550 2150
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E3E
P 6800 2500
AR Path="/5D291E3E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E3E" Ref="J7"  Part="1" 
F 0 "J7" H 6896 2312 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 7250 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 6800 2500 50  0001 C CNN
F 3 "~" H 6800 2500 50  0001 C CNN
	1    6800 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 1950 6450 2100
Wire Wire Line
	6450 2100 6800 2100
Wire Wire Line
	6800 2100 6800 2200
Connection ~ 6450 2100
Wire Wire Line
	6450 2100 6450 2200
Wire Wire Line
	6550 2150 6900 2150
Wire Wire Line
	6900 2150 6900 2200
Connection ~ 6550 2150
Wire Wire Line
	6550 2150 6550 2200
Wire Wire Line
	6550 2700 6550 2750
Wire Wire Line
	6450 2700 6450 2800
Wire Wire Line
	6800 2700 6800 2800
Wire Wire Line
	6800 2800 6450 2800
Connection ~ 6450 2800
Wire Wire Line
	6450 2800 6450 2950
Wire Wire Line
	6900 2700 6900 2750
Wire Wire Line
	6900 2750 6550 2750
Connection ~ 6550 2750
Wire Wire Line
	6550 2750 6550 2950
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D96AB27
P 7650 2500
AR Path="/5D96AB27" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D96AB27" Ref="J8"  Part="1" 
F 0 "J8" H 7700 2717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 7700 2626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 7650 2500 50  0001 C CNN
F 3 "~" H 7650 2500 50  0001 C CNN
	1    7650 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 1950 7750 2150
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D96AB2E
P 8000 2500
AR Path="/5D96AB2E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D96AB2E" Ref="J9"  Part="1" 
F 0 "J9" H 8096 2312 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 8450 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 8000 2500 50  0001 C CNN
F 3 "~" H 8000 2500 50  0001 C CNN
	1    8000 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 1950 7650 2100
Wire Wire Line
	7650 2100 8000 2100
Wire Wire Line
	8000 2100 8000 2200
Connection ~ 7650 2100
Wire Wire Line
	7650 2100 7650 2200
Wire Wire Line
	7750 2150 8100 2150
Wire Wire Line
	8100 2150 8100 2200
Connection ~ 7750 2150
Wire Wire Line
	7750 2150 7750 2200
Wire Wire Line
	7750 2700 7750 2750
Wire Wire Line
	7650 2700 7650 2800
Wire Wire Line
	8000 2700 8000 2800
Wire Wire Line
	8000 2800 7650 2800
Connection ~ 7650 2800
Wire Wire Line
	7650 2800 7650 2950
Wire Wire Line
	8100 2700 8100 2750
Wire Wire Line
	8100 2750 7750 2750
Connection ~ 7750 2750
Wire Wire Line
	7750 2750 7750 2950
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D981F04
P 8850 2500
AR Path="/5D981F04" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D981F04" Ref="J10"  Part="1" 
F 0 "J10" H 8900 2717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8900 2626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 8850 2500 50  0001 C CNN
F 3 "~" H 8850 2500 50  0001 C CNN
	1    8850 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 1950 8950 2150
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D981F0B
P 9200 2500
AR Path="/5D981F0B" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D981F0B" Ref="J11"  Part="1" 
F 0 "J11" H 9296 2312 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 9750 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 9200 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9200 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 1950 8850 2100
Wire Wire Line
	8850 2100 9200 2100
Wire Wire Line
	9200 2100 9200 2200
Connection ~ 8850 2100
Wire Wire Line
	8850 2100 8850 2200
Wire Wire Line
	8950 2150 9300 2150
Wire Wire Line
	9300 2150 9300 2200
Connection ~ 8950 2150
Wire Wire Line
	8950 2150 8950 2200
Wire Wire Line
	8950 2700 8950 2750
Wire Wire Line
	8850 2700 8850 2800
Wire Wire Line
	9200 2700 9200 2800
Wire Wire Line
	9200 2800 8850 2800
Connection ~ 8850 2800
Wire Wire Line
	8850 2800 8850 2950
Wire Wire Line
	9300 2700 9300 2750
Wire Wire Line
	9300 2750 8950 2750
Connection ~ 8950 2750
Wire Wire Line
	8950 2750 8950 2950
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D98BE7C
P 10050 2500
AR Path="/5D98BE7C" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D98BE7C" Ref="J12"  Part="1" 
F 0 "J12" H 10100 2717 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10100 2626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 10050 2500 50  0001 C CNN
F 3 "~" H 10050 2500 50  0001 C CNN
	1    10050 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 1950 10150 2150
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D98BE83
P 10400 2500
AR Path="/5D98BE83" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D98BE83" Ref="J13"  Part="1" 
F 0 "J13" H 10496 2312 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 10900 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 10400 2500 50  0001 C CNN
F 3 "~" H 10400 2500 50  0001 C CNN
	1    10400 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 1950 10050 2100
Wire Wire Line
	10050 2100 10400 2100
Wire Wire Line
	10400 2100 10400 2200
Connection ~ 10050 2100
Wire Wire Line
	10050 2100 10050 2200
Wire Wire Line
	10150 2150 10500 2150
Wire Wire Line
	10500 2150 10500 2200
Connection ~ 10150 2150
Wire Wire Line
	10150 2150 10150 2200
Wire Wire Line
	10150 2700 10150 2750
Wire Wire Line
	10050 2700 10050 2800
Wire Wire Line
	10400 2700 10400 2800
Wire Wire Line
	10400 2800 10050 2800
Connection ~ 10050 2800
Wire Wire Line
	10050 2800 10050 2950
Wire Wire Line
	10500 2700 10500 2750
Wire Wire Line
	10500 2750 10150 2750
Connection ~ 10150 2750
Wire Wire Line
	10150 2750 10150 2950
Wire Wire Line
	6350 1750 6350 1850
Wire Wire Line
	6350 1850 6800 1850
Connection ~ 6350 1850
Wire Wire Line
	6350 1850 6350 1950
Wire Wire Line
	6650 1800 6800 1800
Connection ~ 6650 1800
Wire Wire Line
	6650 1800 6650 1750
Wire Wire Line
	7550 1850 8050 1850
Connection ~ 7550 1850
Wire Wire Line
	7550 1850 7550 1950
Wire Wire Line
	7850 1800 8050 1800
Connection ~ 7850 1800
Wire Wire Line
	7850 1800 7850 1950
Connection ~ 8750 1850
Wire Wire Line
	8750 1850 8750 1750
Wire Wire Line
	8750 1850 9300 1850
Wire Wire Line
	9050 1800 9300 1800
Connection ~ 9050 1800
Wire Wire Line
	9050 1800 9050 1750
Wire Wire Line
	9950 1850 10500 1850
Connection ~ 9950 1850
Wire Wire Line
	9950 1850 9950 1950
Wire Wire Line
	10250 1800 10500 1800
Connection ~ 10250 1800
Wire Wire Line
	10250 1800 10250 1750
$EndSCHEMATC
