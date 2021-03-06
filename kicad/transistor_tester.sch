EESchema Schematic File Version 2
LIBS:transistor_tester-rescue
LIBS:transistor_tester
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:transistor_tester-cache
EELAYER 25 0
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
L ATTINY88-A IC1
U 1 1 56A4FDA0
P 2850 3050
F 0 "IC1" H 2100 4600 50  0000 C CNN
F 1 "ATTINY88-A" H 3450 1450 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2850 3050 50  0001 C CIN
F 3 "" H 2850 3050 50  0000 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L BSS138-RESCUE-transistor_tester Q2
U 1 1 56ACCE53
P 6950 5200
F 0 "Q2" H 7150 5275 50  0000 L CNN
F 1 "BSS138" H 7150 5200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7150 5125 50  0001 L CIN
F 3 "" H 6950 5200 50  0000 L CNN
	1    6950 5200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X06 P1
U 1 1 56ACE31E
P 4450 5550
F 0 "P1" H 4450 5900 50  0000 C CNN
F 1 "PROG" V 4550 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 4450 5550 50  0001 C CNN
F 3 "" H 4450 5550 50  0000 C CNN
	1    4450 5550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 56ACE3D9
P 8850 5050
F 0 "P2" H 8850 5250 50  0000 C CNN
F 1 "TEST" V 8950 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8850 5050 50  0001 C CNN
F 3 "" H 8850 5050 50  0000 C CNN
	1    8850 5050
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 56ACED89
P 6850 4700
F 0 "R1" V 6930 4700 50  0000 C CNN
F 1 "1K" V 6850 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 4700 50  0001 C CNN
F 3 "" H 6850 4700 50  0000 C CNN
	1    6850 4700
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 56ACEF17
P 6550 4700
F 0 "R2" V 6630 4700 50  0000 C CNN
F 1 "100K" V 6550 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6480 4700 50  0001 C CNN
F 3 "" H 6550 4700 50  0000 C CNN
	1    6550 4700
	-1   0    0    1   
$EndComp
$Comp
L BSS138-RESCUE-transistor_tester Q1
U 1 1 56AD11A2
P 5900 5500
F 0 "Q1" H 6100 5575 50  0000 L CNN
F 1 "BSS138" H 6100 5500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6100 5425 50  0001 L CIN
F 3 "" H 5900 5500 50  0000 L CNN
	1    5900 5500
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 56AD11A8
P 5800 5000
F 0 "R4" V 5880 5000 50  0000 C CNN
F 1 "1K" V 5800 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5730 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0000 C CNN
	1    5800 5000
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 56AD11AE
P 5500 5000
F 0 "R3" V 5580 5000 50  0000 C CNN
F 1 "100K" V 5500 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 5000 50  0001 C CNN
F 3 "" H 5500 5000 50  0000 C CNN
	1    5500 5000
	-1   0    0    1   
$EndComp
$Comp
L BSS138-RESCUE-transistor_tester Q3
U 1 1 56AD13E0
P 8000 4900
F 0 "Q3" H 8200 4975 50  0000 L CNN
F 1 "BSS138" H 8200 4900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8200 4825 50  0001 L CIN
F 3 "" H 8000 4900 50  0000 L CNN
	1    8000 4900
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 56AD13E6
P 7900 4400
F 0 "R6" V 7980 4400 50  0000 C CNN
F 1 "1K" V 7900 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7830 4400 50  0001 C CNN
F 3 "" H 7900 4400 50  0000 C CNN
	1    7900 4400
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 56AD13EC
P 7600 4400
F 0 "R5" V 7680 4400 50  0000 C CNN
F 1 "100K" V 7600 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 4400 50  0001 C CNN
F 3 "" H 7600 4400 50  0000 C CNN
	1    7600 4400
	-1   0    0    1   
$EndComp
NoConn ~ 7050 2300
NoConn ~ 7050 2400
$Comp
L VCC #PWR01
U 1 1 56AD43B0
P 1000 1650
F 0 "#PWR01" H 1000 1500 50  0001 C CNN
F 1 "VCC" H 1000 1800 50  0000 C CNN
F 2 "" H 1000 1650 50  0000 C CNN
F 3 "" H 1000 1650 50  0000 C CNN
	1    1000 1650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 56AD48FA
