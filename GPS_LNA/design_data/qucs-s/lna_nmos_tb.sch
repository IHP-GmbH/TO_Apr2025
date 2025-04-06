<Qucs Schematic 25.1.0>
<Properties>
  <View=-956,-484,2790,2112,0.270135,0,0>
  <Grid=10,10,1>
  <DataSet=lna_nmos_tb.dat>
  <DataDisplay=lna_nmos_tb.dpl>
  <OpenDisplay=0>
  <Script=lna.m>
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
  <Lib rppd1 1 550 50 -110 -196 0 0 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "0.5u" 1 "1.8u" 1 "1" 1>
  <Lib rppd2 1 680 260 -110 -196 0 0 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "0.5u" 1 "3.6u" 1 "1" 1>
  <Lib sg13_lv_nmos1 1 390 10 95 -121 1 2 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "10.0u" 1 "0.36u" 1 "5" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.346e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <GND * 1 900 500 0 0 0 0>
  <Lib cap_rfcmim2 1 330 230 -16 -92 0 1 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "55.0u" 1 "60.0u" 1>
  <Lib cap_rfcmim1 1 330 320 -16 -92 0 1 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "55.0u" 1 "60.0u" 1>
  <Lib rppd3 1 330 80 -196 54 0 1 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "0.5u" 1 "2.4u" 1 "1" 1>
  <GND * 1 390 110 0 0 0 0>
  <GND * 1 10 -50 0 0 0 0>
  <GND * 1 20 340 0 0 0 0>
  <INCLSCR INCLSCR1 1 80 -430 -60 16 0 0 ".LIB /home/noritsuna/pdk/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerMOSlv.lib mos_tt\n.LIB /home/noritsuna/pdk/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerHBT.lib hbt_typ\n.LIB /home/noritsuna/pdk/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerCAP.lib cap_typ\n.LIB /home/noritsuna/pdk/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerRES.lib res_typ\n.endc" 1 "" 0 "" 0>
  <.DC DC1 1 750 -430 0 37 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Pac P1 1 20 270 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "false" 0>
  <Pac P2 1 1720 -30 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "false" 0>
  <GND * 1 1720 20 0 0 0 0>
  <Vdc V1 1 10 -130 18 -26 0 1 "1.5 V" 1>
  <VProbe Pr1 1 1800 -120 28 -31 0 0>
  <GND * 1 1810 20 0 0 0 0>
  <Lib sg13_lv_nmos2 1 900 10 55 -121 0 0 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "200.00u" 1 "0.36u" 1 "200" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.346e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <Lib sg13_lv_nmos3 1 900 240 55 -121 0 0 "/home/noritsuna/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "200.00u" 1 "0.36u" 1 "200" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.346e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <L L1 1 900 -130 10 -26 0 1 "26.83 nH" 1 "" 0>
  <L L3 1 730 240 -26 10 0 0 "39 nH" 1 "" 0>
  <L L2 1 900 410 10 -26 0 1 "2.36 nH" 1 "" 0>
  <.SP SP1 1 970 -430 0 62 0 0 "lin" 1 "1 GHz" 1 "3 GHz" 1 "1001" 1 "yes" 1 "1" 1 "2" 1 "yes" 0 "yes" 0>
