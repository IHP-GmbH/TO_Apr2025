<Qucs Schematic 24.3.0>
<Properties>
  <View=-7696,-2898,8372,4214,1.22846,9694,2377>
  <Grid=10,10,1>
  <DataSet=final_target_gain.dat>
  <DataDisplay=final_target_gain.dpl>
  <OpenDisplay=0>
  <Script=final_target_gain.m>
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
  <.AC AC1 0 -2190 130 0 37 0 0 "lin" 1 "1 GHz" 1 "300 GHz" 1 "200" 1 "no" 0>
  <.TR TR1 0 -1780 100 0 62 0 0 "lin" 1 "100 ps" 1 "378 ps" 1 "557" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.FOURIER FOUR1 0 -1520 110 0 62 0 0 "TR1" 1 "10" 1 "180 GHz" 1 "out" 1>
  <GND * 1 -480 60 0 0 0 0>
  <.SP SP1 1 -1290 -1140 0 62 0 0 "lin" 1 "1 GHz" 1 "300 GHz" 1 "599" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 1340 -450 0 0 0 0>
  <NutmegEq NutmegEq1 1 -2060 -640 -31 16 0 0 "SP1" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1 "s21_phase=unwrap(ph(v(s_2_1)))" 1>
  <INCLSCR INCLSCR1 1 -1480 -1550 -60 16 0 0 ".LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerHBT.lib hbt_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ\n.control\npre_osdi /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/verilog-a/r3_cmc/r3_cmc.osdi\n.endc" 1 "" 0 "" 0>
  <GND * 1 -1140 490 0 0 0 0>
  <GND * 1 -900 350 0 0 0 0>
  <GND * 1 -520 1830 0 0 0 0>
  <GND * 1 2210 260 0 0 0 0>
  <GND * 1 1470 1780 0 0 0 0>
  <GND * 1 1820 320 0 0 0 0>
  <Pac P1 5 -1140 410 18 -26 0 1 "1" 1 "30 Ohm" 1 "1 dBm" 1 "180 GHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 2210 -140 18 -26 0 1 "2" 1 "30 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 130 -520 0 0 0 0>
  <GND * 1 540 -640 0 0 0 0>
  <GND * 1 970 -760 0 0 0 0>
  <GND * 1 120 -420 0 0 0 1>
  <GND * 1 530 -540 0 0 0 1>
  <GND * 1 960 -660 0 0 0 1>
  <GND * 1 -150 -460 0 0 0 1>
  <GND * 1 290 -580 0 0 0 1>
  <GND * 1 720 -700 0 0 0 1>
  <GND * 1 160 -620 0 0 0 1>
  <GND * 1 750 -740 0 0 0 1>
  <GND * 1 610 -740 0 0 0 1>
  <GND * 1 340 -620 0 0 0 1>
  <GND * 1 -110 -500 0 0 0 1>
  <GND * 1 -230 -890 0 0 0 0>
  <GND * 1 -80 -850 0 0 0 0>
  <GND * 1 350 -940 0 0 0 0>
  <GND * 1 440 -940 0 0 0 0>
  <Lib cap_cmim25 5 -80 -870 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X71 5 90 -420 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G25 5 90 -530 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G26 5 170 -530 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X72 5 500 -540 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G27 5 580 -650 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim26 5 350 -960 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim27 5 440 -960 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 190 -980 0 0 0 0>
  <Lib npn13G28 5 500 -650 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X73 5 930 -660 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G29 5 930 -770 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G30 5 1010 -770 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 -10 -850 0 0 0 0>
  <Lib cap_cmim28 5 -10 -870 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 500 -370 0 0 0 0>
  <GND * 1 1000 -1010 0 0 0 1>
  <GND * 1 620 -1260 0 0 0 0>
  <GND * 1 780 -1220 0 0 0 0>
  <GND * 1 870 -1220 0 0 0 0>
  <Lib cap_cmim29 5 870 -1240 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim30 5 780 -1240 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V25 1 -140 -890 -26 18 0 0 "1.7V" 1>
  <Vdc V26 1 710 -1260 -26 18 0 0 "1.8 V" 1>
  <Vdc V27 1 -30 -410 18 -26 0 1 "970mV" 1>
  <Vdc V28 1 380 -440 18 -26 0 1 "970mV" 1>
  <GND * 1 120 -810 0 0 0 1>
  <SPfile X74 5 90 -810 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 530 -930 0 0 0 1>
  <SPfile X75 5 500 -930 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X76 5 930 -1190 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 960 -1190 0 0 0 1>
  <Lib rsil25 5 500 -820 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil26 5 930 -1110 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil27 5 90 -710 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V29 1 810 -480 18 -26 0 1 ".94 V" 1>
  <Lib rsil28 5 -30 -480 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil29 5 380 -560 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil30 5 810 -650 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim26 5 730 -780 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X77 5 690 -700 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X78 5 260 -580 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Vdc V30 1 280 -980 -26 18 0 0 "1.7V" 1>
  <GND * 1 110 420 0 0 0 0>
  <GND * 1 520 300 0 0 0 0>
  <GND * 1 950 180 0 0 0 0>
  <GND * 1 100 520 0 0 0 1>
  <GND * 1 510 400 0 0 0 1>
  <GND * 1 940 280 0 0 0 1>
  <GND * 1 -170 480 0 0 0 1>
  <GND * 1 270 360 0 0 0 1>
  <GND * 1 700 240 0 0 0 1>
  <GND * 1 140 320 0 0 0 1>
  <GND * 1 730 200 0 0 0 1>
  <GND * 1 590 200 0 0 0 1>
  <GND * 1 320 320 0 0 0 1>
  <GND * 1 -130 440 0 0 0 1>
  <GND * 1 -250 50 0 0 0 0>
  <GND * 1 -100 90 0 0 0 0>
  <GND * 1 330 0 0 0 0 0>
  <GND * 1 420 0 0 0 0 0>
  <Lib cap_cmim31 5 -100 70 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X81 5 70 520 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G31 5 70 410 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G32 5 150 410 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X82 5 480 400 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G33 5 560 290 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim32 5 330 -20 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim33 5 420 -20 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 170 -40 0 0 0 0>
  <Lib npn13G34 5 480 290 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X83 5 910 280 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G35 5 910 170 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G36 5 990 170 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 -30 90 0 0 0 0>
  <Lib cap_cmim34 5 -30 70 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 480 570 0 0 0 0>
  <GND * 1 980 -70 0 0 0 1>
  <GND * 1 600 -320 0 0 0 0>
  <GND * 1 760 -280 0 0 0 0>
  <GND * 1 850 -280 0 0 0 0>
  <Lib cap_cmim35 5 850 -300 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim36 5 760 -300 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V31 1 -160 50 -26 18 0 0 "1.7V" 1>
  <Vdc V32 1 690 -320 -26 18 0 0 "1.8 V" 1>
  <Vdc V33 1 -50 530 18 -26 0 1 "970mV" 1>
  <Vdc V34 1 360 500 18 -26 0 1 "970mV" 1>
  <GND * 1 100 130 0 0 0 1>
  <SPfile X84 5 70 130 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 510 10 0 0 0 1>
  <SPfile X85 5 480 10 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X86 5 910 -250 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 940 -250 0 0 0 1>
  <Lib rsil31 5 480 120 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil32 5 910 -170 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil33 5 70 230 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V35 1 790 460 18 -26 0 1 ".94 V" 1>
  <Lib rsil34 5 -50 460 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil35 5 360 380 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil36 5 790 290 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim32 5 710 160 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X87 5 670 240 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X88 5 240 360 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Vdc V36 1 260 -40 -26 18 0 0 "1.7V" 1>
  <GND * 1 130 1420 0 0 0 0>
  <GND * 1 540 1300 0 0 0 0>
  <GND * 1 970 1180 0 0 0 0>
  <GND * 1 120 1520 0 0 0 1>
  <GND * 1 530 1400 0 0 0 1>
  <GND * 1 960 1280 0 0 0 1>
  <GND * 1 -150 1480 0 0 0 1>
  <GND * 1 290 1360 0 0 0 1>
  <GND * 1 720 1240 0 0 0 1>
  <GND * 1 160 1320 0 0 0 1>
  <GND * 1 750 1200 0 0 0 1>
  <GND * 1 610 1200 0 0 0 1>
  <GND * 1 340 1320 0 0 0 1>
  <GND * 1 -110 1440 0 0 0 1>
  <GND * 1 -230 1050 0 0 0 0>
  <GND * 1 -80 1090 0 0 0 0>
  <GND * 1 350 1000 0 0 0 0>
  <GND * 1 440 1000 0 0 0 0>
  <Lib cap_cmim37 5 -80 1070 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X91 5 90 1520 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G37 5 90 1410 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G38 5 170 1410 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X92 5 500 1400 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G39 5 580 1290 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim38 5 350 980 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim39 5 440 980 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 190 960 0 0 0 0>
  <Lib npn13G40 5 500 1290 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X93 5 930 1280 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G41 5 930 1170 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G42 5 1010 1170 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 -10 1090 0 0 0 0>
  <Lib cap_cmim40 5 -10 1070 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 500 1570 0 0 0 0>
  <GND * 1 1000 930 0 0 0 1>
  <GND * 1 620 680 0 0 0 0>
  <GND * 1 780 720 0 0 0 0>
  <GND * 1 870 720 0 0 0 0>
  <Lib cap_cmim41 5 870 700 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim42 5 780 700 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V37 1 -140 1050 -26 18 0 0 "1.7V" 1>
  <Vdc V38 1 710 680 -26 18 0 0 "1.8 V" 1>
  <Vdc V39 1 -30 1530 18 -26 0 1 "970mV" 1>
  <Vdc V40 1 380 1500 18 -26 0 1 "970mV" 1>
  <GND * 1 120 1130 0 0 0 1>
  <SPfile X94 5 90 1130 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 530 1010 0 0 0 1>
  <SPfile X95 5 500 1010 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X96 5 930 750 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 960 750 0 0 0 1>
  <Lib rsil37 5 500 1120 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil38 5 930 830 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil39 5 90 1230 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V41 1 810 1460 18 -26 0 1 ".94 V" 1>
  <Lib rsil40 5 -30 1460 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil41 5 380 1380 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil42 5 810 1290 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim38 5 730 1160 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X97 5 690 1240 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X98 5 260 1360 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Vdc V42 1 280 960 -26 18 0 0 "1.7V" 1>
  <GND * 1 160 2360 0 0 0 0>
  <GND * 1 570 2240 0 0 0 0>
  <GND * 1 1000 2120 0 0 0 0>
  <GND * 1 150 2460 0 0 0 1>
  <GND * 1 560 2340 0 0 0 1>
  <GND * 1 990 2220 0 0 0 1>
  <GND * 1 -120 2420 0 0 0 1>
  <GND * 1 320 2300 0 0 0 1>
  <GND * 1 750 2180 0 0 0 1>
  <GND * 1 190 2260 0 0 0 1>
  <GND * 1 780 2140 0 0 0 1>
  <GND * 1 640 2140 0 0 0 1>
  <GND * 1 370 2260 0 0 0 1>
  <GND * 1 -80 2380 0 0 0 1>
  <GND * 1 -200 1990 0 0 0 0>
  <GND * 1 -50 2030 0 0 0 0>
  <GND * 1 380 1940 0 0 0 0>
  <GND * 1 470 1940 0 0 0 0>
  <Lib cap_cmim43 5 -50 2010 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <SPfile X101 5 120 2460 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G43 5 120 2350 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib npn13G44 5 200 2350 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <SPfile X102 5 530 2340 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G45 5 610 2230 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 1>
  <Lib cap_cmim44 5 380 1920 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim45 5 470 1920 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 220 1900 0 0 0 0>
  <Lib npn13G46 5 530 2230 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "8" 0>
  <SPfile X103 5 960 2220 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_9_um/TL_9_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib npn13G47 5 960 2110 10 64 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G48 5 1040 2110 30 64 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <GND * 1 20 2030 0 0 0 0>
  <Lib cap_cmim46 5 20 2010 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <GND * 1 530 2510 0 0 0 0>
  <GND * 1 1030 1870 0 0 0 1>
  <GND * 1 650 1620 0 0 0 0>
  <GND * 1 810 1660 0 0 0 0>
  <GND * 1 900 1660 0 0 0 0>
  <Lib cap_cmim47 5 900 1640 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Lib cap_cmim48 5 810 1640 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "7.0u" 0 "7u" 0>
  <Vdc V43 1 -110 1990 -26 18 0 0 "1.7V" 1>
  <Vdc V44 1 740 1620 -26 18 0 0 "1.8 V" 1>
  <Vdc V45 1 0 2470 18 -26 0 1 "970mV" 1>
  <Vdc V46 1 410 2440 18 -26 0 1 "970mV" 1>
  <GND * 1 150 2070 0 0 0 1>
  <SPfile X104 5 120 2070 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 560 1950 0 0 0 1>
  <SPfile X105 5 530 1950 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X106 5 960 1690 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_155_um/TL_155_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 990 1690 0 0 0 1>
  <Lib rsil43 5 530 2060 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Lib rsil44 5 960 1770 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "1.81u" 0 "1" 0>
  <Lib rsil45 5 120 2170 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "15u" 0 "8.1u" 0 "1" 0>
  <Vdc V47 1 840 2400 18 -26 0 1 ".94 V" 1>
  <Lib rsil46 5 0 2400 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11u" 0 "1" 1>
  <Lib rsil47 5 410 2320 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib rsil48 5 840 2230 46 -52 0 0 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "2u" 0 "11 u" 0 "1" 0>
  <Lib cap_rfcmim44 5 760 2100 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.3 u" 0 "4.9 u" 0>
  <SPfile X107 5 720 2180 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X108 5 290 2300 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_20_um/TL_20_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Vdc V48 1 310 1900 -26 18 0 0 "1.7V" 1>
  <SPfile X7 1 -480 0 -26 -89 0 0 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X28 1 -520 1770 -26 -89 0 0 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X27 1 -900 290 -26 -89 0 0 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X8 1 1340 -510 -26 -89 1 2 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X29 1 1470 1720 -26 -89 1 2 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <SPfile X30 1 1820 260 -26 -89 1 2 "/home/rf/shafins_inductors/data/extended2x_pookie_mesh_1.5/extended2x_pookie_mesh_1.5.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
  <Lib cap_rfcmim48 5 -100 2340 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.4 u" 0>
  <Lib cap_rfcmim42 5 -130 1400 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.4 u" 0>
  <Lib cap_rfcmim36 5 -150 400 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.4 u" 0>
  <Lib cap_rfcmim30 5 -130 -540 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "4.2 u" 0 "4.4 u" 0>
  <GND * 1 1160 2070 0 0 0 1>
  <GND * 1 1130 1130 0 0 0 1>
  <GND * 1 1110 130 0 0 0 1>
  <GND * 1 1130 -810 0 0 0 1>
  <SPfile X110 5 1130 2070 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_64_um/TL_64_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X100 5 1100 1130 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_64_um/TL_64_um.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X90 5 1080 130 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_64_um/TL_64_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X80 5 1100 -810 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_64_um/TL_64_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X109 5 -150 2420 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_42_um/TL_42_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X99 5 -180 1480 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_42_um/TL_42_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X89 5 -200 480 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_42_um/TL_42_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X79 5 -180 -460 -18 -26 0 1 "/home/rf/shafins_TL/data/TL_42_um/TL_42_um.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Lib cap_rfcmim29 5 990 -1050 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "7.8 u" 0>
  <Lib cap_rfcmim35 5 970 -110 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "7.8 u" 0>
  <Lib cap_rfcmim41 5 990 890 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "7.8 u" 0>
  <Lib cap_rfcmim47 5 1020 1830 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "7.8 u" 0>
  <Lib cap_rfcmim27 5 150 -660 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "13.4 u" 0>
  <Lib cap_rfcmim33 5 130 280 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "13.4 u" 0>
  <Lib cap_rfcmim39 5 150 1280 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "13.4 u" 0>
  <Lib cap_rfcmim45 5 180 2220 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "13.4 u" 0>
  <Lib cap_rfcmim28 5 320 -660 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3.1 u" 0 "6.7 u" 0>
  <Lib cap_rfcmim34 5 300 280 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3.1 u" 0 "6.7 u" 0>
  <Lib cap_rfcmim40 5 320 1280 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3.1 u" 0 "6.7 u" 0>
  <Lib cap_rfcmim46 5 350 2220 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3.1 u" 0 "6.7 u" 0>
  <Lib cap_rfcmim25 5 590 -780 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "9.7 u" 0>
  <Lib cap_rfcmim31 5 570 160 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "9.7 u" 0>
  <Lib cap_rfcmim37 5 590 1160 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "9.7 u" 0>
  <Lib cap_rfcmim43 5 620 2100 -16 -107 0 1 "/home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_basic_components" 0 "cap_rfcmim" 0 "3 u" 0 "9.7 u" 0>
