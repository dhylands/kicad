EESchema Schematic File Version 2
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
LIBS:Cer_reso
LIBS:Test-cache
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
L SW_PUSH SW1
U 1 1 57A6D952
P 4150 3000
F 0 "SW1" H 4300 3110 50  0000 C CNN
F 1 "SW_PUSH" H 4150 2920 50  0000 C CNN
F 2 "" H 4150 3000 50  0001 C CNN
F 3 "" H 4150 3000 50  0000 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 57A6D989
P 3150 3250
F 0 "P1" H 3150 3400 50  0000 C CNN
F 1 "CONN_01X02" V 3250 3250 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3150 3250 50  0001 C CNN
F 3 "" H 3150 3250 50  0000 C CNN
	1    3150 3250
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 57A6DA62
P 4950 3200
F 0 "P2" H 4950 3400 50  0000 C CNN
F 1 "CONN_01X03" V 5050 3200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 3200 50  0001 C CNN
F 3 "" H 4950 3200 50  0000 C CNN
	1    4950 3200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57A6DAC9
P 4600 2700
F 0 "R1" V 4680 2700 50  0000 C CNN
F 1 "10k" V 4600 2700 50  0000 C CNN
F 2 "Discret:R4" V 4530 2700 50  0001 C CNN
F 3 "" H 4600 2700 50  0000 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3300 4750 3300
Wire Wire Line
	3350 3200 4750 3200
Wire Wire Line
	3850 3000 3850 3300
Connection ~ 3850 3300
Wire Wire Line
	4450 3000 4600 3000
Wire Wire Line
	4600 2850 4600 3100
Wire Wire Line
	4600 3100 4750 3100
Connection ~ 4600 3000
$Comp
L VCC #PWR01
U 1 1 57A6DC25
P 4600 2550
F 0 "#PWR01" H 4600 2400 50  0001 C CNN
F 1 "VCC" H 4600 2700 50  0000 C CNN
F 2 "" H 4600 2550 50  0000 C CNN
F 3 "" H 4600 2550 50  0000 C CNN
	1    4600 2550
	1    0    0    -1  
$EndComp
Text Label 4650 3100 0    60   ~ 0
SW
Text Label 3600 3200 0    60   ~ 0
VCC
Text Label 3600 3300 0    60   ~ 0
GND
$Comp
L PWR_FLAG #FLG02
U 1 1 57B55A25
P 3400 3100
F 0 "#FLG02" H 3400 3195 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 3280 50  0000 C CNN
F 2 "" H 3400 3100 50  0000 C CNN
F 3 "" H 3400 3100 50  0000 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 57B55A45
P 3400 3400
F 0 "#FLG03" H 3400 3495 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 3580 50  0000 C CNN
F 2 "" H 3400 3400 50  0000 C CNN
F 3 "" H 3400 3400 50  0000 C CNN
	1    3400 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 3100 3400 3200
Connection ~ 3400 3200
Wire Wire Line
	3400 3400 3400 3300
Connection ~ 3400 3300
$EndSCHEMATC