</Components>
<Wires>
  <440 10 480 10 "" 0 0 0 "">
  <520 10 520 50 "" 0 0 0 "">
  <390 -160 810 -160 "" 0 0 0 "">
  <900 -100 900 -80 "" 0 0 0 "">
  <900 440 900 470 "" 0 0 0 "">
  <910 10 960 10 "" 0 0 0 "">
  <960 10 960 240 "" 0 0 0 "">
  <960 240 960 470 "" 0 0 0 "">
  <900 470 900 500 "" 0 0 0 "">
  <900 470 960 470 "" 0 0 0 "">
  <390 -80 390 -60 "" 0 0 0 "">
  <350 240 410 240 "" 0 0 0 "">
  <520 240 700 240 "" 0 0 0 "">
  <520 130 520 240 "" 0 0 0 "">
  <20 240 120 240 "" 0 0 0 "">
  <200 240 290 240 "" 0 0 0 "">
  <290 330 320 330 "" 0 0 0 "">
  <290 240 320 240 "" 0 0 0 "">
  <290 240 290 330 "" 0 0 0 "">
  <350 270 370 270 "" 0 0 0 "">
  <370 270 370 360 "" 0 0 0 "">
  <350 360 370 360 "" 0 0 0 "">
  <370 360 370 470 "" 0 0 0 "">
  <370 470 900 470 "" 0 0 0 "">
  <350 330 410 330 "" 0 0 0 "">
  <410 240 520 240 "" 0 0 0 "">
  <410 240 410 330 "" 0 0 0 "">
  <20 300 20 340 "" 0 0 0 "">
  <390 70 390 90 "" 0 0 0 "">
  <350 10 380 10 "" 0 0 0 "">
  <350 10 350 90 "" 0 0 0 "">
  <390 90 390 110 "" 0 0 0 "">
  <350 90 390 90 "" 0 0 0 "">
  <900 -80 900 -40 "" 0 0 0 "">
  <900 -80 1720 -80 "" 0 0 0 "">
  <1720 -80 1720 -60 "" 0 0 0 "">
  <1720 0 1720 20 "" 0 0 0 "">
  <10 -100 10 -50 "" 0 0 0 "">
  <10 -160 390 -160 "" 0 0 0 "">
  <390 -60 390 -40 "" 0 0 0 "">
  <390 -60 480 -60 "" 0 0 0 "">
  <480 10 520 10 "" 0 0 0 "">
  <480 -60 480 10 "" 0 0 0 "">
  <1720 -80 1790 -80 "" 0 0 0 "">
  <1790 -100 1790 -80 "" 0 0 0 "">
  <1810 -100 1810 20 "" 0 0 0 "">
  <810 10 850 10 "" 0 0 0 "">
  <810 -160 900 -160 "" 0 0 0 "">
  <810 -160 810 10 "" 0 0 0 "">
  <910 240 960 240 "" 0 0 0 "">
  <900 300 900 380 "" 0 0 0 "">
  <760 240 850 240 "" 0 0 0 "">
  <900 70 900 190 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 1020 1080 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(1,1)" #ff0000 1 3 0 0 0>
  </Smith>
  <Smith 1350 1070 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(1,2)" #ff0000 1 3 0 0 0>
  </Smith>
  <Smith 1010 1400 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(2,1)" #ff0000 1 3 0 0 0>
  </Smith>
  <Smith 1360 1400 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(2,2)" #ff0000 0 3 0 0 0>
  </Smith>
  <Rect 120 1220 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -30 10 30 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(2,1)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 510 1210 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -40 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(2,2)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 120 960 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -30 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(1,1)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 510 960 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -70 10 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/S(1,2)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 50 1806 781 166 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"xyce/SP(2,1)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 981 1991 768 389 3 #c0c0c0 1 00 1 1e+09 2e+08 3e+09 1 0.002 0.001 0.00817466 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"xyce/SP(2,1)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle 890 690 880 800 #000000 2 1 #c0c0c0 1 0>
  <Text 1160 710 40 #000000 0 "S-Parameter">
  <Rectangle 30 690 800 590 #000000 2 1 #c0c0c0 1 0>
  <Text 210 710 40 #000000 0 "S-Parameter (dB)">
  <Rectangle -10 1530 870 320 #000000 1 1 #c0c0c0 1 0>
  <Text 330 1540 40 #000000 0 "S21 Phase">
  <Rectangle -20 1520 890 340 #000000 2 1 #c0c0c0 1 0>
  <Rectangle 890 1520 880 550 #000000 2 1 #c0c0c0 1 0>
  <Text 1210 1550 40 #000000 0 "S11 (Deg)">
  <Rectangle 900 1530 860 530 #000000 1 1 #c0c0c0 1 0>
  <Rectangle 30 700 780 570 #000000 1 1 #c0c0c0 1 0>
  <Rectangle 900 700 860 780 #000000 1 1 #c0c0c0 1 0>
</Paintings>
