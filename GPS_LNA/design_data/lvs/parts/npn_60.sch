v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -70 -50 -50 {lab=C}
N -50 -70 80 -70 {lab=C}
N 80 -70 80 -50 {lab=C}
N -50 -20 -30 -20 {lab=S}
N -30 -60 -30 -20 {lab=S}
N -30 -60 100 -60 {lab=S}
N 100 -60 100 -20 {lab=S}
N 80 -20 100 -20 {lab=S}
N -50 10 -50 30 {lab=E}
N 80 10 80 30 {lab=E}
N -50 30 80 30 {lab=E}
N 40 -80 40 -20 {lab=B}
N -90 -80 40 -80 {lab=B}
N -90 -80 -90 -20 {lab=B}
N -260 -80 -90 -80 {lab=B}
N -260 -80 -260 -20 {lab=B}
N -450 -80 -260 -80 {lab=B}
N -450 -80 -450 -20 {lab=B}
N -220 -70 -50 -70 {lab=C}
N -220 -70 -220 -50 {lab=C}
N -410 -70 -220 -70 {lab=C}
N -410 -70 -410 -50 {lab=C}
N -200 -60 -30 -60 {lab=S}
N -200 -60 -200 -20 {lab=S}
N -220 -20 -200 -20 {lab=S}
N -370 -60 -200 -60 {lab=S}
N -370 -60 -370 -20 {lab=S}
N -410 -20 -370 -20 {lab=S}
N -220 30 -50 30 {lab=E}
N -220 10 -220 30 {lab=E}
N -410 30 -220 30 {lab=E}
N -410 10 -410 30 {lab=E}
N -590 -80 -450 -80 {lab=B}
N -590 -80 -590 -20 {lab=B}
N -740 -80 -590 -80 {lab=B}
N -740 -80 -740 -20 {lab=B}
N -550 -70 -410 -70 {lab=C}
N -550 -70 -550 -50 {lab=C}
N -700 -70 -550 -70 {lab=C}
N -700 -70 -700 -50 {lab=C}
N -510 -60 -370 -60 {lab=S}
N -510 -60 -510 -20 {lab=S}
N -550 -20 -510 -20 {lab=S}
N -660 -60 -510 -60 {lab=S}
N -660 -60 -660 -20 {lab=S}
N -700 -20 -660 -20 {lab=S}
N -550 30 -410 30 {lab=E}
N -550 10 -550 30 {lab=E}
N -700 30 -550 30 {lab=E}
N -700 10 -700 30 {lab=E}
C {sg13g2_pr/npn13G2.sym} -70 -20 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=10
}
C {sg13g2_pr/npn13G2.sym} 60 -20 0 0 {name=Q2
model=npn13G2
spiceprefix=X
Nx=10
}
C {iopin.sym} 100 -20 0 0 {name=p1 lab=S}
C {iopin.sym} 80 30 0 0 {name=p2 lab=E}
C {iopin.sym} 80 -70 0 0 {name=p3 lab=C}
C {iopin.sym} 40 -80 0 0 {name=p4 lab=B}
C {sg13g2_pr/npn13G2.sym} -240 -20 0 0 {name=Q3
model=npn13G2
spiceprefix=X
Nx=10
}
C {sg13g2_pr/npn13G2.sym} -430 -20 0 0 {name=Q4
model=npn13G2
spiceprefix=X
Nx=10
}
C {sg13g2_pr/npn13G2.sym} -570 -20 0 0 {name=Q5
model=npn13G2
spiceprefix=X
Nx=10
}
C {sg13g2_pr/npn13G2.sym} -720 -20 0 0 {name=Q6
model=npn13G2
spiceprefix=X
Nx=10
}
