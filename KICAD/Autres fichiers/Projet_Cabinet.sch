EESchema Schematic File Version 4
LIBS:Projet_Cabinet-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Carte démo shield uno"
Date "lun. 30 mars 2015"
Rev "1.0"
Comp "INSA"
Comment1 "Les bg sont:"
Comment2 "Mathias SOULIER"
Comment3 "Jordi ROUBICHOU"
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
NoConn ~ 9400 1600
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:GND #PWR011
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR011" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR012" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	10200 2100 10850 2100
Wire Wire Line
	10200 2000 10850 2000
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Text Label 10850 2100 2    50   ~ 0
8
Text Label 10850 2000 2    50   ~ 0
9
Text Label 10850 1900 2    50   ~ 0
10(SS)
Text Label 10850 1800 2    50   ~ 0
11(MOSCH)
NoConn ~ 8650 1800
NoConn ~ 8950 1450
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2900
NoConn ~ 10550 3000
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 9350 1450
NoConn ~ 9250 1300
Connection ~ 9300 2200
Wire Wire Line
	9300 2200 9300 3150
NoConn ~ 10200 1200
NoConn ~ 10200 1300
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9050 2000 9050 1350
$Comp
L power:+3.3V #PWR010
U 1 1 56D70538
P 9150 1450
F 0 "#PWR010" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR09" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6015814F
P 1600 1000
F 0 "#FLG01" H 1600 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1600 1173 50  0000 C CNN
F 2 "" H 1600 1000 50  0001 C CNN
F 3 "~" H 1600 1000 50  0001 C CNN
	1    1600 1000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6015903A
P 2050 950
F 0 "#FLG02" H 2050 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 1123 50  0000 C CNN
F 2 "" H 2050 950 50  0001 C CNN
F 3 "~" H 2050 950 50  0001 C CNN
	1    2050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6015916F
P 1600 1000
F 0 "#PWR01" H 1600 750 50  0001 C CNN
F 1 "GND" H 1605 827 50  0000 C CNN
F 2 "" H 1600 1000 50  0001 C CNN
F 3 "" H 1600 1000 50  0001 C CNN
	1    1600 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 6015ABC1
P 2050 1050
F 0 "#PWR02" H 2050 900 50  0001 C CNN
F 1 "+5V" V 2050 1250 50  0000 C CNN
F 2 "" H 2050 1050 50  0000 C CNN
F 3 "" H 2050 1050 50  0000 C CNN
	1    2050 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1050 2050 950 
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R0
U 1 1 60431C52
P 2800 2000
F 0 "R0" H 2870 2046 50  0000 L CNN
F 1 "Rsensor" H 2870 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2730 2000 50  0001 C CNN
F 3 "~" H 2800 2000 50  0001 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60433803
P 6600 2050
F 0 "R3" H 6670 2096 50  0000 L CNN
F 1 "100k" H 6670 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6530 2050 50  0001 C CNN
F 3 "~" H 6600 2050 50  0001 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60433F6B
P 7400 2400
F 0 "R2" V 7607 2400 50  0000 C CNN
F 1 "1k" V 7516 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7330 2400 50  0001 C CNN
F 3 "~" H 7400 2400 50  0001 C CNN
	1    7400 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60434638
P 7400 1750
F 0 "R6" V 7607 1750 50  0000 C CNN
F 1 "1k" V 7516 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7330 1750 50  0001 C CNN
F 3 "~" H 7400 1750 50  0001 C CNN
	1    7400 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 60434D70
P 3550 2700
F 0 "C1" H 3665 2746 50  0000 L CNN
F 1 "100n" H 3665 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3588 2550 50  0001 C CNN
F 3 "~" H 3550 2700 50  0001 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60435580
P 6800 1200
F 0 "C3" H 6915 1246 50  0000 L CNN
F 1 "100n" H 6915 1155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6838 1050 50  0001 C CNN
F 3 "~" H 6800 1200 50  0001 C CNN
	1    6800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60435CD0
P 7000 2050
F 0 "C4" H 7115 2096 50  0000 L CNN
F 1 "1u" H 7115 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 7038 1900 50  0001 C CNN
F 3 "~" H 7000 2050 50  0001 C CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60436567
P 7700 2050
F 0 "C2" H 7815 2096 50  0000 L CNN
F 1 "100n" H 7815 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7738 1900 50  0001 C CNN
F 3 "~" H 7700 2050 50  0001 C CNN
	1    7700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60438837
