<Qucs Schematic 24.4.1>
<Properties>
  <View=-3190,-1310,4200,1921,0.517638,825,0>
  <Grid=10,10,1>
  <DataSet=TIA.dat>
  <DataDisplay=TIA.dpl>
  <OpenDisplay=0>
  <Script=Final1.m>
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
  <GND * 1 -1750 -220 0 0 0 0>
  <VProbe Pr1 1 -640 -650 -53 -31 1 2>
  <GND * 1 -650 -630 0 0 0 0>
  <GND * 1 100 -480 0 0 0 0>
  <GND * 1 830 -330 0 0 0 0>
  <VProbe Pr2 1 570 -610 -53 -31 1 2>
  <GND * 1 560 -590 0 0 0 0>
  <GND * 1 670 -60 0 0 0 0>
  <GND * 1 -30 -60 0 0 0 0>
  <GND * 1 870 -800 0 0 0 0>
  <Vdc V1 1 870 -830 18 -26 0 1 "1.7 V" 1>
  <IProbe Pr3 1 780 -860 -26 16 1 2>
  <GND * 1 -540 -190 0 0 0 0>
  <C C1 1 980 -600 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <VProbe Pr4 1 -130 -700 -53 -31 1 2>
  <GND * 1 -140 -680 0 0 0 0>
  <IProbe Pr5 1 -30 -340 -41 -26 0 3>
  <GND * 1 280 -410 0 0 0 0>
  <IProbe Pr6 1 40 -860 -26 16 1 2>
  <Vdc V2 1 170 -830 18 -26 0 1 "2.4 V" 1>
  <GND * 1 740 -750 0 0 0 0>
  <GND * 1 30 -740 0 0 0 0>
  <GND * 1 740 -110 0 0 0 0>
  <IProbe Pr7 1 -460 -900 -26 16 1 2>
  <GND * 1 -360 -840 0 0 0 0>
  <Vdc V3 1 -360 -870 18 -26 0 1 "2 V" 1>
  <.SP SP1 1 -130 -1130 0 68 0 0 "lin" 1 "1 Hz" 1 "100 GHz" 1 "1001" 1 "yes" 1 "1" 1 "2" 1 "no" 0 "no" 0>
  <Lib npn13G2 1 -30 -560 10 100 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib npn13G3 1 670 -440 10 100 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib rppd2 1 -280 -260 -392 202 0 1 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "2u" 1 "6.5u" 1 "1" 1>
  <Lib rppd3 1 -190 -370 237 340 0 2 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "3u" 1 "6u" 1 "1" 1>
  <Lib rsil2 1 670 -680 -75 -52 0 2 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "4u" 1 "14.5u" 1 "1" 1>
  <GND * 1 -490 -800 0 0 0 0>
  <Lib rsil1 1 670 -250 -77 -52 0 2 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "4u" 1 "3u" 1 "1" 1>
  <GND * 1 1750 -370 0 0 0 0>
  <Lib rppd4 1 -380 -550 -110 -196 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "8 u" 1 "4.5 u" 1 "1" 1>
  <INCLSCR INCLSCR1 1 310 -1140 -60 16 0 0 ".LIB C:\Users\rupok_nsl\Desktop\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerHBT.lib hbt_typ\n.LIB C:\Users\rupok_nsl\Desktop\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerCAP.lib cap_typ\n.LIB C:\Users\rupok_nsl\Desktop\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerRES.lib res_typ\n.control\npre_osdi C:\Users\rupok_nsl\Desktop\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\r3_cmc.osdi\n.endc" 1 "" 0 "" 0>
  <IProbe Pr8 1 -690 -240 16 -26 0 1>
  <Pac P1 1 -1750 -330 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "false" 0>
  <Pac P2 1 1750 -450 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "false" 0>
  <R R4 1 190 -440 -26 15 0 0 "100 mOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 -380 -370 0 0 0 0>
  <Lib npn13G1 1 -540 -480 10 100 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <NutmegEq NutmegEq1 1 1740 1320 -31 16 0 0 "SP1" 1 "y=-4.123e-9 * frequency + 362.0" 1 "TI=50*mag(v(s_2_1))/(1-mag(v(s_1_1)))" 1 "TI_db=db(TI)" 1 "grp_dly=group_delay(v(s_2_1))" 1 "s21_phase_unwrap_deg=unwrap(ph(v(s_2_1)))*180/pi" 1 "s21_phase_unwrap=unwrap(ph(v(s_2_1)))" 1 "curve=s21_phase_unwrap_deg-y" 1 "z21_mag=mag(v(z_2_1))" 1 "z21_db=db(v(z_2_1))" 1 "s21_phase=phase(v(s_2_1))" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "fT=h21_mag*frequency" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <C C2 1 -1070 -480 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <SPfile choke_1 1 -540 -830 -332 -26 0 1 "C:/Users/rupok_nsl/Documents/layout_em_new/output/choke_1_data/choke_1.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile choke_2 1 -30 -760 -409 -26 0 1 "C:/Users/rupok_nsl/Documents/layout_em_new/output/choke_2_data/choke_2.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile choke_3 1 670 -780 -480 -26 0 1 "C:/Users/rupok_nsl/Documents/layout_em_new/output/choke_3_data/choke_3.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile peaking_TL 1 280 -440 -26 -59 0 0 "C:/Users/rupok_nsl/Documents/layout_em_new/output/peaking_TL_data/peaking_TL_0hz_changed.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile degenration_TL 1 670 -140 -326 -26 0 1 "C:\Users\rupok_nsl\QucsWorkspace\s2p_files\TL_20_um.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <GND * 1 950 -820 0 0 0 0>
  <GND * 1 250 -820 0 0 0 0>
  <GND * 1 -280 -860 0 0 0 0>
  <Lib cap_cmim1 1 -280 -880 30 -26 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "60.0u" 1 "30u" 1>
  <Lib cap_cmim4 1 250 -840 30 -26 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "60.0u" 1 "30u" 1>
  <Lib cap_cmim5 1 950 -840 30 -26 0 0 "C:/Users/rupok_nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "60.0u" 1 "30u" 1>
  <GND * 1 170 -810 0 0 0 0>
