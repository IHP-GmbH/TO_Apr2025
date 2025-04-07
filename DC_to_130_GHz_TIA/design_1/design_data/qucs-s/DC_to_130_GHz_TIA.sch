<Qucs Schematic 25.1.0>
<Properties>
  <View=-176,453,1576,1438,0.905639,0,0>
  <Grid=10,10,1>
  <DataSet=DC_to_130_GHz_TIA.dat>
  <DataDisplay=DC_to_130_GHz_TIA.dpl>
  <OpenDisplay=0>
  <Script=DC_to_130_GHz_TIA_complete.m>
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
  <Lib npn13G1 1 470 1130 10 64 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib rppd1 1 630 1000 -110 -196 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "15u" 1 "4u" 1 "1" 1>
  <GND * 1 200 1160 0 0 0 0>
  <Lib cap_cmim1 1 600 720 30 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <GND * 1 520 710 0 0 0 0>
  <SPfile X1 1 200 1130 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_data/openEMS/s2p files/INPUT.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 520 680 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_data/openEMS/s2p files/272em.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib rppd3 1 480 890 -196 46 0 1 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "29u" 1 "6.3u" 1 "1" 1>
  <Lib npn13G2 1 910 1050 10 64 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib cap_cmim2 1 1070 720 30 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib rppd2 1 1070 1010 -110 -196 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "11.5u" 1 "2u" 1 "1" 1>
  <GND * 1 1020 950 0 0 0 0>
  <GND * 1 980 710 0 0 0 0>
  <SPfile X4 1 1020 920 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_data/openEMS/s2p files/RF_OUT.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X3 1 980 680 -26 -53 0 0 "C:/Users/nsl/Desktop/254em.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <470 1180 470 1310 "VEE" 500 1230 80 "">
  <470 1050 470 1080 "" 0 0 0 "">
  <270 1050 270 1130 "" 0 0 0 "">
  <270 1130 440 1130 "" 0 0 0 "">
  <470 680 470 790 "" 0 0 0 "">
  <350 1050 470 1050 "" 0 0 0 "">
  <470 870 470 1050 "" 0 0 0 "">
  <480 1130 530 1130 "VEE" 540 1100 22 "">
  <470 680 490 680 "" 0 0 0 "">
  <60 1130 170 1130 "INPUT" 60 1070 60 "">
  <230 1130 270 1130 "" 0 0 0 "">
  <700 680 700 780 "VCC2V" 720 630 51 "">
  <600 680 700 680 "" 0 0 0 "">
  <600 680 600 700 "" 0 0 0 "">
  <600 740 600 800 "VEE" 620 770 24 "">
  <550 680 600 680 "" 0 0 0 "">
  <470 1050 880 1050 "" 0 0 0 "">
  <1250 680 1250 780 "VCC2V" 1280 700 47 "">
  <920 1050 980 1050 "VEE" 1000 1020 48 "">
  <1070 680 1250 680 "" 0 0 0 "">
  <1070 680 1070 700 "" 0 0 0 "">
  <1070 740 1070 820 "VEE" 1090 780 50 "">
  <910 920 910 1000 "" 0 0 0 "">
  <910 920 990 920 "" 0 0 0 "">
  <910 880 910 920 "" 0 0 0 "">
  <910 680 950 680 "" 0 0 0 "">
  <910 680 910 800 "" 0 0 0 "">
  <1010 680 1070 680 "" 0 0 0 "">
  <1050 920 1160 920 "OUTPUT" 1130 890 56 "">
  <910 1100 910 1310 "VEE" 950 1200 139 "">
  <910 1310 910 1310 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
