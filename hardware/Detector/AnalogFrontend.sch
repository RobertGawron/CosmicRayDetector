EESchema Schematic File Version 4
LIBS:CosmicRayDetector-cache
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
P 6300 1150
F 0 "R49" V 6093 1150 50  0000 C CNN
F 1 "R" V 6184 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 1150 50  0001 C CNN
F 3 "~" H 6300 1150 50  0001 C CNN
	1    6300 1150
	-1   0    0    1   
$EndComp
Text GLabel 6000 750  0    50   Input ~ 0
GM1
Text GLabel 2900 3400 1    50   Input ~ 0
GM2
Text GLabel 4900 1500 1    50   Input ~ 0
GM3
Text GLabel 6000 3200 0    50   Input ~ 0
GM3
Text GLabel 4900 3400 1    50   Input ~ 0
GM4
$Comp
L power:VCC #PWR0101
U 1 1 5D035C48
P 750 5100
F 0 "#PWR0101" H 750 4950 50  0001 C CNN
F 1 "VCC" H 767 5273 50  0000 C CNN
F 2 "" H 750 5100 50  0001 C CNN
F 3 "" H 750 5100 50  0001 C CNN
	1    750  5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5100 750  5200
Wire Wire Line
	750  5200 1250 5200
Wire Wire Line
	1250 5200 1250 5000
Text GLabel 1250 5000 1    50   Input ~ 0
VCC_5V
Text GLabel 6000 3350 0    50   Input ~ 0
GM4
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
L CosmicRayDetector:GM--CosmicRayDetector GM2
U 1 1 5D22EE36
P 1500 1450
F 0 "GM2" H 1606 1539 50  0000 L CNN
F 1 "GM-" H 1606 1448 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 1500 1450 50  0001 C CNN
F 3 "" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM--CosmicRayDetector GM6
U 1 1 5D24733D
P 3450 1450
F 0 "GM6" H 3528 1539 50  0000 L CNN
F 1 "GM-" H 3528 1448 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 3450 1450 50  0001 C CNN
F 3 "" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM--CosmicRayDetector GM8
U 1 1 5D2480AC
P 3450 3350
F 0 "GM8" H 3528 3439 50  0000 L CNN
F 1 "GM-" H 3528 3348 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 3450 3350 50  0001 C CNN
F 3 "" H 3450 3350 50  0001 C CNN
	1    3450 3350
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM--CosmicRayDetector GM4
U 1 1 5D248B22
P 1500 3350
F 0 "GM4" H 1578 3439 50  0000 L CNN
F 1 "GM-" H 1578 3348 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM+-CosmicRayDetector GM3
U 1 1 5D249D5F
P 1500 3050
AR Path="/5D249D5F" Ref="GM3"  Part="1" 
AR Path="/5CEF836A/5D249D5F" Ref="GM3"  Part="1" 
F 0 "GM3" H 1606 3054 50  0000 L CNN
F 1 "GM+" H 1606 2963 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM+-CosmicRayDetector GM7
U 1 1 5D24AAD1
P 3450 3050
AR Path="/5D24AAD1" Ref="GM7"  Part="1" 
AR Path="/5CEF836A/5D24AAD1" Ref="GM7"  Part="1" 
F 0 "GM7" H 3556 3054 50  0000 L CNN
F 1 "GM+" H 3556 2963 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM+-CosmicRayDetector GM5
U 1 1 5D24B23C
P 3450 1150
AR Path="/5D24B23C" Ref="GM5"  Part="1" 
AR Path="/5CEF836A/5D24B23C" Ref="GM5"  Part="1" 
F 0 "GM5" H 3556 1154 50  0000 L CNN
F 1 "GM+" H 3556 1063 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 3450 1150 50  0001 C CNN
F 3 "" H 3450 1150 50  0001 C CNN
	1    3450 1150
	1    0    0    -1  
$EndComp
$Comp
L CosmicRayDetector:GM+-CosmicRayDetector GM1
U 1 1 5D24B845
P 1500 1150
AR Path="/5D24B845" Ref="GM1"  Part="1" 
AR Path="/5CEF836A/5D24B845" Ref="GM1"  Part="1" 
F 0 "GM1" H 1606 1154 50  0000 L CNN
F 1 "GM+" H 1606 1063 50  0000 L CNN
F 2 "CosmicRayDetector:GeigerTube" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Connection ~ 1800 1600
Connection ~ 1800 3500
Wire Wire Line
	2750 3500 2900 3500
Wire Wire Line
	2900 3500 2900 3400
