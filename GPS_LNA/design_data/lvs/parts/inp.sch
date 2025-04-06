v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 0 -20 0 {lab=#net1}
N 70 0 120 0 {lab=VBIAS_OUT}
N 70 0 70 90 {lab=VBIAS_OUT}
N 40 0 70 0 {lab=VBIAS_OUT}
N 40 90 70 90 {lab=VBIAS_OUT}
N -40 90 -20 90 {lab=#net1}
N -40 0 -40 90 {lab=#net1}
N -100 0 -40 0 {lab=#net1}
N 10 30 30 30 {lab=VSS}
N 30 30 30 150 {lab=VSS}
N 30 150 1090 150 {lab=VSS}
N 10 120 10 150 {lab=VSS}
N 10 150 30 150 {lab=VSS}
N -440 0 -160 0 {lab=IN}
N 120 0 120 180 {lab=VBIAS_OUT}
N -170 180 120 180 {lab=VBIAS_OUT}
N -170 180 -170 370 {lab=VBIAS_OUT}
N -170 370 20 370 {lab=VBIAS_OUT}
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
C {ipin.sym} -440 0 0 0 {name=p2 lab=IN}
C {iopin.sym} 1090 150 0 0 {name=p3 lab=VSS}
C {iopin.sym} 20 370 0 0 {name=p8 lab=VBIAS_OUT}
C {sg13g2_pr/cap_rfcmim.sym} 10 90 3 0 {name=C2 
model=rfcmim
w=60.0e-6
l=55.0e-6
wfeed=5.0e-6
spiceprefix=X}
