EESchema Schematic File Version 4
LIBS:inverter_mosfet-cache
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
P 4750 4750
F 0 "#GND01" H 4750 4650 50  0001 C CNN
F 1 "0" H 4750 4837 50  0000 C CNN
F 2 "" H 4750 4750 50  0001 C CNN
F 3 "" H 4750 4750 50  0001 C CNN
	1    4750 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5B1AEF25
P 4100 3800
F 0 "V1" H 4528 3846 50  0000 L CNN
F 1 "pulse(0 3.3 0 0 0 100m 200m)" H 4528 3755 50  0000 L CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
F 4 "V" H 4100 3800 50  0001 C CNN "Spice_Primitive"
F 5 "pulse(0 3.3 0 0 0 100m 200m)" H 4100 3800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4100 3800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4750 4750 4500
Wire Wire Line
	4100 4500 4750 4500
Connection ~ 4750 4500
Text GLabel 4750 2700 0    50   Input ~ 0
vin
Text GLabel 7200 2700 2    50   Output ~ 0
vout
Wire Wire Line
	6100 2900 6100 2700
$Comp
L pspice:VSOURCE V2
U 1 1 5B1B81D1
P 2750 3800
F 0 "V2" H 3178 3846 50  0000 L CNN
F 1 "3.3" H 3178 3755 50  0000 L CNN
F 2 "" H 2750 3800 50  0001 C CNN
F 3 "" H 2750 3800 50  0001 C CNN
	1    2750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4500 2750 4500
Connection ~ 4100 4500
$Comp
L power:VDD #PWR01
U 1 1 5B1B83AE
P 2750 3100
F 0 "#PWR01" H 2750 2950 50  0001 C CNN
F 1 "VDD" H 2767 3273 50  0000 C CNN
F 2 "" H 2750 3100 50  0001 C CNN
F 3 "" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5B1B83E5
P 6100 1850
F 0 "#PWR02" H 6100 1700 50  0001 C CNN
F 1 "VDD" H 6117 2023 50  0000 C CNN
F 2 "" H 6100 1850 50  0001 C CNN
F 3 "" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3300 6100 3450
Wire Wire Line
	4750 4500 6100 4500
Wire Wire Line
	5800 3100 5650 3100
Wire Wire Line
	6100 2100 6100 2050
Wire Notes Line
	5300 2000 5300 3600
Wire Notes Line
	6750 3600 6750 2000
Wire Notes Line
	6750 2000 5300 2000
Wire Notes Line
	5300 3600 6750 3600
Text Notes 2700 1400 0    80   ~ 0
An inverter (NOT gate) implemented using MOSFETs\n\nfrom https://en.wikipedia.org/wiki/CMOS
Wire Wire Line
	5800 2300 5650 2300
Wire Wire Line
	5650 2300 5650 2700
Wire Wire Line
	7200 2700 6100 2700
Connection ~ 6100 2700
Wire Wire Line
	6100 2700 6100 2500
Connection ~ 5650 2700
Wire Wire Line
	5650 2700 5650 3100
Wire Wire Line
	4100 2700 4100 3100
Wire Wire Line
	4100 2700 5650 2700
Text Notes 2800 5400 0    50   ~ 0
.tran 1m 400m
Text Notes 2800 5150 0    50   ~ 0
.model mnmos nmos level=8 version=3.3.0\n.model mpmos pmos level=8 version=3.3.0\n
$Comp
L pspice:MPMOS M1
U 1 1 5B2448E1
P 6000 2300
F 0 "M1" H 6287 2346 50  0000 L CNN
F 1 "MPMOS" H 6287 2255 50  0000 L CNN
F 2 "" H 6000 2300 50  0001 C CNN
F 3 "" H 6000 2300 50  0001 C CNN
	1    6000 2300
	1    0    0    -1  
$EndComp
$Comp
L pspice:MNMOS M2
U 1 1 5B244930
P 6000 3100
F 0 "M2" H 6288 3146 50  0000 L CNN
F 1 "MNMOS" H 6288 3055 50  0000 L CNN
F 2 "" H 5975 3100 50  0001 C CNN
F 3 "" H 5975 3100 50  0001 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2100 6200 2050
Wire Wire Line
	6200 2050 6100 2050
Connection ~ 6100 2050
Wire Wire Line
	6100 2050 6100 1850
Wire Wire Line
	6200 3300 6200 3450
Wire Wire Line
	6200 3450 6100 3450
Connection ~ 6100 3450
Wire Wire Line
	6100 3450 6100 4500
Text Notes 2550 3850 0    50   ~ 0
Supply voltage
Text Notes 3650 2650 0    50   ~ 0
Square wave input
Text Notes 2700 1900 0    50   ~ 0
Notes:\n\n1. the dotted section implements an inverter using PMOS/NMOS pair\n2. Run the simulation and plot V(in) and V(out)
Text Notes 2800 6000 0    50   ~ 0
.control\nrun\nplot v(vin)+5 v(vout)\n.endc
$EndSCHEMATC
