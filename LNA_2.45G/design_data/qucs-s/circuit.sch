<Qucs Schematic 24.4.1>
<Properties>
  <View=-29,9,4863,1962,0.691814,313,62>
  <Grid=10,10,0>
  <DataSet=real_components.dat>
  <DataDisplay=real_components.dpl>
  <OpenDisplay=0>
  <Script=real_components.m>
  <RunScript=0>
  <showFrame=5>
  <FrameText0=DC simulation of a Low Voltage  N type MOS>
  <FrameText1=Drawn By:IHP PDK Authors>
  <FrameText2=Date:2024>
  <FrameText3=Revision:1>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 70 1460 0 0 0 0>
  <SpicePar SpicePar3 1 610 1260 -28 18 0 0 "mos_w=45u" 1 "mos_ng=45" 1 "Ci=632f" 1 "Ls=1.076n" 1 "LL=4.255n" 1 "rL=382" 1 "rPOL=680" 1 "rRF=5k" 1 "Li=5.92n" 1>
  <Vdc Vgs1 1 70 1420 18 -26 0 1 "0.855V" 1>
  <INCLSCR INCLSCR3 1 410 1370 -60 16 0 0 ".lib cornerMOSlv.lib mos_tt\n.lib cornerCAP.lib cap_typ\n.lib cornerRES.lib res_typ\n.include diodes.lib" 1 "" 0 "" 0>
  <INCLSCR INCLSCR5 0 110 1620 -62 18 0 0 ".lib /home/user/Documents/silicon/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerMOSlv.lib mos_tt\n.lib /home/user/Documents/silicon/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerRES.lib res_typ\n.lib /home/user/Documents/silicon/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/models/cornerCAP.lib cap_typ" 1 "" 0 "" 0>
  <NutmegEq NutmegEq6 1 2400 240 -30 18 0 0 "AC1" 1 "v_out=abs(V(pr4))" 1 "v_in=abs(V(pr5))" 1 "gain=v_out/v_in" 1 "gaindB=dB(v_out/v_in)" 1>
  <.AC AC1 0 2370 70 0 41 0 0 "lin" 1 "2.44 GHz" 1 "2.46 GHz" 1 "3" 1 "no" 0>
  <.SW SW6 0 2560 1110 0 70 0 0 "S_Param" 1 "lin" 1 "L1" 1 "0.8n" 1 "1.35n" 1 "11" 1>
  <NutmegEq NutmegEq5 1 2390 890 -30 18 0 0 "S_Param" 1 "ReZ11=real(z_1_1)" 1 "ReZ22=real(z_2_2)" 1 "ImZ11=imag(z_1_1)" 1 "ImZ22=imag(z_2_2)" 1 "dBS11=dB(s_1_1)" 1 "dBS21=dB(s_2_1)" 1 "dBS12=dB(s_1_2)" 1 "dBS22=dB(s_2_2)" 1 "global=abs(i(VPr2))" 1 "i_ll=abs(i(VPr6))" 1 "i_ls=abs(i(VPr7))" 1 "i_li=abs(i(VPr8))" 1>
  <NutmegEq NutmegEq8 1 2790 50 -30 18 0 0 "S_Param" 1 "delta_rollet=mag(s_1_1*s_2_2-s_1_2*s_2_1)" 1 "k_rollet=(1-mag(s_1_1)^2-mag(s_2_2)^2+delta_rollet^2)/(2*mag(s_1_2*s_2_1))" 1 "B1=1+mag(s_1_1)^2-mag(s_2_2)^2-delta_rollet^2" 1 "B1_valid=B1 gt 0" 1 "d_rollet_valid=delta_rollet lt 1" 1 "k_rollet_valid=k_rollet gt 1" 1>
  <NutmegEq NutmegEq7 1 3700 40 -30 18 0 0 "DC2" 1 "gm_mos0=@n.xmn0.x1.nsg13_lv_nmos[gm]" 1 "gm_mos1=@n.xmn1.x1.nsg13_lv_nmos[gm]" 1 "cgs_mos0=@n.xmn0.x1.nsg13_lv_nmos[cgs]" 1>
  <.DC DC2 1 3470 30 0 41 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <INCLSCR INCLSCR4 1 3540 450 -64 18 0 0 ".save all i(VPr1) i(VPr2) i(VPr3) i(VPr6) i(VPr7) i(VPr8)\n.save all V(Pr4) V(Pr5) v(VDD) v(V_gs) v(Vpol) v(vls)\n.save all @n.xmn0.x1.nsg13_lv_nmos[gm]\n.save all @n.xmn1.x1.nsg13_lv_nmos[gm]\n.save all @n.xmn0.x1.nsg13_lv_nmos[cgs]\n" 1 "" 0 "" 0>
  <NutmegEq NutmegEq4 1 3510 630 -30 18 0 0 "SW5" 1 "gm_mos0=@n.xmn0.x1.nsg13_lv_nmos[gm]" 1 "gm_mos1=@n.xmn1.x1.nsg13_lv_nmos[gm]" 1 "cgs_mos0=@n.xmn0.x1.nsg13_lv_nmos[cgs]" 1>
  <.SW SW5 0 3860 540 0 70 0 0 "DC1" 1 "lin" 1 "R1" 1 "300" 1 "1k" 1 "141" 1>
  <GND * 1 1240 760 0 0 0 1>
  <Lib mn1 1 1230 630 40 -52 0 0 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "mos_w" 1 "0.13u" 1 "mos_ng" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "10u" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <GND * 1 1240 630 0 0 0 1>
  <Lib mn0 1 1230 760 39 -47 0 0 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "mos_w" 1 "0.13u" 1 "mos_ng" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "10u" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <SPfile Inductor_Li 0 890 730 -26 -42 0 0 "/tp/xph3app/xph3app602/ProjSystComp/proj_test/openems/sim_out/simple_ind_w4_3u_s4u_din93_16u_n6_polygons_m1_0um_f0-3e+10/simple_ind_w4_3u_s4u_din93_16u_n6_polygons_m1_0um_f0-3e+10.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <GND * 1 1100 690 0 0 0 0>
  <VProbe pol 1 1090 670 28 -31 0 0>
  <VProbe ds0 1 1460 770 -16 28 0 3>
  <IProbe Pr1 1 1230 540 16 -26 1 3>
  <GND * 1 190 560 0 0 0 3>
  <Lib mn2 1 200 560 43 12 1 2 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "5u" 1 "0.13u" 1 "5" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "10u" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <IProbe Pr3 1 270 230 -26 16 1 2>
  <GND * 1 390 300 0 0 0 0>
  <Vdc V3 1 390 260 18 -26 0 1 "1.2V" 1>
  <GND * 1 1590 600 0 0 0 0>
  <VProbe Pr4 1 1420 390 -2 -62 0 0>
  <GND * 1 1430 410 0 0 0 0>
  <SPfile Inductor_Ls 0 1300 1080 -26 -42 0 0 "/tp/xph3app/xph3app602/ProjSystComp/proj_test/openems/sim_out/simple_ind_w5u_s2_1u_din84_76u_n3_polygons_m1_0um_f0-3e+10/simple_ind_w5u_s2_1u_din84_76u_n3_polygons_m1_0um_f0-3e+10.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <GND * 1 1230 1270 0 0 0 0>
  <IProbe Pr7 1 1230 1020 16 -26 1 3>
  <INDQ LS 1 1230 1150 -97 -24 0 1 "1.31 nH" 1 "5.67" 1 "2.45GHz" 0 "Linear" 0 "26.85" 0>
  <IProbe Pr2 1 1430 130 -26 16 1 2>
  <GND * 1 1560 220 0 0 0 0>
  <Vdc V1 1 1560 180 18 -26 0 1 "1.2V" 1>
  <SPfile Inductor_LL 0 1330 270 -26 -42 0 0 "/tp/xph3app/xph3app602/ProjSystComp/proj_test/openems/sim_out/simple_ind_w4_6u_s4_1u_din97_99u_n5_polygons_m1_0um_f0-3e+10/simple_ind_w4_6u_s4_1u_din97_99u_n5_polygons_m1_0um_f0-3e+10.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <IProbe Pr6 1 1230 200 16 -26 1 3>
  <INDQ Li 1 870 820 -17 14 1 2 "3.99nH" 1 "7.82" 1 "2.45GHz" 0 "Linear" 0 "26.85" 0>
  <Lib Ci 1 1160 860 -38 15 0 1 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "20.53u" 1 "20.53u" 1>
  <INDQ LL 1 1230 370 17 -26 0 1 "4.26 nH" 1 "8.89" 1 "2.45GHz" 0 "Linear" 0 "26.85" 0>
  <Lib Cout_2 1 1590 560 -90 -10 0 0 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "44.72u" 1 "44.72u" 1>
  <Lib Cout_1 1 1530 510 -32 -88 0 1 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "29.44u" 1 "29.44u" 1>
  <Lib Rrf 1 700 560 -65 -106 0 1 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "rhigh" 0 "10u" 1 "36.62u" 1 "1" 1>
  <Pac P2 1 2060 590 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "2.45 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 2060 620 0 0 0 0>
  <Lib dantenna2 1 1770 600 -119 -36 0 2 "/home/user/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "dantenna" 0 "0.78u" 1 "0.78u" 1>
  <GND * 1 1770 640 0 0 0 0>
  <Lib R_pol 1 40 220 68 124 0 2 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "rppd" 0 "10.0u" 1 "21.3u" 1 "1" 1>
  <Lib dpantenna2 1 1770 460 -128 -36 0 2 "/home/user/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "dpantenna" 0 "0.78u" 1 "0.78u" 1>
  <GND * 1 200 660 0 0 0 0>
  <Pac P1 1 60 900 -88 -48 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "2.45 GHz" 1 "26.85" 0 "true" 0>
  <GND * 1 60 1000 0 0 0 0>
  <GND * 1 110 1000 0 0 0 0>
  <Vac V2 0 110 960 18 -26 0 1 "0.1" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <R R4 0 110 860 18 -18 0 3 "50" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VProbe Pr5 1 190 930 -16 28 0 3>
  <GND * 1 160 980 0 0 0 0>
  <Lib C_dc 1 740 760 -26 -96 0 1 "/tp/xph3app/xph3app602/.qucs/user_lib/IHP_PDK_basic_components" 0 "cap_cmim" 0 "81.65u" 1 "81.65u" 1>
  <IProbe Pr8 1 660 760 -26 16 0 0>
  <Lib dantenna1 1 500 820 20 -39 0 2 "/home/user/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "dantenna" 0 "0.78u" 1 "0.78u" 1>
  <GND * 1 500 860 0 0 0 0>
  <Lib dpantenna1 1 500 710 30 -27 0 2 "/home/user/.qucs/user_lib/IHP_PDK_nonlinear_components" 0 "dpantenna" 0 "0.78u" 1 "0.78u" 1>
  <.SP S_Param 1 2560 900 0 70 0 0 "log" 1 "100 kHz" 1 "100 GHz" 1 "20000" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <70 1450 70 1460 "" 0 0 0 "">
  <1230 570 1230 580 "" 0 0 0 "">
  <850 730 850 760 "" 0 0 0 "">
  <850 730 860 730 "" 0 0 0 "">
  <890 760 940 760 "" 0 0 0 "">
  <940 760 970 760 "" 0 0 0 "">
  <940 760 940 820 "" 0 0 0 "">
  <800 760 850 760 "" 0 0 0 "">
  <800 760 800 820 "" 0 0 0 "">
  <1080 760 1120 760 "" 0 0 0 "">
  <1080 690 1080 760 "" 0 0 0 "">
  <1230 690 1230 700 "" 0 0 0 "">
  <1230 700 1230 710 "" 0 0 0 "">
  <1230 700 1400 700 "" 0 0 0 "">
  <1400 700 1400 760 "" 0 0 0 "">
  <1400 760 1440 760 "" 0 0 0 "">
  <1400 780 1440 780 "" 0 0 0 "">
  <1400 780 1400 830 "" 0 0 0 "">
  <1230 820 1230 830 "" 0 0 0 "">
  <1230 830 1230 860 "" 0 0 0 "">
  <1230 830 1400 830 "" 0 0 0 "">
  <1230 510 1410 510 "" 0 0 0 "">
  <970 760 1080 760 "" 0 0 0 "">
  <200 500 200 510 "" 0 0 0 "">
  <200 500 270 500 "" 0 0 0 "">
  <250 560 270 560 "" 0 0 0 "">
  <270 500 270 560 "" 0 0 0 "">
  <200 430 200 500 "" 0 0 0 "">
  <200 230 200 350 "" 0 0 0 "">
  <200 230 240 230 "" 0 0 0 "">
  <300 230 340 230 "V_POL" 350 180 20 "">
  <390 290 390 300 "" 0 0 0 "">
  <270 560 660 560 "diode_pol" 360 530 57 "">
  <1550 510 1590 510 "" 0 0 0 "">
  <1590 580 1590 600 "" 0 0 0 "">
  <1590 510 1590 540 "" 0 0 0 "">
  <1410 510 1510 510 "" 0 0 0 "">
  <1410 410 1410 510 "" 0 0 0 "">
  <1230 1080 1270 1080 "" 0 0 0 "">
  <1230 1050 1230 1080 "" 0 0 0 "">
  <1300 1110 1300 1210 "" 0 0 0 "">
  <1230 1210 1230 1270 "" 0 0 0 "">
  <1230 1210 1300 1210 "" 0 0 0 "">
  <1230 1080 1230 1120 "" 0 0 0 "">
  <1230 1180 1230 1210 "" 0 0 0 "">
  <1230 130 1230 170 "" 0 0 0 "">
  <1150 630 1180 630 "" 0 0 0 "">
  <1150 130 1150 630 "" 0 0 0 "">
  <1150 130 1230 130 "" 0 0 0 "">
  <1230 130 1400 130 "" 0 0 0 "">
  <1460 130 1490 130 "" 0 0 0 "">
  <1560 210 1560 220 "" 0 0 0 "">
  <1230 230 1230 270 "" 0 0 0 "">
  <1230 460 1230 510 "tank_out" 1260 460 29 "">
  <1230 460 1330 460 "" 0 0 0 "">
  <1330 300 1330 460 "" 0 0 0 "">
  <1230 270 1300 270 "" 0 0 0 "">
  <1120 760 1180 760 "" 0 0 0 "">
  <1120 760 1120 860 "" 0 0 0 "">
  <1120 860 1140 860 "" 0 0 0 "">
  <1230 860 1230 990 "cm_source" 1260 910 80 "">
  <1180 860 1230 860 "" 0 0 0 "">
  <900 820 940 820 "" 0 0 0 "">
  <800 820 840 820 "" 0 0 0 "">
  <1230 270 1230 340 "" 0 0 0 "">
  <1230 400 1230 460 "" 0 0 0 "">
  <2060 510 2060 560 "" 0 0 0 "">
  <1590 510 1770 510 "" 0 0 0 "">
  <1770 620 1770 640 "" 0 0 0 "">
  <1770 510 2060 510 "VOUT" 1940 480 132 "">
  <1770 510 1770 560 "" 0 0 0 "">
  <1770 480 1770 510 "" 0 0 0 "">
  <1770 400 1770 420 "" 0 0 0 "">
  <200 620 200 660 "" 0 0 0 "">
  <60 760 110 760 "" 0 0 0 "">
  <60 760 60 870 "" 0 0 0 "">
  <60 930 60 1000 "" 0 0 0 "">
  <110 990 110 1000 "" 0 0 0 "">
  <110 760 500 760 "VIN" 320 730 180 "">
  <110 760 110 830 "" 0 0 0 "">
  <110 890 110 920 "" 0 0 0 "">
  <110 920 110 930 "" 0 0 0 "">
  <110 920 170 920 "" 0 0 0 "">
  <160 940 170 940 "" 0 0 0 "">
  <160 940 160 980 "" 0 0 0 "">
  <760 760 800 760 "" 0 0 0 "">
  <690 760 720 760 "" 0 0 0 "">
  <500 760 630 760 "" 0 0 0 "">
  <500 760 500 780 "" 0 0 0 "">
  <500 840 500 860 "" 0 0 0 "">
  <500 730 500 760 "" 0 0 0 "">
  <500 650 500 670 "" 0 0 0 "">
  <970 560 970 760 "" 0 0 0 "">
  <740 560 970 560 "common_mode" 920 640 191 "">
  <70 1390 70 1390 "V_gs" 100 1360 0 "">
  <390 230 390 230 "V_POL" 420 200 0 "">
  <1560 150 1560 150 "VDD" 1590 120 0 "">
  <800 760 800 760 "in_dc_block" 690 800 0 "">
  <1230 700 1230 700 "mos_sd" 1140 690 0 "">
  <1490 130 1490 130 "VDD" 1520 80 0 "">
  <1770 400 1770 400 "VDD" 1800 370 0 "">
  <500 650 500 650 "VDD" 530 620 0 "">
