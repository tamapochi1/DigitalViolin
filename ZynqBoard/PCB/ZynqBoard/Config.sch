EESchema Schematic File Version 4
LIBS:ZynqBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
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
L usual:XC7Z020-1CLG484C U1
U 1 1 5CF25870
P 5550 2300
F 0 "U1" H 5550 3400 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 5550 3300 50  0000 C CNN
F 2 "KiCad_Footprints:BGA-484_22x22_19.0x19.0mm" H 5550 4900 50  0001 C CNN
F 3 "" H 5550 4900 50  0001 C CNN
	1    5550 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 5CF259D0
P 1300 2650
F 0 "J1" H 1350 3050 50  0000 C CNN
F 1 "JTAG-HS3" H 1450 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x07_Pitch2.00mm" H 1300 2650 50  0001 C CNN
F 3 "~" H 1300 2650 50  0001 C CNN
F 4 "2mm pitch" H 1450 2150 50  0000 C CNN "MEMO"
	1    1300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2350 1600 2350
Wire Wire Line
	1600 2450 2100 2450
Wire Wire Line
	2100 2550 1600 2550
Wire Wire Line
	1600 2650 2100 2650
Wire Wire Line
	2100 2750 1600 2750
Wire Wire Line
	2700 2950 2550 2950
Wire Wire Line
	1100 2350 1000 2350
Wire Wire Line
	1000 2350 1000 2450
Wire Wire Line
	1100 2950 1000 2950
Connection ~ 1000 2950
Wire Wire Line
	1000 2950 1000 3000
Wire Wire Line
	1000 2850 1100 2850
Connection ~ 1000 2850
Wire Wire Line
	1000 2850 1000 2950
Wire Wire Line
	1100 2750 1000 2750
Connection ~ 1000 2750
Wire Wire Line
	1000 2750 1000 2850
Wire Wire Line
	1000 2650 1100 2650
Connection ~ 1000 2650
Wire Wire Line
	1000 2650 1000 2750
Wire Wire Line
	1100 2550 1000 2550
Connection ~ 1000 2550
Wire Wire Line
	1000 2550 1000 2650
Wire Wire Line
	1000 2450 1100 2450
Connection ~ 1000 2450
Wire Wire Line
	1000 2450 1000 2550
$Comp
L power:GND #PWR059
U 1 1 5B886D0E
P 1000 3000
F 0 "#PWR059" H 1000 2750 50  0001 C CNN
F 1 "GND" H 1000 2850 50  0000 C CNN
F 2 "" H 1000 3000 50  0001 C CNN
F 3 "" H 1000 3000 50  0001 C CNN
	1    1000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR052
U 1 1 5B886F7E
P 1700 2350
F 0 "#PWR052" H 1700 2200 50  0001 C CNN
F 1 "+3V3" H 1700 2490 50  0000 C CNN
F 2 "" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0001 C CNN
F 4 "VCCO_0" H 1750 2600 50  0000 C CNN "MEMO"
	1    1700 2350
	1    0    0    -1  
$EndComp
Text Label 2100 2450 2    50   ~ 0
TMS
Text Label 2100 2550 2    50   ~ 0
TCK
Text Label 2100 2650 2    50   ~ 0
TDO
Text Label 2100 2750 2    50   ~ 0
TDI
Text GLabel 2700 2950 2    50   BiDi ~ 0
PS_SRST_B
NoConn ~ 1600 2850
$Comp
L Device:R R10
U 1 1 5B887CB0
P 2550 2750
F 0 "R10" V 2630 2750 50  0000 C CNN
F 1 "4.7k" V 2550 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2480 2750 50  0001 C CNN
F 3 "~" H 2550 2750 50  0001 C CNN
	1    2550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2900 2550 2950
Connection ~ 2550 2950
Wire Wire Line
	2550 2950 1600 2950
Wire Wire Line
	2550 2600 2550 2550
$Comp
L power:+1V8 #PWR055
U 1 1 5B89D6F7
P 2550 2550
F 0 "#PWR055" H 2550 2400 50  0001 C CNN
F 1 "+1V8" H 2550 2690 50  0000 C CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
F 4 "VCCO_MIO1_501" H 2450 2800 50  0000 L CNN "MEMO"
	1    2550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1600 4450 1600