Connection ~ 3750 1600
Wire Wire Line
	4750 1600 4900 1600
Wire Wire Line
	4900 1600 4900 1500
Connection ~ 3750 3500
Wire Wire Line
	4750 3500 4900 3500
Wire Wire Line
	4900 3500 4900 3400
Wire Wire Line
	3550 7200 3550 7300
Wire Wire Line
	3550 6100 3550 6200
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
P 2250 5350
AR Path="/5D2F432A" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F432A" Ref="J14"  Part="1" 
F 0 "J14" V 2254 5430 50  0000 L CNN
F 1 "Conn_02x02_Odd_Even" V 2345 5430 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 2250 5350 50  0001 C CNN
F 3 "~" H 2250 5350 50  0001 C CNN
	1    2250 5350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D2F52CC
P 2800 5350
AR Path="/5D2F52CC" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D2F52CC" Ref="J15"  Part="1" 
F 0 "J15" V 2804 5430 50  0000 L CNN
F 1 "Conn_02x02_Odd_Even" V 2895 5430 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 2800 5350 50  0001 C CNN
F 3 "~" H 2800 5350 50  0001 C CNN
	1    2800 5350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E38
P 6400 2100
AR Path="/5D291E38" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E38" Ref="J6"  Part="1" 
F 0 "J6" H 6450 2317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 6450 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 6400 2100 50  0001 C CNN
F 3 "~" H 6400 2100 50  0001 C CNN
	1    6400 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D3964DC
P 6600 1150
F 0 "R3" V 6393 1150 50  0000 C CNN
F 1 "R" V 6484 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 1150 50  0001 C CNN
F 3 "~" H 6600 1150 50  0001 C CNN
	1    6600 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5D3B0333
P 7500 1150
F 0 "R5" V 7293 1150 50  0000 C CNN
F 1 "R" V 7384 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 1150 50  0001 C CNN
F 3 "~" H 7500 1150 50  0001 C CNN
	1    7500 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5D3B0590
P 7800 1150
F 0 "R7" V 7593 1150 50  0000 C CNN
F 1 "R" V 7684 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 1150 50  0001 C CNN
F 3 "~" H 7800 1150 50  0001 C CNN
	1    7800 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5D3B0BBC
P 8700 1150
F 0 "R9" V 8493 1150 50  0000 C CNN
F 1 "R" V 8584 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8630 1150 50  0001 C CNN
F 3 "~" H 8700 1150 50  0001 C CNN
	1    8700 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D3B0DBB
P 9000 1150
F 0 "R11" V 8793 1150 50  0000 C CNN
F 1 "R" V 8884 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 1150 50  0001 C CNN
F 3 "~" H 9000 1150 50  0001 C CNN
	1    9000 1150
	-1   0    0    1   
$EndComp
Text GLabel 6000 900  0    50   Input ~ 0
GM2
Wire Wire Line
	6300 750  6300 1000
Wire Wire Line
	6000 750  6300 750 
Connection ~ 6300 750 
Wire Wire Line
	7500 750  7500 1000
Connection ~ 7500 750 
Wire Wire Line
	8700 750  8700 1000
Connection ~ 8700 750 
Wire Wire Line
	6600 900  6600 1000
Wire Wire Line
	6000 900  6600 900 
Connection ~ 6600 900 
Wire Wire Line
	7800 900  7800 1000
Connection ~ 7800 900 
Wire Wire Line
	9000 900  9000 1000
Connection ~ 9000 900 
Wire Wire Line
	6300 1550 6400 1550
Wire Wire Line
	6500 1550 6600 1550
Wire Wire Line
	6600 1550 6600 1350
Wire Wire Line
	7500 1300 7500 1450
Wire Wire Line
	7500 1550 7600 1550
Wire Wire Line
	7800 1300 7800 1350
Wire Wire Line
	7800 1550 7700 1550
Wire Wire Line
	8700 1550 8700 1450
Wire Wire Line
	8700 1550 8800 1550
Wire Wire Line
	8900 1550 9000 1550
Wire Wire Line
	9000 1550 9000 1350
$Comp
L Device:R R13
U 1 1 5D4C9005
P 9900 1150
F 0 "R13" V 9693 1150 50  0000 C CNN
F 1 "R" V 9784 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 1150 50  0001 C CNN
F 3 "~" H 9900 1150 50  0001 C CNN
	1    9900 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5D4C925C