P 2800 1850
F 0 "#PWR03" H 2800 1700 50  0001 C CNN
F 1 "+5V" V 2800 2050 50  0000 C CNN
F 2 "" H 2800 1850 50  0000 C CNN
F 3 "" H 2800 1850 50  0000 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60432F47
P 4000 2700
F 0 "R1" H 4070 2746 50  0000 L CNN
F 1 "100k" H 4070 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3930 2700 50  0001 C CNN
F 3 "~" H 4000 2700 50  0001 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60432610
P 3200 2400
F 0 "R5" V 3407 2400 50  0000 C CNN
F 1 "10k" V 3316 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3130 2400 50  0001 C CNN
F 3 "~" H 3200 2400 50  0001 C CNN
	1    3200 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2150 2800 2400
Wire Wire Line
	2800 2400 3050 2400
$Comp
L power:GND #PWR04
U 1 1 6043F209
P 3550 3250
F 0 "#PWR04" H 3550 3000 50  0001 C CNN
F 1 "GND" H 3555 3077 50  0000 C CNN
F 2 "" H 3550 3250 50  0001 C CNN
F 3 "" H 3550 3250 50  0001 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
Text GLabel 4200 2400 2    50   Input ~ 0
IN+
Wire Wire Line
	3350 2400 3550 2400
Wire Wire Line
	3550 2400 3550 2550
Wire Wire Line
	4000 2550 4000 2400
Wire Wire Line
	4000 2400 4200 2400
Wire Wire Line
	3550 2400 4000 2400
Connection ~ 3550 2400
Connection ~ 4000 2400
Wire Wire Line
	4000 2850 4000 3000
Wire Wire Line
	4000 3000 3550 3000
Wire Wire Line
	3550 3000 3550 2850
Connection ~ 3550 3000
Text GLabel 4600 1650 0    50   Input ~ 0
IN-
Text GLabel 4600 1750 0    50   Input ~ 0
IN+
Wire Wire Line
	4800 1650 4600 1650
Wire Wire Line
	4800 1750 4600 1750
$Comp
L power:GND #PWR05
U 1 1 604523E3
P 4700 1950
F 0 "#PWR05" H 4700 1700 50  0001 C CNN
F 1 "GND" H 4705 1777 50  0000 C CNN
F 2 "" H 4700 1950 50  0001 C CNN
F 3 "" H 4700 1950 50  0001 C CNN
	1    4700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1850 4700 1850
Wire Wire Line
	4700 1850 4700 1950
Wire Wire Line
	3550 3000 3550 3250
$Comp
L power:GND #PWR07
U 1 1 6045800E
P 6800 1400
F 0 "#PWR07" H 6800 1150 50  0001 C CNN
F 1 "GND" H 6805 1227 50  0000 C CNN
F 2 "" H 6800 1400 50  0001 C CNN
F 3 "" H 6800 1400 50  0001 C CNN
	1    6800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1400 6800 1350
$Comp
L power:+5V #PWR06
U 1 1 6045A35A
P 6800 900
F 0 "#PWR06" H 6800 750 50  0001 C CNN
F 1 "+5V" V 6800 1100 50  0000 C CNN
F 2 "" H 6800 900 50  0000 C CNN
F 3 "" H 6800 900 50  0000 C CNN
	1    6800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1650 6400 1650
Wire Wire Line
	6400 1650 6400 900 
Wire Wire Line
	6400 900  6800 900 
Wire Wire Line
	6800 1050 6800 900 
Connection ~ 6800 900 
Wire Wire Line
	5950 1750 6600 1750
Wire Wire Line
	6600 1900 6600 1750
Connection ~ 6600 1750
Wire Wire Line
	6600 1750 7000 1750
Wire Wire Line
	7000 1900 7000 1750
Connection ~ 7000 1750
Wire Wire Line
	7000 1750 7250 1750
Wire Wire Line
	7550 1750 7700 1750
Wire Wire Line
	7700 1750 7700 1900