P 1000 4500
F 0 "#PWR02" H 1000 4250 50  0001 C CNN
F 1 "GND" H 1000 4350 50  0000 C CNN
F 2 "" H 1000 4500 50  0000 C CNN
F 3 "" H 1000 4500 50  0000 C CNN
	1    1000 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 56AD4B7E
P 4200 5000
F 0 "#PWR03" H 4200 4750 50  0001 C CNN
F 1 "GND" H 4200 4850 50  0000 C CNN
F 2 "" H 4200 5000 50  0000 C CNN
F 3 "" H 4200 5000 50  0000 C CNN
	1    4200 5000
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR04
U 1 1 56AD4F6F
P 4700 5050
F 0 "#PWR04" H 4700 4900 50  0001 C CNN
F 1 "VCC" H 4700 5200 50  0000 C CNN
F 2 "" H 4700 5050 50  0000 C CNN
F 3 "" H 4700 5050 50  0000 C CNN
	1    4700 5050
	1    0    0    -1  
$EndComp
$Comp
L Battery-RESCUE-transistor_tester BT1
U 1 1 56AD5226
P 950 3000
F 0 "BT1" H 1050 3050 50  0000 L CNN
F 1 "Battery" H 1050 2950 50  0000 L CNN
F 2 "transistor_tester:cr1216" V 950 3040 50  0001 C CNN
F 3 "" V 950 3040 50  0000 C CNN
	1    950  3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 56AD537B
P 1550 2700
F 0 "#PWR05" H 1550 2550 50  0001 C CNN
F 1 "VCC" H 1550 2850 50  0000 C CNN
F 2 "" H 1550 2700 50  0000 C CNN
F 3 "" H 1550 2700 50  0000 C CNN
	1    1550 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56AD53AB
P 950 3300
F 0 "#PWR06" H 950 3050 50  0001 C CNN
F 1 "GND" H 950 3150 50  0000 C CNN
F 2 "" H 950 3300 50  0000 C CNN
F 3 "" H 950 3300 50  0000 C CNN
	1    950  3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56AD5ECF
P 7300 1800
F 0 "#PWR07" H 7300 1550 50  0001 C CNN
F 1 "GND" H 7300 1650 50  0000 C CNN
F 2 "" H 7300 1800 50  0000 C CNN
F 3 "" H 7300 1800 50  0000 C CNN
	1    7300 1800
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 56AE229B
P 1250 2700
F 0 "SW1" H 1400 2810 50  0000 C CNN
F 1 "SW_PUSH" H 1250 2620 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 1250 2700 50  0001 C CNN
F 3 "" H 1250 2700 50  0000 C CNN
	1    1250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2300 5450 2275
Wire Wire Line
	5450 2275 5450 2200
Wire Wire Line
	6350 2700 6400 2700
Wire Wire Line
	6400 2700 6450 2700
Wire Wire Line
	6150 1500 6050 1500
Wire Wire Line
	3800 3550 4300 3550
Wire Wire Line
	4300 3550 4300 5350
Wire Wire Line
	3800 2600 4100 2600
Wire Wire Line
	4100 2600 5150 2600
Wire Wire Line
	4100 2600 4100 3100
Wire Wire Line
	4100 3100 4400 3100
Wire Wire Line
	4400 3100 4400 5350
Wire Wire Line
	4500 5350 4500 3000
Wire Wire Line
	4500 3000 4200 3000
Wire Wire Line
	4200 3000 4200 2500
Wire Wire Line
	3800 2500 4200 2500
Wire Wire Line
	4200 2500 5050 2500
Wire Wire Line
	4600 5350 4600 2900
Wire Wire Line
	4600 2900 4300 2900
Wire Wire Line
	4300 2900 4300 2400
Wire Wire Line
	6850 4350 6850 4550
Wire Wire Line
	6550 4350 6700 4350
Wire Wire Line
	6700 4350 6850 4350
Wire Wire Line
	6550 4350 6550 4550
Wire Wire Line
	6850 4850 6850 5000
Wire Wire Line
	6550 5600 6550 4850
Wire Wire Line
	6550 5600 6700 5600
