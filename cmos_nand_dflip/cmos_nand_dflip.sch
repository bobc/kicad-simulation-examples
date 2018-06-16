EESchema Schematic File Version 4
LIBS:cmos_nand_dflip-cache
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
Text GLabel 4200 6100 0    50   Input ~ 0
D
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
P 6400 3100
F 0 "#PWR02" H 6400 2950 50  0001 C CNN
F 1 "VDD" H 6417 3273 50  0000 C CNN
F 2 "" H 6400 3100 50  0001 C CNN
F 3 "" H 6400 3100 50  0001 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
Text Notes 1000 1100 0    80   ~ 0
A positive edge triggered D-type Flip-flop\n\nfrom https://en.wikipedia.org/wiki/Flip-flop_(electronics)#Classical_positive-edge-triggered_D_flip-flop
Wire Wire Line
	1400 2250 1400 2350
Text Notes 8950 1400 0    50   ~ 0
.tran 1m 400m
Text Notes 9900 4850 0    50   ~ 0
Supply voltage
Text Notes 1000 1600 0    50   ~ 0
Notes:\n\n1. the dotted section implements a D-type flip-flop\n2. Run the simulation and plot V(D), V(CLK), V(Q), V(nQ)\n3. You can also export a SPICE netlist and run in ngspice
Text GLabel 1500 2250 2    50   Output ~ 0
D
Text GLabel 1500 4200 2    50   Output ~ 0
CLK
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
F 1 "dc 0 pulse(0 3.3 25m 0 0 50m 100m)" H 1828 4955 50  0000 L CNN
F 2 "" H 1400 5000 50  0001 C CNN
F 3 "" H 1400 5000 50  0001 C CNN
F 4 "V" H 1400 5000 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 3.3 25m 0 0 50m 100m)" H 1400 5000 50  0001 C CNN "Spice_Model"
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
Text Notes 8950 1950 0    50   ~ 0
.control\nrun\nplot v(D)+15 v(CLK)+10 v(Q)+5 v(nQ)\n.endc
$Comp
L sim_logic:CMOS_NAND X1
U 1 1 5B25203E
P 6200 3500
F 0 "X1" H 6400 3228 50  0000 C CNN
F 1 "CMOS_NAND" H 6400 3137 50  0000 C CNN
F 2 "" H 6200 3500 50  0001 C CNN
F 3 "" H 6200 3500 50  0001 C CNN
F 4 "X" H 6200 3500 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 6200 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 3500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 6200 3500 50  0001 C CNN "Spice_Lib_File"
	1    6200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3500 6950 3500
Text GLabel 7350 3500 2    50   Output ~ 0
Q
$Comp
L device:R R1
U 1 1 5B2526A7
P 7750 3650
F 0 "R1" H 7820 3696 50  0000 L CNN
F 1 "10meg" H 7820 3605 50  0000 L CNN
F 2 "" V 7680 3650 50  0001 C CNN
F 3 "" H 7750 3650 50  0001 C CNN
	1    7750 3650
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 5B2526F1
P 7750 3950
F 0 "#GND03" H 7750 3850 50  0001 C CNN
F 1 "0" H 7750 4037 50  0000 C CNN
F 2 "" H 7750 3950 50  0001 C CNN
F 3 "" H 7750 3950 50  0001 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3800 7750 3950
$Comp
L power:VDD #PWR03
U 1 1 5B253303
P 5100 3000
F 0 "#PWR03" H 5100 2850 50  0001 C CNN
F 1 "VDD" H 5117 3173 50  0000 C CNN
F 2 "" H 5100 3000 50  0001 C CNN
F 3 "" H 5100 3000 50  0001 C CNN
	1    5100 3000
	1    0    0    -1  
$EndComp
$Comp
L sim_logic:CMOS_NAND X2
U 1 1 5B25330D
P 4900 3400
F 0 "X2" H 5100 3128 50  0000 C CNN
F 1 "CMOS_NAND" H 5100 3037 50  0000 C CNN
F 2 "" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0001 C CNN
F 4 "X" H 4900 3400 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 4900 3400 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 3400 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 4900 3400 50  0001 C CNN "Spice_Lib_File"
	1    4900 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR04
U 1 1 5B2533AE
P 5100 4400
F 0 "#PWR04" H 5100 4250 50  0001 C CNN
F 1 "VDD" H 5117 4573 50  0000 C CNN
F 2 "" H 5100 4400 50  0001 C CNN
F 3 "" H 5100 4400 50  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L sim_logic:CMOS_NAND3 X3
U 1 1 5B2533B8
P 4900 4800
F 0 "X3" H 5100 4528 50  0000 C CNN
F 1 "CMOS_NAND" H 5100 4437 50  0000 C CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
F 4 "X" H 4900 4800 50  0001 C CNN "Spice_Primitive"
F 5 "NAND3" H 4900 4800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 4800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 4900 4800 50  0001 C CNN "Spice_Lib_File"
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5B25340B
P 6400 4300
F 0 "#PWR05" H 6400 4150 50  0001 C CNN
F 1 "VDD" H 6417 4473 50  0000 C CNN
F 2 "" H 6400 4300 50  0001 C CNN
F 3 "" H 6400 4300 50  0001 C CNN
	1    6400 4300
	1    0    0    -1  
$EndComp
$Comp
L sim_logic:CMOS_NAND X4
U 1 1 5B253415
P 6200 4700
F 0 "X4" H 6400 4428 50  0000 C CNN
F 1 "CMOS_NAND" H 6400 4337 50  0000 C CNN
F 2 "" H 6200 4700 50  0001 C CNN
F 3 "" H 6200 4700 50  0001 C CNN
F 4 "X" H 6200 4700 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 6200 4700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 4700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 6200 4700 50  0001 C CNN "Spice_Lib_File"
	1    6200 4700
	1    0    0    -1  
