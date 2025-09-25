<Qucs Schematic 25.1.2>
<Properties>
  <View=-887,-403,1835,1128,0.583007,0,1>
  <Grid=10,10,1>
  <DataSet=DC_to_130_GHz_TIA.dat>
  <DataDisplay=DC_to_130_GHz_TIA.dpl>
  <OpenDisplay=0>
  <Script=Test1.m>
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
  <GND * 1 700 620 0 0 0 0>
  <GND * 1 1100 380 0 0 0 0>
  <GND * 1 770 460 0 0 0 0>
  <GND * 1 1440 480 0 0 0 0>
  <Pac P2 1 1440 400 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "75 GHz" 0 "26.85" 0 "true" 0>
  <IProbe Pr1 1 700 260 -30 -26 0 3>
  <Lib npn13G1 1 700 440 10 64 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib npn13G2 1 1040 360 10 64 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <GND * 1 1040 670 0 0 0 0>
  <IProbe Pr2 1 1040 220 -30 -26 0 3>
  <GND * 1 1380 50 0 0 0 0>
  <IProbe Pr4 1 640 360 -26 -36 0 2>
  <IProbe Pr6 1 860 360 -26 20 0 0>
  <GND * 1 730 20 0 0 0 0>
  <GND * 1 1180 20 0 0 0 0>
  <Vdc V1 1 1380 20 18 -26 0 1 "2 V" 1>
  <GND * 1 910 50 0 0 0 0>
  <Vdc V2 1 910 20 18 -26 0 1 "2 V" 1>
  <GND * 1 800 70 0 0 0 0>
  <Lib cap_cmim1 1 800 50 30 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <GND * 1 1270 100 0 0 0 0>
  <Lib cap_cmim2 1 1270 80 30 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <GND * 1 250 680 0 0 0 0>
  <Pac P1 1 250 600 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "75 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 1190 320 0 0 0 0>
  <GND * 1 380 500 0 0 0 0>
  <Lib rppd2 1 860 310 -110 -196 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "15u" 1 "4u" 1 "1" 1>
  <INCLSCR INCLSCR1 1 -750 -330 -60 16 0 0 ".LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerHBT.lib hbt_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerRES.lib res_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerCAP.lib cap_typ\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerMOSlv.lib mos_tt\n.LIB C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\models\cornerMOShv.lib mos_tt\n\n.control\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\r3_cmc.osdi\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\psp103.osdi\npre_osdi C:\Users\nsl\Downloads\IHP-Open-PDK\ihp-sg13g2\libs.tech\ngspice\osdi\psp103_nqs.osdi\n.endc" 1 "" 0 "" 0>
  <Lib rppd4 1 1200 250 -110 -196 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "11.5u" 1 "2u" 1 "1" 1>
  <Lib rppd3 1 710 200 -196 46 0 1 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "29u" 1 "6.3u" 1 "1" 1>
  <.DC DC1 1 -160 -360 0 36 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "yes" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <C C1 1 280 440 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <C C2 1 1380 280 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <NutmegEq NutmegEq1 1 1130 650 -31 16 0 0 "SP1" 1 "y_deg=-2.2146111e-9*frequency+352" 1 "Difference=(-2.2146111e-9*frequency+352)-(unwrap(ph(v(s_2_1)))*180/pi)" 1 "TI=(50*mag(v(s_2_1)))/(mag(1-v(s_1_1)))" 1 "TI_2=(50*v(s_2_1))/(1-v(s_1_1))" 1 "TI_db=db(TI)" 1 "TI_db_2=db(TI_2)" 1 "y=-2.53e-11*frequency+6.3" 1 "grp_dly=group_delay(v(s_2_1))" 1 "s21_phase_unwrap_deg=unwrap(ph(v(s_2_1)))*180/pi" 1 "s21_phase_unwrap=unwrap(ph(v(s_2_1)))" 1 "z21_db=db(v(z_2_1))" 1 "s21_phase=phase(v(s_2_1))" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "fT=h21_mag*frequency" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <SPfile X10 1 1190 280 -26 -53 1 2 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_1/design_data/openEMS/s2p files/RF_OUT.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X3 1 380 440 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_1/design_data/openEMS/s2p files/INPUT.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 1180 -10 -26 -53 1 2 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_1/design_data/openEMS/s2p files/254em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 1 730 -10 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_1/design_data/openEMS/s2p files/272em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <.SP SP1 1 830 -210 0 60 0 0 "lin" 1 "100 MHz" 1 "170 GHz" 1 "851" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <700 360 700 390 "" 0 0 0 "">
  <700 490 700 620 "" 0 0 0 "">
  <1100 360 1100 380 "" 0 0 0 "">
  <1050 360 1100 360 "" 0 0 0 "">
  <770 440 770 460 "" 0 0 0 "">
  <710 440 770 440 "" 0 0 0 "">
  <760 -10 800 -10 "" 0 0 0 "">
  <1440 430 1440 480 "" 0 0 0 "">
  <700 180 700 230 "" 0 0 0 "">
  <700 290 700 360 "" 0 0 0 "">
  <700 360 830 360 "" 0 0 0 "">
  <1040 120 1040 190 "" 0 0 0 "">
  <1040 250 1040 280 "" 0 0 0 "">
  <580 360 610 360 "" 0 0 0 "">
  <500 360 500 440 "" 0 0 0 "">
  <670 360 700 360 "" 0 0 0 "">
  <890 360 1010 360 "" 0 0 0 "">
  <500 440 670 440 "" 0 0 0 "">
  <1040 -10 1040 40 "" 0 0 0 "">
  <1040 -10 1150 -10 "" 0 0 0 "">
  <1210 -10 1270 -10 "" 0 0 0 "">
  <700 -10 700 100 "" 0 0 0 "">
  <1040 410 1040 670 "" 0 0 0 "">
  <800 -10 910 -10 "" 0 0 0 "">
  <800 -10 800 30 "" 0 0 0 "">
  <1270 -10 1380 -10 "" 0 0 0 "">
  <1270 -10 1270 60 "" 0 0 0 "">
  <250 630 250 680 "" 0 0 0 "">
  <250 440 250 570 "" 0 0 0 "">
  <1440 280 1440 370 "" 0 0 0 "">
  <1410 280 1440 280 "" 0 0 0 "">
  <1190 310 1190 320 "" 0 0 0 "">
  <1040 280 1040 310 "" 0 0 0 "">
  <1040 280 1160 280 "" 0 0 0 "">
  <1220 280 1350 280 "" 0 0 0 "">
  <380 470 380 500 "" 0 0 0 "">
  <410 440 500 440 "" 0 0 0 "">
  <310 440 350 440 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -30 60 240 160 3 #c0c0c0 1 00 1 0 5e+10 2e+11 1 -40 4 -20 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
	  <Mkr 1.14433e+11 192 -208 3 0 0>
  </Rect>
  <Rect -340 60 240 160 3 #c0c0c0 1 00 1 0 5e+10 2e+11 0 -15 5 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 1e+08 -150 -132 3 0 0>
	  <Mkr 6.72605e+10 46 -197 3 0 0>
	  <Mkr 1.30223e+11 154 -135 3 0 0>
  </Rect>
  <Rect -350 290 240 160 3 #c0c0c0 1 00 1 0 5e+10 2e+11 0 0 2 20 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
	  <Mkr 1e+08 -138 -133 3 0 0>
	  <Mkr 1.31423e+11 182 -142 3 0 0>
	  <Mkr 8.08525e+10 78 -177 3 0 0>
  </Rect>
  <Rect -30 280 240 160 3 #c0c0c0 1 00 1 0 5e+10 2e+11 0 -30 5 0.789221 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 0 3 0 0 0>
	  <Mkr 1.30024e+11 121 -177 3 0 0>
  </Rect>
  <Rect -10 760 240 160 3 #c0c0c0 1 00 1 0 5e+10 2e+11 0 -5 5 15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 0 3 0 0 0>
	  <Mkr 2.00882e+10 103 -119 3 0 0>
  </Rect>
  <Rect -10 550 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.5e+11 0 0 5 30 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 0 3 0 0 0>
	  <Mkr 1.03239e+11 110 -130 3 0 0>
  </Rect>
  <Rect -330 720 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 0 3 0 0 0>
	  <Mkr 4.56732e+10 -166 -73 3 0 0>
  </Rect>
  <Rect 410 870 240 160 3 #c0c0c0 1 00 0 0 3e+10 1.5e+11 0 1e-12 1e-12 8e-12 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.grp_dly" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -340 520 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.z21_db" #0000ff 0 3 0 0 0>
	  <Mkr 1.69906e+09 -148 -173 3 0 0>
	  <Mkr 4.04762e+10 39 -184 3 0 0>
	  <Mkr 1.50012e+11 207 -154 3 0 0>
  </Rect>
  <Rect 290 230 240 160 3 #c0c0c0 1 00 0 0 5e+10 1.7e+11 0 0 5 48 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.ti_db" #0000ff 0 3 0 0 0>
	  <Mkr 1e+08 -28 -259 3 0 0>
	  <Mkr 1.38618e+11 235 -227 3 0 0>
	  <Mkr 8.58495e+10 109 -267 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
