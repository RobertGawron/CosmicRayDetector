EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1650 2400 500  150 
U 5CEF836A
F0 "ADC" 50
F1 "ADC.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5D20EA8C
P 4650 3850
F 0 "H1" H 4750 3899 50  0000 L CNN
F 1 "MountingHole_Pad" H 4750 3808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 4650 3850 50  0001 C CNN
F 3 "~" H 4650 3850 50  0001 C CNN
	1    4650 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5D20EDBD
P 5500 3850
F 0 "H3" H 5600 3899 50  0000 L CNN
F 1 "MountingHole_Pad" H 5600 3808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 5500 3850 50  0001 C CNN
F 3 "~" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5D20F1DE
P 4650 4500
F 0 "H2" H 4750 4549 50  0000 L CNN
F 1 "MountingHole_Pad" H 4750 4458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 4650 4500 50  0001 C CNN
F 3 "~" H 4650 4500 50  0001 C CNN
	1    4650 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5D20F6D5
P 5500 4500
F 0 "H4" H 5600 4549 50  0000 L CNN
F 1 "MountingHole_Pad" H 5600 4458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 5500 4500 50  0001 C CNN
F 3 "~" H 5500 4500 50  0001 C CNN
	1    5500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D20F9A2
P 4650 4000
F 0 "#PWR05" H 4650 3750 50  0001 C CNN
F 1 "GND" H 4655 3827 50  0000 C CNN
F 2 "" H 4650 4000 50  0001 C CNN
F 3 "" H 4650 4000 50  0001 C CNN
	1    4650 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D214848
P 5500 4000
F 0 "#PWR07" H 5500 3750 50  0001 C CNN
F 1 "GND" H 5505 3827 50  0000 C CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D214B22
P 4650 4650
F 0 "#PWR06" H 4650 4400 50  0001 C CNN
F 1 "GND" H 4655 4477 50  0000 C CNN
F 2 "" H 4650 4650 50  0001 C CNN
F 3 "" H 4650 4650 50  0001 C CNN
	1    4650 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D214DDD
P 5500 4650
F 0 "#PWR08" H 5500 4400 50  0001 C CNN
F 1 "GND" H 5505 4477 50  0000 C CNN
F 2 "" H 5500 4650 50  0001 C CNN
F 3 "" H 5500 4650 50  0001 C CNN
	1    5500 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4650 3950
Wire Wire Line
	5500 4000 5500 3950
Wire Wire Line
	4650 4650 4650 4600
Wire Wire Line
	5500 4650 5500 4600
$Sheet
S 1650 2900 950  150 
U 5D6F8E96
F0 "PowerManagement" 50
F1 "PowerManagement.sch" 50
$EndSheet
$EndSCHEMATC
