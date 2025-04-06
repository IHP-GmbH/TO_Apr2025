v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -250 0 -220 {lab=#net1}
N 90 -70 90 0 {lab=VBIAS_OUT}
N 60 -190 90 -190 {lab=#net1}
N 90 -190 90 -130 {lab=#net1}
N 0 -250 60 -250 {lab=#net1}
N 0 -270 0 -250 {lab=#net1}
N 60 -250 60 -190 {lab=#net1}
N 40 -190 60 -190 {lab=#net1}
N 0 -370 0 -330 {lab=VDD}
N -30 -190 0 -190 {lab=VSS}
N -30 -190 -30 -140 {lab=VSS}
N -30 -140 0 -140 {lab=VSS}
N 0 -160 0 -140 {lab=VSS}
N 30 150 1090 150 {lab=VSS}
N 90 0 120 0 {lab=VBIAS_OUT}
N 120 0 120 180 {lab=VBIAS_OUT}
N -170 180 120 180 {lab=VBIAS_OUT}
N -170 180 -170 370 {lab=VBIAS_OUT}
N -170 370 20 370 {lab=VBIAS_OUT}
N -490 -370 0 -370 {lab=VDD}
N 30 -140 30 150 {lab=VSS}
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
C {iopin.sym} 1090 150 0 0 {name=p3 lab=VSS}
C {iopin.sym} 20 370 0 0 {name=p8 lab=VBIAS_OUT}
