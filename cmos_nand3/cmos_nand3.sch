EESchema Schematic File Version 4
LIBS:cmos_nand3-cache
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
L pspice:0 #GND01
U 1 1 5B1AEE1C
P 1400 5800
F 0 "#GND01" H 1400 5700 50  0001 C CNN
F 1 "0" H 1400 5887 50  0000 C CNN
F 2 "" H 1400 5800 50  0001 C CNN
F 3 "" H 1400 5800 50  0001 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5B1AEF25
P 1400 5050
F 0 "V1" H 1828 5096 50  0000 L CNN
F 1 "dc 0 pulse(0 3.3 0 0 0 100m 200m)" H 1828 5005 50  0000 L CNN
F 2 "" H 1400 5050 50  0001 C CNN
F 3 "" H 1400 5050 50  0001 C CNN
F 4 "V" H 1400 5050 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 0 0 0 100m 200m)" H 1400 5050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1400 5050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5800 1400 5750
Text GLabel 4550 2700 0    50   Input ~ 0
A
Text GLabel 8700 3100 2    50   Output ~ 0
Out
$Comp
L pspice:VSOURCE V2
U 1 1 5B1B81D1
P 10200 3800
F 0 "V2" H 10628 3846 50  0000 L CNN
F 1 "3.3" H 10628 3755 50  0000 L CNN
F 2 "" H 10200 3800 50  0001 C CNN
F 3 "" H 10200 3800 50  0001 C CNN
	1    10200 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01
U 1 1 5B1B83AE
P 10200 3100
F 0 "#PWR01" H 10200 2950 50  0001 C CNN
F 1 "VDD" H 10217 3273 50  0000 C CNN
F 2 "" H 10200 3100 50  0001 C CNN
F 3 "" H 10200 3100 50  0001 C CNN
	1    10200 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5B1B83E5
P 5000 2250
F 0 "#PWR02" H 5000 2100 50  0001 C CNN
F 1 "VDD" H 5017 2423 50  0000 C CNN
F 2 "" H 5000 2250 50  0001 C CNN
F 3 "" H 5000 2250 50  0001 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 5000 3850
Wire Wire Line
	4700 3500 4550 3500
Wire Wire Line
	5000 2500 5000 2450
Wire Notes Line
	4650 2400 4650 6150
Wire Notes Line
	8400 6150 8400 2400
Wire Notes Line
	8400 2400 4650 2400
Wire Notes Line
	4650 6150 8400 6150
Text Notes 1000 1100 0    80   ~ 0
A NAND gate implemented using MOSFETs\n\nfrom https://en.wikipedia.org/wiki/CMOS
Wire Wire Line
	4700 2700 4550 2700
Wire Wire Line
	1400 4250 1400 4350
Text Notes 9150 1400 0    50   ~ 0
.tran 1m 400m
Text Notes 9150 1150 0    50   ~ 0
.model mnmos nmos level=8 version=3.3.0\n.model mpmos pmos level=8 version=3.3.0\n
$Comp
L pspice:MPMOS M1
U 1 1 5B2448E1
P 4900 2700
F 0 "M1" H 5187 2746 50  0000 L CNN
F 1 "MPMOS" H 5187 2655 50  0000 L CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:MNMOS M2
U 1 1 5B244930
P 4900 3500
F 0 "M2" H 5188 3546 50  0000 L CNN
F 1 "MNMOS" H 5188 3455 50  0000 L CNN
F 2 "" H 4875 3500 50  0001 C CNN
F 3 "" H 4875 3500 50  0001 C CNN
	1    4900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2500 5100 2450
Wire Wire Line
	5100 2450 5000 2450
Connection ~ 5000 2450
Wire Wire Line
	5000 2450 5000 2250
Wire Wire Line
	5100 3700 5100 3850
Wire Wire Line
	5100 3850 5000 3850
Text Notes 9900 4850 0    50   ~ 0
Supply voltage
Text Notes 1000 1600 0    50   ~ 0
Notes:\n\n1. the dotted section implements a 3-input NAND gate PMOS/NMOS\n2. Run the simulation and plot V(A), V(B), V(C), V(out)
$Comp
L pspice:MPMOS M4
U 1 1 5B249F5D
P 6350 2700
F 0 "M4" H 6637 2746 50  0000 L CNN
F 1 "MPMOS" H 6637 2655 50  0000 L CNN
F 2 "" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR03
U 1 1 5B249FBF
P 6450 2250
F 0 "#PWR03" H 6450 2100 50  0001 C CNN
F 1 "VDD" H 6467 2423 50  0000 C CNN
F 2 "" H 6450 2250 50  0001 C CNN
F 3 "" H 6450 2250 50  0001 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2500 6450 2450
Wire Wire Line
	6450 2450 6550 2450
Wire Wire Line
	6550 2450 6550 2500
Connection ~ 6450 2450
Wire Wire Line
	6450 2450 6450 2250
Text GLabel 5950 2700 0    50   Input ~ 0
B
Wire Wire Line
	5950 2700 6150 2700
Wire Wire Line
	5000 2900 5000 3100
Wire Wire Line
	5000 4650 5000 4800
Wire Wire Line
	4700 4450 4550 4450
$Comp
L pspice:MNMOS M3
U 1 1 5B24A6A3
P 4900 4450
F 0 "M3" H 5188 4496 50  0000 L CNN
F 1 "MNMOS" H 5188 4405 50  0000 L CNN
F 2 "" H 4875 4450 50  0001 C CNN
F 3 "" H 4875 4450 50  0001 C CNN
	1    4900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4650 5100 4800
