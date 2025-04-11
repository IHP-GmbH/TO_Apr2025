v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 0 -30 0 {lab=VBIAS_IN}
N 10 -70 10 -30 {lab=#net1}
N 10 -100 30 -100 {lab=VSS}
N 30 0 30 50 {lab=VSS}
N 10 30 10 80 {lab=IBIAS_IN}
N 10 0 30 0 {lab=VSS}
N -110 -100 -30 -100 {lab=VDD}
N 30 50 60 50 {lab=VSS}
N 10 -180 10 -130 {lab=OUT}
N 30 -100 30 0 {lab=VSS}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} -10 0 2 1 {name=M2
l=0.36u
w=200.0u
ng=200
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
C {iopin.sym} 10 80 0 0 {name=p1 lab=IBIAS_IN}
C {iopin.sym} 60 50 0 0 {name=p2 lab=VSS}
C {iopin.sym} 10 -180 0 0 {name=p3 lab=OUT}
C {iopin.sym} -110 0 0 1 {name=p4 lab=VBIAS_IN}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} -10 -100 2 1 {name=M1
l=0.36u
w=200.0u
ng=200
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
C {iopin.sym} -110 -100 0 1 {name=p5 lab=VDD}
