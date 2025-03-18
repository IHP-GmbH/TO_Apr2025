<Qucs Schematic 25.1.0>
<Properties>
  <View=-240,456,1512,1441,0.905639,0,0>
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
  <Lib npn13G2 1 890 1050 10 64 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib cap_cmim2 1 1050 720 30 -26 0 0 "C:/Users/nsl/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib rppd2 1 1050 1010 -110 -196 0 0 "C:/Users/nsl/Desktop/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "11.5u" 1 "2u" 1 "1" 1>
  <GND * 1 1000 950 0 0 0 0>
  <GND * 1 960 710 0 0 0 0>
  <SPfile X4 1 1000 920 -26 -53 0 0 "C:/Users/nsl/Desktop/TO_Apr2025/DC_to_130_GHz_TIA/design_data/openEMS/s2p files/RF_OUT.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X3 1 960 680 -26 -53 0 0 "C:/Users/nsl/Desktop/254em.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <470 1180 470 1310 "VSS" 500 1230 80 "">
  <470 1050 470 1080 "" 0 0 0 "">
  <270 1050 270 1130 "" 0 0 0 "">
  <270 1130 440 1130 "" 0 0 0 "">
  <470 680 470 790 "" 0 0 0 "">
  <350 1050 470 1050 "" 0 0 0 "">
  <470 870 470 1050 "" 0 0 0 "">
  <480 1130 530 1130 "VSS" 540 1100 22 "">
  <470 680 490 680 "" 0 0 0 "">
  <60 1130 170 1130 "INPUT" 60 1070 60 "">
  <230 1130 270 1130 "" 0 0 0 "">
  <700 680 700 780 "VDD2V" 720 630 51 "">
  <600 680 700 680 "" 0 0 0 "">
  <600 680 600 700 "" 0 0 0 "">
  <600 740 600 800 "VSS" 620 770 24 "">
  <550 680 600 680 "" 0 0 0 "">
  <470 1050 860 1050 "" 0 0 0 "">
  <890 1100 890 1360 "VSS" 920 1210 143 "">
  <1230 680 1230 780 "VDD2V" 1260 700 47 "">
  <900 1050 960 1050 "VSS" 980 1020 48 "">
  <1050 680 1230 680 "" 0 0 0 "">
  <1050 680 1050 700 "" 0 0 0 "">
  <1050 740 1050 820 "VSS" 1070 780 50 "">
  <890 920 890 1000 "" 0 0 0 "">
  <890 920 970 920 "" 0 0 0 "">
  <890 880 890 920 "" 0 0 0 "">
  <890 680 930 680 "" 0 0 0 "">
  <890 680 890 800 "" 0 0 0 "">
  <990 680 1050 680 "" 0 0 0 "">
  <1030 920 1140 920 "OUTPUT" 1110 890 56 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