Wire Wire Line
	5100 4800 5000 4800
Wire Wire Line
	5000 3850 5000 4250
Text GLabel 1500 4250 2    50   Output ~ 0
B
Text GLabel 1500 2500 2    50   Output ~ 0
A
Wire Wire Line
	5000 3100 6450 3100
Wire Wire Line
	6450 3100 6450 2900
Connection ~ 5000 3100
Wire Wire Line
	5000 3100 5000 3300
Wire Wire Line
	8700 3100 7750 3100
Connection ~ 6450 3100
Connection ~ 5000 3850
Text GLabel 4550 3500 0    50   Input ~ 0
A
Text GLabel 4550 4450 0    50   Input ~ 0
B
$Comp
L pspice:0 #GND04
U 1 1 5B24BFD8
P 10200 4500
F 0 "#GND04" H 10200 4400 50  0001 C CNN
F 1 "0" H 10200 4587 50  0000 C CNN
F 2 "" H 10200 4500 50  0001 C CNN
F 3 "" H 10200 4500 50  0001 C CNN
	1    10200 4500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5B24C547
P 5000 6350
F 0 "#GND03" H 5000 6250 50  0001 C CNN
F 1 "0" H 5000 6437 50  0000 C CNN
F 2 "" H 5000 6350 50  0001 C CNN
F 3 "" H 5000 6350 50  0001 C CNN
	1    5000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4800 5000 5300
Connection ~ 5000 4800
Wire Wire Line
	1400 4250 1500 4250
$Comp
L pspice:0 #GND02
U 1 1 5B24F37F
P 1400 4050
F 0 "#GND02" H 1400 3950 50  0001 C CNN
F 1 "0" H 1400 4137 50  0000 C CNN
F 2 "" H 1400 4050 50  0001 C CNN
F 3 "" H 1400 4050 50  0001 C CNN
	1    1400 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5B24F388
P 1400 3300
F 0 "V3" H 1828 3346 50  0000 L CNN
F 1 "dc 0 pulse(0 3.3 0 0 0 50m 100m)" H 1828 3255 50  0000 L CNN
F 2 "" H 1400 3300 50  0001 C CNN
F 3 "" H 1400 3300 50  0001 C CNN
F 4 "V" H 1400 3300 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 0 0 0 50m 100m)" H 1400 3300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1400 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4050 1400 4000
Wire Wire Line
	1400 2500 1400 2600
Wire Wire Line
	1400 2500 1500 2500
Text Notes 1050 2100 0    50   ~ 0
Test input signals
Text Notes 9150 1950 0    50   ~ 0
.control\nrun\nplot v(a)+5 v(b)+10 v(c)+15 v(out)\n.endc
Text GLabel 5000 4100 0    50   UnSpc ~ 0
1
$Comp
L pspice:MPMOS M6
U 1 1 5B25ABD4
P 7650 2700
F 0 "M6" H 7937 2746 50  0000 L CNN
F 1 "MPMOS" H 7937 2655 50  0000 L CNN
F 2 "" H 7650 2700 50  0001 C CNN
F 3 "" H 7650 2700 50  0001 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR04
U 1 1 5B25ABDB
P 7750 2250
F 0 "#PWR04" H 7750 2100 50  0001 C CNN
F 1 "VDD" H 7767 2423 50  0000 C CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "" H 7750 2250 50  0001 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2500 7750 2450
Wire Wire Line
	7750 2450 7850 2450
Wire Wire Line
	7850 2450 7850 2500
Connection ~ 7750 2450
Wire Wire Line
	7750 2450 7750 2250
Text GLabel 7250 2700 0    50   Input ~ 0
C
Wire Wire Line
	7250 2700 7450 2700
Wire Wire Line
	7750 3100 7750 2900
Connection ~ 7750 3100
Wire Wire Line
	7750 3100 6450 3100
Wire Wire Line
	5000 5700 5000 5850
$Comp
L pspice:MNMOS M5
U 1 1 5B25C8DC
P 4900 5500
F 0 "M5" H 5188 5546 50  0000 L CNN
F 1 "MNMOS" H 5188 5455 50  0000 L CNN
F 2 "" H 4875 5500 50  0001 C CNN
F 3 "" H 4875 5500 50  0001 C CNN
	1    4900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5700 5100 5850
Wire Wire Line
	5100 5850 5000 5850
Wire Wire Line
	5000 5850 5000 6350
Connection ~ 5000 5850
Wire Wire Line
	4700 5500 4550 5500
Text GLabel 4550 5500 0    50   Input ~ 0
C
Text GLabel 5000 5050 0    50   UnSpc ~ 0
2
$Comp
L pspice:0 #GND05
U 1 1 5B25F78D
P 1400 7550
F 0 "#GND05" H 1400 7450 50  0001 C CNN
F 1 "0" H 1400 7637 50  0000 C CNN
F 2 "" H 1400 7550 50  0001 C CNN
F 3 "" H 1400 7550 50  0001 C CNN
	1    1400 7550
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5B25F796
P 1400 6800
F 0 "V4" H 1828 6846 50  0000 L CNN
F 1 "dc 0 pulse(0 3.3 0 0 0 200m 400m)" H 1828 6755 50  0000 L CNN
F 2 "" H 1400 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
F 4 "V" H 1400 6800 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 0 0 0 200m 400m)" H 1400 6800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1400 6800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7550 1400 7500
Wire Wire Line
	1400 6000 1400 6100
Text GLabel 1500 6000 2    50   Output ~ 0
C
Wire Wire Line
	1400 6000 1500 6000
$EndSCHEMATC
