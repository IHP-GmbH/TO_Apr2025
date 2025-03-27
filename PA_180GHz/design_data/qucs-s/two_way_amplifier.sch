<Qucs Schematic 24.3.0>
<Properties>
  <View=-3299,-1574,2795,1933,0.554333,733,1057>
  <Grid=10,10,1>
  <DataSet=target_gain.dat>
  <DataDisplay=target_gain.dpl>
  <OpenDisplay=0>
  <Script=target_gain.m>
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
  <.AC AC1 0 -2550 -50 0 37 0 0 "lin" 1 "1 GHz" 1 "300 GHz" 1 "200" 1 "no" 0>
  <.TR TR1 0 -2140 -80 0 62 0 0 "lin" 1 "100 ps" 1 "378 ps" 1 "557" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.FOURIER FOUR1 0 -1880 -70 0 62 0 0 "TR1" 1 "10" 1 "180 GHz" 1 "out" 1>
  <INCLSCR INCLSCR1 1 -1220 -1520 -60 16 0 0 ".LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerHBT.lib hbt_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ\n.control\npre_osdi /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/verilog-a/r3_cmc/r3_cmc.osdi\n.endc" 1 "" 0 "" 0>
  <GND * 1 -1050 -60 0 0 0 0>
  <GND * 1 -840 -120 0 0 0 0>
  <.SP SP1 1 -1650 -1320 0 62 0 0 "lin" 1 "1 GHz" 1 "300 GHz" 1 "599" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 980 -630 0 0 0 0>
  <GND * 1 1370 -60 0 0 0 0>
  <NutmegEq NutmegEq1 1 -2420 -820 -31 16 0 0 "SP1" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1 "s21_phase=unwrap(ph(v(s_2_1)))" 1>
  <GND * 1 -270 -700 0 0 0 0>
  <GND * 1 140 -820 0 0 0 0>
  <GND * 1 570 -940 0 0 0 0>
  <GND * 1 -280 -600 0 0 0 1>
  <GND * 1 130 -720 0 0 0 1>
  <GND * 1 560 -840 0 0 0 1>
  <GND * 1 -550 -640 0 0 0 1>
  <GND * 1 -110 -760 0 0 0 1>
  <GND * 1 320 -880 0 0 0 1>
  <GND * 1 730 -990 0 0 0 1>
  <GND * 1 -240 -800 0 0 0 1>
  <GND * 1 350 -920 0 0 0 1>
  <GND * 1 210 -920 0 0 0 1>
  <GND * 1 -60 -800 0 0 0 1>
  <GND * 1 -510 -680 0 0 0 1>
  <GND * 1 -630 -1070 0 0 0 0>
  <GND * 1 -480 -1030 0 0 0 0>
  <GND * 1 -50 -1120 0 0 0 0>
  <GND * 1 40 -1120 0 0 0 0>
  <Lib cap_cmim13 5 -480 -1050 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X43 5 -310 -600 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G13 5 -310 -710 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G14 5 -230 -710 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X44 5 100 -720 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G15 5 180 -830 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim14 5 -50 -1140 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim15 5 40 -1140 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 -210 -1160 0 0 0 0>
  <Lib npn13G16 5 100 -830 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X45 5 530 -840 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G17 5 530 -950 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G18 5 610 -950 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 -410 -1030 0 0 0 0>
  <Lib cap_cmim16 5 -410 -1050 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 100 -550 0 0 0 0>
  <GND * 1 600 -1190 0 0 0 1>
  <GND * 1 220 -1440 0 0 0 0>
  <GND * 1 380 -1400 0 0 0 0>
  <GND * 1 470 -1400 0 0 0 0>
  <Lib cap_cmim17 5 470 -1420 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim18 5 380 -1420 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V14 1 -540 -1070 -26 18 0 0 "1.7V" 1>
  <Vdc V15 1 310 -1440 -26 18 0 0 "1.8 V" 1>
  <Vdc V16 1 -430 -590 18 -26 0 1 "970mV" 1>
  <Vdc V17 1 -20 -620 18 -26 0 1 "970mV" 1>
  <GND * 1 -280 -990 0 0 0 1>
  <SPfile X46 5 -310 -990 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 130 -1110 0 0 0 1>
  <SPfile X47 5 100 -1110 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X48 5 530 -1370 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 560 -1370 0 0 0 1>
  <Lib rsil13 5 100 -1000 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil14 5 530 -1290 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil15 5 -310 -890 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V18 1 410 -660 18 -26 0 1 ".94 V" 1>
  <Lib rsil16 5 -430 -660 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil17 5 -20 -740 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil18 5 410 -830 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim13 5 190 -960 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "5.3 u" 0 "6.6 u" 0>
  <Lib cap_rfcmim14 5 330 -960 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X51 5 290 -880 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X52 5 -140 -760 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib cap_rfcmim16 5 -250 -840 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "6.1 u" 0 "6.6 u" 0>
  <Lib cap_rfcmim17 5 -80 -840 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.5 u" 0 "4.6 u" 0>
  <GND * 1 -150 260 0 0 0 0>
  <GND * 1 260 140 0 0 0 0>
  <GND * 1 690 20 0 0 0 0>
  <GND * 1 -160 360 0 0 0 1>
  <GND * 1 250 240 0 0 0 1>
  <GND * 1 680 120 0 0 0 1>
  <GND * 1 -430 320 0 0 0 1>
  <GND * 1 10 200 0 0 0 1>
  <GND * 1 440 80 0 0 0 1>
  <GND * 1 850 -30 0 0 0 1>
  <GND * 1 -120 160 0 0 0 1>
  <GND * 1 470 40 0 0 0 1>
  <GND * 1 330 40 0 0 0 1>
  <GND * 1 60 160 0 0 0 1>
  <GND * 1 -390 280 0 0 0 1>
  <GND * 1 -510 -110 0 0 0 0>
  <GND * 1 -360 -70 0 0 0 0>
  <GND * 1 70 -160 0 0 0 0>
  <GND * 1 160 -160 0 0 0 0>
  <Lib cap_cmim19 5 -360 -90 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X53 5 -190 360 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G19 5 -190 250 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G20 5 -110 250 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X54 5 220 240 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G21 5 300 130 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim20 5 70 -180 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim21 5 160 -180 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 -90 -200 0 0 0 0>
  <Lib npn13G22 5 220 130 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X55 5 650 120 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G23 5 650 10 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G24 5 730 10 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 -290 -70 0 0 0 0>
  <Lib cap_cmim22 5 -290 -90 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 220 410 0 0 0 0>
  <GND * 1 720 -230 0 0 0 1>
  <GND * 1 340 -480 0 0 0 0>
  <GND * 1 500 -440 0 0 0 0>
  <GND * 1 590 -440 0 0 0 0>
  <Lib cap_cmim23 5 590 -460 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim24 5 500 -460 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V20 1 -420 -110 -26 18 0 0 "1.7V" 1>
  <Vdc V21 1 430 -480 -26 18 0 0 "1.8 V" 1>
  <Vdc V22 1 -310 370 18 -26 0 1 "970mV" 1>
  <Vdc V23 1 100 340 18 -26 0 1 "970mV" 1>
  <GND * 1 -160 -30 0 0 0 1>
  <SPfile X56 5 -190 -30 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 250 -150 0 0 0 1>
  <SPfile X57 5 220 -150 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X58 5 650 -410 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 680 -410 0 0 0 1>
  <Lib rsil19 5 220 -40 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil20 5 650 -330 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil21 5 -190 70 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V24 1 530 300 18 -26 0 1 ".94 V" 1>
  <Lib rsil22 5 -310 300 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil23 5 100 220 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil24 5 530 130 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim19 5 310 0 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "5.3 u" 0 "6.6 u" 0>
  <Lib cap_rfcmim20 5 450 0 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X61 5 410 80 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X62 5 -20 200 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib cap_rfcmim22 5 -130 120 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "6.1 u" 0 "6.6 u" 0>
  <Lib cap_rfcmim23 5 40 120 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.5 u" 0 "4.6 u" 0>
  <Pac P2 5 -1050 -140 18 -26 0 1 "1" 1 "50 Ohm" 1 "1 dBm" 1 "180 GHz" 0 "26.85" 0 "true" 0>
  <Pac P3 1 1370 -460 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Vdc V13 1 -120 -1160 -26 18 0 0 "1.7V" 1>
  <Vdc V19 1 0 -200 -26 18 0 0 "1.7V" 1>
  <SPfile X21 1 -840 -180 -26 -89 0 0 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X22 1 980 -690 -26 -89 1 2 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <Lib cap_rfcmim15 5 590 -1230 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.8 u" 0 "5.2 u" 0>
  <Lib cap_rfcmim21 5 700 -270 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.8 u" 0 "5.2 u" 0>
  <Lib cap_rfcmim24 5 -410 240 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.6 u" 0>
  <Lib cap_rfcmim18 5 -530 -720 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.6 u" 0>
  <SPfile X50 5 -580 -640 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_46_um/TL_46_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X60 5 -460 320 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_46_um/TL_46_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X49 5 700 -990 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_75_um/TL_75_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X59 5 820 -30 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_75_um/TL_75_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 -960 -180 0 0 0 0>
  <SPfile X63 5 -960 -210 -26 -18 0 0 "/home/rf/shafins_layouts/output/input_pad_data/input_pad.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <-810 -710 -810 -210 "" 0 0 0 "">
  <-870 -150 -870 250 "" 0 0 0 "">
  <-1050 -110 -1050 -60 "" 0 0 0 "">
  <1370 -430 1370 -60 "" 0 0 0 "">
  <760 -1220 760 -720 "" 0 0 0 "">
  <760 -720 950 -720 "" 0 0 0 "">
  <870 -590 870 -260 "" 0 0 0 "">
  <870 -590 1080 -590 "" 0 0 0 "">
  <1080 -660 1080 -590 "" 0 0 0 "">
  <1010 -660 1080 -660 "" 0 0 0 "">
  <-1050 -210 -1050 -170 "" 0 0 0 "">
  <-1050 -210 -990 -210 "" 0 0 0 "">
  <1370 -720 1370 -490 "" 0 0 0 "">
  <1010 -720 1370 -720 "" 0 0 0 "">
  <-810 -710 -580 -710 "" 0 0 0 "">
  <-870 250 -460 250 "" 0 0 0 "">
  <-310 -570 -310 -550 "" 0 0 0 "">
  <-310 -760 -230 -760 "" 0 0 0 "">
  <-300 -710 -270 -710 "" 0 0 0 "">
  <-270 -710 -270 -700 "" 0 0 0 "">
  <-270 -710 -240 -710 "" 0 0 0 "">
  <-230 -660 -230 -650 "" 0 0 0 "">
  <-310 -660 -310 -650 "" 0 0 0 "">
  <-310 -650 -310 -630 "" 0 0 0 "">
  <-310 -650 -230 -650 "" 0 0 0 "">
  <-350 -710 -340 -710 "" 0 0 0 "">
  <-350 -780 -350 -710 "" 0 0 0 "">
  <-350 -780 -190 -780 "" 0 0 0 "">
  <-310 -830 -310 -760 "" 0 0 0 "">
  <-430 -550 -310 -550 "" 0 0 0 "">
  <-430 -560 -430 -550 "" 0 0 0 "">
  <-430 -710 -350 -710 "" 0 0 0 "">
  <-430 -710 -430 -700 "" 0 0 0 "">
  <-580 -550 -430 -550 "" 0 0 0 "">
  <-190 -780 -190 -710 "" 0 0 0 "">
  <-200 -710 -190 -710 "" 0 0 0 "">
  <210 -830 220 -830 "" 0 0 0 "">
  <100 -880 180 -880 "" 0 0 0 "">
  <110 -830 140 -830 "" 0 0 0 "">
  <140 -830 170 -830 "" 0 0 0 "">
  <140 -830 140 -820 "" 0 0 0 "">
  <180 -780 180 -770 "" 0 0 0 "">
  <100 -780 100 -770 "" 0 0 0 "">
  <100 -770 100 -750 "" 0 0 0 "">
  <100 -770 180 -770 "" 0 0 0 "">
  <60 -830 70 -830 "" 0 0 0 "">
  <60 -900 60 -830 "" 0 0 0 "">
  <60 -900 220 -900 "" 0 0 0 "">
  <220 -900 220 -830 "" 0 0 0 "">
  <100 -690 100 -550 "" 0 0 0 "">
  <-140 -830 -140 -790 "" 0 0 0 "">
  <-140 -730 -140 -550 "" 0 0 0 "">
  <640 -950 650 -950 "" 0 0 0 "">
  <530 -1000 610 -1000 "" 0 0 0 "">
  <540 -950 570 -950 "" 0 0 0 "">
  <570 -950 600 -950 "" 0 0 0 "">
  <570 -950 570 -940 "" 0 0 0 "">
  <610 -900 610 -890 "" 0 0 0 "">
  <530 -900 530 -890 "" 0 0 0 "">
  <530 -890 610 -890 "" 0 0 0 "">
  <490 -950 500 -950 "" 0 0 0 "">
  <490 -1020 490 -950 "" 0 0 0 "">
  <490 -1020 650 -1020 "" 0 0 0 "">
  <650 -1020 650 -950 "" 0 0 0 "">
  <290 -950 290 -910 "" 0 0 0 "">
  <100 -550 290 -550 "" 0 0 0 "">
  <290 -850 290 -550 "" 0 0 0 "">
  <290 -550 410 -550 "" 0 0 0 "">
  <410 -550 530 -550 "" 0 0 0 "">
  <410 -630 410 -550 "" 0 0 0 "">
  <410 -790 410 -690 "" 0 0 0 "">
  <410 -950 490 -950 "" 0 0 0 "">
  <410 -950 410 -870 "" 0 0 0 "">
  <-140 -550 -20 -550 "" 0 0 0 "">
  <-20 -550 100 -550 "" 0 0 0 "">
  <-20 -590 -20 -550 "" 0 0 0 "">
  <-20 -700 -20 -650 "" 0 0 0 "">
  <-20 -830 60 -830 "" 0 0 0 "">
  <-20 -830 -20 -780 "" 0 0 0 "">
  <700 -960 700 -550 "" 0 0 0 "">
  <530 -890 530 -870 "" 0 0 0 "">
  <530 -550 700 -550 "" 0 0 0 "">
  <530 -810 530 -550 "" 0 0 0 "">
  <-240 -800 -230 -800 "" 0 0 0 "">
  <-310 -830 -260 -830 "" 0 0 0 "">
  <350 -950 410 -950 "" 0 0 0 "">
  <290 -950 320 -950 "" 0 0 0 "">
  <-60 -830 -20 -830 "" 0 0 0 "">
  <-140 -830 -90 -830 "" 0 0 0 "">
  <-310 -1070 -310 -1020 "" 0 0 0 "">
  <-510 -1070 -480 -1070 "" 0 0 0 "">
  <-630 -1070 -570 -1070 "" 0 0 0 "">
  <100 -1160 100 -1140 "" 0 0 0 "">
  <-480 -1070 -410 -1070 "" 0 0 0 "">
  <-50 -1160 40 -1160 "" 0 0 0 "">
  <40 -1160 100 -1160 "" 0 0 0 "">
  <-90 -1160 -50 -1160 "" 0 0 0 "">
  <-210 -1160 -150 -1160 "" 0 0 0 "">
  <-410 -1070 -310 -1070 "" 0 0 0 "">
  <700 -1220 700 -1020 "" 0 0 0 "">
  <220 -1440 280 -1440 "" 0 0 0 "">
  <340 -1440 380 -1440 "" 0 0 0 "">
  <380 -1440 470 -1440 "" 0 0 0 "">
  <530 -1220 530 -1000 "" 0 0 0 "">
  <100 -1080 100 -1040 "" 0 0 0 "">
  <100 -960 100 -950 "" 0 0 0 "">
  <470 -1440 530 -1440 "" 0 0 0 "">
  <530 -1440 530 -1400 "" 0 0 0 "">
  <530 -1340 530 -1330 "" 0 0 0 "">
  <530 -1250 530 -1220 "" 0 0 0 "">
  <210 -950 290 -950 "" 0 0 0 "">
  <100 -950 100 -880 "" 0 0 0 "">
  <100 -950 180 -950 "" 0 0 0 "">
  <-310 -850 -310 -830 "" 0 0 0 "">
  <-310 -960 -310 -930 "" 0 0 0 "">
  <-580 -710 -580 -670 "" 0 0 0 "">
  <-580 -610 -580 -550 "" 0 0 0 "">
  <-510 -710 -430 -710 "" 0 0 0 "">
  <-580 -710 -540 -710 "" 0 0 0 "">
  <-230 -830 -140 -830 "" 0 0 0 "">
  <-310 -550 -140 -550 "" 0 0 0 "">
  <700 -1220 760 -1220 "" 0 0 0 "">
  <-190 390 -190 410 "" 0 0 0 "">
  <-190 200 -110 200 "" 0 0 0 "">
  <-180 250 -150 250 "" 0 0 0 "">
  <-150 250 -150 260 "" 0 0 0 "">
  <-150 250 -120 250 "" 0 0 0 "">
  <-110 300 -110 310 "" 0 0 0 "">
  <-190 300 -190 310 "" 0 0 0 "">
  <-190 310 -190 330 "" 0 0 0 "">
  <-190 310 -110 310 "" 0 0 0 "">
  <-230 250 -220 250 "" 0 0 0 "">
  <-230 180 -230 250 "" 0 0 0 "">
  <-230 180 -70 180 "" 0 0 0 "">
  <-190 130 -190 200 "" 0 0 0 "">
  <-310 410 -190 410 "" 0 0 0 "">
  <-310 400 -310 410 "" 0 0 0 "">
  <-310 250 -230 250 "" 0 0 0 "">
  <-310 250 -310 260 "" 0 0 0 "">
  <-460 410 -310 410 "" 0 0 0 "">
  <-70 180 -70 250 "" 0 0 0 "">
  <-80 250 -70 250 "" 0 0 0 "">
  <330 130 340 130 "" 0 0 0 "">
  <220 80 300 80 "" 0 0 0 "">
  <230 130 260 130 "" 0 0 0 "">
  <260 130 290 130 "" 0 0 0 "">
  <260 130 260 140 "" 0 0 0 "">
  <300 180 300 190 "" 0 0 0 "">
  <220 180 220 190 "" 0 0 0 "">
  <220 190 220 210 "" 0 0 0 "">
  <220 190 300 190 "" 0 0 0 "">
  <180 130 190 130 "" 0 0 0 "">
  <180 60 180 130 "" 0 0 0 "">
  <180 60 340 60 "" 0 0 0 "">
  <340 60 340 130 "" 0 0 0 "">
  <220 270 220 410 "" 0 0 0 "">
  <-20 130 -20 170 "" 0 0 0 "">
  <-20 230 -20 410 "" 0 0 0 "">
  <760 10 770 10 "" 0 0 0 "">
  <650 -40 730 -40 "" 0 0 0 "">
  <660 10 690 10 "" 0 0 0 "">
  <690 10 720 10 "" 0 0 0 "">
  <690 10 690 20 "" 0 0 0 "">
  <730 60 730 70 "" 0 0 0 "">
  <650 60 650 70 "" 0 0 0 "">
  <650 70 730 70 "" 0 0 0 "">
  <610 10 620 10 "" 0 0 0 "">
  <610 -60 610 10 "" 0 0 0 "">
  <610 -60 770 -60 "" 0 0 0 "">
  <770 -60 770 10 "" 0 0 0 "">
  <410 10 410 50 "" 0 0 0 "">
  <220 410 410 410 "" 0 0 0 "">
  <410 110 410 410 "" 0 0 0 "">
  <410 410 530 410 "" 0 0 0 "">
  <530 410 650 410 "" 0 0 0 "">
  <530 330 530 410 "" 0 0 0 "">
  <530 170 530 270 "" 0 0 0 "">
  <530 10 610 10 "" 0 0 0 "">
  <530 10 530 90 "" 0 0 0 "">
  <-20 410 100 410 "" 0 0 0 "">
  <100 410 220 410 "" 0 0 0 "">
  <100 370 100 410 "" 0 0 0 "">
  <100 260 100 310 "" 0 0 0 "">
  <100 130 180 130 "" 0 0 0 "">
  <100 130 100 180 "" 0 0 0 "">
  <820 0 820 410 "" 0 0 0 "">
  <650 70 650 90 "" 0 0 0 "">
  <650 410 820 410 "" 0 0 0 "">
  <650 150 650 410 "" 0 0 0 "">
  <-120 160 -110 160 "" 0 0 0 "">
  <-190 130 -140 130 "" 0 0 0 "">
  <470 10 530 10 "" 0 0 0 "">
  <410 10 440 10 "" 0 0 0 "">
  <60 130 100 130 "" 0 0 0 "">
  <-20 130 30 130 "" 0 0 0 "">
  <-190 -110 -190 -60 "" 0 0 0 "">
  <-390 -110 -360 -110 "" 0 0 0 "">
  <-510 -110 -450 -110 "" 0 0 0 "">
  <220 -200 220 -180 "" 0 0 0 "">
  <-360 -110 -290 -110 "" 0 0 0 "">
  <70 -200 160 -200 "" 0 0 0 "">
  <160 -200 220 -200 "" 0 0 0 "">
  <-290 -110 -190 -110 "" 0 0 0 "">
  <820 -260 820 -60 "" 0 0 0 "">
  <340 -480 400 -480 "" 0 0 0 "">
  <460 -480 500 -480 "" 0 0 0 "">
  <500 -480 590 -480 "" 0 0 0 "">
  <650 -260 650 -40 "" 0 0 0 "">
  <220 -120 220 -80 "" 0 0 0 "">
  <220 0 220 10 "" 0 0 0 "">
  <590 -480 650 -480 "" 0 0 0 "">
  <650 -480 650 -440 "" 0 0 0 "">
  <650 -380 650 -370 "" 0 0 0 "">
  <650 -290 650 -260 "" 0 0 0 "">
  <330 10 410 10 "" 0 0 0 "">
  <220 10 220 80 "" 0 0 0 "">
  <220 10 300 10 "" 0 0 0 "">
  <-190 110 -190 130 "" 0 0 0 "">
  <-190 0 -190 30 "" 0 0 0 "">
  <-460 250 -460 290 "" 0 0 0 "">
  <-460 350 -460 410 "" 0 0 0 "">
  <-110 130 -20 130 "" 0 0 0 "">
  <-190 410 -20 410 "" 0 0 0 "">
  <820 -260 870 -260 "" 0 0 0 "">
  <-390 250 -310 250 "" 0 0 0 "">
  <-460 250 -420 250 "" 0 0 0 "">
  <720 -260 820 -260 "" 0 0 0 "">
  <650 -260 690 -260 "" 0 0 0 "">
  <600 -1190 610 -1190 "" 0 0 0 "">
  <610 -1220 700 -1220 "" 0 0 0 "">
  <530 -1220 580 -1220 "" 0 0 0 "">
  <-90 -200 -30 -200 "" 0 0 0 "">
  <30 -200 70 -200 "" 0 0 0 "">
  <-930 -210 -870 -210 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 424 1651 528 351 3 #c0c0c0 1 00 1 0 5e+10 3e+11 1 -1.00037 2 11.0063 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 0 3 0 0 0>
	<"ngspice/ac.mu" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 355 -333 3 0 0>
  </Rect>
  <Rect 1080 1812 465 242 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sp1.ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 1600 1815 441 245 3 #c0c0c0 1 00 1 0 5e+10 3e+11 1 -46.4202 10 4.12961 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sp1.ac.s22_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s22_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 1080 1512 463 232 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 1590 1518 439 238 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -330 1633 647 318 3 #c0c0c0 1 00 1 0 2e+10 3e+11 0 -5 10 100 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 380 -80 3 0 0>
  </Rect>
  <Rect 900 1198 948 438 3 #c0c0c0 1 00 1 0 2e+10 3e+11 0 -30 5 25 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #ff00ff 0 3 0 0 0>
	  <Mkr 1.8e+11 554 -509 3 0 0>
  </Rect>
  <Rect -2410 508 698 395 3 #c0c0c0 1 00 1 1e-10 2e-11 3.8e-10 1 1.35371e-06 1e-06 7.63922e-06 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tr1.tran.v(out)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -2406 880 693 313 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/magnitude()" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0 137 -347 3 0 0>
  </Rect>
  <Smith 1090 570 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_2)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 162 -161 3 0 0>
  </Smith>
  <Smith 1090 310 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 160 -165 3 0 0>
  </Smith>
  <Rect -250 1284 996 516 3 #c0c0c0 1 00 0 8e+10 2e+10 2.8e+11 0 -80 10 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 243 -245 3 0 0>
	<"ngspice/ac.s12_db" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 548 -310 3 0 0>
	<"ngspice/ac.s22_db" #00ff00 0 3 0 0 0>
	  <Mkr 1.8e+11 553 -99 3 0 0>
	<"ngspice/ac.s21_db" #00ff00 0 3 0 0 0>
	  <Mkr 1.8e+11 546 -509 3 0 0>
  </Rect>
  <Rect -1750 -810 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 19 -219 5 0 0>
	<"ngspice/ac.v(s_1_2)" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 -5 67 5 0 0>
  </Rect>
  <Rect -1460 -810 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 17 -286 5 0 0>
	<"ngspice/ac.v(s_2_2)" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 -49 104 5 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
