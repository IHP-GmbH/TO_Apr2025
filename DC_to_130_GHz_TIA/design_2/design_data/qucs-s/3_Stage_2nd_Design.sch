<Qucs Schematic 25.1.2>
<Properties>
  <View=-896,-534,2244,1232,0.505382,0,1>
  <Grid=10,10,1>
  <DataSet=3_Stage_2nd_Design.dat>
  <DataDisplay=3_Stage_2nd_Design.dpl>
  <OpenDisplay=0>
  <Script=3_Stage_2nd_Design.m>
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
  <Lib npn13G1 1 360 520 10 64 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib cap_cmim1 1 930 160 30 -26 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib rppd1 1 1270 770 -110 -196 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "10.0u" 1 "1u" 1 "1" 1>
  <Lib npn13G2 1 700 440 10 64 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib npn13G3 1 1110 440 10 64 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "3" 1>
  <Lib rppd3 1 370 280 -196 50 0 1 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "30.0u" 1 "6u" 1 "1" 1>
  <Lib rppd5 1 540 100 59 144 0 2 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "12.6u" 1 "2u" 1 "1" 1>
  <Lib rppd2 1 200 160 59 144 0 2 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "19.5u" 1 "4u" 1 "1" 1>
  <Lib cap_cmim3 1 1260 190 30 -26 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib cap_cmim2 1 460 120 30 -26 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <GND * 1 430 180 0 0 0 0>
  <GND * 1 1120 30 0 0 0 0>
  <GND * 1 700 750 0 0 0 0>
  <GND * 1 360 700 0 0 0 0>
  <GND * 1 1110 740 0 0 0 0>
  <GND * 1 1340 440 0 0 0 0>
  <Vdc V1 1 1120 0 18 -26 0 1 "2 V" 1>
  <Vdc V2 1 1420 200 18 -26 0 1 "2.5 V" 1>
  <GND * 1 -110 700 0 0 0 0>
  <GND * 1 1490 640 0 0 0 0>
  <Pac P2 1 1490 480 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "80 GHz" 0 "26.85" 0 "true" 0>
  <NutmegEq NutmegEq1 1 1600 -480 -31 16 0 0 "SP1" 1 "y_deg=-2.2146111e-9*frequency+352" 1 "Difference=(-2.2146111e-9*frequency+352)-(unwrap(ph(v(s_2_1)))*180/pi)" 1 "TI=(50*mag(v(s_2_1)))/(mag(1-v(s_1_1)))" 1 "TI_2=(50*v(s_2_1))/(1-v(s_1_1))" 1 "TI_db=db(TI)" 1 "TI_db_2=db(TI_2)" 1 "grp_dly=group_delay(v(s_2_1))" 1 "s21_phase_unwrap_deg=unwrap(ph(v(s_2_1)))*180/pi" 1 "s21_phase_unwrap=unwrap(ph(v(s_2_1)))" 1 "z21_db=db(v(z_2_1))" 1 "s21_phase=phase(v(s_2_1))" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "fT=h21_mag*frequency" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <GND * 1 1420 240 0 0 0 0>
  <DCBlock C1 1 -50 520 -26 21 0 0 "1 uF" 0>
  <DCBlock C2 1 1430 360 -26 21 0 0 "1 uF" 0>
  <GND * 1 520 470 0 0 0 0>
  <GND * 1 870 390 0 0 0 0>
  <GND * 1 840 100 0 0 0 0>
  <GND * 1 40 550 0 0 0 0>
  <GND * 1 1200 160 0 0 0 0>
  <GND * 1 930 220 0 0 0 0>
  <GND * 1 1260 240 0 0 0 0>
  <Lib rppd4 1 1270 470 -110 -196 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "11.0u" 1 "2.8u" 1 "1" 1>
  <Pac P1 1 -110 590 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "80 GHz" 0 "26.85" 0 "true" 0>
  <INCLSCR INCLSCR1 1 -480 -380 -57 18 0 0 ".LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerHBT.lib hbt_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerRES.lib res_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerCAP.lib cap_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerMOSlv.lib mos_tt\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerMOShv.lib mos_tt\n\n.control\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\r3_cmc.osdi\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\psp103.osdi\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\psp103_nqs.osdi\n.endc" 1 "" 0 "" 0>
  <GND * 1 1120 440 0 0 0 1>
  <GND * 1 710 440 0 0 0 1>
  <GND * 1 370 520 0 0 0 1>
  <.SP SP1 1 -520 120 0 60 0 0 "lin" 1 "1 MHz" 1 "170 GHz" 1 "851" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SPfile X4 1 390 70 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/TL_180_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X7 1 40 520 -26 -51 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/INPUT.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X5 1 520 440 -26 -51 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/TL_30_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 840 70 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/TL_180_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X3 1 1200 130 -26 -51 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/TL_180_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 1 870 360 -26 -51 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/TL_430_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X6 1 1340 360 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_2/design_data/openEMS/s2p files/O160.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <360 570 360 700 "" 0 0 0 "">
  <360 440 360 470 "" 0 0 0 "">
  <360 440 490 440 "" 0 0 0 "">
  <160 440 160 520 "" 0 0 0 "">
  <160 520 330 520 "" 0 0 0 "">
  <700 490 700 750 "" 0 0 0 "">
  <420 70 460 70 "" 0 0 0 "">
  <870 70 930 70 "" 0 0 0 "">
  <930 70 930 140 "" 0 0 0 "">
  <70 520 160 520 "" 0 0 0 "">
  <1230 130 1260 130 "" 0 0 0 "">
  <1110 490 1110 560 "" 0 0 0 "">
  <700 360 700 390 "" 0 0 0 "">
  <460 70 570 70 "" 0 0 0 "">
  <1110 360 1110 390 "" 0 0 0 "">
  <1110 360 1310 360 "" 0 0 0 "">
  <1340 390 1340 440 "" 0 0 0 "">
  <1070 440 1080 440 "" 0 0 0 "">
  <700 70 810 70 "" 0 0 0 "">
  <700 70 700 230 "" 0 0 0 "">
  <700 310 700 360 "" 0 0 0 "">
  <240 440 360 440 "" 0 0 0 "">
  <360 70 360 290 "" 0 0 0 "">
  <360 370 360 440 "" 0 0 0 "">
  <550 440 670 440 "" 0 0 0 "">
  <930 70 1000 70 "" 0 0 0 "">
  <1260 130 1260 170 "" 0 0 0 "">
  <1110 640 1110 740 "" 0 0 0 "">
  <460 70 460 100 "" 0 0 0 "">
  <1110 130 1170 130 "" 0 0 0 "">
  <1110 130 1110 260 "" 0 0 0 "">
  <1110 340 1110 360 "" 0 0 0 "">
  <-20 520 10 520 "" 0 0 0 "">
  <1070 360 1070 440 "" 0 0 0 "">
  <900 360 1070 360 "" 0 0 0 "">
  <700 360 840 360 "" 0 0 0 "">
  <390 100 390 160 "" 0 0 0 "">
  <390 160 430 160 "" 0 0 0 "">
  <430 160 430 180 "" 0 0 0 "">
  <430 160 460 160 "" 0 0 0 "">
  <460 140 460 160 "" 0 0 0 "">
  <1260 130 1420 130 "" 0 0 0 "">
  <1420 130 1420 170 "" 0 0 0 "">
  <570 -30 570 70 "" 0 0 0 "">
  <570 -30 1000 -30 "" 0 0 0 "">
  <1000 -30 1120 -30 "" 0 0 0 "">
  <1000 -30 1000 70 "" 0 0 0 "">
  <1490 510 1490 640 "" 0 0 0 "">
  <1490 360 1490 450 "" 0 0 0 "">
  <1370 360 1400 360 "" 0 0 0 "">
  <1420 230 1420 240 "" 0 0 0 "">
  <1460 360 1490 360 "" 0 0 0 "">
  <-110 620 -110 700 "" 0 0 0 "">
  <-110 520 -80 520 "" 0 0 0 "">
  <-110 520 -110 560 "" 0 0 0 "">
  <930 180 930 220 "" 0 0 0 "">
  <1260 210 1260 240 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -630 620 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 1 3 0 0 0>
	  <Mkr 2.00999e+08 15 -126 3 0 0>
  </Rect>
  <Rect -620 440 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 1 3 0 0 0>
	  <Mkr 1e+06 -46 -203 3 0 0>
  </Rect>
  <Rect -650 870 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.7e+11 0 0 10 50 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.ti_db" #0000ff 0 3 0 0 0>
	  <Mkr 2.00999e+08 -40 -217 3 0 0>
	  <Mkr 1.614e+11 249 -152 3 0 0>
	  <Mkr 8.96005e+10 197 -206 3 0 0>
  </Rect>
  <Rect -290 920 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.5e+11 0 0 3 15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 1 3 0 0 0>
	  <Mkr 1.296e+11 210 -167 3 0 0>
	  <Mkr 1e+06 98 -190 3 0 0>
  </Rect>
  <Rect 110 930 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect -300 460 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.7e+11 0 0 2e-12 1.5e-11 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.grp_dly" #0000ff 1 3 0 0 0>
	  <Mkr 1.238e+11 234 -200 3 0 0>
  </Rect>
  <Rect -620 1130 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.7e+11 0 0 9 45 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.ti_db_2" #0000ff 1 3 0 0 0>
	  <Mkr 1e+06 -40 -209 3 0 0>
	  <Mkr 8.24005e+10 99 -213 3 0 0>
	  <Mkr 1.61e+11 261 -180 3 0 0>
  </Rect>
  <Rect 70 1180 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.7e+11 0 0 0.1 0.5 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 340 1180 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect -240 1190 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.7e+11 0 0 5 40 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
