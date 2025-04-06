v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -370 -240 -350 {lab=VDD}
N -240 -380 -240 -370 {lab=VDD}
N -240 -450 -240 -440 {lab=#net1}
N -290 -320 -270 -320 {lab=#net1}
N -290 -450 -290 -320 {lab=#net1}
N -290 -450 -240 -450 {lab=#net1}
N -280 -410 -270 -410 {lab=VSS}
N -280 -410 -280 -270 {lab=VSS}
N -280 -270 -240 -270 {lab=VSS}
N -240 -290 -240 -270 {lab=VSS}
N -490 -370 -240 -370 {lab=VDD}
C {sg13g2_pr/bondpad.sym} -400 -410 0 0 {name=X1
model=bondpad
spiceprefix=X
size=100u
shape=0
padtype=0
}
C {sg13g2_pr/diodevdd_2kv.sym} -240 -410 0 0 {name=D1
model=diodevdd_2kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevss_2kv.sym} -240 -320 0 0 {name=D4
model=diodevss_2kv
spiceprefix=X
m=1
}
C {iopin.sym} -290 -450 0 1 {name=p1 lab=VDD}
C {iopin.sym} -240 -270 0 0 {name=p3 lab=VSS}
C {iopin.sym} -490 -370 0 1 {name=p2 lab=SIG}
