v {xschem version=3.4.7RC file_version=1.2
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
N 400 -690 480 -690 {
lab=VDD}
N 480 -720 480 -690 {
lab=VDD}
N 400 -270 480 -270 {
lab=VSS}
N 480 -270 480 -240 {
lab=VSS}
N 1120 -660 1120 -550 {lab=VDD}
N 1120 -410 1120 -300 {lab=VSS}
N 1020 -420 1050 -420 {lab=#net1}
N 1020 -540 1050 -540 {lab=ib}
N 960 -340 960 -300 {lab=VSS}
N 800 -660 800 -620 {lab=VDD}
N 1000 -370 1020 -370 {lab=#net1}
N 1020 -420 1020 -370 {lab=#net1}
N 1020 -590 1020 -540 {lab=ib}
N 960 -660 960 -620 {lab=VDD}
N 800 -540 800 -400 {lab=ib}
N 860 -590 1020 -590 {lab=ib}
N 960 -420 960 -400 {lab=#net1}
N 960 -420 1020 -420 {lab=#net1}
N 960 -560 960 -420 {lab=#net1}
N 860 -590 860 -540 {lab=ib}
N 840 -590 860 -590 {lab=ib}
N 800 -540 860 -540 {lab=ib}
N 800 -560 800 -540 {lab=ib}
N 1190 -490 1370 -490 {lab=out_p}
N 1190 -470 1370 -470 {lab=out_n}
N 1370 -470 1440 -440 {lab=out_n}
N 1370 -490 1440 -520 {lab=out_p}
N 480 -490 1050 -490 {lab=in_n}
N 400 -520 480 -490 {lab=in_n}
N 480 -470 1050 -470 {lab=in_p}
N 400 -440 480 -470 {lab=in_p}
N 400 -320 800 -320 {lab=ib}
N 800 -340 800 -320 {lab=ib}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {ipin.sym} 400 -440 0 0 {name=p3 lab=in_p
}
C {ipin.sym} 400 -520 0 0 {name=p1 lab=in_n
}
C {opin.sym} 1440 -520 0 0 {name=p5 lab=out_p

}
C {opin.sym} 1440 -440 0 0 {name=p2 lab=out_n

}
C {iopin.sym} 400 -320 0 1 {name=p13 lab=ib}
C {iopin.sym} 400 -690 0 1 {name=p9 lab=VDD}
C {pwroli.sym} 480 -720 2 0 {name=l2 lab=VDD
}
C {iopin.sym} 400 -270 0 1 {name=p8 lab=VSS

}
C {pwroli.sym} 480 -240 0 0 {name=l3 lab=VSS}
C {launcher.sym} 220 -120 0 0 {name=h2
descr="load OP from TOP"
tclcommand="
	xschem annotate_op $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]].raw 0;
	xschem load_raw $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]]_dc.raw 0;

"
}
C {launcher.sym} 220 -160 0 0 {name=h1
descr="write LVS netlist"
tclcommand="
	xschem set netlist_type spice
        xschem set format lvs_format
	set last_local_netlist_dir $local_netlist_dir
	set local_netlist_dir 0
	xschem netlist [xschem get current_name].cdl
	set local_netlist_dir $last_local_netlist_dir
        xschem set format \{\}
"
}
C {pwroli.sym} 1120 -720 2 1 {name=l26 lab=VDD
}
C {ammeter.sym} 1120 -690 0 1 {name=Vddd10
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 1120 -240 0 0 {name=l27 lab=VSS}
C {ammeter.sym} 1120 -270 0 1 {name=Vsss1
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 960 -240 0 1 {name=l28 lab=VSS}
C {ammeter.sym} 960 -270 0 1 {name=Vsss12 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 800 -720 2 0 {name=l29 lab=VDD
}
C {ammeter.sym} 800 -690 0 0 {name=Vddd11
savecurrent=true
lvs_ignore=short}
C {ngspice_probe.sym} 970 -420 0 0 {name=r4}
C {nmolis-sub.sym} 980 -370 0 1 {name=M6
w=0.15u
l=0.13u
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 820 -590 0 1 {name=M7
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} 810 -540 0 0 {name=r5}
C {ammeter.sym} 800 -370 0 1 {name=Vsss13 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 960 -720 2 1 {name=l32 lab=VDD
}
C {ammeter.sym} 960 -690 0 1 {name=Vddd12
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 940 -590 0 0 {name=M8
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {launcher.sym} 130 -210 0 0 {name=h3
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
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 1120 -480 0 0 {name=x7
schematic="tcleval([xschem get current_dirname]/lvl_lvmos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
