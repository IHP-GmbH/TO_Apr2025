<Qucs Schematic 24.4.1>
<Properties>
  <View=-109,-1090,3583,980,0.440903,41,21>
  <Grid=10,10,1>
  <DataSet=160GHz_LNA(MAIN).dat>
  <DataDisplay=160GHz_LNA(MAIN).dpl>
  <OpenDisplay=0>
  <Script=Bandwidth extension.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 2260 180 0 0 0 0>
  <GND * 1 2290 -300 0 0 0 0>
  <GND * 1 2290 140 0 0 0 0>
  <Lib npn13G8 1 2260 -80 10 64 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "2" 1>
  <Lib rsil8 1 2260 -230 50 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "7.5u" 1 "5.5u" 1 "1" 1>
  <GND * 1 2360 -290 0 0 0 0>
  <Vdc V7 1 2360 -350 18 -26 0 1 "1.35V" 1>
  <SPfile X4 1 2260 -330 -165 -26 0 1 "C:/S2P files/Choke.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X12 1 2260 130 -219 -26 0 1 "C:/S2P files/Dgen_final_stage.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 2050 -260 0 0 0 0>
  <Vdc V8 1 2050 -290 18 -26 0 1 "0.93V" 1>
  <Lib rhigh12 1 2180 -190 -79 -26 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "2u" 1 "6u" 1 "1" 1>
  <GND * 1 2100 -30 0 0 0 0>
  <Lib cap_rfcmim15 1 2030 -90 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "5.1u" 1 "2.4u" 1>
  <GND * 1 2430 -100 0 0 0 0>
  <Lib cap_rfcmim16 1 2390 -150 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "32u" 1 "6.2u" 1>
  <GND * 1 2440 60 0 0 0 0>
  <SPfile X18 1 2470 20 22 -26 0 3 "C:/S2P files/4th_TL.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 2470 110 0 0 0 0>
  <GND * 1 2560 -100 0 0 0 0>
  <Lib cap_rfcmim17 1 2510 -150 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3.2u" 1 "2.4u" 1>
  <GND * 1 2660 100 0 0 0 0>
  <Pac P2 1 2660 30 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 1790 240 0 0 0 0>
  <GND * 1 1820 -220 0 0 0 0>
  <GND * 1 1820 200 0 0 0 0>
  <Lib npn13G7 1 1790 -20 10 64 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "2" 1>
  <Lib rsil7 1 1790 -150 50 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "7.5u" 1 "5u" 1 "1" 1>
  <GND * 1 1890 -240 0 0 0 0>
  <Vdc V5 1 1890 -300 18 -26 0 1 "1.35V" 1>
  <SPfile X3 1 1790 -250 -165 -26 0 1 "C:/S2P files/Choke.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X11 1 1790 190 -158 -26 0 1 "C:/S2P files/Dgen.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 1610 -150 0 0 0 0>
  <Vdc V6 1 1610 -180 18 -26 0 1 "0.9V" 1>
  <Lib rhigh11 1 1720 -90 -88 -26 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "1.9u" 1 "6u" 1 "1" 1>
  <GND * 1 1620 30 0 0 0 0>
  <Lib cap_rfcmim13 1 1550 -30 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "7.6u" 1 "2.5u" 1>
  <GND * 1 1950 -40 0 0 0 0>
  <Lib cap_rfcmim14 1 1910 -90 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "32u" 1 "12.5u" 1>
  <GND * 1 1990 130 0 0 0 0>
  <SPfile X17 1 1990 60 22 -26 0 3 "C:/S2P files/3rd_TL.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 1960 90 0 0 0 0>
  <GND * 1 1270 300 0 0 0 0>
  <GND * 1 1300 -190 0 0 0 0>
  <GND * 1 1300 260 0 0 0 0>
  <Lib npn13G6 1 1270 40 10 64 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib rsil6 1 1270 -120 50 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "7.5u" 1 "5u" 1 "1" 1>
  <GND * 1 1350 -170 0 0 0 0>
  <Vdc V3 1 1350 -230 18 -26 0 1 "1.35V" 1>
  <SPfile X2 1 1270 -220 -165 -26 0 1 "C:/S2P files/Choke.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X10 1 1270 250 -158 -26 0 1 "C:/S2P files/Dgen.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 1130 90 0 0 0 0>
  <Lib cap_rfcmim11 1 1060 30 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "5.2u" 1 "2.4u" 1>
  <GND * 1 1440 20 0 0 0 0>
  <Lib cap_rfcmim12 1 1400 -30 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "32u" 1 "3.72u" 1>
  <GND * 1 1480 170 0 0 0 0>
  <SPfile X16 1 1480 90 22 -26 0 3 "C:/S2P files/2nd_TL.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 1450 110 0 0 0 0>
  <GND * 1 940 80 0 0 0 0>
  <GND * 1 750 360 0 0 0 0>
  <GND * 1 780 -140 0 0 0 0>
  <Lib npn13G5 1 750 100 10 64 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib cap_rfcmim10 1 900 30 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "32u" 1 "3.72u" 1>
  <Lib rsil5 1 750 -40 50 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "7.5u" 1 "5u" 1 "1" 1>
  <SPfile X1 1 750 -170 -165 -26 0 1 "C:/S2P files/Choke.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 830 -120 0 0 0 0>
  <Vdc V1 1 830 -180 18 -26 0 1 "1.35V" 1>
  <SPfile X14 1 750 310 21 -26 0 3 "C:/S2P files/Dgen.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 720 330 0 0 0 0>
  <Lib rhigh9 1 670 -10 -88 -26 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "1.9u" 1 "6u" 1 "1" 1>
  <GND * 1 440 250 0 0 0 0>
  <Pac P1 1 440 200 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 550 150 0 0 0 0>
  <Lib cap_rfcmim9 1 520 90 -16 -98 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "10u" 1 "15u" 1>
  <GND * 1 990 200 0 0 0 0>
  <SPfile X15 1 990 140 22 -26 0 3 "C:/S2P files/1st_TL.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 960 160 0 0 0 0>
  <.DC DC1 1 480 610 0 40 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 540 -280 0 0 0 2>
  <Lib cap_cmim8 1 540 -260 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 540 -100 0 0 0 0>
  <Vdc V2 1 540 -130 18 -26 0 1 "0.9V" 1>
  <Lib cap_cmim9 1 650 -260 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 650 -280 0 0 0 2>
  <Lib cap_cmim11 1 920 -210 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim10 1 910 -300 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 930 -300 0 0 0 1>
  <GND * 1 950 -210 0 0 0 1>
  <GND * 1 1100 -370 0 0 0 2>
  <Lib cap_cmim12 1 1100 -350 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim13 1 1210 -350 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 1210 -370 0 0 0 2>
  <GND * 1 1100 -160 0 0 0 0>
  <Vdc V4 1 1100 -190 18 -26 0 1 "0.9V" 1>
  <Lib cap_cmim14 1 1440 -260 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim15 1 1430 -350 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 1450 -350 0 0 0 1>
  <GND * 1 1470 -260 0 0 0 1>
  <GND * 1 1610 -380 0 0 0 2>
  <Lib cap_cmim16 1 1610 -360 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim17 1 1720 -360 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 1720 -380 0 0 0 2>
  <Lib cap_cmim18 1 1980 -330 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim19 1 1970 -420 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 1990 -420 0 0 0 1>
  <GND * 1 2010 -330 0 0 0 1>
  <GND * 1 2060 -470 0 0 0 2>
  <Lib cap_cmim20 1 2060 -450 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim21 1 2170 -450 -84 -27 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 2170 -470 0 0 0 2>
  <Lib cap_cmim22 1 2450 -380 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <Lib cap_cmim23 1 2440 -470 -38 -90 0 1 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "25u" 1 "20u" 1>
  <GND * 1 2460 -470 0 0 0 1>
  <GND * 1 2480 -380 0 0 0 1>
  <INCLSCR INCLSCR2 1 620 -730 -60 16 0 0 ".LIB C:\Users\nsl\QucsWorkspace\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerHBT.lib hbt_typ\n.LIB C:\Users\nsl\QucsWorkspace\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerRES.lib res_typ\n.LIB C:\Users\nsl\QucsWorkspace\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerCAP.lib cap_typ\n.control\npre_osdi C:\Users\nsl\QucsWorkspace\IHP-Open-PDK\ihp-sg13g2\libs.tech\verilog-a\r3_cmc\r3_cmc.osdi\n.endc" 1 "" 0 "" 0>
  <.SP SP1 1 770 600 0 68 0 0 "lin" 1 "140 GHz" 1 "190 GHz" 1 "101" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <NutmegEq NutmegEq3 1 1050 610 -31 16 0 0 "SP1" 1 "num=(1/4)*(abs(v(y_2_1)-v(y_1_2))*abs(v(y_2_1)-v(y_1_2)))" 1 "den=real(v(y_1_1))*real(v(y_2_2))-real(v(y_2_1))*real(v(y_1_2))" 1 "Gmax=num/den" 1 "Fmax=sqrt(mag(Gmax))*frequency" 1>
  <NutmegEq NutmegEq2 1 1410 590 -31 16 0 0 "SP1" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <Lib rhigh10 1 1220 -30 -88 -26 0 2 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "1.9u" 1 "5u" 1 "1" 1>