</Wires>
<Diagrams>
  <Tab 2729 1050 622 62 3 #c0c0c0 1 00 1 352 1 1 1 0 1 1 1 0 1 20006 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.rez11" #0000ff 0 5 0 0 0>
	<"ngspice/ac.imz11" #0000ff 0 5 1 0 0>
	<"ngspice/ac.rez22" #0000ff 0 3 1 0 0>
	<"ngspice/ac.imz22" #0000ff 0 3 1 0 0>
	<"ngspice/ac.nf" #0000ff 0 3 1 0 0>
	<"ngspice/ac.nfmin" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab 2729 1127 550 59 3 #c0c0c0 1 00 1 352 1 1 1 0 1 1 1 0 1 20006 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.dbs11" #0000ff 0 3 0 0 0>
	<"ngspice/ac.dbs12" #0000ff 0 3 0 0 0>
	<"ngspice/ac.dbs21" #0000ff 0 3 0 0 0>
	<"ngspice/ac.dbs22" #0000ff 0 3 0 0 0>
  </Tab>
  <Tab 2729 1197 550 59 3 #c0c0c0 1 00 1 352 1 1 1 0 1 1 1 0 1 20006 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.i(global)" #0000ff 0 5 0 0 0>
	<"ngspice/ac.i(id)" #0000ff 0 5 0 0 0>
	<"ngspice/ac.i(ipol)" #0000ff 0 5 0 0 0>
  </Tab>
  <Tab 2724 1292 629 54 3 #c0c0c0 1 00 1 352 1 1 1 0 1 1 1 0 1 20006 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.i(i_ls)" #0000ff 0 5 1 0 0>
	<"ngspice/ac.i(i_ll)" #0000ff 0 5 1 0 0>
	<"ngspice/ac.i(i_li)" #0000ff 0 5 1 0 0>
  </Tab>
  <Rect 2790 470 240 160 3 #c0c0c0 1 11 1 0 2e+10 1.00069e+11 1 -0.107002 0.5 1.17702 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.delta_rollet" #ff0000 0 3 0 0 0>
	<"ngspice/ac.b1" #1a5fb4 0 3 0 0 0>
  </Rect>
  <Rect 3150 590 240 160 3 #c0c0c0 1 00 1 2e+09 2e+08 3e+09 1 0 1 2 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.b1_valid" #00ff00 0 3 0 0 0>
	<"ngspice/ac.d_rollet_valid" #0000ff 0 3 0 0 0>
	<"ngspice/ac.k_rollet_valid" #ff00ff 0 3 0 0 0>
  </Rect>
  <Tab 2359 505 257 107 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 3 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.gain" #0000ff 0 3 1 0 0>
	<"ngspice/ac.gaindb" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab 3471 166 170 60 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(pol)" #0000ff 0 5 1 0 0>
  </Tab>
  <Tab 3469 239 357 61 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 2001 315 0 225 1 0 0 "" "" "">
	<"ngspice/gm_mos0" #0000ff 0 3 1 0 0>
	<"ngspice/gm_mos1" #0000ff 0 3 1 0 0>
	<"ngspice/cgs_mos0" #0000ff 0 3 0 0 0>
  </Tab>
  <Tab 3469 329 357 61 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 2001 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(ds0)" #0000ff 0 3 1 0 0>
	<"ngspice/i(pr3)" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 2780 720 240 160 3 #c0c0c0 1 11 1 1e+06 1 1e+11 1 10 1 1e+06 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.k_rollet" #0000ff 0 3 0 0 0>
	  <Mkr 4.80246e+09/0/0 141 -143 3 0 0>
  </Rect>
  <Rect 3620 1526 1234 676 3 #c0c0c0 1 00 0 4.4e+09 1e+08 5.2e+09 0 13.2 0.1 13.6 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.k_rollet" #0000ff 0 3 0 0 0>
	  <Mkr 4.80246e+09/0/0 681 -319 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 40 1570 12 #000000 0 "-plugin /home/user/Documents/silicon/IHP-Open-PDK/ihp-sg13g2/libs.tech/xyce/plugins/Xyce_Plugin_PSP103_VA.so">
  <Rectangle 20 1550 970 180 #000000 1 1 #c0c0c0 1 0>
  <Text 920 1560 20 #000000 0 "XYCE">
  <Rectangle 2350 10 270 510 #000000 1 1 #c0c0c0 1 0>
  <Text 2540 10 20 #000000 0 "GAIN">
  <Rectangle 2350 870 1070 480 #000000 1 1 #c0c0c0 1 0>
  <Text 3220 880 20 #000000 0 "S-PARAMETERS">
  <Rectangle 2720 10 700 760 #000000 1 1 #c0c0c0 1 0>
  <Text 3280 20 20 #000000 0 "STABILITY">
  <Rectangle 3450 10 560 370 #000000 1 1 #c0c0c0 1 0>
  <Text 3960 20 20 #000000 0 "DC">
  <Rectangle 3450 410 560 370 #000000 1 1 #c0c0c0 1 0>
  <Text 3760 410 20 #000000 0 "ngspice VARIABLES">
  <Rectangle 1390 1550 920 410 #000000 1 1 #c0c0c0 1 0>
  <Text 2150 1560 20 #000000 0 "ESD Diodes">
  <Rectangle 1420 1760 330 100 #000000 1 1 #000000 1 1>
  <Rectangle 1480 1690 130 40 #000000 1 1 #00ffff 14 1>
  <Rectangle 1510 1730 10 30 #000000 1 1 #00ffff 1 1>
  <Rectangle 1570 1730 10 30 #000000 1 1 #00ffff 1 1>
  <Text 1430 1830 12 #ffffff 0 "Psub">
  <Text 1490 1700 12 #000000 0 "M1">
  <Line 1530 1830 40 0 #813d9c 2 1>
  <Line 1550 1830 0 20 #813d9c 2 1>
  <Line 1470 1860 0 30 #000000 1 1>
  <Line 1460 1890 20 0 #000000 1 1>
  <Line 1460 1890 10 10 #000000 1 1>
  <Line 1480 1890 -10 10 #000000 1 1>
  <Text 1480 1890 12 #000000 0 "gnd">
  <Rectangle 1870 1750 420 140 #000000 1 1 #000000 1 1>
  <Rectangle 1970 1680 130 40 #000000 1 1 #00ffff 14 1>
  <Rectangle 2000 1720 10 30 #000000 1 1 #00ffff 1 1>
  <Rectangle 2060 1720 10 30 #000000 1 1 #00ffff 1 1>
  <Text 1980 1690 12 #000000 0 "M1">
  <Text 1910 1810 12 #ffffff 0 "Nwell">
  <Text 1870 1870 12 #ffffff 0 "Psub">
  <Rectangle 1950 1750 170 50 #000000 1 1 #deddda 6 1>
  <Text 1960 1770 12 #000000 0 "P+">
  <Rectangle 2180 1750 50 50 #000000 1 1 #00ff00 6 1>
  <Text 2190 1770 12 #000000 0 "N+">
  <Rectangle 2180 1680 50 40 #000000 1 1 #00ffff 14 1>
  <Rectangle 2200 1720 10 30 #000000 1 1 #00ffff 1 1>
  <Text 2190 1690 12 #000000 0 "M1">
  <Line 1960 1890 0 30 #000000 1 1>
  <Line 1950 1920 10 10 #000000 1 1>
  <Line 1970 1920 -10 10 #000000 1 1>
  <Text 1970 1920 12 #000000 0 "gnd">
  <Line 1950 1920 20 0 #000000 1 1>
  <Rectangle 1680 1760 50 50 #000000 1 1 #deddda 6 1>
  <Text 1690 1780 12 #000000 0 "P+">
  <Rectangle 1680 1690 50 40 #000000 1 1 #00ffff 14 1>
  <Rectangle 1700 1730 10 30 #000000 1 1 #00ffff 1 1>
  <Text 1690 1700 12 #000000 0 "M1">
  <Text 1520 1670 12 #000000 0 "Cathode">
  <Rectangle 1910 1750 340 80 #ffffff 1 1 #26a269 13 1>
  <Line 2110 1800 0 -40 #813d9c 2 1>
  <Line 2140 1780 -30 -20 #813d9c 2 1>
  <Line 2140 1800 0 -40 #813d9c 2 1>
  <Line 2110 1780 -20 0 #813d9c 2 1>
  <Line 2140 1780 20 0 #813d9c 2 1>
  <Line 2140 1780 -30 20 #813d9c 2 1>
  <Text 1990 1730 12 #000000 0 "Cnt">
  <Text 2050 1730 12 #000000 0 "Cnt">
  <Text 2190 1730 12 #000000 0 "Cnt">
  <Text 1690 1740 12 #000000 0 "Cnt">
  <Text 1560 1740 12 #000000 0 "Cnt">
  <Text 1500 1740 12 #000000 0 "Cnt">
  <Text 2010 1660 12 #000000 0 "Anode">
  <Text 2170 1660 12 #000000 0 "Cathode">
  <Text 1660 1670 12 #000000 0 "Anode  (gnd)">
  <Line 2180 1870 40 0 #813d9c 2 1>
  <Line 2200 1840 20 30 #813d9c 2 1>
  <Line 2180 1840 40 0 #813d9c 2 1>
  <Line 2200 1870 0 20 #813d9c 2 1>
  <Line 2200 1840 0 -20 #813d9c 2 1>
  <Line 2200 1840 -20 30 #813d9c 2 1>
  <Text 2030 1620 20 #000000 0 "dpantenna">
  <Text 1540 1630 20 #000000 0 "dantenna">
  <Rectangle 1460 1760 170 50 #000000 1 1 #00ff00 6 1>
  <Text 1470 1780 12 #000000 0 "N+">
  <Line 1550 1800 -20 30 #813d9c 2 1>
  <Line 1550 1800 20 30 #813d9c 2 1>
  <Line 1530 1800 40 0 #813d9c 2 1>
  <Line 1550 1800 0 -20 #813d9c 2 1>
  <Arrow 3060 690 700 340 20 8 #000000 3 1 0>
</Paintings>