Wire Wire Line
	7700 2200 7700 2400
Wire Wire Line
	7700 2400 7550 2400
Wire Wire Line
	7250 2400 7000 2400
Wire Wire Line
	7000 2400 7000 2200
Text GLabel 7000 2600 3    50   Input ~ 0
IN-
Wire Wire Line
	7000 2400 7000 2600
Connection ~ 7000 2400
Wire Wire Line
	6600 2200 6600 2400
Wire Wire Line
	6600 2400 7000 2400
$Comp
L power:GND #PWR08
U 1 1 60473EC0
P 7700 2500
F 0 "#PWR08" H 7700 2250 50  0001 C CNN
F 1 "GND" H 7705 2327 50  0000 C CNN
F 2 "" H 7700 2500 50  0001 C CNN
F 3 "" H 7700 2500 50  0001 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2400 7700 2500
Connection ~ 7700 2400
Text GLabel 7850 1750 2    50   Input ~ 0
ADC
Wire Wire Line
	7700 1750 7850 1750
Connection ~ 7700 1750
Wire Notes Line
	8450 600  8450 3650
Wire Notes Line
	8450 3650 2600 3650
Wire Notes Line
	2600 3650 2600 600 
Wire Notes Line
	2600 600  8450 600 
Text Notes 2700 800  0    50   ~ 0
Amplificateur
Text GLabel 2800 4100 0    50   Input ~ 0
SDA
Text GLabel 2800 4200 0    50   Input ~ 0
SCK
Text GLabel 5000 4300 0    50   Input ~ 0
RX
Text GLabel 5000 4400 0    50   Input ~ 0
TX
Text GLabel 7850 4050 0    50   Input ~ 0
CLK
Text GLabel 7850 4150 0    50   Input ~ 0
DATA
Text GLabel 7850 4250 0    50   Input ~ 0
SWITCH
$Comp
L power:+5V #PWR0101
U 1 1 6048D8CF
P 2450 4400
F 0 "#PWR0101" H 2450 4250 50  0001 C CNN
F 1 "+5V" V 2450 4600 50  0000 C CNN
F 2 "" H 2450 4400 50  0000 C CNN
F 3 "" H 2450 4400 50  0000 C CNN
	1    2450 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 4400 2450 4400
Wire Wire Line
	3200 4200 2800 4200
Wire Wire Line
	2800 4100 3200 4100
$Comp
L power:+5V #PWR0102
U 1 1 60497BE7
P 4950 4100
F 0 "#PWR0102" H 4950 3950 50  0001 C CNN
F 1 "+5V" V 4950 4300 50  0000 C CNN
F 2 "" H 4950 4100 50  0000 C CNN
F 3 "" H 4950 4100 50  0000 C CNN
	1    4950 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 6049A097
P 7500 4350
F 0 "#PWR0103" H 7500 4200 50  0001 C CNN
F 1 "+5V" V 7500 4550 50  0000 C CNN
F 2 "" H 7500 4350 50  0000 C CNN
F 3 "" H 7500 4350 50  0000 C CNN
	1    7500 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6049C20C
P 2500 4300
F 0 "#PWR0104" H 2500 4050 50  0001 C CNN
F 1 "GND" H 2505 4127 50  0000 C CNN
F 2 "" H 2500 4300 50  0001 C CNN
F 3 "" H 2500 4300 50  0001 C CNN
	1    2500 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6049E46D
P 5000 4200
F 0 "#PWR0105" H 5000 3950 50  0001 C CNN
F 1 "GND" H 5005 4027 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 604A05FE
P 7850 4450
F 0 "#PWR0106" H 7850 4200 50  0001 C CNN
F 1 "GND" H 7855 4277 50  0000 C CNN
F 2 "" H 7850 4450 50  0001 C CNN
F 3 "" H 7850 4450 50  0001 C CNN
	1    7850 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 4300 3200 4300
Wire Wire Line
	4950 4100 5250 4100
Wire Wire Line
	5250 4200 5000 4200
Wire Wire Line
	5000 4300 5250 4300
Wire Wire Line
	5250 4400 5000 4400
Wire Wire Line
	7850 4050 8050 4050
Wire Wire Line
	7850 4150 8050 4150
Wire Wire Line
	7850 4250 8050 4250