P 10200 1150
F 0 "R15" V 9993 1150 50  0000 C CNN
F 1 "R" V 10084 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 1150 50  0001 C CNN
F 3 "~" H 10200 1150 50  0001 C CNN
	1    10200 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 750  9900 1000
Wire Wire Line
	10200 900  10200 1000
Wire Wire Line
	9900 1300 9900 1450
Wire Wire Line
	9900 1550 10000 1550
Wire Wire Line
	10100 1550 10200 1550
Wire Wire Line
	10200 1550 10200 1350
$Comp
L Device:R R2
U 1 1 5D51C7C2
P 6300 2950
F 0 "R2" V 6093 2950 50  0000 C CNN
F 1 "R" V 6184 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 2950 50  0001 C CNN
F 3 "~" H 6300 2950 50  0001 C CNN
	1    6300 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5D51D7BD
P 6600 2950
F 0 "R4" V 6393 2950 50  0000 C CNN
F 1 "R" V 6484 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 2950 50  0001 C CNN
F 3 "~" H 6600 2950 50  0001 C CNN
	1    6600 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5D51DE3E
P 7500 2950
F 0 "R6" V 7293 2950 50  0000 C CNN
F 1 "R" V 7384 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 2950 50  0001 C CNN
F 3 "~" H 7500 2950 50  0001 C CNN
	1    7500 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5D51E10C
P 7800 2950
F 0 "R8" V 7593 2950 50  0000 C CNN
F 1 "R" V 7684 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 2950 50  0001 C CNN
F 3 "~" H 7800 2950 50  0001 C CNN
	1    7800 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D51E9C9
P 8700 2950
F 0 "R10" V 8493 2950 50  0000 C CNN
F 1 "R" V 8584 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8630 2950 50  0001 C CNN
F 3 "~" H 8700 2950 50  0001 C CNN
	1    8700 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D51EC12
P 9000 2950
F 0 "R12" V 8793 2950 50  0000 C CNN
F 1 "R" V 8884 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 2950 50  0001 C CNN
F 3 "~" H 9000 2950 50  0001 C CNN
	1    9000 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5D51F66D
P 9900 2950
F 0 "R14" V 9693 2950 50  0000 C CNN
F 1 "R" V 9784 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 2950 50  0001 C CNN
F 3 "~" H 9900 2950 50  0001 C CNN
	1    9900 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5D51F905
P 10200 2950
F 0 "R16" V 9993 2950 50  0000 C CNN
F 1 "R" V 10084 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 2950 50  0001 C CNN
F 3 "~" H 10200 2950 50  0001 C CNN
	1    10200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 2550 6300 2550
Wire Wire Line
	6500 2550 6600 2550
Wire Wire Line
	6600 2550 6600 2650
Wire Wire Line
	7600 2550 7500 2550
Wire Wire Line
	7500 2550 7500 2750
Wire Wire Line
	7700 2550 7800 2550
Wire Wire Line
	7800 2550 7800 2650
Wire Wire Line
	8800 2550 8700 2550
Wire Wire Line
	8700 2550 8700 2750
Wire Wire Line
	8900 2550 9000 2550
Wire Wire Line
	9000 2550 9000 2650
Wire Wire Line
	10000 2550 9900 2550
Wire Wire Line
	10100 2550 10200 2550
Wire Wire Line
	6300 3200 6300 3100
Wire Wire Line
	6000 3200 6300 3200
Connection ~ 6300 3200
Wire Wire Line
	7500 3200 7500 3100
Connection ~ 7500 3200
Wire Wire Line
	8700 3200 8700 3100
Connection ~ 8700 3200
Wire Wire Line
	9900 3200 9900 3100
Wire Wire Line
	6600 3350 6600 3100
Wire Wire Line
	6000 3350 6600 3350
Connection ~ 6600 3350
Wire Wire Line
	7800 3350 7800 3100
Connection ~ 7800 3350
Wire Wire Line
	9000 3350 9000 3100
Connection ~ 9000 3350
Wire Wire Line
	10200 3350 10200 3100
$Comp
L power:VCC #PWR04
U 1 1 5D71F41F
P 2050 5000
F 0 "#PWR04" H 2050 4850 50  0001 C CNN
F 1 "VCC" H 2067 5173 50  0000 C CNN
F 2 "" H 2050 5000 50  0001 C CNN
F 3 "" H 2050 5000 50  0001 C CNN
	1    2050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D71F8AF
P 2050 5800
F 0 "#PWR09" H 2050 5550 50  0001 C CNN
F 1 "GND" H 2055 5627 50  0000 C CNN
F 2 "" H 2050 5800 50  0001 C CNN
F 3 "" H 2050 5800 50  0001 C CNN
	1    2050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5000 2050 5100