Wire Wire Line
	6700 5600 6850 5600
Wire Wire Line
	6850 5600 6850 5400
Wire Wire Line
	7150 4000 7150 5150
Connection ~ 6700 5600
Wire Wire Line
	6700 4100 6700 4350
Connection ~ 6700 4350
Wire Wire Line
	6400 5750 6700 5750
Wire Wire Line
	6700 5750 8850 5750
Wire Wire Line
	6400 4200 6400 5750
Connection ~ 6700 5750
Wire Wire Line
	3800 4200 6250 4200
Wire Wire Line
	6250 4200 6400 4200
Wire Wire Line
	3800 4100 6250 4100
Wire Wire Line
	6250 4100 6700 4100
Wire Wire Line
	3800 4000 6250 4000
Wire Wire Line
	6250 4000 7150 4000
Wire Wire Line
	5800 4650 5800 4850
Wire Wire Line
	5500 4650 5650 4650
Wire Wire Line
	5650 4650 5800 4650
Wire Wire Line
	5500 4650 5500 4850
Wire Wire Line
	5800 5150 5800 5300
Wire Wire Line
	5500 5900 5500 5150
Wire Wire Line
	5500 5900 5650 5900
Wire Wire Line
	5650 5900 5800 5900
Wire Wire Line
	5800 5900 5800 5700
Wire Wire Line
	6100 4300 6100 5450
Connection ~ 5650 5900
Wire Wire Line
	5650 4400 5650 4650
Connection ~ 5650 4650
Wire Wire Line
	5350 6050 5650 6050
Wire Wire Line
	5650 6050 8950 6050
Wire Wire Line
	5350 4500 5350 6050
Connection ~ 5650 6050
Wire Wire Line
	3800 4500 5200 4500
Wire Wire Line
	5200 4500 5350 4500
Wire Wire Line
	3800 4400 5200 4400
Wire Wire Line
	5200 4400 5650 4400
Wire Wire Line
	3800 4300 5200 4300
Wire Wire Line
	5200 4300 6100 4300
Wire Wire Line
	7900 4050 7900 4250
Wire Wire Line
	7600 4050 7750 4050
Wire Wire Line
	7750 4050 7900 4050
Wire Wire Line
	7600 4050 7600 4250
Wire Wire Line
	7900 4550 7900 4700
Wire Wire Line
	7600 5300 7600 4550
Wire Wire Line
	7600 5300 7750 5300
Wire Wire Line
	7750 5300 7900 5300
Wire Wire Line
	7900 5300 7900 5100
Wire Wire Line
	8200 3700 8200 4850
Connection ~ 7750 5300
Wire Wire Line
	7750 3800 7750 4050
Connection ~ 7750 4050
Wire Wire Line
	7450 5450 7750 5450
Wire Wire Line
	7750 5450 8750 5450
Wire Wire Line
	7450 3900 7450 5450
Connection ~ 7750 5450
Wire Wire Line
	3800 3900 7300 3900
Wire Wire Line
	7300 3900 7450 3900
Wire Wire Line
	3800 3800 7300 3800
Wire Wire Line
	7300 3800 7750 3800
Wire Wire Line
	3850 3700 7300 3700
Wire Wire Line
	7300 3700 8200 3700
Wire Wire Line
	3800 3650 3850 3700
Connection ~ 5200 4500
Connection ~ 5200 4400
Connection ~ 5200 4300
Connection ~ 6250 4200
Connection ~ 6250 4100
Connection ~ 6250 4000
Connection ~ 7300 3900
Connection ~ 7300 3800
Connection ~ 7300 3700
Wire Wire Line
	7750 5450 7750 5300
Wire Wire Line
	6700 5600 6700 5750
Wire Wire Line
	5650 5900 5650 6050
Wire Wire Line
	8750 5450 8750 5250
Wire Wire Line
	8850 5750 8850 5250
Wire Wire Line
	8950 6050 8950 5250
Wire Wire Line
	4200 5000 4200 5350
Wire Wire Line
	6250 2700 6250 3050
Wire Wire Line
	6150 2700 6150 2950
Wire Wire Line
	6050 3450 6050 2700
Wire Wire Line
	5950 2700 5950 3350