$EndComp
Text GLabel 4200 4250 0    50   Input ~ 0
CLK
Wire Wire Line
	4200 6100 4700 6100
Wire Wire Line
	4700 3500 4400 3500
Wire Wire Line
	4400 3500 4400 4250
Wire Wire Line
	6000 3400 5600 3400
Wire Wire Line
	6000 4800 5600 4800
Wire Wire Line
	6000 3600 5900 3600
Wire Wire Line
	5900 3600 5900 3900
Wire Wire Line
	5900 3900 6950 4200
Wire Wire Line
	6950 4200 6950 4700
Wire Wire Line
	6950 4700 6800 4700
Wire Wire Line
	6800 3500 6950 3500
Wire Wire Line
	6950 3500 6950 3900
Wire Wire Line
	6950 3900 5900 4200
Wire Wire Line
	5900 4200 5900 4600
Wire Wire Line
	5900 4600 6000 4600
Wire Wire Line
	4700 4700 4600 4700
Wire Wire Line
	4600 4700 4600 4200
Wire Wire Line
	5500 3400 5600 3400
Connection ~ 5600 3400
Wire Wire Line
	5600 3400 5600 3900
Wire Wire Line
	4600 4200 5600 3900
Connection ~ 6950 3500
Wire Wire Line
	7750 4700 6950 4700
Text GLabel 7350 4700 2    50   Output ~ 0
nQ
$Comp
L device:R R2
U 1 1 5B254999
P 7750 4850
F 0 "R2" H 7820 4896 50  0000 L CNN
F 1 "10meg" H 7820 4805 50  0000 L CNN
F 2 "" V 7680 4850 50  0001 C CNN
F 3 "" H 7750 4850 50  0001 C CNN
	1    7750 4850
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND05
U 1 1 5B2549A0
P 7750 5150
F 0 "#GND05" H 7750 5050 50  0001 C CNN
F 1 "0" H 7750 5237 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5000 7750 5150
Wire Notes Line
	4300 6450 7200 6450
Wire Notes Line
	7200 6450 7200 1500
Wire Notes Line
	7200 1500 4300 1500
Wire Notes Line
	4300 1500 4300 6450
Connection ~ 6950 4700
Text GLabel 5800 3400 0    50   UnSpc ~ 0
1
Text GLabel 5750 4800 0    50   UnSpc ~ 0
2
$Comp
L sim_logic:CMOS_NAND X5
U 1 1 5B269CCD
P 4900 2200
F 0 "X5" H 5100 1928 50  0000 C CNN
F 1 "CMOS_NAND" H 5100 1837 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
F 4 "X" H 4900 2200 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 4900 2200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 2200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 4900 2200 50  0001 C CNN "Spice_Lib_File"
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR06
U 1 1 5B269D15
P 5100 1800
F 0 "#PWR06" H 5100 1650 50  0001 C CNN
F 1 "VDD" H 5117 1973 50  0000 C CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "" H 5100 1800 50  0001 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
$Comp
L sim_logic:CMOS_NAND X6
U 1 1 5B269DBA
P 4900 6000
F 0 "X6" H 5100 5728 50  0000 C CNN
F 1 "CMOS_NAND" H 5100 5637 50  0000 C CNN
F 2 "" H 4900 6000 50  0001 C CNN
F 3 "" H 4900 6000 50  0001 C CNN
F 4 "X" H 4900 6000 50  0001 C CNN "Spice_Primitive"
F 5 "NAND" H 4900 6000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 6000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "../libs/spice_models.lib" H 4900 6000 50  0001 C CNN "Spice_Lib_File"
	1    4900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4250 4400 4250
Connection ~ 4400 4250
Wire Wire Line
	4400 4250 4400 4800
$Comp
L power:VDD #PWR07
U 1 1 5B26A720
P 5100 5600
F 0 "#PWR07" H 5100 5450 50  0001 C CNN
F 1 "VDD" H 5117 5773 50  0000 C CNN
F 2 "" H 5100 5600 50  0001 C CNN
F 3 "" H 5100 5600 50  0001 C CNN
	1    5100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4800 4700 4800
Wire Wire Line
	4500 2100 4500 4900
Wire Wire Line
	4500 4900 4600 4900
Wire Wire Line
	5600 4800 5600 5300
Wire Wire Line
	5600 5300 4600 5600
Wire Wire Line
	4600 5600 4600 5900
Wire Wire Line
	4600 5900 4700 5900
Connection ~ 5600 4800
Wire Wire Line
	5600 4800 5500 4800
Wire Wire Line
	4600 4900 4600 5250
Wire Wire Line
	4600 5250 5600 5550
Wire Wire Line
	5600 5550 5600 6000
Wire Wire Line
	5600 6000 5500 6000
Connection ~ 4600 4900
Wire Wire Line
	4600 4900 4700 4900
Wire Wire Line
	4500 2100 4700 2100
Wire Wire Line
	4700 2300 4600 2300
Wire Wire Line
	4600 2300 4600 2500
Wire Wire Line
	4600 2500 5600 2850
Wire Wire Line
	5600 2850 5600 3400
Wire Wire Line
	5500 2200 5600 2200
Wire Wire Line
	5600 2200 5600 2500
Wire Wire Line
	5600 2500 4600 2850
Wire Wire Line
	4600 2850 4600 3300
Wire Wire Line
	4600 3300 4700 3300
Text GLabel 5600 5700 0    50   UnSpc ~ 0
3
Text GLabel 5600 2400 0    50   UnSpc ~ 0
4
$EndSCHEMATC
