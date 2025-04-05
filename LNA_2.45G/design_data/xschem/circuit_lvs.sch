v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -70 60 -70 {
lab=VIN}
N 120 -70 190 -70 {
lab=in_dc_block}
N 290 -70 290 50 {
lab=common_mode}
N 460 -40 460 50 {
lab=cm_source}
N 450 50 460 50 {
lab=cm_source}
N 460 50 460 150 {
lab=cm_source}
N 460 -150 460 -100 {
lab=sd_mos}
N 390 -180 420 -180 {
lab=VDD}
N 390 -370 460 -370 {
lab=VDD}
N 390 -370 390 -180 {
lab=VDD}
N 460 -370 460 -310 {
lab=VDD}
N 460 -220 460 -210 {
lab=tank_out}
N 460 -450 460 -370 {
lab=VDD}
N 290 50 390 50 {
lab=common_mode}
N 310 -70 420 -70 {
lab=common_mode}
N 310 -280 310 -70 {
lab=common_mode}
N 290 -70 310 -70 {
lab=common_mode}
N 70 -280 100 -280 {
lab=VSS}
N 70 -280 70 -220 {
lab=VSS}
N 70 -220 100 -220 {
lab=VSS}
N 100 -220 100 -200 {
lab=VSS}
N 100 -250 100 -220 {
lab=VSS}
N 170 -280 200 -280 {
lab=diode_pol}
N 260 -280 310 -280 {
lab=common_mode}
N 460 -220 710 -220 {
lab=tank_out}
N 100 -520 100 -440 {
lab=V_POL}
N 100 -340 100 -310 {
lab=diode_pol}
N 820 -120 820 -90 {
lab=VSS}
N 980 -220 1010 -220 {
lab=VOUT}
N 820 -220 820 -180 {
lab=VOUT}
N 100 -340 170 -340 {
lab=diode_pol}
N 100 -380 100 -340 {
lab=diode_pol}
N 170 -340 170 -280 {
lab=diode_pol}
N 140 -280 170 -280 {
lab=diode_pol}
N 250 -70 290 -70 {
lab=common_mode}
N 460 -250 460 -220 {
lab=tank_out}
N 460 210 460 260 {
lab=VSS}
N 460 -180 480 -180 {
lab=VSS}
N 460 -70 480 -70 {
lab=VSS}
N 710 130 710 180 {
lab=VSS}
N 710 0 710 70 {
lab=VDD}
N 1390 160 1390 210 {
lab=VSS}
N 1390 30 1390 100 {
lab=VDD}
N 1030 140 1030 190 {
lab=VSS}
N 1030 10 1030 80 {
lab=VDD}
N 1220 150 1220 200 {
lab=VSS}
N 1220 20 1220 90 {
lab=VDD}
N 880 130 880 180 {
lab=VSS}
N 880 0 880 70 {
lab=VDD}
N -70 -490 -30 -490 {
lab=VDD}
N 20 -520 100 -520 {
lab=V_POL}
N 100 -560 100 -520 {
lab=V_POL}
N 0 -460 0 -440 {
lab=VSS}
N -30 60 10 60 {
lab=VDD}
N 40 90 40 110 {
lab=VSS}
N 910 -100 950 -100 {
lab=VDD}
N 980 -70 980 -50 {
lab=VSS}
N 40 -70 40 30 {
lab=VIN}
N 10 -70 40 -70 {
lab=VIN}
N 980 -220 980 -130 {
lab=VOUT}
N 970 -220 980 -220 {
lab=VOUT}
N 970 -280 970 -220 {
lab=VOUT}
N 900 -310 940 -310 {
lab=VSS}
N 970 -380 970 -340 {
lab=VDD}
N 10 -130 10 -70 {
lab=VIN}
N -60 -160 -20 -160 {
lab=VSS}
N 10 -230 10 -190 {
lab=VDD}
N -0 -70 10 -70 {
lab=VIN}
N 20 -580 20 -520 {
lab=V_POL}
N -50 -610 -10 -610 {
lab=VSS}
N 20 -680 20 -640 {
lab=VDD}
N -0 -520 20 -520 {
lab=V_POL}
N 820 -220 970 -220 {
lab=VOUT}
N 770 -220 820 -220 {
lab=VOUT}
N 1310 270 1310 320 {
lab=VSS}
N 1310 400 1310 430 {
lab=VSS}
N 1250 350 1270 350 {
lab=VSS}
N 1250 400 1310 400 {
lab=VSS}
N 1310 380 1310 400 {
lab=VSS}
N 1250 350 1250 400 {
lab=VSS}
N 1310 270 1360 270 {
lab=VSS}
N 1360 270 1360 400 {
lab=VSS}
N 1340 400 1360 400 {
lab=VSS}
N 1310 350 1340 350 {
lab=VSS}
N 1340 350 1340 400 {
lab=VSS}
N 1310 400 1340 400 {
lab=VSS}
N 220 -50 220 -20 {
lab=VSS}
N 480 -280 510 -280 {
lab=VSS}
N 480 180 510 180 {
lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 90 -70 1 0 {name=C1
model=cap_cmim
w=57.74e-6
l=57.74e-6
m=2
spiceprefix=C}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 -70 0 0 {name=Mn2
l=0.13u
w=45.0u
ng=45
m=1
model=sg13_lv_nmos
spiceprefix=M
}
C {sg13g2_pr/cap_cmim.sym} 420 50 1 0 {name=Ci
model=cap_cmim
w=20.53e-6
l=20.53e-6
m=1
spiceprefix=C}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 -180 0 0 {name=Mn1
l=0.13u
w=45.0u
ng=45
m=1
model=sg13_lv_nmos
spiceprefix=M
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -280 2 0 {name=M3
l=0.13u
w=5.0u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=M
}
C {sg13g2_pr/rhigh.sym} 230 -280 3 0 {name=Rrf
w=10e-6
l=36.62e-6
model=rhigh
spiceprefix=R
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 100 -410 0 0 {name=R_pol
w=10e-6
l=21.3e-6
model=rppd
spiceprefix=R
b=0
m=1
}
C {sg13g2_pr/cap_cmim.sym} 740 -220 1 0 {name=Cout_1
model=cap_cmim
w=29.44e-6
l=29.44e-6
m=1
spiceprefix=C}
C {sg13g2_pr/cap_cmim.sym} 820 -150 0 0 {name=Cout_2
model=cap_cmim
w=44.72e-6
l=44.72e-6
m=1
spiceprefix=C}
C {lab_wire.sym} 820 -90 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 100 -200 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -180 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -70 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {opin.sym} 1010 -220 0 0 {name=p16 lab=VOUT}
C {ipin.sym} 0 -70 0 0 {name=p2 lab=VIN
}
C {iopin.sym} 460 260 0 0 {name=p17 lab=VSS}
C {iopin.sym} 460 -450 0 0 {name=p18 lab=VDD}
C {iopin.sym} 100 -560 0 0 {name=p3 lab=V_POL}
C {sg13g2_pr/cap_cmim.sym} 710 100 0 0 {name=C_dec0
model=cap_cmim
w=57.74e-6
l=57.74e-6
m=11
spiceprefix=C}
C {lab_wire.sym} 710 180 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 710 0 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {sg13g2_pr/cap_cmim.sym} 1390 130 0 0 {name=C_dec1
model=cap_cmim
w=57.74e-6
l=30e-6
m=2
spiceprefix=C}
C {lab_wire.sym} 1390 210 2 0 {name=p5 sig_type=std_logic lab=VSS
l=30e-6
m=2}
C {lab_wire.sym} 1390 30 2 0 {name=p19 sig_type=std_logic lab=VDD
l=30e-6
m=2}
C {sg13g2_pr/cap_cmim.sym} 1030 110 0 0 {name=C_dec2
model=cap_cmim
w=57.74e-6
l=35e-6
m=1
spiceprefix=C}
C {lab_wire.sym} 1030 190 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1030 10 2 0 {name=p21 sig_type=std_logic lab=VDD}
C {sg13g2_pr/cap_cmim.sym} 1220 120 0 0 {name=C_dec3
model=cap_cmim
w=30e-6
l=57.74e-6
m=2
spiceprefix=C}
C {lab_wire.sym} 1220 200 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1220 20 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {sg13g2_pr/cap_cmim.sym} 880 100 0 0 {name=Crng0
model=cap_cmim
w=30e-6
l=80e-6
m=1
spiceprefix=C}
C {lab_wire.sym} 880 180 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 880 0 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -70 -490 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 -440 2 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -30 60 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 40 110 2 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 910 -100 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 980 -50 2 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 970 -380 0 0 {name=p38 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 900 -310 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 10 -230 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -60 -160 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 20 -680 0 0 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 -610 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 1290 350 0 0 {name=Mn3
l=0.13u
w=180u
ng=180
m=1
model=sg13_lv_nmos
spiceprefix=M
}
C {lab_wire.sym} 1310 430 2 0 {name=p45 sig_type=std_logic lab=VSS}
C {sg13g2_pr/simple_inductor.sym} 220 -70 3 1 {name=Li
model=simple_inductor
w=4.6e-6
s=4.1e-6
d=167.7e-6
nr_r=1
spiceprefix=L}
C {lab_wire.sym} 220 -20 2 0 {name=p46 sig_type=std_logic lab=VSS}
C {sg13g2_pr/simple_inductor.sym} 460 -280 2 1 {name=Ll
model=simple_inductor
w=4.3e-6
s=4e-6
d=176.3e-6
nr_r=1
spiceprefix=L}
C {lab_wire.sym} 510 -280 1 0 {name=p47 sig_type=std_logic lab=VSS}
C {sg13g2_pr/simple_inductor.sym} 460 180 0 0 {name=Ls1
model=simple_inductor
w=5e-6
s=2.1e-6
d=113.2e-6
nr_r=1
spiceprefix=L}
C {lab_wire.sym} 510 180 1 0 {name=p48 sig_type=std_logic lab=VSS}
C {sg13g2_pr/diodevss_2kv.sym} 0 -490 0 0 {name=D2
model=diodevss_2kv
spiceprefix=D
m=1
}
C {sg13g2_pr/diodevdd_2kv.sym} 20 -610 0 0 {name=D3
model=diodevdd_2kv
m=1
spiceprefix=D
}
C {sg13g2_pr/diodevdd_2kv.sym} 970 -310 0 0 {name=D4
model=diodevdd_2kv
m=1
spiceprefix=D
}
C {sg13g2_pr/diodevss_2kv.sym} 980 -100 0 0 {name=D5
model=diodevss_2kv
spiceprefix=D
m=1
}
C {sg13g2_pr/diodevdd_2kv.sym} 10 -160 0 0 {name=D6
model=diodevdd_2kv
m=1
spiceprefix=D
}
C {sg13g2_pr/diodevss_2kv.sym} 40 60 0 0 {name=D7
model=diodevss_2kv
spiceprefix=D
m=1
}
C {iopin.sym} 170 -340 0 0 {name=p44 lab=diode_pol
}
C {iopin.sym} 310 -170 2 0 {name=p6 lab=common_mode
}
C {iopin.sym} 170 -70 1 0 {name=p8 lab=in_dc_block
}
C {iopin.sym} 460 100 0 0 {name=p7 lab=cm_source

}
C {iopin.sym} 460 -130 0 0 {name=p9 lab=sd_mos


}
C {iopin.sym} 620 -220 3 0 {name=p13 lab=tank_out


}