Wire Wire Line
	2050 5100 2150 5100
Wire Wire Line
	2800 5100 2800 5150
Wire Wire Line
	2700 5150 2700 5100
Connection ~ 2700 5100
Wire Wire Line
	2700 5100 2800 5100
Wire Wire Line
	2250 5150 2250 5100
Connection ~ 2250 5100
Wire Wire Line
	2250 5100 2700 5100
Wire Wire Line
	2150 5150 2150 5100
Connection ~ 2150 5100
Wire Wire Line
	2150 5100 2250 5100
Wire Wire Line
	2050 5800 2050 5700
Wire Wire Line
	2050 5700 2150 5700
Wire Wire Line
	2800 5700 2800 5650
Wire Wire Line
	2700 5650 2700 5700
Connection ~ 2700 5700
Wire Wire Line
	2700 5700 2800 5700
Wire Wire Line
	2250 5650 2250 5700
Connection ~ 2250 5700
Wire Wire Line
	2250 5700 2700 5700
Wire Wire Line
	2150 5650 2150 5700
Connection ~ 2150 5700
Wire Wire Line
	2150 5700 2250 5700
Wire Wire Line
	6300 3200 7500 3200
Wire Wire Line
	6600 3350 7800 3350
Wire Wire Line
	6300 750  7500 750 
Wire Wire Line
	6600 900  7800 900 
Wire Wire Line
	7500 750  8700 750 
Wire Wire Line
	7800 900  9000 900 
Wire Wire Line
	7500 3200 8700 3200
Wire Wire Line
	7800 3350 9000 3350
Wire Wire Line
	8700 3200 9900 3200
Wire Wire Line
	9000 3350 10200 3350
Wire Wire Line
	8700 750  9900 750 
Wire Wire Line
	9000 900  10200 900 
Wire Wire Line
	6500 1550 6500 1750
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D291E3E
P 6750 2100
AR Path="/5D291E3E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D291E3E" Ref="J7"  Part="1" 
F 0 "J7" H 6846 1912 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 7200 1850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 6750 2100 50  0001 C CNN
F 3 "~" H 6750 2100 50  0001 C CNN
	1    6750 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 1550 6400 1700
Wire Wire Line
	6400 1700 6750 1700
Wire Wire Line
	6750 1700 6750 1800
Connection ~ 6400 1700
Wire Wire Line
	6400 1700 6400 1800
Wire Wire Line
	6500 1750 6850 1750
Wire Wire Line
	6850 1750 6850 1800
Connection ~ 6500 1750
Wire Wire Line
	6500 1750 6500 1800
Wire Wire Line
	6500 2300 6500 2350
Wire Wire Line
	6400 2300 6400 2400
Wire Wire Line
	6750 2300 6750 2400
Wire Wire Line
	6750 2400 6400 2400
Connection ~ 6400 2400
Wire Wire Line
	6400 2400 6400 2550
Wire Wire Line
	6850 2300 6850 2350
Wire Wire Line
	6850 2350 6500 2350
Connection ~ 6500 2350
Wire Wire Line
	6500 2350 6500 2550
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D96AB27
P 7600 2100
AR Path="/5D96AB27" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D96AB27" Ref="J8"  Part="1" 
F 0 "J8" H 7650 2317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 7650 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 7600 2100 50  0001 C CNN
F 3 "~" H 7600 2100 50  0001 C CNN
	1    7600 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 1550 7700 1750
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D96AB2E
P 7950 2100
AR Path="/5D96AB2E" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D96AB2E" Ref="J9"  Part="1" 
F 0 "J9" H 8046 1912 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 8400 1850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 7950 2100 50  0001 C CNN
F 3 "~" H 7950 2100 50  0001 C CNN
	1    7950 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 1550 7600 1700
Wire Wire Line
	7600 1700 7950 1700
Wire Wire Line
	7950 1700 7950 1800
Connection ~ 7600 1700
Wire Wire Line
	7600 1700 7600 1800
Wire Wire Line
	7700 1750 8050 1750
Wire Wire Line
	8050 1750 8050 1800
Connection ~ 7700 1750
Wire Wire Line
	7700 1750 7700 1800
Wire Wire Line
	7700 2300 7700 2350
Wire Wire Line
	7600 2300 7600 2400
Wire Wire Line
	7950 2300 7950 2400
Wire Wire Line
	7950 2400 7600 2400