</Components>
<Wires>
  <2270 -80 2340 -80 "" 0 0 0 "">
  <2340 -80 2340 180 "" 0 0 0 "">
  <2260 180 2340 180 "" 0 0 0 "">
  <2260 160 2260 180 "" 0 0 0 "">
  <2260 -30 2260 100 "" 0 0 0 "">
  <2260 -190 2260 -140 "" 0 0 0 "">
  <2290 -330 2290 -300 "" 0 0 0 "">
  <2260 -300 2260 -270 "" 0 0 0 "">
  <2290 130 2290 140 "" 0 0 0 "">
  <2360 -320 2360 -290 "" 0 0 0 "">
  <2180 -80 2230 -80 "" 0 0 0 "">
  <2180 -150 2180 -80 "" 0 0 0 "">
  <2050 -80 2180 -80 "" 0 0 0 "">
  <2100 -50 2100 -30 "" 0 0 0 "">
  <2050 -50 2100 -50 "" 0 0 0 "">
  <2410 -140 2470 -140 "" 0 0 0 "">
  <2260 -140 2260 -130 "" 0 0 0 "">
  <2260 -140 2380 -140 "" 0 0 0 "">
  <2430 -110 2430 -100 "" 0 0 0 "">
  <2410 -110 2430 -110 "" 0 0 0 "">
  <2470 -140 2470 -10 "" 0 0 0 "">
  <2440 20 2440 60 "" 0 0 0 "">
  <2470 50 2470 110 "" 0 0 0 "">
  <2470 -140 2500 -140 "" 0 0 0 "">
  <2530 -110 2560 -110 "" 0 0 0 "">
  <2560 -110 2560 -100 "" 0 0 0 "">
  <2530 -140 2660 -140 "" 0 0 0 "">
  <2660 60 2660 100 "" 0 0 0 "">
  <2660 -140 2660 0 "" 0 0 0 "">
  <1800 -20 1870 -20 "" 0 0 0 "">
  <1870 -20 1870 240 "" 0 0 0 "">
  <1790 240 1870 240 "" 0 0 0 "">
  <1790 220 1790 240 "" 0 0 0 "">
  <1790 30 1790 160 "" 0 0 0 "">
  <1820 -250 1820 -220 "" 0 0 0 "">
  <1790 -220 1790 -190 "" 0 0 0 "">
  <1820 190 1820 200 "" 0 0 0 "">
  <1890 -270 1890 -240 "" 0 0 0 "">
  <1720 -20 1760 -20 "" 0 0 0 "">
  <1720 -50 1720 -20 "" 0 0 0 "">
  <1570 -20 1720 -20 "" 0 0 0 "">
  <1620 10 1620 30 "" 0 0 0 "">
  <1570 10 1620 10 "" 0 0 0 "">
  <1790 -110 1790 -80 "" 0 0 0 "">
  <1790 -80 1790 -70 "" 0 0 0 "">
  <1790 -80 1900 -80 "" 0 0 0 "">
  <1950 -50 1950 -40 "" 0 0 0 "">
  <1930 -50 1950 -50 "" 0 0 0 "">
  <1930 -80 1990 -80 "" 0 0 0 "">
  <1990 -80 2020 -80 "" 0 0 0 "">
  <1990 -80 1990 30 "" 0 0 0 "">
  <1990 90 1990 130 "" 0 0 0 "">
  <1960 60 1960 90 "" 0 0 0 "">
  <1280 40 1350 40 "" 0 0 0 "">
  <1350 40 1350 300 "" 0 0 0 "">
  <1270 300 1350 300 "" 0 0 0 "">
  <1270 280 1270 300 "" 0 0 0 "">
  <1270 90 1270 220 "" 0 0 0 "">
  <1300 -220 1300 -190 "" 0 0 0 "">
  <1300 250 1300 260 "" 0 0 0 "">
  <1270 -190 1270 -160 "" 0 0 0 "">
  <1350 -200 1350 -170 "" 0 0 0 "">
  <1220 40 1240 40 "" 0 0 0 "">
  <1220 10 1220 40 "" 0 0 0 "">
  <1080 40 1220 40 "" 0 0 0 "">
  <1130 70 1130 90 "" 0 0 0 "">
  <1080 70 1130 70 "" 0 0 0 "">
  <1270 -80 1270 -20 "" 0 0 0 "">
  <1270 -20 1270 -10 "" 0 0 0 "">
  <1270 -20 1390 -20 "" 0 0 0 "">
  <1440 10 1440 20 "" 0 0 0 "">
  <1420 10 1440 10 "" 0 0 0 "">
  <1420 -20 1480 -20 "" 0 0 0 "">
  <1480 -20 1540 -20 "" 0 0 0 "">
  <1480 -20 1480 60 "" 0 0 0 "">
  <1480 120 1480 170 "" 0 0 0 "">
  <1450 90 1450 110 "" 0 0 0 "">
  <760 100 830 100 "" 0 0 0 "">
  <750 40 750 50 "" 0 0 0 "">
  <830 100 830 360 "" 0 0 0 "">
  <750 360 830 360 "" 0 0 0 "">
  <940 70 940 80 "" 0 0 0 "">
  <920 70 940 70 "" 0 0 0 "">
  <750 40 890 40 "" 0 0 0 "">
  <750 150 750 280 "" 0 0 0 "">
  <750 340 750 360 "" 0 0 0 "">
  <750 0 750 40 "" 0 0 0 "">
  <750 -140 750 -80 "" 0 0 0 "">
  <780 -170 780 -140 "" 0 0 0 "">
  <750 -300 750 -200 "" 0 0 0 "">
  <750 -300 830 -300 "" 0 0 0 "">
  <830 -150 830 -120 "" 0 0 0 "">
  <830 -300 830 -210 "" 0 0 0 "">
  <720 310 720 330 "" 0 0 0 "">
  <670 100 720 100 "" 0 0 0 "">
  <670 30 670 100 "" 0 0 0 "">
  <440 230 440 250 "" 0 0 0 "">
  <540 100 670 100 "" 0 0 0 "">
  <440 100 440 170 "" 0 0 0 "">
  <440 100 510 100 "" 0 0 0 "">
  <550 130 550 150 "" 0 0 0 "">
  <540 130 550 130 "" 0 0 0 "">
  <920 40 990 40 "" 0 0 0 "">
  <990 40 1050 40 "" 0 0 0 "">
  <990 40 990 110 "" 0 0 0 "">
  <990 170 990 200 "" 0 0 0 "">
  <960 140 960 160 "" 0 0 0 "">
  <670 -240 670 -50 "" 0 0 0 "">
  <540 -240 650 -240 "" 0 0 0 "">
  <540 -240 540 -160 "" 0 0 0 "">
  <650 -240 670 -240 "" 0 0 0 "">
  <830 -210 900 -210 "" 0 0 0 "">
  <830 -300 890 -300 "" 0 0 0 "">
  <940 -210 950 -210 "" 0 0 0 "">
  <1220 -330 1220 -70 "" 0 0 0 "">
  <1100 -330 1210 -330 "" 0 0 0 "">
  <1100 -330 1100 -220 "" 0 0 0 "">
  <1210 -330 1220 -330 "" 0 0 0 "">
  <1350 -350 1350 -260 "" 0 0 0 "">
  <1350 -260 1420 -260 "" 0 0 0 "">
  <1350 -350 1410 -350 "" 0 0 0 "">
  <1460 -260 1470 -260 "" 0 0 0 "">
  <1270 -350 1270 -250 "" 0 0 0 "">
  <1270 -350 1350 -350 "" 0 0 0 "">
  <1720 -340 1720 -130 "" 0 0 0 "">
  <1610 -340 1610 -210 "" 0 0 0 "">
  <1610 -340 1720 -340 "" 0 0 0 "">
  <1890 -420 1890 -330 "" 0 0 0 "">
  <1890 -330 1960 -330 "" 0 0 0 "">
  <1890 -420 1950 -420 "" 0 0 0 "">
  <2000 -330 2010 -330 "" 0 0 0 "">
  <1790 -420 1790 -280 "" 0 0 0 "">
  <1790 -420 1890 -420 "" 0 0 0 "">
  <2180 -430 2180 -230 "" 0 0 0 "">
  <2050 -430 2050 -320 "" 0 0 0 "">
  <2050 -430 2060 -430 "" 0 0 0 "">
  <2060 -430 2170 -430 "" 0 0 0 "">
  <2170 -430 2180 -430 "" 0 0 0 "">
  <2360 -380 2430 -380 "" 0 0 0 "">
  <2360 -470 2360 -380 "" 0 0 0 "">
  <2360 -470 2420 -470 "" 0 0 0 "">
  <2470 -380 2480 -380 "" 0 0 0 "">
  <2260 -470 2260 -360 "" 0 0 0 "">
  <2260 -470 2360 -470 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