Wire Wire Line
	5450 2100 5300 2100
Connection ~ 4100 2600
Wire Wire Line
	5450 2000 5400 2000
Connection ~ 4200 2500
Wire Wire Line
	4775 1900 5450 1900
Connection ~ 4300 2400
Wire Wire Line
	5450 1800 4675 1800
Wire Wire Line
	6050 1500 6050 1200
Wire Wire Line
	6250 1500 6250 1100
Wire Wire Line
	6350 1025 6350 1500
Wire Wire Line
	6450 1500 6450 925 
Wire Wire Line
	6550 850  6550 1500
Wire Wire Line
	1000 4500 1550 4500
Wire Wire Line
	1550 4500 1900 4500
Wire Wire Line
	4700 5350 4700 5050
Wire Wire Line
	950  3150 950  3300
Wire Wire Line
	1000 1650 1600 1650
Wire Wire Line
	1600 1650 1900 1650
Wire Wire Line
	7050 1800 7300 1800
Wire Wire Line
	1900 1950 1600 1950
Wire Wire Line
	1600 1950 1600 1650
Connection ~ 1600 1650
Wire Wire Line
	1900 4400 1550 4400
Wire Wire Line
	1550 4400 1550 4500
Connection ~ 1550 4500
Wire Wire Line
	3800 2400 4300 2400
Wire Wire Line
	4300 2400 4950 2400
Wire Wire Line
	3800 3150 6550 3150
Wire Wire Line
	3800 3250 6400 3250
Wire Wire Line
	6400 3250 6400 3250
Wire Wire Line
	5950 3350 3800 3350
Wire Wire Line
	6050 3450 3800 3450
Wire Wire Line
	5450 2400 5300 2400
Wire Wire Line
	5300 2400 5300 2200
Wire Wire Line
	5300 2200 4300 2200
Wire Wire Line
	4300 2200 4300 1850
Wire Wire Line
	4300 1850 3800 1850
Wire Wire Line
	4225 1950 3800 1950
Wire Wire Line
	4675 1800 4675 2699
Wire Wire Line
	4675 2699 3800 2700
Wire Wire Line
	4775 1900 4775 2800
Wire Wire Line
	4775 2800 3800 2800
Wire Wire Line
	4050 1300 4050 2100
Wire Wire Line
	4050 2100 3800 2100
Wire Wire Line
	6050 1200 3950 1200
Wire Wire Line
	3950 1200 3950 2200
Wire Wire Line
	3950 2200 3800 2200
Wire Wire Line
	6550 850  3850 850 
Wire Wire Line
	3850 850  3850 2300
Wire Wire Line
	3850 2300 3800 2300
Wire Wire Line
	4950 2400 4950 925 
Wire Wire Line
	4950 925  6450 925 
Wire Wire Line
	5050 2500 5050 1025
Wire Wire Line
	5050 1025 6350 1025
Wire Wire Line
	6250 1100 5150 1100
Wire Wire Line
	5150 1100 5150 2600
Wire Wire Line
	5400 2000 5400 1650
Wire Wire Line
	5400 1650 3800 1650
Wire Wire Line
	5300 2100 5300 1750
Wire Wire Line
	6150 2950 3800 2950
Wire Wire Line
	6250 3050 3800 3050
Wire Wire Line
	950  2700 950  2850
Wire Wire Line
	6550 3150 6550 2700
$Comp
L LCD_3-way LCD1
U 1 1 56ACCD17
P 6250 2100
F 0 "LCD1" H 6250 2100 60  0000 C CNN
F 1 "LCD_3-way" H 6250 1850 60  0001 C CNN
F 2 "transistor_tester:LCD" H 6250 2100 60  0001 C CNN
F 3 "" H 6250 2100 60  0000 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1500 5950 1300
Wire Wire Line
	5950 1300 4050 1300
Wire Wire Line
	5450 2275 4225 2275
Connection ~ 5450 2275
Wire Wire Line
	4225 2275 4225 1950
Wire Wire Line
	6400 2700 6400 3250
Connection ~ 6400 2700
Wire Wire Line
	5300 1750 3800 1750
Connection ~ -1800 350 
$EndSCHEMATC