$Comp
L Device:C_Small C82
U 1 1 5B89DF31
P 4450 1750
F 0 "C82" H 4460 1820 50  0000 L CNN
F 1 "0.1u" H 4460 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 4450 1750 50  0001 C CNN
F 3 "~" H 4450 1750 50  0001 C CNN
	1    4450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1650 4450 1600
Connection ~ 4450 1600
Wire Wire Line
	4450 1600 4150 1600
$Comp
L power:GND #PWR050
U 1 1 5B89E214
P 4450 1850
F 0 "#PWR050" H 4450 1600 50  0001 C CNN
F 1 "GND" H 4450 1700 50  0000 C CNN
F 2 "" H 4450 1850 50  0001 C CNN
F 3 "" H 4450 1850 50  0001 C CNN
	1    4450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5B89E265
P 4750 2400
F 0 "#PWR053" H 4750 2150 50  0001 C CNN
F 1 "GND" H 4750 2250 50  0000 C CNN
F 2 "" H 4750 2400 50  0001 C CNN
F 3 "" H 4750 2400 50  0001 C CNN
	1    4750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1900 4750 1900
Wire Wire Line
	4750 1900 4750 2000
Wire Wire Line
	4850 2300 4750 2300
Connection ~ 4750 2300
Wire Wire Line
	4750 2300 4750 2400
Wire Wire Line
	4850 2000 4750 2000
Connection ~ 4750 2000
Wire Wire Line
	4750 2000 4750 2300
Wire Wire Line
	4850 2200 4450 2200
Text GLabel 4150 2200 0    50   Input ~ 0
XADC_1V25
$Comp
L Device:C_Small C83
U 1 1 5B89F052
P 4450 2350
F 0 "C83" H 4460 2420 50  0000 L CNN
F 1 "0.1u" H 4460 2270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 4450 2350 50  0001 C CNN
F 3 "~" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 5B89F09C
P 4450 2450
F 0 "#PWR054" H 4450 2200 50  0001 C CNN
F 1 "GND" H 4450 2300 50  0000 C CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2250 4450 2200
Connection ~ 4450 2200
Wire Wire Line
	4450 2200 4150 2200
$Comp
L power:+3V3 #PWR056
U 1 1 5B89FB72
P 4150 2700
F 0 "#PWR056" H 4150 2550 50  0001 C CNN
F 1 "+3V3" H 4150 2840 50  0000 C CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5B89FCE0
P 6350 1950
F 0 "#PWR051" H 6350 1700 50  0001 C CNN
F 1 "GND" H 6350 1800 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1800 6350 1800
Wire Wire Line
	6350 1800 6350 1900
Wire Wire Line
	6350 1900 6250 1900
Connection ~ 6350 1900
Wire Wire Line
	6350 1900 6350 1950
Wire Wire Line
	6250 1600 6350 1600
Wire Wire Line
	6350 1600 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	4150 2900 4150 2700
Wire Wire Line
	4150 2700 4850 2700
Wire Wire Line
	6250 2200 6750 2200
Wire Wire Line
	6250 2300 6750 2300
Wire Wire Line
	6750 2400 6250 2400
Wire Wire Line
	6250 2500 6750 2500
Text Label 6750 2200 2    50   ~ 0
TCK
Text Label 6750 2300 2    50   ~ 0
TDI
Text Label 6750 2400 2    50   ~ 0
TDO
Text Label 6750 2500 2    50   ~ 0
TMS
$Comp
L Device:R R12
U 1 1 5B8A4045
P 7100 2900
F 0 "R12" V 7180 2900 50  0000 C CNN
F 1 "4.7k" V 7100 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7030 2900 50  0001 C CNN
F 3 "~" H 7100 2900 50  0001 C CNN
	1    7100 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR058
U 1 1 5B8A41AC
P 7400 2850
F 0 "#PWR058" H 7400 2700 50  0001 C CNN
F 1 "+3V3" H 7400 2990 50  0000 C CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2850 7400 2900
Wire Wire Line
	7400 2900 7250 2900
Wire Wire Line
	6950 2900 6250 2900
Wire Wire Line
	6250 2800 6750 2800
Text Label 6750 2800 2    50   ~ 0
DONE
Connection ~ 4150 2700
$Comp
L usual:XC7Z020-1CLG484C U1
U 6 1 5B8A7E45
P 5550 4800
F 0 "U1" H 5550 6100 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 5550 6000 50  0000 C CNN
F 2 "KiCad_Footprints:BGA-484_22x22_19.0x19.0mm" H 5550 7400 50  0001 C CNN
F 3 "" H 5550 7400 50  0001 C CNN
	6    5550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5200 6850 5200
