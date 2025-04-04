<Qucs Schematic 25.1.0>
<Properties>
  <View=-1531,-635,3474,1294,0.826446,1040,409>
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
  <SPfile X3 1 1200 130 -26 -51 0 0 "/container/shared-folder/data/TL_180_um/TL_180_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X6 1 1340 360 -26 -53 0 0 "/container/shared-folder/O160.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X4 1 390 70 -26 -53 0 0 "/container/shared-folder/data/TL_180_um/TL_180_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 840 70 -26 -53 0 0 "/container/shared-folder/data/TL_180_um/TL_180_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 1 870 360 -26 -51 0 0 "/container/shared-folder/data/TL_430_um/TL_430_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib rppd5 1 540 100 59 144 0 2 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "12.6u" 1 "2u" 1 "1" 1>
  <Lib rppd2 1 200 160 59 144 0 2 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "19.5u" 1 "4u" 1 "1" 1>
  <Lib cap_cmim3 1 1260 190 30 -26 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib cap_cmim2 1 460 120 30 -26 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30u" 1 "30u" 1>
  <Lib rppd4 1 1270 470 -110 -196 0 0 "/headless/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "11.0u" 1 "2.8u" 1 "1" 1>
  <SPfile X5 1 520 440 -26 -51 0 0 "/container/shared-folder/Intermediate.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X7 1 40 520 -26 -51 0 0 "/container/shared-folder/RF_IN.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <360 570 360 630 "" 0 0 0 "">
  <710 440 760 440 "" 0 0 0 "">
  <370 520 430 520 "" 0 0 0 "">
  <360 440 360 470 "" 0 0 0 "">
  <360 440 490 440 "" 0 0 0 "">
  <160 440 160 520 "" 0 0 0 "">
  <160 520 330 520 "" 0 0 0 "">
  <700 490 700 590 "" 0 0 0 "">
  <420 70 460 70 "" 0 0 0 "">
  <870 70 930 70 "" 0 0 0 "">
  <930 70 930 140 "" 0 0 0 "">
  <70 520 160 520 "" 0 0 0 "">
  <1340 130 1340 150 "" 0 0 0 "">
  <1230 130 1260 130 "" 0 0 0 "">
  <1110 490 1110 560 "" 0 0 0 "">
  <700 360 700 390 "" 0 0 0 "">
  <460 70 570 70 "VDD2V" 550 40 62 "">
  <1110 360 1110 390 "" 0 0 0 "">
  <1110 360 1310 360 "" 0 0 0 "">
  <1340 390 1340 440 "GND" 1370 450 16 "">
  <1370 360 1490 360 "OUTPUT" 1460 330 56 "">
  <1070 360 1070 440 "" 0 0 0 "">
  <1070 440 1080 440 "" 0 0 0 "">
  <900 360 1070 360 "" 0 0 0 "">
  <700 360 840 360 "" 0 0 0 "">
  <700 70 810 70 "" 0 0 0 "">
  <700 70 700 230 "" 0 0 0 "">
  <700 310 700 360 "" 0 0 0 "">
  <240 440 360 440 "" 0 0 0 "">
  <360 70 360 290 "" 0 0 0 "">
  <360 370 360 440 "" 0 0 0 "">
  <550 440 670 440 "" 0 0 0 "">
  <-110 520 10 520 "INPUT" -70 470 69 "">
  <930 70 1000 70 "VDD2V" 1000 40 33 "">
  <840 100 840 180 "" 0 0 0 "">
  <840 180 890 180 "GND" 880 230 23 "">
  <890 180 930 180 "" 0 0 0 "">
  <890 180 890 200 "" 0 0 0 "">
  <1200 160 1200 210 "" 0 0 0 "">
  <1260 130 1340 130 "VDD2p5V" 1330 100 40 "">
  <1260 130 1260 170 "" 0 0 0 "">
  <1200 210 1230 210 "" 0 0 0 "">
  <1230 210 1260 210 "" 0 0 0 "">
  <1230 210 1230 240 "GND" 1260 250 6 "">
  <390 100 390 150 "" 0 0 0 "">
  <390 150 430 150 "GND" 420 230 23 "">
  <430 150 430 170 "" 0 0 0 "">
  <430 170 430 170 "" 0 0 0 "">
  <40 550 40 630 "" 0 0 0 "">
  <360 630 360 700 "GND" 390 640 37 "">
  <40 630 360 630 "" 0 0 0 "">
  <760 440 760 590 "" 0 0 0 "">
  <700 590 700 630 "" 0 0 0 "">
  <700 590 760 590 "" 0 0 0 "">
  <430 520 430 630 "" 0 0 0 "">
  <360 630 430 630 "" 0 0 0 "">
  <1110 670 1110 740 "GND" 1140 690 25 "">
  <1110 640 1110 670 "" 0 0 0 "">
  <520 470 520 630 "" 0 0 0 "">
  <700 630 700 750 "GND" 730 640 40 "">
  <520 630 700 630 "" 0 0 0 "">
  <430 150 460 150 "" 0 0 0 "">
  <460 140 460 150 "" 0 0 0 "">
  <460 70 460 100 "" 0 0 0 "">
  <700 630 870 630 "" 0 0 0 "">
  <870 390 870 630 "" 0 0 0 "">
  <1110 130 1170 130 "" 0 0 0 "">
  <1110 130 1110 260 "" 0 0 0 "">
  <1110 340 1110 360 "" 0 0 0 "">
  <1110 670 1230 670 "" 0 0 0 "">
  <1120 440 1230 440 "" 0 0 0 "">
  <1230 440 1230 670 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
