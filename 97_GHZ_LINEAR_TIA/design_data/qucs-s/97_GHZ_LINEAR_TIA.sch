<Qucs Schematic 24.3.0>
<Properties>
  <View=-4222,-2423,5998,3327,0.14641,208,56>
  <Grid=10,10,1>
  <DataSet=97_GHZ_LINEAR_TIA.dat>
  <DataDisplay=97_GHZ_LINEAR_TIA.dpl>
  <OpenDisplay=0>
  <Script=new_design_pdk.m>
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
  <NutmegEq NutmegEq1 1 1440 1650 -31 16 0 0 "SP1" 1 "y=-3.85e-9 * frequency + 362.0" 1 "TI=50*mag(v(s_2_1))/(1-mag(v(s_1_1)))" 1 "TI_db=db(TI)" 1 "grp_dly=group_delay(v(s_2_1))" 1 "s21_phase_unwrap_deg=unwrap(ph(v(s_2_1)))*180/pi" 1 "s21_phase_unwrap=unwrap(ph(v(s_2_1)))" 1 "curve=s21_phase_unwrap_deg-y" 1 "z21_mag=mag(v(z_2_1))" 1 "z21_db=db(v(z_2_1))" 1 "s21_phase=phase(v(s_2_1))" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "fT=h21_mag*frequency" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <GND * 1 -1930 -260 0 0 0 0>
  <GND * 1 -210 -100 0 0 0 0>
  <GND * 1 -560 -410 0 0 0 0>
  <IProbe vin1 1 -1720 -520 -26 16 0 0>
  <Pac P1 1 -1930 -370 18 -26 0 1 "1" 1 "50 Ohm" 1 "-23.48 dBm" 1 "3 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 -560 -780 0 0 0 0>
  <VProbe Pr1 1 -830 -1080 -53 -31 1 2>
  <GND * 1 -840 -1060 0 0 0 0>
  <GND * 1 -80 -880 0 0 0 0>
  <GND * 1 -270 -1020 0 0 0 0>
  <VProbe Pr2 1 -260 -1040 -53 -31 1 2>
  <GND * 1 310 -540 0 0 0 0>
  <GND * 1 180 -110 0 0 0 0>
  <GND * 1 290 -970 0 0 0 0>
  <GND * 1 50 -710 0 0 0 0>
  <VProbe Pr3 1 60 -730 -53 -31 1 2>
  <IProbe Pr4 1 -870 -400 16 -26 0 1>
  <.SP SP1 1 -760 -1940 0 62 0 0 "lin" 1 "1 Hz" 1 "100 GHz" 1 "1001" 1 "yes" 1 "1" 1 "2" 1 "no" 0 "no" 0>
  <GND * 1 -710 -40 0 0 0 0>
  <GND * 0 -870 -800 0 0 0 0>
  <Vdc V1 0 -870 -830 18 -26 0 1 "2.37 V" 1>
  <.TR TR1 0 -970 -1940 0 62 0 0 "lin" 1 "0" 1 "3 ns" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND * 1 -1370 -950 0 0 1 2>
  <GND * 1 -1370 -680 0 0 1 2>
  <GND * 1 -1210 -700 0 0 0 0>
  <IProbe Pr5 1 -1290 -1310 -26 16 0 0>
  <GND * 1 -1390 -1250 0 0 1 2>
  <Vdc V2 1 -1390 -1280 -60 -26 1 1 "3.3 V" 1>
  <GND * 1 -950 -800 0 0 0 0>
  <GND * 1 1650 -340 0 0 0 0>
  <VProbe Pr6 1 1350 -580 -53 -31 1 2>
  <GND * 1 1340 -560 0 0 0 0>
  <GND * 1 1650 -880 0 0 0 0>
  <Vdc V3 0 1350 -910 18 -26 0 1 "2.52 V" 1>
  <GND * 0 1350 -880 0 0 0 0>
  <GND * 1 2530 -840 0 0 0 0>
  <Pac P2 1 2530 -920 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "false" 0>
  <GND * 1 900 -880 0 0 1 2>
  <GND * 1 900 -610 0 0 1 2>
  <GND * 1 1060 -630 0 0 0 0>
  <IProbe Pr7 1 980 -1240 -26 16 0 0>
  <GND * 1 880 -1180 0 0 1 2>
  <Vdc V4 1 880 -1210 -60 -26 1 1 "3.3 V" 1>
  <VProbe Pr8 1 1170 -1130 37 -31 0 0>
  <GND * 1 1180 -1110 0 0 1 2>
  <VProbe Pr9 1 -1070 -1210 37 -31 0 0>
  <GND * 1 -1060 -1190 0 0 1 2>
  <GND * 1 1280 -900 0 0 0 0>
  <IProbe Pr10 1 -620 -1490 -26 16 1 2>
  <IProbe Pr11 1 -320 -1490 -26 16 0 0>
  <GND * 1 -480 -1550 0 -16 1 0>
  <Vdc V5 1 -480 -1520 18 -26 1 3 "3.3 V" 1>
  <IProbe Pr12 1 1630 -1550 -26 16 1 2>
  <GND * 1 1760 -1480 0 0 0 0>
  <Vdc V6 1 1760 -1510 18 -26 0 1 "3.3 V" 1>
  <GND * 1 380 -1410 0 0 0 0>
  <Vdc V7 1 380 -1500 18 -26 0 1 "3.3 V" 1>
  <IProbe Pr13 1 310 -1530 -26 16 1 2>
  <GND * 1 -480 -1420 0 0 0 0>
  <NutmegEq NutmegEq2 0 1970 1640 -31 16 0 0 "SP1" 1 "y=-4.123e-9 * frequency + 362.0" 1 "grp_dly=group_delay(v(s_2_1))" 1 "s21_phase_unwrap_deg=unwrap(ph(v(s_2_1)))*180/pi" 1 "s21_phase_unwrap=unwrap(ph(v(s_2_1)))" 1 "curve=s21_phase_unwrap_deg-y" 1 "z21_mag=mag(v(z_2_1))" 1 "z21_db=db(v(z_2_1))" 1 "s21_phase=phase(v(s_2_1))" 1 "s11_db=db(v(s_1_1))" 1 "s12_db=db(v(s_1_2))" 1 "s21_db=db(v(s_2_1))" 1 "s22_db=db(v(s_2_2))" 1 "s11_mag=mag(v(s_1_1))" 1 "s11_conj=conj(v(s_1_1))" 1 "s12_mag=mag(v(s_1_2))" 1 "s21_mag=mag(v(s_2_1))" 1 "s22_mag=mag(v(s_2_2))" 1 "delta=v(s_1_1)*v(s_2_2)-v(s_1_2)*v(s_2_2)" 1 "delta_mag=mag(delta)" 1 "h21=(-2*v(s_2_1))/((1-v(s_1_1))*(1+v(s_2_2))+v(s_1_2)*v(s_2_1))" 1 "h21_mag=mag(h21)" 1 "fT=h21_mag*frequency" 1 "kf=(1-s11_mag*s11_mag-s22_mag*s22_mag+delta_mag*delta_mag)/(2*s12_mag*s21_mag)" 1 "mu=(1-s11_mag*s11_mag)/(mag(v(s_2_2)-delta*s11_conj)+s12_mag*s21_mag)" 1>
  <GND * 1 -870 -650 0 0 0 2>
  <INCLSCR INCLSCR1 1 -340 -1930 -60 16 0 0 ".LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerHBT.lib hbt_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ\n.LIB /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ\n.control\npre_osdi /home/rf/Downloads/IHP-Open-PDK/ihp-sg13g2/libs.tech/verilog-a/r3_cmc/r3_cmc.osdi\n.endc" 1 "" 0 "" 0>
  <Lib rhigh1 1 -1210 -1230 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2.94u" 1 "1" 1>
  <Lib rhigh2 1 -1140 -1060 -26 -114 0 1 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib rhigh3 1 -1210 -910 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib rhigh4 1 -1080 -790 -26 -114 0 1 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib cap_cmim1 1 -950 -840 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30 u" 1 "30 u" 1>
  <Lib cap_cmim2 1 -480 -1450 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30 u" 1 "30 u" 1>
  <Lib rppd1 1 -560 -990 -110 -196 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "8.5u" 1 "2u" 1 "1" 1>
  <Lib rhigh5 1 -870 -610 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "4u" 1 "9.9u" 1 "1" 1>
  <Lib rppd2 1 -710 -40 -110 -196 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "4 u" 1 "13.3 u" 1 "1" 1>
  <Lib rhigh6 1 -210 -430 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "8u" 1 "8.2u" 1 "1" 1>
  <Lib rppd3 1 340 -80 -110 -196 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "4 u" 1 "2.9 u" 1 "1" 1>
  <Lib rhigh7 1 1060 -1160 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "1.94u" 1 "1" 1>
  <Lib rhigh8 1 1130 -990 -26 -114 0 1 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib rhigh9 1 1060 -880 -79 -26 0 2 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib rhigh10 1 1130 -720 -26 -114 0 1 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "3u" 1 "2u" 1 "1" 1>
  <Lib cap_cmim3 1 1280 -920 30 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "30 u" 1 "30 u" 1>
  <Lib rppd4 1 1650 -970 -110 -196 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "20.6u" 1 "2.1u" 1 "1" 1>
  <Lib rsil1 1 1490 -300 50 -26 0 0 "/home/rf/QucsWorkspace/user_lib/IHP_PDK_basic_components" 0 "rsil" 0 "18u" 1 "30u" 1 "1" 1>
  <Lib npn13G1 1 -1210 -1060 30 100 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "1" 1>
  <Lib npn13G2 1 -1210 -790 30 100 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "1" 1>
  <Lib npn13G3 1 -720 -520 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <Lib npn13G4 1 -710 -50 -140 10 0 3 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "1" 1>
  <Lib npn13G5 1 -720 -890 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "2" 1>
  <Lib npn13G6 1 -210 -960 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib npn13G7 1 180 -1030 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "2" 1>
  <Lib npn13G8 1 180 -620 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "5" 1>
  <Lib npn13G9 1 1060 -990 30 100 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "1" 1>
  <Lib npn13G10 1 1060 -720 30 100 1 2 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "1" 1>
  <Lib npn13G11 1 1490 -990 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "4" 1>
  <Lib npn13G12 1 1490 -450 10 100 0 0 "/home/rf/IHP-Open-PDK/ihp-sg13g2/libs.tech/qucs/user_lib/IHP_PDK_nonlinear_components" 0 "npn13G2" 0 "10" 1>
  <C C17 1 -1560 -520 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <C C18 1 2400 -1070 -26 17 0 0 "5 uF" 1 "" 0 "neutral" 0>
  <.FOURIER FOUR1 0 -1290 -1950 0 62 0 0 "TR1" 1 "10" 1 "3 GHz" 1 "V(OUTPUT), V(INPUT), I(VVIN)" 1>
  <GND * 1 -720 -280 0 0 0 0>
  <GND * 1 1490 -130 0 0 0 0>
  <GND * 1 -1250 -490 0 0 0 0>
  <GND * 1 -690 -1350 0 0 0 0>
  <GND * 1 -180 -1330 0 0 0 0>
  <GND * 1 -750 -310 0 0 0 0>
  <GND * 1 210 -1340 0 0 0 0>
  <GND * 1 2030 -1040 0 0 0 0>
  <GND * 1 1460 -160 0 0 0 0>
  <GND * 1 1520 -1450 0 0 0 0>
  <SPfile X3 1 -1250 -520 -26 -59 0 0 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/input_em_data/input_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 1 -720 -1350 -997 -26 0 1 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/choke_1_em_data/choke_1_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 1 -720 -310 21 -26 0 3 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/deg_1_em_data/deg_1_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X4 1 -210 -1330 -997 -26 0 1 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/choke_2_em_data/choke_2_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X5 1 180 -1340 -997 -26 0 1 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/choke_3_em_data/choke_3_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X6 1 1490 -1450 -997 -26 0 1 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/choke_4_em_data/choke_4_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X8 1 2030 -1070 -26 -59 0 0 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/output_em_data/output_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X7 1 1490 -160 21 -26 0 3 "/home/rf/Rupok_Desktop/TO_Apr2025/97_GHZ_LINEAR_TIA/design_data/openEMS/deg_4_em_data/deg_4_em.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <-710 -520 -560 -520 "" 0 0 0 "">
  <-560 -520 -560 -410 "" 0 0 0 "">
  <-1930 -340 -1930 -260 "" 0 0 0 "">
  <-1930 -520 -1750 -520 "" 0 0 0 "">
  <-1930 -520 -1930 -400 "INPUT" -1900 -490 53 "">
  <-710 -890 -560 -890 "" 0 0 0 "">
  <-560 -890 -560 -780 "" 0 0 0 "">
  <-820 -1060 -720 -1060 "" 0 0 0 "">
  <-80 -960 -80 -880 "" 0 0 0 "">
  <-200 -960 -80 -960 "" 0 0 0 "">
  <-210 -1020 -210 -1010 "" 0 0 0 "">
  <-250 -1020 -210 -1020 "" 0 0 0 "">
  <-720 -1060 -720 -960 "" 0 0 0 "">
  <-720 -960 -720 -940 "" 0 0 0 "">
  <-720 -960 -240 -960 "" 0 0 0 "">
  <-210 -910 -210 -620 "" 0 0 0 "">
  <310 -620 310 -540 "" 0 0 0 "">
  <190 -620 310 -620 "" 0 0 0 "">
  <130 -1030 150 -1030 "" 0 0 0 "">
  <130 -1090 130 -1030 "" 0 0 0 "">
  <180 -1090 180 -1080 "" 0 0 0 "">
  <130 -1090 180 -1090 "" 0 0 0 "">
  <190 -1030 290 -1030 "" 0 0 0 "">
  <290 -1030 290 -970 "" 0 0 0 "">
  <180 -710 180 -670 "" 0 0 0 "">
  <70 -710 180 -710 "" 0 0 0 "">
  <-870 -520 -870 -430 "" 0 0 0 "">
  <-460 -620 -210 -620 "" 0 0 0 "">
  <-870 -370 -870 -250 "" 0 0 0 "">
  <-460 -620 -460 -50 "" 0 0 0 "">
  <-870 -50 -760 -50 "" 0 0 0 "">
  <-710 -100 -710 -80 "" 0 0 0 "">
  <-710 -100 -650 -100 "" 0 0 0 "">
  <-660 -50 -650 -50 "" 0 0 0 "">
  <-650 -50 -460 -50 "" 0 0 0 "">
  <-650 -100 -650 -50 "" 0 0 0 "">
  <180 -980 180 -710 "" 0 0 0 "">
  <-720 -840 -720 -570 "" 0 0 0 "">
  <-210 -620 -210 -470 "" 0 0 0 "">
  <-870 -520 -750 -520 "" 0 0 0 "">
  <-870 -890 -750 -890 "" 0 0 0 "">
  <-870 -890 -870 -860 "" 0 0 0 "">
  <-1370 -1060 -1220 -1060 "" 0 0 0 "">
  <-1370 -1060 -1370 -950 "" 0 0 0 "">
  <-1370 -790 -1220 -790 "" 0 0 0 "">
  <-1370 -790 -1370 -680 "" 0 0 0 "">
  <-1210 -870 -1210 -840 "" 0 0 0 "">
  <-1210 -740 -1210 -700 "" 0 0 0 "">
  <-1390 -1310 -1320 -1310 "" 0 0 0 "">
  <-1260 -1310 -1210 -1310 "" 0 0 0 "">
  <-1210 -1310 -1210 -1270 "" 0 0 0 "">
  <-1090 -1130 -1090 -1060 "" 0 0 0 "">
  <-1210 -1130 -1210 -1110 "" 0 0 0 "">
  <-1210 -1130 -1090 -1130 "" 0 0 0 "">
  <-1090 -1060 -950 -1060 "" 0 0 0 "">
  <-950 -1060 -950 -890 "" 0 0 0 "">
  <-950 -890 -870 -890 "" 0 0 0 "">
  <1360 -560 1360 -530 "" 0 0 0 "">
  <1360 -530 1490 -530 "" 0 0 0 "">
  <1500 -990 1650 -990 "" 0 0 0 "">
  <1650 -990 1650 -880 "" 0 0 0 "">
  <1350 -990 1350 -940 "" 0 0 0 "">
  <1350 -990 1460 -990 "" 0 0 0 "">
  <2530 -1070 2530 -950 "OUTPUT" 2560 -1070 9 "">
  <2530 -890 2530 -840 "" 0 0 0 "">
  <1490 -940 1490 -530 "" 0 0 0 "">
  <900 -990 1050 -990 "" 0 0 0 "">
  <900 -990 900 -880 "" 0 0 0 "">
  <900 -720 1050 -720 "" 0 0 0 "">
  <900 -720 900 -610 "" 0 0 0 "">
  <1060 -940 1060 -920 "" 0 0 0 "">
  <1060 -670 1060 -630 "" 0 0 0 "">
  <880 -1240 950 -1240 "" 0 0 0 "">
  <1010 -1240 1060 -1240 "" 0 0 0 "">
  <1060 -1240 1060 -1200 "" 0 0 0 "">
  <1060 -1110 1160 -1110 "" 0 0 0 "">
  <1060 -1120 1060 -1110 "" 0 0 0 "">
  <1280 -990 1350 -990 "" 0 0 0 "">
  <1280 -990 1280 -940 "" 0 0 0 "">
  <-1210 -1010 -1210 -950 "" 0 0 0 "">
  <-1210 -870 -1040 -870 "" 0 0 0 "">
  <-1040 -870 -1040 -790 "" 0 0 0 "">
  <-1180 -790 -1120 -790 "" 0 0 0 "">
  <-1100 -1060 -1090 -1060 "" 0 0 0 "">
  <-1080 -1190 -1080 -1180 "" 0 0 0 "">
  <-1210 -1190 -1210 -1180 "" 0 0 0 "">
  <-1210 -1180 -1210 -1130 "" 0 0 0 "">
  <-1210 -1180 -1080 -1180 "" 0 0 0 "">
  <-950 -820 -950 -800 "" 0 0 0 "">
  <-950 -890 -950 -860 "" 0 0 0 "">
  <1060 -840 1060 -800 "" 0 0 0 "">
  <1060 -800 1060 -770 "" 0 0 0 "">
  <1060 -800 1170 -800 "" 0 0 0 "">
  <1170 -800 1170 -720 "" 0 0 0 "">
  <1170 -990 1280 -990 "" 0 0 0 "">
  <1060 -1110 1060 -1060 "" 0 0 0 "">
  <1060 -1060 1060 -1040 "" 0 0 0 "">
  <1060 -1060 1170 -1060 "" 0 0 0 "">
  <1170 -1060 1170 -990 "" 0 0 0 "">
  <-720 -1120 -720 -1060 "" 0 0 0 "">
  <-870 -170 -870 -50 "" 0 0 0 "">
  <1490 -1100 1490 -1070 "" 0 0 0 "">
  <1650 -450 1650 -340 "" 0 0 0 "">
  <1500 -450 1650 -450 "" 0 0 0 "">
  <1490 -530 1490 -500 "" 0 0 0 "">
  <-210 -390 -210 -100 "" 0 0 0 "">
  <180 -210 180 -110 "" 0 0 0 "">
  <-1690 -520 -1590 -520 "" 0 0 0 "">
  <-290 -1490 -210 -1490 "" 0 0 0 "">
  <-590 -1490 -480 -1490 "" 0 0 0 "">
  <-480 -1490 -350 -1490 "" 0 0 0 "">
  <-480 -1490 -480 -1470 "" 0 0 0 "">
  <-720 -470 -720 -340 "" 0 0 0 "">
  <2430 -1070 2530 -1070 "" 0 0 0 "">
  <1490 -1070 1490 -1040 "" 0 0 0 "">
  <1490 -1070 2000 -1070 "" 0 0 0 "">
  <1760 -1550 1760 -1540 "" 0 0 0 "">
  <1660 -1550 1760 -1550 "" 0 0 0 "">
  <180 -1530 280 -1530 "" 0 0 0 "">
  <380 -1470 380 -1410 "" 0 0 0 "">
  <340 -1530 380 -1530 "" 0 0 0 "">
  <-480 -1430 -480 -1420 "" 0 0 0 "">
  <-210 -1490 -210 -1360 "" 0 0 0 "">
  <180 -1530 180 -1370 "" 0 0 0 "">
  <-210 -620 150 -620 "" 0 0 0 "">
  <180 -570 180 -450 "" 0 0 0 "">
  <-870 -570 -870 -520 "" 0 0 0 "">
  <1490 -400 1490 -340 "" 0 0 0 "">
  <180 -450 180 -290 "" 0 0 0 "">
  <180 -450 1460 -450 "" 0 0 0 "">
  <1490 -1550 1490 -1480 "" 0 0 0 "">
  <1490 -1550 1600 -1550 "" 0 0 0 "">
  <-720 -1490 -650 -1490 "" 0 0 0 "">
  <-720 -1490 -720 -1380 "" 0 0 0 "">
  <-720 -1320 -720 -1200 "" 0 0 0 "">
  <-1220 -520 -870 -520 "" 0 0 0 "">
  <-1530 -520 -1280 -520 "" 0 0 0 "">
  <2060 -1070 2370 -1070 "" 0 0 0 "">
  <1490 -1420 1490 -1180 "" 0 0 0 "">
  <180 -1310 180 -1090 "" 0 0 0 "">
  <-210 -1300 -210 -1020 "" 0 0 0 "">
  <1490 -260 1490 -190 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -1440 950 240 160 3 #c0c0c0 1 00 1 0 5e+10 1.5e+11 0 0 5 40 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
	  <Mkr 4.75e+10 162 -208 3 0 0>
	  <Mkr 2e+08 -197 -242 3 0 0>
	  <Mkr 2.6e+10 -13 -214 3 0 0>
  </Rect>
  <Rect -1050 940 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 -40 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 0 3 0 0 0>
	  <Mkr 4.01e+10 144 -196 3 0 0>
  </Rect>
  <Rect -1440 690 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -30 5 10 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 3e+08 -59 -228 3 0 0>
	  <Mkr 4.01e+10 204 -159 3 0 0>
  </Rect>
  <Rect -1050 690 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 -70 10 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 130 690 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 0 1 8 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 0 3 0 0 0>
	  <Mkr 4.01e+10 160 -315 3 0 0>
	  <Mkr 1.1e+09 43 -318 3 0 0>
  </Rect>
  <Rect -480 690 240 160 3 #c0c0c0 1 00 1 0 2e+10 1e+11 0 -0.5 0.5 2 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_mag" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith -440 1180 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_1)" #0000ff 0 3 0 0 0>
  </Smith>
  <Smith -110 1170 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_1_2)" #0000ff 0 3 0 0 0>
  </Smith>
  <Smith -450 1500 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_1)" #0000ff 0 3 0 0 0>
  </Smith>
  <Smith -100 1500 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_2)" #0000ff 0 3 0 0 0>
  </Smith>
  <Rect -1410 2019 571 321 3 #c0c0c0 1 00 1 0 1e+10 1e+11 0 0 5e-12 5.5e-11 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.grp_dly" #0000ff 0 3 0 0 0>
	  <Mkr 4.01e+10 250 -390 3 0 0>
	  <Mkr 1.5e+09 50 -390 3 0 0>
	  <Mkr 9.22e+10 570 -280 3 0 0>
  </Rect>
  <Rect -500 1916 781 166 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -500 2118 779 158 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase_unwrap" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -1410 1566 571 326 3 #c0c0c0 1 00 1 0 1e+10 1e+11 1 -22.4864 100 537.722 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.ti_db" #0000ff 0 3 0 0 0>
	  <Mkr 2e+08 -69 -368 3 0 0>
	  <Mkr 1.64e+10 106 -362 3 0 0>
	  <Mkr 4.72e+10 245 -349 3 0 0>
	  <Mkr 9.7e+10 443 -377 3 0 0>
  </Rect>
  <Rect -180 690 240 160 3 #c0c0c0 1 01 1 0 2e+10 1e+11 1 nan 1 1e+11 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.kf" #0000ff 0 3 0 0 0>
	  <Mkr 4.01e+10 190 -310 3 0 0>
	  <Mkr 7.02e+10 204 -232 3 0 0>
  </Rect>
  <Rect 430 1504 869 534 3 #c0c0c0 1 00 1 -1 0.1 1 0 0 2 10 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 0 0 0>
	<"ngspice/ac.nfmin" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 511 2091 768 389 3 #c0c0c0 1 00 1 0 1e+10 1e+11 1 -100 100 400 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_phase_unwrap_deg" #0000ff 0 3 0 0 0>
	  <Mkr 2e+08 62 -417 3 0 0>
	  <Mkr 4.01e+10 347 -307 3 0 0>
	<"ngspice/ac.y" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 1450 1453 679 453 3 #c0c0c0 1 00 1 0 1e+10 1e+11 0 -20 4 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.curve" #0000ff 0 3 0 0 0>
	  <Mkr 4.14e+10 292 -272 3 0 0>
	  <Mkr 2.99e+10 239 -323 3 0 0>
  </Rect>
  <Rect 680 710 240 160 3 #c0c0c0 1 00 1 0 2e-10 1e-09 1 -0.00331489 0.002 0.004 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.i(vvin)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -1720 -160 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 1 -1 1 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.i(vvin)" #0000ff 0 3 0 0 0>
	  <Mkr 2.06135e-09 225 -191 3 0 0>
	  <Mkr 2.23565e-09 239 -89 3 0 0>
  </Rect>
  <Rect -1720 170 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #0000ff 0 3 0 0 0>
	  <Mkr 4.34184e-10 95 -207 3 0 0>
	  <Mkr 5.96746e-10 58 47 3 0 0>
  </Rect>
  <Rect -1260 -40 240 160 3 #c0c0c0 1 00 1 0 5e+09 2.7e+10 1 -0.00274163 0.02 0.0290737 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/magnitude(i(vvin))" #0000ff 0 3 0 0 0>
	  <Mkr 3e+09 87 -227 3 0 0>
  </Rect>
  <Tab -1410 130 297 50 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/thd_%(i(vvin))" #0000ff 0 3 0 0 0>
  </Tab>
  <Tab -1410 214 297 54 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/thd_%(v(output))" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect -980 300 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/magnitude(v(output))" #0000ff 0 3 0 0 0>
	  <Mkr 3e+09 47 -237 4 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle -1530 420 800 590 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -1520 430 780 570 #000000 1 1 #c0c0c0 1 0>
  <Text -1350 440 40 #000000 0 "S-Parameter (dB)">
  <Rectangle -1500 1120 750 990 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -1490 1130 730 970 #000000 1 1 #c0c0c0 1 0>
  <Text -1350 1140 40 #000000 0 "Transimpedance">
  <Rectangle -580 430 1020 320 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -570 440 1000 300 #000000 1 1 #c0c0c0 1 0>
  <Text -190 460 40 #000000 0 "Stability">
  <Rectangle -570 790 880 800 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -560 800 860 780 #000000 1 1 #c0c0c0 1 0>
  <Text -300 810 40 #000000 0 "S-Parameter">
  <Rectangle -570 1630 880 550 #000000 2 1 #c0c0c0 1 0>
  <Rectangle -560 1640 860 530 #000000 1 1 #c0c0c0 1 0>
  <Text -220 1650 40 #000000 0 "S21 Phase">
  <Rectangle 420 1620 880 550 #000000 2 1 #c0c0c0 1 0>
  <Rectangle 430 1630 860 530 #000000 1 1 #c0c0c0 1 0>
  <Text 740 1650 40 #000000 0 "S11 (Deg)">
</Paintings>