Wire Wire Line
	6250 5100 6850 5100
Wire Wire Line
	6850 5000 6250 5000
Wire Wire Line
	6250 4900 6850 4900
Wire Wire Line
	6850 4800 6250 4800
Wire Wire Line
	6250 4700 6850 4700
Wire Wire Line
	6850 4600 6250 4600
Text Label 6850 5200 2    50   ~ 0
BOOT_MODE3
Text Label 6850 5100 2    50   ~ 0
BOOT_MODE1
Text Label 6850 5000 2    50   ~ 0
BOOT_MODE2
Text Label 6850 4900 2    50   ~ 0
BOOT_MODE0
Text Label 6850 4800 2    50   ~ 0
BOOT_MODE4
Text Label 6850 4700 2    50   ~ 0
VMODE0
Text Label 6850 4600 2    50   ~ 0
VMODE1
Wire Wire Line
	6250 5600 6850 5600
Wire Wire Line
	6250 5800 6850 5800
Text GLabel 6850 5800 2    50   Input ~ 0
PG_ALL
Text Label 6850 5600 2    50   ~ 0
PS_CLK
NoConn ~ 6250 5400
NoConn ~ 6250 5300
NoConn ~ 6250 4500
$Comp
L Device:R R14
U 1 1 5B8B6921
P 8950 4350
F 0 "R14" V 9030 4350 50  0000 C CNN
F 1 "20k" V 8950 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 4350 50  0001 C CNN
F 3 "~" H 8950 4350 50  0001 C CNN
	1    8950 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5B8B6ABC
P 8950 4550
F 0 "R15" V 9030 4550 50  0000 C CNN
F 1 "20k" V 8950 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 4550 50  0001 C CNN
F 3 "~" H 8950 4550 50  0001 C CNN
	1    8950 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5B8B6AEC
P 8950 4750
F 0 "R16" V 9030 4750 50  0000 C CNN
F 1 "20k" V 8950 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 4750 50  0001 C CNN
F 3 "~" H 8950 4750 50  0001 C CNN
	1    8950 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5B8B6B16
P 8950 4950
F 0 "R17" V 9030 4950 50  0000 C CNN
F 1 "20k" V 8950 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 4950 50  0001 C CNN
F 3 "~" H 8950 4950 50  0001 C CNN
	1    8950 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 4350 9200 4350
Wire Wire Line
	9200 4350 9200 4550
Wire Wire Line
	9100 4550 9200 4550
Connection ~ 9200 4550
Wire Wire Line
	9200 4550 9200 4750
Wire Wire Line
	9100 4750 9200 4750
Connection ~ 9200 4750
Wire Wire Line
	9200 4750 9200 4950
Wire Wire Line
	9100 4950 9200 4950
Connection ~ 9200 4950
Wire Wire Line
	9200 4950 9200 5050
$Comp
L power:GND #PWR061
U 1 1 5B8BA967
P 9200 5050
F 0 "#PWR061" H 9200 4800 50  0001 C CNN
F 1 "GND" H 9200 4900 50  0000 C CNN
F 2 "" H 9200 5050 50  0001 C CNN
F 3 "" H 9200 5050 50  0001 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4350 8050 4350
Wire Wire Line
	8050 4550 8800 4550
Wire Wire Line
	8800 4750 8050 4750
Wire Wire Line
	8050 4950 8800 4950
Text Label 8050 4350 0    50   ~ 0
VMODE0
Text Label 8050 4550 0    50   ~ 0
BOOT_MODE1
Text Label 8050 4750 0    50   ~ 0
BOOT_MODE3
Text Label 8050 4950 0    50   ~ 0
BOOT_MODE4
$Comp
L Device:R R13
U 1 1 5B8C0259
P 8950 3950
F 0 "R13" V 9030 3950 50  0000 C CNN
F 1 "20k" V 8950 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 3950 50  0001 C CNN
F 3 "~" H 8950 3950 50  0001 C CNN
	1    8950 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 3950 8050 3950