Connection ~ 7600 2400
Wire Wire Line
	7600 2400 7600 2550
Wire Wire Line
	8050 2300 8050 2350
Wire Wire Line
	8050 2350 7700 2350
Connection ~ 7700 2350
Wire Wire Line
	7700 2350 7700 2550
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D981F04
P 8800 2100
AR Path="/5D981F04" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D981F04" Ref="J10"  Part="1" 
F 0 "J10" H 8850 2317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8850 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 8800 2100 50  0001 C CNN
F 3 "~" H 8800 2100 50  0001 C CNN
	1    8800 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1550 8900 1750
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D981F0B
P 9150 2100
AR Path="/5D981F0B" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D981F0B" Ref="J11"  Part="1" 
F 0 "J11" H 9246 1912 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 9700 1850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 9150 2100 50  0001 C CNN
F 3 "~" H 9150 2100 50  0001 C CNN
	1    9150 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 1550 8800 1700
Wire Wire Line
	8800 1700 9150 1700
Wire Wire Line
	9150 1700 9150 1800
Connection ~ 8800 1700
Wire Wire Line
	8800 1700 8800 1800
Wire Wire Line
	8900 1750 9250 1750
Wire Wire Line
	9250 1750 9250 1800
Connection ~ 8900 1750
Wire Wire Line
	8900 1750 8900 1800
Wire Wire Line
	8900 2300 8900 2350
Wire Wire Line
	8800 2300 8800 2400
Wire Wire Line
	9150 2300 9150 2400
Wire Wire Line
	9150 2400 8800 2400
Connection ~ 8800 2400
Wire Wire Line
	8800 2400 8800 2550
Wire Wire Line
	9250 2300 9250 2350
Wire Wire Line
	9250 2350 8900 2350
Connection ~ 8900 2350
Wire Wire Line
	8900 2350 8900 2550
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D98BE7C
P 10000 2100
AR Path="/5D98BE7C" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D98BE7C" Ref="J12"  Part="1" 
F 0 "J12" H 10050 2317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10050 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 10000 2100 50  0001 C CNN
F 3 "~" H 10000 2100 50  0001 C CNN
	1    10000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 1550 10100 1750
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5D98BE83
P 10350 2100
AR Path="/5D98BE83" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5D98BE83" Ref="J13"  Part="1" 
F 0 "J13" H 10446 1912 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 10850 1850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 10350 2100 50  0001 C CNN
F 3 "~" H 10350 2100 50  0001 C CNN
	1    10350 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 1550 10000 1700
Wire Wire Line
	10000 1700 10350 1700
Wire Wire Line
	10350 1700 10350 1800
Connection ~ 10000 1700
Wire Wire Line
	10000 1700 10000 1800
Wire Wire Line
	10100 1750 10450 1750
Wire Wire Line
	10450 1750 10450 1800
Connection ~ 10100 1750
Wire Wire Line
	10100 1750 10100 1800
Wire Wire Line
	10100 2300 10100 2350
Wire Wire Line
	10000 2300 10000 2400
Wire Wire Line
	10350 2300 10350 2400
Wire Wire Line
	10350 2400 10000 2400
Connection ~ 10000 2400
Wire Wire Line
	10000 2400 10000 2550
Wire Wire Line
	10450 2300 10450 2350
Wire Wire Line
	10450 2350 10100 2350
Connection ~ 10100 2350
Wire Wire Line
	10100 2350 10100 2550
Wire Wire Line
	6300 1300 6300 1450
Wire Wire Line
	6300 1450 6750 1450
Connection ~ 6300 1450
Wire Wire Line
	6300 1450 6300 1550
Wire Wire Line
	6600 1350 6750 1350
Connection ~ 6600 1350
Wire Wire Line
	6600 1350 6600 1300
Wire Wire Line
	7500 1450 8000 1450
Connection ~ 7500 1450
Wire Wire Line
	7500 1450 7500 1550
Wire Wire Line
	7800 1350 8000 1350
Connection ~ 7800 1350
Wire Wire Line
	7800 1350 7800 1550
Connection ~ 8700 1450
Wire Wire Line
	8700 1450 8700 1300
Wire Wire Line
	8700 1450 9250 1450
Wire Wire Line
	9000 1350 9250 1350
Connection ~ 9000 1350
Wire Wire Line
	9000 1350 9000 1300
Wire Wire Line
	9900 1450 10450 1450
Connection ~ 9900 1450
Wire Wire Line
	9900 1450 9900 1550
Wire Wire Line
	10200 1350 10450 1350
