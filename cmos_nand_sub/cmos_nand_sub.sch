EESchema Schematic File Version 4
LIBS:cmos_nand_sub-cache
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
P 1400 3800
F 0 "#GND01" H 1400 3700 50  0001 C CNN
F 1 "0" H 1400 3887 50  0000 C CNN
F 2 "" H 1400 3800 50  0001 C CNN
F 3 "" H 1400 3800 50  0001 C CNN
	1    1400 3800
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5B1AEF25
P 1400 3050
F 0 "V1" H 1828 3096 50  0000 L CNN
F 1 "dc 0 pulse(0 3.3 0 0 0 100m 200m)" H 1828 3005 50  0000 L CNN
F 2 "" H 1400 3050 50  0001 C CNN
F 3 "" H 1400 3050 50  0001 C CNN
F 4 "V" H 1400 3050 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 0 0 0 100m 200m)" H 1400 3050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1400 3050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3800 1400 3750
Text GLabel 5300 3250 0    50   Input ~ 0
A
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
P 5700 2950
F 0 "#PWR02" H 5700 2800 50  0001 C CNN
F 1 "VDD" H 5717 3123 50  0000 C CNN
F 2 "" H 5700 2950 50  0001 C CNN
F 3 "" H 5700 2950 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Text Notes 1000 1100 0    80   ~ 0
A NAND gate implemented using MOSFETs\n\nfrom https://en.wikipedia.org/wiki/CMOS
Wire Wire Line
	1400 2250 1400 2350
Text Notes 5350 4700 0    50   ~ 0
.tran 1m 400m
Text Notes 9900 4850 0    50   ~ 0
Supply voltage
Text Notes 1000 1600 0    50   ~ 0
Notes:\n\n1. the dotted section implements a 2-input NAND gate using PMOS/NMOS pair\n2. In ngspice it is implemented as a subcircuit\n3. Run the simulation and plot V(A), V(B) and V(out)
Text GLabel 1500 2250 2    50   Output ~ 0
A
Text GLabel 1500 4200 2    50   Output ~ 0
B
Text GLabel 5300 3450 0    50   Input ~ 0
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
Wire Wire Line
	1400 2250 1500 2250
$Comp
L pspice:0 #GND02
U 1 1 5B24F37F
P 1400 5750
F 0 "#GND02" H 1400 5650 50  0001 C CNN
F 1 "0" H 1400 5837 50  0000 C CNN
F 2 "" H 1400 5750 50  0001 C CNN
F 3 "" H 1400 5750 50  0001 C CNN
	1    1400 5750
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5B24F388
P 1400 5000
F 0 "V3" H 1828 5046 50  0000 L CNN
F 1 "dc 0 pulse(0 3.3 0 0 0 50m 100m)" H 1828 4955 50  0000 L CNN
F 2 "" H 1400 5000 50  0001 C CNN
F 3 "" H 1400 5000 50  0001 C CNN
F 4 "V" H 1400 5000 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 0 0 0 50m 100m)" H 1400 5000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1400 5000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5750 1400 5700
Wire Wire Line
	1400 4200 1400 4300
Wire Wire Line
	1400 4200 1500 4200
Text Notes 1150 6050 0    50   ~ 0
Test input signals
Text Notes 5350 5250 0    50   ~ 0
.control\nrun\nplot v(a)+5 v(b)+10 v(out)\n.endc
$Comp
L sim_logic:CMOS_NAND X1
U 1 1 5B25203E
P 5500 3350
F 0 "X1" H 5700 3078 50  0000 C CNN
F 1 "CMOS_NAND" H 5700 2987 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
F 4 "X" H 5500 3350 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 5500 3350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5500 3350 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "C:\\temp3\\spice_v5\\libs\\spice_models.lib" H 5500 3350 50  0001 C CNN "Spice_Lib_File"
	1    5500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3350 6100 3350
Text GLabel 6500 3350 0    50   BiDi ~ 0
Out
$Comp
L device:R R1
U 1 1 5B2526A7
P 6750 3500
F 0 "R1" H 6820 3546 50  0000 L CNN
F 1 "10meg" H 6820 3455 50  0000 L CNN
F 2 "" V 6680 3500 50  0001 C CNN
F 3 "" H 6750 3500 50  0001 C CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5B2526F1
P 6750 3800
F 0 "#GND03" H 6750 3700 50  0001 C CNN
F 1 "0" H 6750 3887 50  0000 C CNN
F 2 "" H 6750 3800 50  0001 C CNN
F 3 "" H 6750 3800 50  0001 C CNN
	1    6750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3650 6750 3800
$EndSCHEMATC