$Comp
L power:+3V3 #PWR060
U 1 1 5B8C2C22
P 9200 3900
F 0 "#PWR060" H 9200 3750 50  0001 C CNN
F 1 "+3V3" H 9200 4040 50  0000 C CNN
F 2 "" H 9200 3900 50  0001 C CNN
F 3 "" H 9200 3900 50  0001 C CNN
	1    9200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3900 9200 3950
Wire Wire Line
	9200 3950 9100 3950
Text Label 8050 3950 0    50   ~ 0
VMODE1
$Comp
L Device:R R18
U 1 1 5B8C4A14
P 8950 5600
F 0 "R18" V 9030 5600 50  0000 C CNN
F 1 "20k" V 8950 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 5600 50  0001 C CNN
F 3 "~" H 8950 5600 50  0001 C CNN
	1    8950 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 5B8C4A68
P 8950 5800
F 0 "R20" V 9030 5800 50  0000 C CNN
F 1 "20k" V 8950 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8880 5800 50  0001 C CNN
F 3 "~" H 8950 5800 50  0001 C CNN
	1    8950 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 5600 8050 5600
Wire Wire Line
	8800 5800 8050 5800
Text Label 8050 5600 0    50   ~ 0
BOOT_MODE0
Text Label 8050 5800 0    50   ~ 0
BOOT_MODE2
$Comp
L Switch:SW_SPDT SW1
U 1 1 5B8DDAB7
P 9750 5700
F 0 "SW1" H 9750 5870 50  0000 C CNN
F 1 "Select_SD/JTAG" H 9750 5500 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 9750 5700 50  0001 C CNN
F 3 "" H 9750 5700 50  0001 C CNN
	1    9750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5600 9300 5600
Wire Wire Line
	9300 5600 9300 5700
Wire Wire Line
	9300 5800 9100 5800
Wire Wire Line
	9300 5700 9550 5700
Connection ~ 9300 5700
Wire Wire Line
	9300 5700 9300 5800
$Comp
L power:+3V3 #PWR063
U 1 1 5B8E0EEF
P 10600 5600
F 0 "#PWR063" H 10600 5450 50  0001 C CNN
F 1 "+3V3" H 10600 5740 50  0000 C CNN
F 2 "" H 10600 5600 50  0001 C CNN
F 3 "" H 10600 5600 50  0001 C CNN
	1    10600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5B8E0F1A
P 10600 5800
F 0 "#PWR065" H 10600 5550 50  0001 C CNN
F 1 "GND" H 10600 5650 50  0000 C CNN
F 2 "" H 10600 5800 50  0001 C CNN
F 3 "" H 10600 5800 50  0001 C CNN
	1    10600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5800 10600 5800
Wire Wire Line
	9950 5600 10600 5600
Text Notes 10050 5600 0    50   ~ 0
SD Card
Text Notes 10050 5800 0    50   ~ 0
JTAG
$Comp
L Device:R R11
U 1 1 5B9E6499
P 4500 2900
F 0 "R11" V 4580 2900 50  0000 C CNN
F 1 "4.7k" V 4500 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4430 2900 50  0001 C CNN
F 3 "~" H 4500 2900 50  0001 C CNN
	1    4500 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2900 4850 2900
Wire Wire Line
	4350 2900 4150 2900
$Comp
L Device:LED D1
U 1 1 5B9E9DB4
P 9600 2500
F 0 "D1" H 9600 2600 50  0000 C CNN
F 1 "DONE(BLUE)" V 9600 2150 50  0000 C CNN
F 2 "LEDs:LED_0603" H 9600 2500 50  0001 C CNN
F 3 "~" H 9600 2500 50  0001 C CNN
	1    9600 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5B9EA536
P 9600 1650
F 0 "R8" V 9680 1650 50  0000 C CNN
F 1 "1k" V 9600 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9530 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5B9EA63F
P 9600 2150
F 0 "R9" V 9680 2150 50  0000 C CNN
F 1 "220" V 9600 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9530 2150 50  0001 C CNN
F 3 "~" H 9600 2150 50  0001 C CNN
	1    9600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2350 9600 2300
Wire Wire Line
	9600 2000 9600 1900
Wire Wire Line
	9600 1900 9050 1900
Connection ~ 9600 1900
Wire Wire Line
	9600 1900 9600 1800
