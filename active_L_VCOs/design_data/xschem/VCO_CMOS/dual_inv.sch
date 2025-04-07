v {xschem version=3.4.6 file_version=1.2
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2023 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
G {}
K {}
V {}
S {}
E {}
T {tcleval(loaded .raw files: 
[xschem raw info])} 720 -240 0 0 0.3 0.3 {floater=true layer=16}
N 560 -400 640 -400 {
lab=VSS}
N 640 -400 640 -320 {
lab=VSS}
N 560 -720 640 -720 {
lab=VDD}
N 640 -800 640 -720 {
lab=VDD}
N 800 -690 800 -670 {lab=#net1}
N 820 -690 820 -670 {lab=#net1}
N 800 -690 820 -690 {lab=#net1}
N 800 -450 800 -380 {lab=#net2}
N 720 -640 760 -640 {lab=in_n}
N 720 -480 760 -480 {lab=in_n}
N 720 -560 720 -480 {lab=in_n}
N 800 -560 800 -510 {lab=out_p}
N 800 -740 800 -690 {lab=#net1}
N 1120 -690 1120 -670 {lab=#net3}
N 1100 -690 1100 -670 {lab=#net3}
N 1100 -690 1120 -690 {lab=#net3}
N 1120 -450 1120 -380 {lab=#net4}
N 1160 -640 1200 -640 {lab=in_p}
N 1160 -480 1200 -480 {lab=in_p}
N 1200 -560 1200 -480 {lab=in_p}
N 1120 -560 1120 -510 {lab=out_n}
N 1120 -740 1120 -690 {lab=#net3}
N 1200 -560 1280 -560 {lab=in_p}
N 1200 -640 1200 -560 {lab=in_p}
N 800 -560 880 -560 {lab=out_p}
N 800 -610 800 -560 {lab=out_p}
N 640 -560 720 -560 {lab=in_n}
N 720 -640 720 -560 {lab=in_n}
N 1040 -560 1120 -560 {lab=out_n}
N 1120 -610 1120 -560 {lab=out_n}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {launcher.sym} 220 -720 0 0 {name=h1
descr="write LVS netlist"
tclcommand="
	xschem set netlist_type spice
	set lvs_ignore 1
	set lvs_netlist 1
	set spiceprefix 0
	set last_local_netlist_dir $local_netlist_dir
	set local_netlist_dir 0
	xschem netlist [xschem get current_name].cdl
	set local_netlist_dir $last_local_netlist_dir

"
}
C {simulator_commands_shown.sym} 160 -190 0 0 {name=COMMANDS2
simulator=none
only_toplevel=false 

value="tcleval(
top: [xschem get schname 0]
io:  [xschem get schname]

)"}
C {launcher.sym} 220 -680 0 0 {name=h2
descr="load OP from TOP"
tclcommand="
	xschem annotate_op $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]].raw 0;
	xschem load_raw $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]]_dc.raw 0;

"
}
C {iopin.sym} 880 -560 0 0 {name=p15 lab=out_p}
C {iopin.sym} 1040 -560 0 1 {name=p16 lab=out_n}
C {iopin.sym} 1280 -560 2 1 {name=p17 lab=in_p}
C {iopin.sym} 640 -560 2 0 {name=p18 lab=in_n}
C {iopin.sym} 560 -400 0 1 {name=p19 lab=VSS

}
C {pwroli.sym} 640 -320 0 0 {name=l24 lab=VSS}
C {iopin.sym} 560 -720 0 1 {name=p20 lab=VDD}
C {pwroli.sym} 640 -800 2 0 {name=l25 lab=VDD
}
C {pwroli.sym} 800 -320 0 0 {name=l26 lab=VSS}
C {ammeter.sym} 800 -350 0 0 {name=Vsss11 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 780 -480 0 0 {name=M31
w=\{nw\}
l=\{nl\}
ng=1
m=1

model=sg13_lv_nmos
spiceprefix=X
w0=3u
l0=0.13u
rfmode="tcleval($mos_rf_mode)"}
C {pmolis4.sym} 780 -640 0 0 {name=M32
w=\{pw\}
l=\{pl\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
w0=10u
l0=.13u
rfmode="tcleval($mos_rf_mode)"}
C {ngspice_probe.sym} 720 -530 0 1 {name=r32}
C {pwroli.sym} 800 -800 2 0 {name=l27 lab=VDD
}
C {ammeter.sym} 800 -770 0 0 {name=Vddd12
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 1120 -320 0 1 {name=l28 lab=VSS}
C {ammeter.sym} 1120 -350 0 1 {name=Vsss12 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 1140 -480 0 1 {name=M49
w=\{nw\}
l=\{nl\}
ng=1
m=1

model=sg13_lv_nmos
spiceprefix=X
w0=3u
l0=0.13u
rfmode="tcleval($mos_rf_mode)"}
C {pmolis4.sym} 1140 -640 0 1 {name=M50
w=\{pw\}
l=\{pl\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
w0=10u
l0=.13u
rfmode="tcleval($mos_rf_mode)"}
C {ngspice_probe.sym} 1200 -530 0 0 {name=r33}
C {pwroli.sym} 1120 -800 2 1 {name=l29 lab=VDD
}
C {ammeter.sym} 1120 -770 0 1 {name=Vddd13
savecurrent=true
lvs_ignore=short}
