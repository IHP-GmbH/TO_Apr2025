v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -250 0 -220 {lab=#net1}
N 270 -240 270 -220 {lab=OUT}
N -40 0 -20 0 {lab=#net2}
N 90 -70 90 0 {lab=VBIAS_OUT}
N 70 0 90 0 {lab=VBIAS_OUT}
N 70 0 70 90 {lab=VBIAS_OUT}
N 40 0 70 0 {lab=VBIAS_OUT}
N 40 90 70 90 {lab=VBIAS_OUT}
N -40 90 -20 90 {lab=#net2}
N -40 0 -40 90 {lab=#net2}
N -100 0 -40 0 {lab=#net2}
N 60 -190 90 -190 {lab=#net1}
N 90 -190 90 -130 {lab=#net1}
N 0 -250 60 -250 {lab=#net1}
N 0 -270 0 -250 {lab=#net1}
N 60 -250 60 -190 {lab=#net1}
N 40 -190 60 -190 {lab=#net1}
N 270 0 310 0 {lab=VSS}
N 270 -190 310 -190 {lab=VSS}
N 0 -370 0 -330 {lab=VDD}
N -30 -190 0 -190 {lab=VSS}
N -30 -190 -30 -140 {lab=VSS}
N -30 -140 0 -140 {lab=VSS}
N 0 -160 0 -140 {lab=VSS}
N 270 -260 270 -240 {lab=OUT}
N 200 -190 230 -190 {lab=VDD}
N 200 -370 200 -190 {lab=VDD}
N 10 30 30 30 {lab=VSS}
N 30 30 30 150 {lab=VSS}
N 30 150 310 150 {lab=VSS}
N 10 120 10 150 {lab=VSS}
N 10 150 30 150 {lab=VSS}
N -440 0 -160 0 {lab=IN}
N 0 -370 200 -370 {lab=VDD}
N 270 30 270 350 {lab=IBIAS_IN}
N 270 -160 270 -30 {lab=#net3}
N 270 -240 1080 -240 {lab=OUT}
N 310 -190 310 0 {lab=VSS}
N 310 0 310 150 {lab=VSS}
N 310 150 1090 150 {lab=VSS}
N 200 -370 270 -370 {lab=VDD}
N 270 -370 270 -360 {lab=VDD}
N 270 350 540 350 {lab=IBIAS_IN}
N 90 0 120 0 {lab=VBIAS_OUT}
N 180 0 230 0 {lab=VBAIS_IN}
N 120 0 120 180 {lab=VBIAS_OUT}
N -170 180 120 180 {lab=VBIAS_OUT}
N -170 180 -170 370 {lab=VBIAS_OUT}
N -170 370 20 370 {lab=VBIAS_OUT}
N 180 0 180 210 {lab=VBAIS_IN}
N 60 210 180 210 {lab=VBAIS_IN}
N 60 210 60 370 {lab=VBAIS_IN}
N 60 370 220 370 {lab=VBAIS_IN}
N -490 -370 0 -370 {lab=VDD}
N 30 -140 30 30 {lab=VSS}
N -0 -140 30 -140 {lab=VSS}
C {sg13g2_pr/rppd.sym} 90 -100 0 0 {name=R2
w=0.5e-6
l=3.6e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 0 -300 0 0 {name=R1
w=0.5e-6
l=1.8e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rsil.sym} -130 0 3 0 {name=R3
w=0.5e-6
l=2.4e-6
model=rsil
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/cap_rfcmim.sym} 10 0 3 0 {name=C1 
model=rfcmim
w=60.0e-6
l=55.0e-6
wfeed=5.0e-6
spiceprefix=X}
C {sg13g2_pr/cap_rfcmim.sym} 10 90 3 0 {name=C2 
model=rfcmim
w=60.0e-6
l=55.0e-6
wfeed=5.0e-6
spiceprefix=X}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 20 -190 2 0 {name=M3
l=0.36u
w=10.0u
ng=5
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
C {iopin.sym} -490 -370 0 1 {name=p1 lab=VDD}
C {ipin.sym} -440 0 0 0 {name=p2 lab=IN}
C {opin.sym} 1080 -240 0 0 {name=p5 lab=OUT}
C {iopin.sym} 1090 150 0 0 {name=p3 lab=VSS}
C {iopin.sym} 220 370 0 0 {name=p7 lab=VBIAS_IN}
C {iopin.sym} 20 370 0 0 {name=p8 lab=VBIAS_OUT}
C {iopin.sym} 540 350 0 0 {name=p10 lab=IBIAS_IN}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 250 0 2 1 {name=M2
l=0.36u
w=200.0u
ng=200
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 250 -190 2 1 {name=M1
l=0.36u
w=200.0u
ng=200
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