Wire Wire Line
	8050 4350 7500 4350
Wire Wire Line
	7850 4450 8050 4450
Text GLabel 8750 2500 0    50   Input ~ 0
ADC
Wire Wire Line
	8750 2500 9400 2500
Text GLabel 8750 2900 0    50   Input ~ 0
SDA
Text GLabel 8750 3000 0    50   Input ~ 0
SCK
Text Label 9200 2900 2    50   ~ 0
A4(SDA)
Wire Wire Line
	8750 2900 9400 2900
Text Label 9200 3000 2    50   ~ 0
A5(SCL)
Wire Wire Line
	9400 3000 8750 3000
Text GLabel 10850 2500 2    50   Input ~ 0
SWITCH
Text GLabel 10850 2800 2    50   Input ~ 0
CLK
Text GLabel 10850 2600 2    50   Input ~ 0
DATA
Wire Wire Line
	10200 2600 10850 2600
Wire Wire Line
	10200 2800 10850 2800
Text GLabel 11000 1900 2    50   Input ~ 0
RX
Text GLabel 11000 1800 2    50   Input ~ 0
TX
Wire Wire Line
	10200 1800 11000 1800
Wire Wire Line
	10200 1900 11000 1900
Text Label 10550 1400 2    50   ~ 0
AREF
NoConn ~ 10850 2000
NoConn ~ 10850 2100
Wire Wire Line
	10200 2500 10850 2500
Wire Wire Line
	10200 2700 10550 2700
NoConn ~ 10550 2700
NoConn ~ 4800 1550
NoConn ~ 5950 1550
NoConn ~ 5950 1850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6054F261
P 1150 950
F 0 "#FLG0101" H 1150 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1123 50  0000 C CNN
F 2 "" H 1150 950 50  0001 C CNN
F 3 "~" H 1150 950 50  0001 C CNN
	1    1150 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 6054F267
P 1150 1050
F 0 "#PWR0107" H 1150 900 50  0001 C CNN
F 1 "+3V3" V 1150 1250 50  0000 C CNN
F 2 "" H 1150 1050 50  0000 C CNN
F 3 "" H 1150 1050 50  0000 C CNN
	1    1150 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1050 1150 950 
Wire Notes Line
	9650 3750 9650 4850
Wire Notes Line
	9650 4850 2000 4850
Wire Notes Line
	2000 4850 2000 3750
Wire Notes Line
	2300 3750 2300 3800
Wire Notes Line
	2000 3750 9650 3750
Text Notes 2350 3900 2    50   ~ 0
Modules
$Comp
L Kicad_Projet:LTC1050 U1
U 1 1 60427A02
P 5550 1300
F 0 "U1" H 5375 1365 50  0000 C CNN
F 1 "LTC1050" H 5375 1274 50  0000 C CNN
F 2 "ProjetCABINET:LTC1050" H 5400 1250 50  0001 C CNN
F 3 "" H 5400 1250 50  0001 C CNN
	1    5550 1300
	1    0    0    -1  
$EndComp
$Comp
L Kicad_Projet:OLED U2
U 1 1 60428F15
P 3500 3950
F 0 "U2" H 4028 3696 50  0000 L CNN
F 1 "OLED" H 4028 3605 50  0000 L CNN
F 2 "ProjetCABINET:OLED" H 3500 3950 50  0001 C CNN
F 3 "" H 3500 3950 50  0001 C CNN
	1    3500 3950
	1    0    0    -1  
$EndComp
$Comp
L Kicad_Projet:Blueooth-HC05 U3
U 1 1 60429A73
P 5750 3850
F 0 "U3" H 6278 3496 50  0000 L CNN
F 1 "Blueooth-HC05" H 6278 3405 50  0000 L CNN
F 2 "ProjetCABINET:HC05" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
$Comp
L Kicad_Projet:ROUE U4
U 1 1 6042A411
P 8500 3900
F 0 "U4" H 9128 3596 50  0000 L CNN
F 1 "ROUE" H 9128 3505 50  0000 L CNN
F 2 "ProjetCABINET:Roue" H 8500 3900 50  0001 C CNN
F 3 "" H 8500 3900 50  0001 C CNN
	1    8500 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
