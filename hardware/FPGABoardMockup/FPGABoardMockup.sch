EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Mechanical:MountingHole H1
U 1 1 5D70F54C
P 2400 3150
F 0 "H1" H 2500 3196 50  0000 L CNN
F 1 "MountingHole" H 2500 3105 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 2400 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D70F92D
P 2400 3350
F 0 "H2" H 2500 3396 50  0000 L CNN
F 1 "MountingHole" H 2500 3305 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 2400 3350 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D70FB30
P 2400 3550
F 0 "H3" H 2500 3596 50  0000 L CNN
F 1 "MountingHole" H 2500 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 2400 3550 50  0001 C CNN
F 3 "~" H 2400 3550 50  0001 C CNN
	1    2400 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D70FD12
P 2400 3750
F 0 "H4" H 2500 3796 50  0000 L CNN
F 1 "MountingHole" H 2500 3705 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 2400 3750 50  0001 C CNN
F 3 "~" H 2400 3750 50  0001 C CNN
	1    2400 3750
	1    0    0    -1  
$EndComp
Text Notes 1050 1050 0    79   ~ 16
This project is used only as a model for Freecad. Do not add any components here.
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J7
U 1 1 5D710A2E
P 9300 2450
F 0 "J7" H 9350 3267 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 9350 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 9300 2450 50  0001 C CNN
F 3 "~" H 9300 2450 50  0001 C CNN
	1    9300 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x11_Counter_Clockwise J8
U 1 1 5D713960
P 9300 4300
F 0 "J8" H 9350 5017 50  0000 C CNN
F 1 "Conn_02x11_Counter_Clockwise" H 9350 4926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x11_P2.54mm_Vertical" H 9300 4300 50  0001 C CNN
F 3 "~" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x11_Counter_Clockwise J2
U 1 1 5D71553D
P 6700 4300
F 0 "J2" H 6750 5017 50  0000 C CNN
F 1 "Conn_02x11_Counter_Clockwise" H 6750 4926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x11_P2.54mm_Vertical" H 6700 4300 50  0001 C CNN
F 3 "~" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J1
U 1 1 5D716270
P 6700 2400
F 0 "J1" H 6750 3217 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 6750 3126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x14_P2.54mm_Vertical" H 6700 2400 50  0001 C CNN
F 3 "~" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J6
U 1 1 5D717C7A
P 8650 5350
F 0 "J6" V 8654 5630 50  0000 L CNN
F 1 "Conn_02x05_Counter_Clockwise" V 8745 5630 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 8650 5350 50  0001 C CNN
F 3 "~" H 8650 5350 50  0001 C CNN
	1    8650 5350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J4
U 1 1 5D718F47
P 7650 5350
F 0 "J4" V 7654 5063 50  0000 R CNN
F 1 "Conn_02x05_Counter_Clockwise" V 7745 5063 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7650 5350 50  0001 C CNN
F 3 "~" H 7650 5350 50  0001 C CNN
	1    7650 5350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D71FE8C
P 6750 5950
F 0 "SW1" H 6750 6235 50  0000 C CNN
F 1 "SW_Push" H 6750 6144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 6750 6150 50  0001 C CNN
F 3 "~" H 6750 6150 50  0001 C CNN
	1    6750 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D72068D
P 9550 5950
F 0 "SW4" H 9550 6235 50  0000 C CNN
F 1 "SW_Push" H 9550 6144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 9550 6150 50  0001 C CNN
F 3 "~" H 9550 6150 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5D7209E7
P 9400 1350
F 0 "SW3" H 9400 1635 50  0000 C CNN
F 1 "SW_Push" H 9400 1544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 9400 1550 50  0001 C CNN
F 3 "~" H 9400 1550 50  0001 C CNN
	1    9400 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D721175
P 7500 1350
F 0 "SW2" H 7500 1635 50  0000 C CNN
F 1 "SW_Push" H 7500 1544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 7500 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J5
U 1 1 5D7216F3
P 8300 1200
F 0 "J5" H 8357 1667 50  0000 C CNN
F 1 "USB_B_Mini" H 8357 1576 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 8450 1150 50  0001 C CNN
F 3 "~" H 8450 1150 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J3
U 1 1 5D7226D1
P 6750 1100
F 0 "J3" H 6807 1425 50  0000 C CNN
F 1 "Barrel_Jack" H 6807 1334 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 6800 1060 50  0001 C CNN
F 3 "~" H 6800 1060 50  0001 C CNN
	1    6750 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