Connection ~ 10200 1350
Wire Wire Line
	10200 1350 10200 1300
Text GLabel 6750 1450 2    50   Input ~ 0
INT01
Text GLabel 6750 1350 2    50   Input ~ 0
INT02
Text GLabel 8000 1450 2    50   Input ~ 0
INT11
Text GLabel 8000 1350 2    50   Input ~ 0
INT12
Text GLabel 9250 1450 2    50   Input ~ 0
INT21
Text GLabel 9250 1350 2    50   Input ~ 0
INT22
Text GLabel 10450 1450 2    50   Input ~ 0
INT31
Text GLabel 10450 1350 2    50   Input ~ 0
INT32
Wire Wire Line
	6300 2550 6300 2750
Connection ~ 6300 2750
Wire Wire Line
	6300 2750 6300 2800
Wire Wire Line
	6300 2750 6750 2750
Wire Wire Line
	6750 2650 6600 2650
Connection ~ 6600 2650
Wire Wire Line
	6600 2650 6600 2800
Wire Wire Line
	8000 2750 7500 2750
Connection ~ 7500 2750
Wire Wire Line
	7500 2750 7500 2800
Wire Wire Line
	8000 2650 7800 2650
Connection ~ 7800 2650
Wire Wire Line
	7800 2650 7800 2800
Wire Wire Line
	9250 2750 8700 2750
Connection ~ 8700 2750
Wire Wire Line
	8700 2750 8700 2800
Wire Wire Line
	9250 2650 9000 2650
Connection ~ 9000 2650
Wire Wire Line
	9000 2650 9000 2800
Wire Wire Line
	10200 2550 10200 2650
Wire Wire Line
	9900 2550 9900 2750
Wire Wire Line
	10450 2750 9900 2750
Connection ~ 9900 2750
Wire Wire Line
	9900 2750 9900 2800
Wire Wire Line
	10450 2650 10200 2650
Connection ~ 10200 2650
Wire Wire Line
	10200 2650 10200 2800
Text GLabel 6750 2750 2    50   Input ~ 0
INT03
Text GLabel 6750 2650 2    50   Input ~ 0
INT04
Text GLabel 8000 2750 2    50   Input ~ 0
INT13
Text GLabel 8000 2650 2    50   Input ~ 0
INT14
Text GLabel 9250 2750 2    50   Input ~ 0
INT23
Text GLabel 9250 2650 2    50   Input ~ 0
INT24
Text GLabel 10450 2750 2    50   Input ~ 0
INT33
Text GLabel 10450 2650 2    50   Input ~ 0
INT34
$Comp
L Device:D D?
U 1 1 5DED55D9
P 6250 4600
AR Path="/5CF2BB44/5DED55D9" Ref="D?"  Part="1" 
AR Path="/5CEF836A/5DED55D9" Ref="D43"  Part="1" 
F 0 "D43" H 6250 4816 50  0000 C CNN
F 1 "1n148" H 6250 4725 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6250 4600 50  0001 C CNN
F 3 "~" H 6250 4600 50  0001 C CNN
	1    6250 4600
	1    0    0    -1  
$EndComp
Text GLabel 5900 4600 0    50   Input ~ 0
GM1
Text GLabel 5900 4900 0    50   Input ~ 0
GM2
Text GLabel 5900 5200 0    50   Input ~ 0
GM3
Text GLabel 5900 5550 0    50   Input ~ 0
GM4
$Comp
L Device:D D?
U 1 1 5DF3153F
P 6250 4900
AR Path="/5CF2BB44/5DF3153F" Ref="D?"  Part="1" 
AR Path="/5CEF836A/5DF3153F" Ref="D44"  Part="1" 
F 0 "D44" H 6250 5116 50  0000 C CNN
F 1 "1n148" H 6250 5025 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6250 4900 50  0001 C CNN
F 3 "~" H 6250 4900 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5DF318FB
P 6250 5200
AR Path="/5CF2BB44/5DF318FB" Ref="D?"  Part="1" 
AR Path="/5CEF836A/5DF318FB" Ref="D45"  Part="1" 
F 0 "D45" H 6250 5416 50  0000 C CNN
F 1 "1n148" H 6250 5325 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6250 5200 50  0001 C CNN
F 3 "~" H 6250 5200 50  0001 C CNN
	1    6250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5DF31C85