$Comp
L power:+3V3 #PWR049
U 1 1 5B9F348E
P 9600 1400
F 0 "#PWR049" H 9600 1250 50  0001 C CNN
F 1 "+3V3" H 9600 1540 50  0000 C CNN
F 2 "" H 9600 1400 50  0001 C CNN
F 3 "" H 9600 1400 50  0001 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1400 9600 1500
$Comp
L power:GND #PWR057
U 1 1 5B9F5341
P 9600 2750
F 0 "#PWR057" H 9600 2500 50  0001 C CNN
F 1 "GND" H 9600 2600 50  0000 C CNN
F 2 "" H 9600 2750 50  0001 C CNN
F 3 "" H 9600 2750 50  0001 C CNN
	1    9600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2650 9600 2750
Text Label 9050 1900 0    50   ~ 0
DONE
$Comp
L usual:ClockOscillator O1
U 1 1 5BB45151
P 2850 5650
F 0 "O1" H 2850 6150 60  0000 C CNN
F 1 "DSC1001CI5-033.3333" H 2850 6050 60  0000 C CNN
F 2 "KiCad_Footprints:DSC1001_CDFN-4_3.2x2.5" H 2850 5650 60  0001 C CNN
F 3 "" H 2850 5650 60  0001 C CNN
	1    2850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR062
U 1 1 5BB456AD
P 1950 5350
F 0 "#PWR062" H 1950 5200 50  0001 C CNN
F 1 "+3V3" H 1950 5490 50  0000 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5450 2350 5450
Wire Wire Line
	1950 5450 1950 5350
$Comp
L power:GND #PWR064
U 1 1 5BB47752
P 1950 5650
F 0 "#PWR064" H 1950 5400 50  0001 C CNN
F 1 "GND" H 1950 5500 50  0000 C CNN
F 2 "" H 1950 5650 50  0001 C CNN
F 3 "" H 1950 5650 50  0001 C CNN
	1    1950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5550 1950 5550
Wire Wire Line
	1950 5550 1950 5650
$Comp
L Device:C_Small C84
U 1 1 5BB49BCA
P 1700 5500
F 0 "C84" H 1710 5570 50  0000 L CNN
F 1 "0.1u" H 1710 5420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1700 5500 50  0001 C CNN
F 3 "~" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5600 1700 5650
Wire Wire Line
	1700 5650 1950 5650
Connection ~ 1950 5650
Wire Wire Line
	1700 5400 1700 5350
Wire Wire Line
	1700 5350 1950 5350
Connection ~ 1950 5350
Wire Wire Line
	2500 5850 2350 5850
Wire Wire Line
	2350 5850 2350 5450
Connection ~ 2350 5450
Wire Wire Line
	2350 5450 1950 5450
Wire Wire Line
	3200 5650 3300 5650
Text Label 4050 5650 2    50   ~ 0
PS_CLK
$Comp
L Device:R R19
U 1 1 5BB54360
P 3450 5650
F 0 "R19" V 3530 5650 50  0000 C CNN
F 1 "24" V 3450 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3380 5650 50  0001 C CNN
F 3 "~" H 3450 5650 50  0001 C CNN
	1    3450 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 5650 4050 5650
Text GLabel 4150 1600 0    50   Input ~ 0
XADC_1V8
Text GLabel 6400 3900 2    50   Input ~ 0
VBUS_0.5A
Text GLabel 6400 4000 2    50   Input ~ 0
VBUS_1.5A
Text GLabel 6400 4100 2    50   Input ~ 0
VBUS_3.0A
Wire Wire Line
	6400 4100 6250 4100
Wire Wire Line
	6250 4000 6400 4000
Wire Wire Line
	6400 3900 6250 3900
Text GLabel 6400 4300 2    50   BiDi ~ 0
HP_SCL
Text GLabel 6400 4400 2    50   BiDi ~ 0
HP_SDA
Text GLabel 6400 4200 2    50   Output ~ 0
HP_RSTN
Wire Wire Line
	6400 4400 6250 4400
Wire Wire Line
	6250 4300 6400 4300
Wire Wire Line
	6400 4200 6250 4200
Wire Notes Line
	6900 4175 6950 4175
Wire Notes Line
	6950 4175 6950 4450
Wire Notes Line
	6950 4450 6900 4450
Wire Notes Line
	6900 4125 6950 4125
Wire Notes Line
	6950 4125 6950 3850
Wire Notes Line
	6950 3850 6900 3850
Text Notes 7000 4350 0    50   ~ 0
To AUDIO
Text Notes 7000 4050 0    50   ~ 0
From USB
$EndSCHEMATC
