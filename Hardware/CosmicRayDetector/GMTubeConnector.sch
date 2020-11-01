EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Connector:Conn_01x01_Female J?
U 1 1 5FA36ACE
P 3300 2750
AR Path="/5CEF836A/5FA36ACE" Ref="J?"  Part="1" 
AR Path="/5FA35CE1/5FA36ACE" Ref="J4"  Part="1" 
F 0 "J4" H 3192 2935 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3192 2844 50  0000 C CNN
F 2 "CosmicRayDetector:GeigerTube" H 3300 2750 50  0001 C CNN
F 3 "~" H 3300 2750 50  0001 C CNN
	1    3300 2750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FA36B5F
P 3300 3000
AR Path="/5CEF836A/5FA36B5F" Ref="J?"  Part="1" 
AR Path="/5FA35CE1/5FA36B5F" Ref="J5"  Part="1" 
F 0 "J5" H 3192 3185 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3192 3094 50  0000 C CNN
F 2 "CosmicRayDetector:GeigerTube" H 3300 3000 50  0001 C CNN
F 3 "~" H 3300 3000 50  0001 C CNN
	1    3300 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FA36E08
P 3300 3250
AR Path="/5CEF836A/5FA36E08" Ref="J?"  Part="1" 
AR Path="/5FA35CE1/5FA36E08" Ref="J6"  Part="1" 
F 0 "J6" H 3192 3435 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3192 3344 50  0000 C CNN
F 2 "CosmicRayDetector:GeigerTube" H 3300 3250 50  0001 C CNN
F 3 "~" H 3300 3250 50  0001 C CNN
	1    3300 3250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FA37033
P 3300 3500
AR Path="/5CEF836A/5FA37033" Ref="J?"  Part="1" 
AR Path="/5FA35CE1/5FA37033" Ref="J7"  Part="1" 
F 0 "J7" H 3192 3685 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3192 3594 50  0000 C CNN
F 2 "CosmicRayDetector:GeigerTube" H 3300 3500 50  0001 C CNN
F 3 "~" H 3300 3500 50  0001 C CNN
	1    3300 3500
	-1   0    0    -1  
$EndComp
Text GLabel 3850 2750 2    50   Input ~ 0
GM_CONNECTOR_1
Text GLabel 3850 3000 2    50   Input ~ 0
GM_CONNECTOR_2
Text GLabel 3850 3250 2    50   Input ~ 0
GM_CONNECTOR_3
Text GLabel 3850 3500 2    50   Input ~ 0
GM_CONNECTOR_4
Wire Wire Line
	3500 2750 3850 2750
Wire Wire Line
	3500 3000 3850 3000
Wire Wire Line
	3500 3250 3850 3250
Wire Wire Line
	3500 3500 3850 3500
$EndSCHEMATC
