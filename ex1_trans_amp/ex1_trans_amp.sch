EESchema Schematic File Version 4
LIBS:ex1_trans_amp-cache
EELAYER 26 0
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
L pspice:VSOURCE V1
U 1 1 5B215C64
P 2300 2650
F 0 "V1" H 2728 2696 50  0000 L CNN
F 1 "12" H 2728 2605 50  0000 L CNN
F 2 "" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0001 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5B215CDC
P 3700 2650
F 0 "R1" H 3768 2696 50  0000 L CNN
F 1 "100k" H 3768 2605 50  0000 L CNN
F 2 "" H 3700 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R3
U 1 1 5B215D10
P 4800 2650
F 0 "R3" H 4868 2696 50  0000 L CNN
F 1 "3.9k" H 4868 2605 50  0000 L CNN
F 2 "" H 4800 2650 50  0001 C CNN
F 3 "" H 4800 2650 50  0001 C CNN
	1    4800 2650
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R2
U 1 1 5B215D5B
P 4100 4600
F 0 "R2" H 4168 4646 50  0000 L CNN
F 1 "24k" H 4168 4555 50  0000 L CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R4
U 1 1 5B215DB1
P 4800 4600
F 0 "R4" H 4868 4646 50  0000 L CNN
F 1 "1k" H 4868 4555 50  0000 L CNN
F 2 "" H 4800 4600 50  0001 C CNN
F 3 "" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 5B215E29
P 3200 3800
F 0 "C1" V 2885 3800 50  0000 C CNN
F 1 "10u" V 2976 3800 50  0000 C CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "" H 3200 3800 50  0001 C CNN
	1    3200 3800
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5B215E9D
P 2300 4650
F 0 "V2" H 2728 4696 50  0000 L CNN
F 1 "0 ac 1.0 sin(0 1 1k)" H 2728 4605 50  0000 L CNN
F 2 "" H 2300 4650 50  0001 C CNN
F 3 "" H 2300 4650 50  0001 C CNN
	1    2300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3800 2300 3800
Wire Wire Line
	2300 3800 2300 3950
Wire Wire Line
	3700 2400 3700 1950
Wire Wire Line
	3700 1950 2300 1950
Wire Wire Line
	3700 1950 4800 1950
Wire Wire Line
	4800 1950 4800 2400
Connection ~ 3700 1950
Wire Wire Line
	3700 2900 3700 3800
Wire Wire Line
	3700 3800 3450 3800
Wire Wire Line
	3700 3800 4100 3800
Wire Wire Line
	4100 3800 4100 4350
Connection ~ 3700 3800
Wire Wire Line
	4800 3450 4800 2900
Wire Wire Line
	4350 3800 4100 3800
Connection ~ 4100 3800
Wire Wire Line
	4800 4350 4800 4250
$Comp
L pspice:0 #GND01
U 1 1 5B216243
P 2300 3350
F 0 "#GND01" H 2300 3250 50  0001 C CNN
F 1 "0" H 2300 3437 50  0000 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 5B21627D
P 2300 5350
F 0 "#GND02" H 2300 5250 50  0001 C CNN
F 1 "0" H 2300 5437 50  0000 C CNN
F 2 "" H 2300 5350 50  0001 C CNN
F 3 "" H 2300 5350 50  0001 C CNN
	1    2300 5350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5B2162D0
P 4100 5300
F 0 "#GND03" H 4100 5200 50  0001 C CNN
F 1 "0" H 4100 5387 50  0000 C CNN
F 2 "" H 4100 5300 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND04
U 1 1 5B216303
P 4800 5300
F 0 "#GND04" H 4800 5200 50  0001 C CNN
F 1 "0" H 4800 5387 50  0000 C CNN
F 2 "" H 4800 5300 50  0001 C CNN
F 3 "" H 4800 5300 50  0001 C CNN
	1    4800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4850 4100 5300
Wire Wire Line
	4800 4850 4800 5300
Text GLabel 2050 3800 0    50   BiDi ~ 0
v1
Wire Wire Line
	2050 3800 2300 3800
Connection ~ 2300 3800
Text GLabel 4000 3800 0    50   BiDi ~ 0
base
Wire Wire Line
	4550 4150 4550 4250
Wire Wire Line
	4550 4250 4800 4250
Connection ~ 4800 4250
Wire Wire Line
	4800 4250 4800 4150
$Comp
L pspice:QNPN Q1
U 1 1 5B22B822
P 4650 3800
F 0 "Q1" H 4877 3846 50  0000 L CNN
F 1 "QNPN" H 4877 3755 50  0000 L CNN
F 2 "" H 4650 3800 50  0001 C CNN
F 3 "" H 4650 3800 50  0001 C CNN
	1    4650 3800
	1    0    0    -1  
$EndComp
Text Notes 2250 6100 0    50   ~ 0
.tran 1e-5 2e-3
Text Notes 2250 5800 0    50   ~ 0
.model qnpn npn
Text Notes 1500 1600 0    50   ~ 0
1. Start the Simulator (Tools->Simulator)\n2. Click "Run/Stop Simulation".\n3. Click "Add signals"\n4. Add V(base) and V(v1), click OK.
Text Notes 1500 1000 0    80   ~ 0
Example based on Chapter 21.1 AC coupler transistor amplifier, from\nhttp://ngspice.sourceforge.net/docs/ngspice-manual.pdf\n
Text Notes 2250 6600 0    50   ~ 0
.control\nrun\nplot v(base) v(v1)\n.endc
$EndSCHEMATC