</Components>
<Wires>
  <-1140 440 -1140 490 "" 0 0 0 "">
  <2210 -110 2210 260 "" 0 0 0 "">
  <-1140 260 -1140 380 "" 0 0 0 "">
  <-1140 260 -930 260 "" 0 0 0 "">
  <-870 -30 -870 260 "" 0 0 0 "">
  <-870 -30 -510 -30 "" 0 0 0 "">
  <-930 320 -930 1740 "" 0 0 0 "">
  <-930 1740 -550 1740 "" 0 0 0 "">
  <-490 1410 -490 1740 "" 0 0 0 "">
  <-490 1410 -180 1410 "" 0 0 0 "">
  <-550 1800 -550 2350 "" 0 0 0 "">
  <-450 -530 -450 -30 "" 0 0 0 "">
  <-450 -530 -180 -530 "" 0 0 0 "">
  <-510 30 -510 410 "" 0 0 0 "">
  <-510 410 -200 410 "" 0 0 0 "">
  <1180 -1040 1180 -540 "" 0 0 0 "">
  <1180 -540 1310 -540 "" 0 0 0 "">
  <1370 -480 1400 -480 "" 0 0 0 "">
  <1370 -540 1470 -540 "" 0 0 0 "">
  <1470 -540 1470 230 "" 0 0 0 "">
  <1470 230 1790 230 "" 0 0 0 "">
  <1210 900 1210 1690 "" 0 0 0 "">
  <1210 1690 1440 1690 "" 0 0 0 "">
  <1510 1750 1510 1840 "" 0 0 0 "">
  <1500 1750 1510 1750 "" 0 0 0 "">
  <1500 360 1500 1690 "" 0 0 0 "">
  <1500 360 1850 360 "" 0 0 0 "">
  <1850 290 1850 360 "" 0 0 0 "">
  <1850 -220 1850 230 "" 0 0 0 "">
  <1850 -220 2210 -220 "" 0 0 0 "">
  <2210 -220 2210 -170 "" 0 0 0 "">
  <90 -390 90 -370 "" 0 0 0 "">
  <90 -580 170 -580 "" 0 0 0 "">
  <100 -530 130 -530 "" 0 0 0 "">
  <130 -530 130 -520 "" 0 0 0 "">
  <130 -530 160 -530 "" 0 0 0 "">
  <170 -480 170 -470 "" 0 0 0 "">
  <90 -480 90 -470 "" 0 0 0 "">
  <90 -470 90 -450 "" 0 0 0 "">
  <90 -470 170 -470 "" 0 0 0 "">
  <50 -530 60 -530 "" 0 0 0 "">
  <50 -600 50 -530 "" 0 0 0 "">
  <50 -600 210 -600 "" 0 0 0 "">
  <90 -650 90 -580 "" 0 0 0 "">
  <-30 -370 90 -370 "" 0 0 0 "">
  <-30 -380 -30 -370 "" 0 0 0 "">
  <-30 -530 50 -530 "" 0 0 0 "">
  <-30 -530 -30 -520 "" 0 0 0 "">
  <210 -600 210 -530 "" 0 0 0 "">
  <200 -530 210 -530 "" 0 0 0 "">
  <610 -650 620 -650 "" 0 0 0 "">
  <500 -700 580 -700 "" 0 0 0 "">
  <510 -650 540 -650 "" 0 0 0 "">
  <540 -650 570 -650 "" 0 0 0 "">
  <540 -650 540 -640 "" 0 0 0 "">
  <580 -600 580 -590 "" 0 0 0 "">
  <500 -600 500 -590 "" 0 0 0 "">
  <500 -590 500 -570 "" 0 0 0 "">
  <500 -590 580 -590 "" 0 0 0 "">
  <460 -650 470 -650 "" 0 0 0 "">
  <460 -720 460 -650 "" 0 0 0 "">
  <460 -720 620 -720 "" 0 0 0 "">
  <620 -720 620 -650 "" 0 0 0 "">
  <500 -510 500 -370 "" 0 0 0 "">
  <260 -650 260 -610 "" 0 0 0 "">
  <260 -550 260 -370 "" 0 0 0 "">
  <1040 -770 1050 -770 "" 0 0 0 "">
  <930 -820 1010 -820 "" 0 0 0 "">
  <940 -770 970 -770 "" 0 0 0 "">
  <970 -770 1000 -770 "" 0 0 0 "">
  <970 -770 970 -760 "" 0 0 0 "">
  <1010 -720 1010 -710 "" 0 0 0 "">
  <930 -720 930 -710 "" 0 0 0 "">
  <930 -710 1010 -710 "" 0 0 0 "">
  <890 -770 900 -770 "" 0 0 0 "">
  <890 -840 890 -770 "" 0 0 0 "">
  <890 -840 1050 -840 "" 0 0 0 "">
  <1050 -840 1050 -770 "" 0 0 0 "">
  <690 -770 690 -730 "" 0 0 0 "">
  <500 -370 690 -370 "" 0 0 0 "">
  <690 -670 690 -370 "" 0 0 0 "">
  <690 -370 810 -370 "" 0 0 0 "">
  <810 -450 810 -370 "" 0 0 0 "">
  <810 -610 810 -510 "" 0 0 0 "">
  <810 -770 890 -770 "" 0 0 0 "">
  <810 -770 810 -690 "" 0 0 0 "">
  <260 -370 380 -370 "" 0 0 0 "">
  <380 -370 500 -370 "" 0 0 0 "">
  <380 -410 380 -370 "" 0 0 0 "">
  <380 -520 380 -470 "" 0 0 0 "">
  <380 -650 460 -650 "" 0 0 0 "">
  <380 -650 380 -600 "" 0 0 0 "">
  <1100 -780 1100 -370 "" 0 0 0 "">
  <930 -710 930 -690 "" 0 0 0 "">
  <810 -370 930 -370 "" 0 0 0 "">
  <930 -370 1100 -370 "" 0 0 0 "">
  <930 -630 930 -370 "" 0 0 0 "">
  <160 -620 170 -620 "" 0 0 0 "">
  <90 -650 140 -650 "" 0 0 0 "">
  <750 -770 810 -770 "" 0 0 0 "">
  <690 -770 720 -770 "" 0 0 0 "">
  <340 -650 380 -650 "" 0 0 0 "">
  <260 -650 310 -650 "" 0 0 0 "">
  <90 -890 90 -840 "" 0 0 0 "">
  <-110 -890 -80 -890 "" 0 0 0 "">
  <-230 -890 -170 -890 "" 0 0 0 "">
  <500 -980 500 -960 "" 0 0 0 "">
  <-80 -890 -10 -890 "" 0 0 0 "">
  <350 -980 440 -980 "" 0 0 0 "">
  <440 -980 500 -980 "" 0 0 0 "">
  <310 -980 350 -980 "" 0 0 0 "">
  <190 -980 250 -980 "" 0 0 0 "">
  <-10 -890 90 -890 "" 0 0 0 "">
  <1100 -1040 1100 -840 "" 0 0 0 "">
  <620 -1260 680 -1260 "" 0 0 0 "">
  <740 -1260 780 -1260 "" 0 0 0 "">
  <780 -1260 870 -1260 "" 0 0 0 "">
  <500 -900 500 -860 "" 0 0 0 "">
  <870 -1260 930 -1260 "" 0 0 0 "">
  <930 -1260 930 -1220 "" 0 0 0 "">
  <930 -1160 930 -1150 "" 0 0 0 "">
  <930 -1070 930 -1040 "" 0 0 0 "">
  <610 -770 690 -770 "" 0 0 0 "">
  <500 -780 500 -770 "" 0 0 0 "">
  <500 -770 500 -700 "" 0 0 0 "">
  <500 -770 580 -770 "" 0 0 0 "">
  <90 -670 90 -650 "" 0 0 0 "">
  <90 -780 90 -750 "" 0 0 0 "">
  <-110 -530 -30 -530 "" 0 0 0 "">
  <-180 -530 -140 -530 "" 0 0 0 "">
  <170 -650 260 -650 "" 0 0 0 "">
  <90 -370 260 -370 "" 0 0 0 "">
  <1000 -1010 1010 -1010 "" 0 0 0 "">
  <1010 -1040 1100 -1040 "" 0 0 0 "">
  <930 -1040 930 -820 "" 0 0 0 "">
  <930 -1040 980 -1040 "" 0 0 0 "">
  <1100 -1040 1180 -1040 "" 0 0 0 "">
  <70 550 70 570 "" 0 0 0 "">
  <70 360 150 360 "" 0 0 0 "">
  <80 410 110 410 "" 0 0 0 "">
  <110 410 110 420 "" 0 0 0 "">
  <110 410 140 410 "" 0 0 0 "">
  <150 460 150 470 "" 0 0 0 "">
  <70 460 70 470 "" 0 0 0 "">
  <70 470 70 490 "" 0 0 0 "">
  <70 470 150 470 "" 0 0 0 "">
  <30 410 40 410 "" 0 0 0 "">
  <30 340 30 410 "" 0 0 0 "">
  <30 340 190 340 "" 0 0 0 "">
  <70 290 70 360 "" 0 0 0 "">
  <-50 570 70 570 "" 0 0 0 "">
  <-50 560 -50 570 "" 0 0 0 "">
  <-50 410 30 410 "" 0 0 0 "">
  <-50 410 -50 420 "" 0 0 0 "">
  <-200 570 -50 570 "" 0 0 0 "">
  <190 340 190 410 "" 0 0 0 "">
  <180 410 190 410 "" 0 0 0 "">
  <590 290 600 290 "" 0 0 0 "">
  <480 240 560 240 "" 0 0 0 "">
  <490 290 520 290 "" 0 0 0 "">
  <520 290 550 290 "" 0 0 0 "">
  <520 290 520 300 "" 0 0 0 "">
  <560 340 560 350 "" 0 0 0 "">
  <480 340 480 350 "" 0 0 0 "">
  <480 350 480 370 "" 0 0 0 "">
  <480 350 560 350 "" 0 0 0 "">
  <440 290 450 290 "" 0 0 0 "">
  <440 220 440 290 "" 0 0 0 "">
  <440 220 600 220 "" 0 0 0 "">
  <600 220 600 290 "" 0 0 0 "">
  <480 430 480 570 "" 0 0 0 "">
  <240 290 240 330 "" 0 0 0 "">
  <240 390 240 570 "" 0 0 0 "">
  <1020 170 1030 170 "" 0 0 0 "">
  <910 120 990 120 "" 0 0 0 "">
  <920 170 950 170 "" 0 0 0 "">
  <950 170 980 170 "" 0 0 0 "">
  <950 170 950 180 "" 0 0 0 "">
  <990 220 990 230 "" 0 0 0 "">
  <910 220 910 230 "" 0 0 0 "">
  <910 230 990 230 "" 0 0 0 "">
  <870 170 880 170 "" 0 0 0 "">
  <870 100 870 170 "" 0 0 0 "">
  <870 100 1030 100 "" 0 0 0 "">
  <1030 100 1030 170 "" 0 0 0 "">
  <670 170 670 210 "" 0 0 0 "">
  <480 570 670 570 "" 0 0 0 "">
  <670 270 670 570 "" 0 0 0 "">
  <670 570 790 570 "" 0 0 0 "">
  <790 490 790 570 "" 0 0 0 "">
  <790 330 790 430 "" 0 0 0 "">
  <790 170 870 170 "" 0 0 0 "">
  <790 170 790 250 "" 0 0 0 "">
  <240 570 360 570 "" 0 0 0 "">
  <360 570 480 570 "" 0 0 0 "">
  <360 530 360 570 "" 0 0 0 "">
  <360 420 360 470 "" 0 0 0 "">
  <360 290 440 290 "" 0 0 0 "">
  <360 290 360 340 "" 0 0 0 "">
  <1080 160 1080 570 "" 0 0 0 "">
  <910 230 910 250 "" 0 0 0 "">
  <790 570 910 570 "" 0 0 0 "">
  <910 570 1080 570 "" 0 0 0 "">
  <910 310 910 570 "" 0 0 0 "">
  <140 320 150 320 "" 0 0 0 "">
  <70 290 120 290 "" 0 0 0 "">
  <730 170 790 170 "" 0 0 0 "">
  <670 170 700 170 "" 0 0 0 "">
  <320 290 360 290 "" 0 0 0 "">
  <240 290 290 290 "" 0 0 0 "">
  <70 50 70 100 "" 0 0 0 "">
  <-130 50 -100 50 "" 0 0 0 "">
  <-250 50 -190 50 "" 0 0 0 "">
  <480 -40 480 -20 "" 0 0 0 "">
  <-100 50 -30 50 "" 0 0 0 "">
  <330 -40 420 -40 "" 0 0 0 "">
  <420 -40 480 -40 "" 0 0 0 "">
  <290 -40 330 -40 "" 0 0 0 "">
  <170 -40 230 -40 "" 0 0 0 "">
  <-30 50 70 50 "" 0 0 0 "">
  <1080 -100 1080 100 "" 0 0 0 "">
  <600 -320 660 -320 "" 0 0 0 "">
  <720 -320 760 -320 "" 0 0 0 "">
  <760 -320 850 -320 "" 0 0 0 "">
  <480 40 480 80 "" 0 0 0 "">
  <850 -320 910 -320 "" 0 0 0 "">
  <910 -320 910 -280 "" 0 0 0 "">
  <910 -220 910 -210 "" 0 0 0 "">
  <480 160 480 170 "" 0 0 0 "">
  <480 170 480 240 "" 0 0 0 "">
  <70 270 70 290 "" 0 0 0 "">
  <70 160 70 190 "" 0 0 0 "">
  <-200 410 -200 450 "" 0 0 0 "">
  <-200 510 -200 570 "" 0 0 0 "">
  <-130 410 -50 410 "" 0 0 0 "">
  <-200 410 -160 410 "" 0 0 0 "">
  <150 290 240 290 "" 0 0 0 "">
  <70 570 240 570 "" 0 0 0 "">
  <980 -70 990 -70 "" 0 0 0 "">
  <990 -100 1080 -100 "" 0 0 0 "">
  <910 -130 910 -100 "" 0 0 0 "">
  <910 -100 910 120 "" 0 0 0 "">
  <910 -100 960 -100 "" 0 0 0 "">
  <1400 -480 1400 -310 "" 0 0 0 "">
  <1080 -310 1400 -310 "" 0 0 0 "">
  <1080 -310 1080 -100 "" 0 0 0 "">
  <90 1550 90 1570 "" 0 0 0 "">
  <90 1360 170 1360 "" 0 0 0 "">
  <100 1410 130 1410 "" 0 0 0 "">
  <130 1410 130 1420 "" 0 0 0 "">
  <130 1410 160 1410 "" 0 0 0 "">
  <170 1460 170 1470 "" 0 0 0 "">
  <90 1460 90 1470 "" 0 0 0 "">
  <90 1470 90 1490 "" 0 0 0 "">
  <90 1470 170 1470 "" 0 0 0 "">
  <50 1410 60 1410 "" 0 0 0 "">
  <50 1340 50 1410 "" 0 0 0 "">
  <50 1340 210 1340 "" 0 0 0 "">
  <90 1290 90 1360 "" 0 0 0 "">
  <-30 1570 90 1570 "" 0 0 0 "">
  <-30 1560 -30 1570 "" 0 0 0 "">
  <-30 1410 50 1410 "" 0 0 0 "">
  <-30 1410 -30 1420 "" 0 0 0 "">
  <-180 1570 -30 1570 "" 0 0 0 "">
  <210 1340 210 1410 "" 0 0 0 "">
  <200 1410 210 1410 "" 0 0 0 "">
  <610 1290 620 1290 "" 0 0 0 "">
  <500 1240 580 1240 "" 0 0 0 "">
  <510 1290 540 1290 "" 0 0 0 "">
  <540 1290 570 1290 "" 0 0 0 "">
  <540 1290 540 1300 "" 0 0 0 "">
  <580 1340 580 1350 "" 0 0 0 "">
  <500 1340 500 1350 "" 0 0 0 "">
  <500 1350 500 1370 "" 0 0 0 "">
  <500 1350 580 1350 "" 0 0 0 "">
  <460 1290 470 1290 "" 0 0 0 "">
  <460 1220 460 1290 "" 0 0 0 "">
  <460 1220 620 1220 "" 0 0 0 "">
  <620 1220 620 1290 "" 0 0 0 "">
  <500 1430 500 1570 "" 0 0 0 "">
  <260 1290 260 1330 "" 0 0 0 "">
  <260 1390 260 1570 "" 0 0 0 "">
  <1040 1170 1050 1170 "" 0 0 0 "">
  <930 1120 1010 1120 "" 0 0 0 "">
  <940 1170 970 1170 "" 0 0 0 "">
  <970 1170 1000 1170 "" 0 0 0 "">
  <970 1170 970 1180 "" 0 0 0 "">
  <1010 1220 1010 1230 "" 0 0 0 "">
  <930 1220 930 1230 "" 0 0 0 "">
  <930 1230 1010 1230 "" 0 0 0 "">
  <890 1170 900 1170 "" 0 0 0 "">
  <890 1100 890 1170 "" 0 0 0 "">
  <890 1100 1050 1100 "" 0 0 0 "">
  <1050 1100 1050 1170 "" 0 0 0 "">
  <690 1170 690 1210 "" 0 0 0 "">
  <500 1570 690 1570 "" 0 0 0 "">
  <690 1270 690 1570 "" 0 0 0 "">
  <690 1570 810 1570 "" 0 0 0 "">
  <810 1490 810 1570 "" 0 0 0 "">
  <810 1330 810 1430 "" 0 0 0 "">
  <810 1170 890 1170 "" 0 0 0 "">
  <810 1170 810 1250 "" 0 0 0 "">
  <260 1570 380 1570 "" 0 0 0 "">
  <380 1570 500 1570 "" 0 0 0 "">
  <380 1530 380 1570 "" 0 0 0 "">
  <380 1420 380 1470 "" 0 0 0 "">
  <380 1290 460 1290 "" 0 0 0 "">
  <380 1290 380 1340 "" 0 0 0 "">
  <1100 1160 1100 1570 "" 0 0 0 "">
  <930 1230 930 1250 "" 0 0 0 "">
  <810 1570 930 1570 "" 0 0 0 "">
  <930 1570 1100 1570 "" 0 0 0 "">
  <930 1310 930 1570 "" 0 0 0 "">
  <160 1320 170 1320 "" 0 0 0 "">
  <90 1290 140 1290 "" 0 0 0 "">
  <750 1170 810 1170 "" 0 0 0 "">
  <690 1170 720 1170 "" 0 0 0 "">
  <340 1290 380 1290 "" 0 0 0 "">
  <260 1290 310 1290 "" 0 0 0 "">
  <90 1050 90 1100 "" 0 0 0 "">
  <-110 1050 -80 1050 "" 0 0 0 "">
  <-230 1050 -170 1050 "" 0 0 0 "">
  <500 960 500 980 "" 0 0 0 "">
  <-80 1050 -10 1050 "" 0 0 0 "">
  <350 960 440 960 "" 0 0 0 "">
  <440 960 500 960 "" 0 0 0 "">
  <310 960 350 960 "" 0 0 0 "">
  <190 960 250 960 "" 0 0 0 "">
  <-10 1050 90 1050 "" 0 0 0 "">
  <1100 900 1100 1100 "" 0 0 0 "">
  <620 680 680 680 "" 0 0 0 "">
  <740 680 780 680 "" 0 0 0 "">
  <780 680 870 680 "" 0 0 0 "">
  <500 1040 500 1080 "" 0 0 0 "">
  <870 680 930 680 "" 0 0 0 "">
  <930 680 930 720 "" 0 0 0 "">
  <930 780 930 790 "" 0 0 0 "">
  <930 870 930 900 "" 0 0 0 "">
  <610 1170 690 1170 "" 0 0 0 "">
  <500 1160 500 1170 "" 0 0 0 "">
  <500 1170 500 1240 "" 0 0 0 "">
  <500 1170 580 1170 "" 0 0 0 "">
  <90 1270 90 1290 "" 0 0 0 "">
  <90 1160 90 1190 "" 0 0 0 "">
  <-180 1410 -180 1450 "" 0 0 0 "">
  <-180 1510 -180 1570 "" 0 0 0 "">
  <-110 1410 -30 1410 "" 0 0 0 "">
  <-180 1410 -140 1410 "" 0 0 0 "">
  <170 1290 260 1290 "" 0 0 0 "">
  <90 1570 260 1570 "" 0 0 0 "">
  <1000 930 1010 930 "" 0 0 0 "">
  <1010 900 1100 900 "" 0 0 0 "">
  <930 900 930 1120 "" 0 0 0 "">
  <930 900 980 900 "" 0 0 0 "">
  <1100 900 1210 900 "" 0 0 0 "">
  <120 2490 120 2510 "" 0 0 0 "">
  <120 2300 200 2300 "" 0 0 0 "">
  <130 2350 160 2350 "" 0 0 0 "">
  <160 2350 160 2360 "" 0 0 0 "">
  <160 2350 190 2350 "" 0 0 0 "">
  <200 2400 200 2410 "" 0 0 0 "">
  <120 2400 120 2410 "" 0 0 0 "">
  <120 2410 120 2430 "" 0 0 0 "">
  <120 2410 200 2410 "" 0 0 0 "">
  <80 2350 90 2350 "" 0 0 0 "">
  <80 2280 80 2350 "" 0 0 0 "">
  <80 2280 240 2280 "" 0 0 0 "">
  <120 2230 120 2300 "" 0 0 0 "">
  <0 2510 120 2510 "" 0 0 0 "">
  <0 2500 0 2510 "" 0 0 0 "">
  <0 2350 80 2350 "" 0 0 0 "">
  <0 2350 0 2360 "" 0 0 0 "">
  <-150 2510 0 2510 "" 0 0 0 "">
  <240 2280 240 2350 "" 0 0 0 "">
  <230 2350 240 2350 "" 0 0 0 "">
  <640 2230 650 2230 "" 0 0 0 "">
  <530 2180 610 2180 "" 0 0 0 "">
  <540 2230 570 2230 "" 0 0 0 "">
  <570 2230 600 2230 "" 0 0 0 "">
  <570 2230 570 2240 "" 0 0 0 "">
  <610 2280 610 2290 "" 0 0 0 "">
  <530 2280 530 2290 "" 0 0 0 "">
  <530 2290 530 2310 "" 0 0 0 "">
  <530 2290 610 2290 "" 0 0 0 "">
  <490 2230 500 2230 "" 0 0 0 "">
  <490 2160 490 2230 "" 0 0 0 "">
  <490 2160 650 2160 "" 0 0 0 "">
  <650 2160 650 2230 "" 0 0 0 "">
  <530 2370 530 2510 "" 0 0 0 "">
  <290 2230 290 2270 "" 0 0 0 "">
  <290 2330 290 2510 "" 0 0 0 "">
  <1070 2110 1080 2110 "" 0 0 0 "">
  <960 2060 1040 2060 "" 0 0 0 "">
  <970 2110 1000 2110 "" 0 0 0 "">
  <1000 2110 1030 2110 "" 0 0 0 "">
  <1000 2110 1000 2120 "" 0 0 0 "">
  <1040 2160 1040 2170 "" 0 0 0 "">
  <960 2160 960 2170 "" 0 0 0 "">
  <960 2170 1040 2170 "" 0 0 0 "">
  <920 2110 930 2110 "" 0 0 0 "">
  <920 2040 920 2110 "" 0 0 0 "">
  <920 2040 1080 2040 "" 0 0 0 "">
  <1080 2040 1080 2110 "" 0 0 0 "">
  <720 2110 720 2150 "" 0 0 0 "">
  <530 2510 720 2510 "" 0 0 0 "">
  <720 2210 720 2510 "" 0 0 0 "">
  <720 2510 840 2510 "" 0 0 0 "">
  <840 2430 840 2510 "" 0 0 0 "">
  <840 2270 840 2370 "" 0 0 0 "">
  <840 2110 920 2110 "" 0 0 0 "">
  <840 2110 840 2190 "" 0 0 0 "">
  <290 2510 410 2510 "" 0 0 0 "">
  <410 2510 530 2510 "" 0 0 0 "">
  <410 2470 410 2510 "" 0 0 0 "">
  <410 2360 410 2410 "" 0 0 0 "">
  <410 2230 490 2230 "" 0 0 0 "">
  <410 2230 410 2280 "" 0 0 0 "">
  <1130 2100 1130 2510 "" 0 0 0 "">
  <960 2170 960 2190 "" 0 0 0 "">
  <840 2510 960 2510 "" 0 0 0 "">
  <960 2510 1130 2510 "" 0 0 0 "">
  <960 2250 960 2510 "" 0 0 0 "">
  <190 2260 200 2260 "" 0 0 0 "">
  <120 2230 170 2230 "" 0 0 0 "">
  <780 2110 840 2110 "" 0 0 0 "">
  <720 2110 750 2110 "" 0 0 0 "">
  <370 2230 410 2230 "" 0 0 0 "">
  <290 2230 340 2230 "" 0 0 0 "">
  <120 1990 120 2040 "" 0 0 0 "">
  <-80 1990 -50 1990 "" 0 0 0 "">
  <-200 1990 -140 1990 "" 0 0 0 "">
  <530 1900 530 1920 "" 0 0 0 "">
  <-50 1990 20 1990 "" 0 0 0 "">
  <380 1900 470 1900 "" 0 0 0 "">
  <470 1900 530 1900 "" 0 0 0 "">
  <340 1900 380 1900 "" 0 0 0 "">
  <220 1900 280 1900 "" 0 0 0 "">
  <20 1990 120 1990 "" 0 0 0 "">
  <1130 1840 1130 2040 "" 0 0 0 "">
  <650 1620 710 1620 "" 0 0 0 "">
  <770 1620 810 1620 "" 0 0 0 "">
  <810 1620 900 1620 "" 0 0 0 "">
  <530 1980 530 2020 "" 0 0 0 "">
  <900 1620 960 1620 "" 0 0 0 "">
  <960 1620 960 1660 "" 0 0 0 "">
  <960 1720 960 1730 "" 0 0 0 "">
  <960 1810 960 1840 "" 0 0 0 "">
  <530 2100 530 2110 "" 0 0 0 "">
  <530 2110 530 2180 "" 0 0 0 "">
  <120 2210 120 2230 "" 0 0 0 "">
  <120 2100 120 2130 "" 0 0 0 "">
  <-150 2350 -150 2390 "" 0 0 0 "">
  <-150 2450 -150 2510 "" 0 0 0 "">
  <-80 2350 0 2350 "" 0 0 0 "">
  <-150 2350 -110 2350 "" 0 0 0 "">
  <200 2230 290 2230 "" 0 0 0 "">
  <120 2510 290 2510 "" 0 0 0 "">
  <1030 1870 1040 1870 "" 0 0 0 "">
  <1040 1840 1130 1840 "" 0 0 0 "">
  <960 1840 960 2060 "" 0 0 0 "">
  <960 1840 1010 1840 "" 0 0 0 "">
  <-550 2350 -150 2350 "" 0 0 0 "">
  <1130 1840 1510 1840 "" 0 0 0 "">
  <-180 -530 -180 -490 "" 0 0 0 "">
  <-180 -370 -30 -370 "" 0 0 0 "">
  <-180 -430 -180 -370 "" 0 0 0 "">
  <590 170 670 170 "" 0 0 0 "">
  <480 170 560 170 "" 0 0 0 "">
  <640 2110 720 2110 "" 0 0 0 "">
  <530 2110 610 2110 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -2050 688 698 395 3 #c0c0c0 1 00 1 1e-10 2e-11 3.8e-10 1 1.35371e-06 1e-06 7.63922e-06 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tr1.tran.v(out)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -2046 1060 693 313 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/magnitude()" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0 137 -347 3 0 0>
  </Rect>
  <Rect -1486 3031 528 351 3 #c0c0c0 1 00 1 0 5e+10 3e+11 1 -1.00037 2 11.0063 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 0 3 0 0 0>
	<"ngspice/ac.mu" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 355 -333 3 0 0>
  </Rect>
  <Rect -830 3192 465 242 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sp1.ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect -310 3195 441 245 3 #c0c0c0 1 00 1 0 5e+10 3e+11 1 -46.4202 10 4.12961 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sp1.ac.s22_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s22_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect -830 2892 463 232 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -320 2898 439 238 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -2240 3013 647 318 3 #c0c0c0 1 00 1 0 2e+10 3e+11 0 -5 10 100 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 380 -80 3 0 0>
  </Rect>
  <Rect -2160 2664 996 516 3 #c0c0c0 1 00 0 8e+10 2e+10 2.8e+11 0 -80 10 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 243 -245 3 0 0>
	<"ngspice/ac.s12_db" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 548 -310 3 0 0>
	<"ngspice/ac.s22_db" #00ff00 0 3 0 0 0>
	  <Mkr 1.8e+11 543 -99 3 0 0>
	<"ngspice/ac.s21_db" #00ff00 0 3 0 0 0>
  </Rect>
  <Smith 3310 70 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_2)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 162 -161 3 0 0>
  </Smith>
  <Smith 3310 -190 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 160 -165 3 0 0>
  </Smith>
  <Rect -1640 -670 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 19 -219 5 0 0>
	<"ngspice/ac.v(s_1_2)" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 -5 67 5 0 0>
  </Rect>
  <Rect -1350 -670 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_1)" #0000ff 0 3 0 0 0>
	  <Mkr 1.8e+11 17 -286 5 0 0>
	<"ngspice/ac.v(s_2_2)" #ff0000 0 3 0 0 0>
	  <Mkr 1.8e+11 -49 104 5 0 0>
  </Rect>
  <Rect -2280 1998 948 438 3 #c0c0c0 1 00 1 0 2e+10 3e+11 0 -30 5 25 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #ff00ff 0 3 0 0 0>
	  <Mkr 1.8e+11 554 -509 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