</Components>
<Wires>
  <-1750 -300 -1750 -220 "" 0 0 0 "">
  <-630 -630 -630 -600 "" 0 0 0 "">
  <-630 -600 -540 -600 "" 0 0 0 "">
  <680 -440 830 -440 "" 0 0 0 "">
  <830 -440 830 -330 "" 0 0 0 "">
  <580 -590 580 -560 "" 0 0 0 "">
  <580 -560 670 -560 "" 0 0 0 "">
  <670 -560 670 -490 "" 0 0 0 "">
  <670 -600 670 -560 "" 0 0 0 "">
  <310 -440 640 -440 "" 0 0 0 "">
  <810 -860 870 -860 "" 0 0 0 "">
  <-120 -680 -120 -650 "" 0 0 0 "">
  <-120 -650 -30 -650 "" 0 0 0 "">
  <-270 -440 -30 -440 "" 0 0 0 "">
  <-30 -440 -30 -370 "" 0 0 0 "">
  <-540 -600 -540 -560 "" 0 0 0 "">
  <-270 -440 -270 -100 "" 0 0 0 "">
  <-690 -100 -490 -100 "" 0 0 0 "">
  <-690 -480 -690 -270 "" 0 0 0 "">
  <-30 -310 -30 -240 "" 0 0 0 "">
  <670 -860 750 -860 "" 0 0 0 "">
  <670 -860 670 -810 "" 0 0 0 "">
  <670 -750 670 -720 "" 0 0 0 "">
  <670 -210 670 -170 "" 0 0 0 "">
  <670 -390 670 -290 "" 0 0 0 "">
  <670 -110 670 -60 "" 0 0 0 "">
  <100 -560 100 -480 "" 0 0 0 "">
  <-20 -560 100 -560 "" 0 0 0 "">
  <-30 -510 -30 -440 "" 0 0 0 "">
  <-30 -650 -30 -610 "" 0 0 0 "">
  <-30 -730 -30 -650 "" 0 0 0 "">
  <70 -860 170 -860 "" 0 0 0 "">
  <-30 -860 10 -860 "" 0 0 0 "">
  <-30 -860 -30 -790 "" 0 0 0 "">
  <740 -780 740 -750 "" 0 0 0 "">
  <700 -780 740 -780 "" 0 0 0 "">
  <30 -760 30 -740 "" 0 0 0 "">
  <0 -760 30 -760 "" 0 0 0 "">
  <740 -140 740 -110 "" 0 0 0 "">
  <700 -140 740 -140 "" 0 0 0 "">
  <-430 -900 -360 -900 "" 0 0 0 "">
  <-540 -900 -490 -900 "" 0 0 0 "">
  <-410 -100 -270 -100 "" 0 0 0 "">
  <-540 -680 -540 -600 "" 0 0 0 "">
  <-30 -160 -30 -60 "" 0 0 0 "">
  <670 -640 670 -600 "" 0 0 0 "">
  <-540 -900 -540 -860 "" 0 0 0 "">
  <-490 -830 -490 -800 "" 0 0 0 "">
  <-510 -830 -490 -830 "" 0 0 0 "">
  <-540 -800 -540 -760 "" 0 0 0 "">
  <670 -600 950 -600 "" 0 0 0 "">
  <1750 -600 1750 -480 "" 0 0 0 "">
  <1750 -420 1750 -370 "" 0 0 0 "">
  <1010 -600 1750 -600 "" 0 0 0 "">
  <-540 -560 -60 -560 "" 0 0 0 "">
  <-690 -210 -690 -100 "" 0 0 0 "">
  <220 -440 250 -440 "" 0 0 0 "">
  <-30 -440 160 -440 "" 0 0 0 "">
  <-540 -430 -540 -190 "" 0 0 0 "">
  <-690 -480 -570 -480 "" 0 0 0 "">
  <-540 -560 -540 -530 "" 0 0 0 "">
  <-530 -480 -380 -480 "" 0 0 0 "">
  <-380 -480 -380 -370 "" 0 0 0 "">
  <-1750 -480 -1750 -360 "" 0 0 0 "">
  <-1750 -480 -1100 -480 "" 0 0 0 "">
  <-1040 -480 -690 -480 "" 0 0 0 "">
  <-360 -900 -280 -900 "" 0 0 0 "">
  <170 -860 250 -860 "" 0 0 0 "">
  <870 -860 950 -860 "" 0 0 0 "">
  <170 -810 170 -800 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -1140 620 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 -30 10 30 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 162 -208 3 0 0>
	  <Mkr 2e+08 -197 -242 3 0 0>
	  <Mkr 2.6e+10 -13 -214 3 0 0>
  </Rect>
  <Rect -750 610 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 -40 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 144 -196 3 0 0>
  </Rect>
  <Rect -1140 360 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -30 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -750 360 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -70 10 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 430 360 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 0 1 6 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 120 -315 3 0 0>
  </Rect>
  <Rect -180 360 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 -0.5 0.5 2 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith -140 850 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_1_1" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 -99 -287 9 0 0>
  </Smith>
  <Smith 190 840 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_1_2" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 -12 -275 9 0 0>
  </Smith>
  <Smith -150 1170 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_2_1" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 -95 -273 9 0 0>
  </Smith>
  <Smith 200 1170 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_2_2" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 -16 -270 9 0 0>
  </Smith>
  <Rect -1110 1689 571 321 3 #c0c0c0 1 00 1 0 1e+10 1e+11 0 0 5e-12 5.5e-11 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.grp_dly" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 250 -390 3 0 0>
	  <Mkr 2.29e+10 50 -390 3 0 0>
  </Rect>
  <Rect -200 1586 781 166 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -200 1788 779 158 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase_unwrap" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -1110 1236 571 326 3 #c0c0c0 1 00 1 0 1e+10 1e+11 1 -22.4864 100 537.722 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.ti_db" #0000ff 0 3 0 0 0>
	  <Mkr 2e+08 -69 -368 3 0 0>
	  <Mkr 2.51e+10 106 -362 3 0 0>
	  <Mkr 4e+10 245 -349 3 0 0>
  </Rect>
  <Rect 120 360 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 0 1 15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 0 3 0 0 0>
	  <Mkr 4e+10 190 -310 3 0 0>
  </Rect>
  <Rect 730 1174 869 534 3 #c0c0c0 1 00 1 -1 0.1 1 0 0 2 10 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 0 0 0>
	<"ngspice/ac.nfmin" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 811 1761 768 389 3 #c0c0c0 1 00 1 0 1e+10 1e+11 1 -100 100 400 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase_unwrap_deg" #0000ff 0 3 0 0 0>
	  <Mkr 1e+08 62 -417 3 0 0>
	  <Mkr 4e+10 347 -307 3 0 0>
	<"ngspice/ac.y" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 1750 1123 679 453 3 #c0c0c0 1 00 1 0 1e+10 1e+11 0 -20 4 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.curve" #0000ff 0 3 0 0 0>
	  <Mkr 4.14e+10 292 -272 3 0 0>
	  <Mkr 2.99e+10 239 -323 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle -1230 90 800 590 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -1220 100 780 570 #000000 1 1 #c0c0c0 1 0>
  <Text -1050 110 40 #000000 0 "S-Parameter (dB)">
  <Rectangle -1200 790 750 990 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -1190 800 730 970 #000000 1 1 #c0c0c0 1 0>
  <Text -1050 810 40 #000000 0 "Transimpedance">
  <Rectangle -280 100 1020 320 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -270 110 1000 300 #000000 1 1 #c0c0c0 1 0>
  <Text 110 130 40 #000000 0 "Stability">
  <Rectangle -270 460 880 800 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -260 470 860 780 #000000 1 1 #c0c0c0 1 0>
  <Text 0 480 40 #000000 0 "S-Parameter">
  <Rectangle -270 1300 880 550 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -260 1310 860 530 #000000 1 1 #c0c0c0 1 0>
  <Text 80 1320 40 #000000 0 "S21 Phase">
  <Rectangle 720 1290 880 550 #000000 2 1 #c0c0c0 1 0>
  <Rectangle 730 1300 860 530 #000000 1 1 #c0c0c0 1 0>
  <Text 1040 1320 40 #000000 0 "S11 (Deg)">
</Paintings>