P 6250 5550
AR Path="/5CF2BB44/5DF31C85" Ref="D?"  Part="1" 
AR Path="/5CEF836A/5DF31C85" Ref="D46"  Part="1" 
F 0 "D46" H 6250 5766 50  0000 C CNN
F 1 "1n148" H 6250 5675 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 6250 5550 50  0001 C CNN
F 3 "~" H 6250 5550 50  0001 C CNN
	1    6250 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5DF32366
P 6500 4350
F 0 "R20" V 6293 4350 50  0000 C CNN
F 1 "R" V 6384 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 4350 50  0001 C CNN
F 3 "~" H 6500 4350 50  0001 C CNN
	1    6500 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 4600 6100 4600
Wire Wire Line
	5900 4900 6100 4900
Wire Wire Line
	5900 5200 6100 5200
Wire Wire Line
	5900 5550 6100 5550
Wire Wire Line
	6400 5550 6500 5550
Connection ~ 6500 5550
Wire Wire Line
	6500 5550 6500 5200
Wire Wire Line
	6500 5200 6400 5200
Wire Wire Line
	6500 5200 6500 4900
Wire Wire Line
	6500 4900 6400 4900
Connection ~ 6500 5200
Wire Wire Line
	6500 4900 6500 4600
Wire Wire Line
	6500 4600 6400 4600
Connection ~ 6500 4900
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E01EEA8
P 8150 5600
AR Path="/5E01EEA8" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5E01EEA8" Ref="J16"  Part="1" 
F 0 "J16" H 8200 5817 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8200 5726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical_SMD" H 8150 5600 50  0001 C CNN
F 3 "~" H 8150 5600 50  0001 C CNN
	1    8150 5600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E01EEAF
P 8500 5600
AR Path="/5E01EEAF" Ref="J?"  Part="1" 
AR Path="/5CEF836A/5E01EEAF" Ref="J17"  Part="1" 
F 0 "J17" H 8596 5412 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 8950 5350 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 8500 5600 50  0001 C CNN
F 3 "~" H 8500 5600 50  0001 C CNN
	1    8500 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 5150 8500 5300
Wire Wire Line
	8150 5100 8150 5150
Wire Wire Line
	8250 5250 8600 5250
Wire Wire Line
	8600 5250 8600 5300
Wire Wire Line
	8250 5250 8250 5300
Wire Wire Line
	8250 5800 8250 5850
Wire Wire Line
	8150 5800 8150 5900
Wire Wire Line
	8500 5800 8500 5900
Wire Wire Line
	8500 5900 8150 5900
Wire Wire Line
	8600 5800 8600 5850
Wire Wire Line
	8600 5850 8250 5850
$Comp
L Device:R R22
U 1 1 5E030655
P 7100 5100
F 0 "R22" V 6893 5100 50  0000 C CNN
F 1 "R" V 6984 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 5100 50  0001 C CNN
F 3 "~" H 7100 5100 50  0001 C CNN
	1    7100 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5E099A72
P 7100 5400
F 0 "R24" V 6893 5400 50  0000 C CNN
F 1 "R" V 6984 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 5400 50  0001 C CNN
F 3 "~" H 7100 5400 50  0001 C CNN
	1    7100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5E099C4C
P 7100 5700
F 0 "R25" V 6893 5700 50  0000 C CNN
F 1 "R" V 6984 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 5700 50  0001 C CNN
F 3 "~" H 7100 5700 50  0001 C CNN
	1    7100 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5E099E5B
P 7100 6000
F 0 "R26" V 6893 6000 50  0000 C CNN
F 1 "R" V 6984 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 6000 50  0001 C CNN
F 3 "~" H 7100 6000 50  0001 C CNN
	1    7100 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 5400 6900 5400
Wire Wire Line
	6900 5400 6900 5550
Wire Wire Line
	6900 5700 6950 5700
Connection ~ 6900 5550
Wire Wire Line
	6900 5550 6900 5700
Wire Wire Line
	6900 5400 6900 5100
Wire Wire Line
	6900 5100 6950 5100
Connection ~ 6900 5400
Wire Wire Line
	6900 5700 6900 6000
Wire Wire Line
	6900 6000 6950 6000
Connection ~ 6900 5700
Wire Wire Line
	7250 5400 7450 5400
Wire Wire Line
	7850 5400 7850 4950
Wire Wire Line
	7850 4950 8600 4950
Wire Wire Line
	8600 4950 8600 5250
Connection ~ 8600 5250
Wire Wire Line
	8600 6100 8600 5850
Connection ~ 8600 5850
Wire Wire Line
	7250 6000 7650 6000
Wire Wire Line
	8150 6000 8150 5900
