v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -10 -90 -10 {lab=#net1}
N -210 -10 -210 20 {lab=#net1}
N -210 80 -210 140 {lab=GND}
N -210 140 0 140 {lab=GND}
N 0 80 0 140 {lab=GND}
N -0 -140 -0 -90 {lab=#net2}
N 0 -220 0 -200 {lab=GND}
N 80 -30 140 -30 {lab=#net3}
N 80 20 145 20 {lab=#net4}
N 140 -115 250 -115 {lab=#net3}
N 140 -115 140 -30 {lab=#net3}
N 145 20 145 105 {lab=#net4}
N 145 105 275 105 {lab=#net4}
C {untitled-1.sym} 0 -10 0 0 {name=x1}
C {vsource.sym} -210 50 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} -100 140 0 0 {name=l1 lab=GND}
C {vsource.sym} 0 -170 2 0 {name=V2 value=1.21 savecurrent=false}
C {gnd.sym} 0 -220 2 0 {name=l2 lab=GND}
C {noconn.sym} 250 -115 2 0 {name=l3}
C {noconn.sym} 275 105 2 0 {name=l4}
C {devices/code_shown.sym} 340 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.include diodes.lib
.include sg13g2_bondpad.lib
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.lib cornerMOSlv.lib mos_ff
.lib $::SG13G2_MODELS/cornerCAP.lib cap_wcs
"}
C {devices/code_shown.sym} 340 20 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27
.control
save all
tran 50p 10n
write tran_VCO.raw
.endc
"}
