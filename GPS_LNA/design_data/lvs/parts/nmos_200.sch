v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 0 -30 0 {lab=G}
N 10 -80 10 -30 {lab=D}
N 10 0 90 0 {lab=B}
N 10 30 10 80 {lab=S}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} -10 0 2 1 {name=M2
l=0.36u
w=200.0u
ng=200
m=1
rfmode=1
model=rfnmos
spiceprefix=X
}
C {iopin.sym} 10 80 0 0 {name=p1 lab=S}
C {iopin.sym} 90 0 0 0 {name=p2 lab=B}
C {iopin.sym} 10 -80 0 0 {name=p3 lab=D}
C {iopin.sym} -110 0 0 1 {name=p4 lab=G}