Connection ~ 8150 5900
Wire Wire Line
	8500 5150 8150 5150
Connection ~ 8150 5150
Wire Wire Line
	8150 5150 8150 5300
Wire Wire Line
	7850 6100 8600 6100
Wire Wire Line
	7250 5700 7550 5700
Wire Wire Line
	7850 5700 7850 6100
Wire Wire Line
	7250 5100 7350 5100
Wire Wire Line
	7350 5100 7350 6250
Connection ~ 7350 5100
Text GLabel 7350 6250 3    50   Input ~ 0
ROW0
Text GLabel 7450 6250 3    50   Input ~ 0
ROW1
Text GLabel 7550 6250 3    50   Input ~ 0
ROW2
Text GLabel 7650 6250 3    50   Input ~ 0
ROW3
$Comp
L power:VCC #PWR013
U 1 1 5E3676D4
P 6500 4100
F 0 "#PWR013" H 6500 3950 50  0001 C CNN
F 1 "VCC" H 6517 4273 50  0000 C CNN
F 2 "" H 6500 4100 50  0001 C CNN
F 3 "" H 6500 4100 50  0001 C CNN
	1    6500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4100 6500 4200
Wire Wire Line
	6500 4500 6500 4600
Connection ~ 6500 4600
$Comp
L 4xxx:HEF4093B U2
U 2 1 5E666598
P 4450 3500
F 0 "U2" H 4450 3825 50  0000 C CNN
F 1 "HEF4093B" H 4450 3734 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4450 3500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 4450 3500 50  0001 C CNN
	2    4450 3500
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:HEF4093B U2
U 3 1 5E668E20
P 2400 1600
F 0 "U2" H 2400 1925 50  0000 C CNN
F 1 "HEF4093B" H 2400 1834 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2400 1600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 2400 1600 50  0001 C CNN
	3    2400 1600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:HEF4093B U2
U 4 1 5E66A76F
P 2450 3500
F 0 "U2" H 2450 3825 50  0000 C CNN
F 1 "HEF4093B" H 2450 3734 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 3500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 2450 3500 50  0001 C CNN
	4    2450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5550 6900 5550
$Comp
L 4xxx:HEF4093B U2
U 5 1 5E66C6CF
P 3550 6700
F 0 "U2" H 3780 6746 50  0000 L CNN
F 1 "HEF4093B" H 3780 6655 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3550 6700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 3550 6700 50  0001 C CNN
	5    3550 6700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:HEF4093B U2
U 1 1 5E66490D
P 4450 1600
F 0 "U2" H 4450 1925 50  0000 C CNN
F 1 "HEF4093B" H 4450 1834 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4450 1600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 4450 1600 50  0001 C CNN
	1    4450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1600
Wire Wire Line
	2050 1500 2100 1500
Wire Wire Line
	1800 1600 2050 1600
Connection ~ 2050 1600
Wire Wire Line
	2050 1600 2050 1500
Wire Wire Line
	2150 3400 2100 3400
Wire Wire Line
	2100 3400 2100 3500
Wire Wire Line
	2100 3600 2150 3600
Wire Wire Line
	1800 3500 2100 3500
Connection ~ 2100 3500
Wire Wire Line
	2100 3500 2100 3600
Wire Wire Line
	2700 1600 2850 1600
Wire Wire Line
	2850 1600 2850 1450
Text GLabel 2850 1450 1    50   Input ~ 0
GM1
Wire Wire Line
	4150 1500 4100 1500
Wire Wire Line
	4100 1500 4100 1600
Wire Wire Line
	4100 1700 4150 1700
Wire Wire Line
	3750 1600 4100 1600
Connection ~ 4100 1600
Wire Wire Line
	4100 1600 4100 1700
Wire Wire Line
	4150 3600 4100 3600
Wire Wire Line
	4100 3400 4150 3400
Wire Wire Line
	4100 3600 4100 3500
Wire Wire Line
	3750 3500 4100 3500
Connection ~ 4100 3500
Wire Wire Line
	4100 3500 4100 3400
Wire Wire Line
	7350 5100 8150 5100
Wire Wire Line
	7450 6250 7450 5400
Connection ~ 7450 5400
Wire Wire Line
	7450 5400 7850 5400
Wire Wire Line
	7550 6250 7550 5700
Connection ~ 7550 5700
Wire Wire Line
	7550 5700 7850 5700
Wire Wire Line
	7650 6250 7650 6000
Connection ~ 7650 6000
Wire Wire Line
	7650 6000 8150 6000
$EndSCHEMATC
