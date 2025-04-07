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
N 1440 -850 1440 -830 {lab=#net1}
N 1680 -850 1680 -830 {lab=#net2}
N 1120 -290 1120 -270 {lab=#net3}
N 400 -880 480 -880 {
lab=VDD}
N 480 -910 480 -880 {
lab=VDD}
N 400 -240 480 -240 {
lab=VSS}
N 480 -240 480 -210 {
lab=VSS}
N 1360 -850 1360 -750 {lab=#net4}
N 1440 -720 1440 -640 {lab=out_p}
N 1360 -640 1440 -640 {lab=out_p}
N 1360 -690 1360 -640 {lab=out_p}
N 1760 -850 1760 -750 {lab=#net5}
N 1760 -690 1760 -640 {lab=out_n}
N 1680 -720 2000 -720 {lab=out_n}
N 1680 -770 1680 -720 {lab=out_n}
N 1400 -720 1440 -720 {lab=out_p}
N 1440 -770 1440 -720 {lab=out_p}
N 1480 -800 1500 -800 {lab=out_n}
N 1500 -800 1620 -720 {lab=out_n}
N 1620 -720 1680 -720 {lab=out_n}
N 1620 -800 2000 -800 {lab=out_p}
N 1500 -720 1620 -800 {lab=out_p}
N 1440 -720 1500 -720 {lab=out_p}
N 880 -850 880 -830 {lab=#net6}
N 400 -800 840 -800 {lab=vbdd}
N 640 -690 640 -670 {lab=#net7}
N 1120 -690 1120 -670 {lab=#net7}
N 960 -690 1120 -690 {lab=#net7}
N 880 -770 880 -690 {lab=#net7}
N 800 -690 880 -690 {lab=#net7}
N 400 -640 760 -640 {lab=in_p}
N 400 -720 1180 -720 {lab=in_n}
N 1180 -720 1180 -640 {lab=in_n}
N 960 -290 960 -270 {lab=#net8}
N 740 -370 740 -320 {lab=#net9}
N 740 -370 800 -370 {lab=#net9}
N 1020 -370 1020 -320 {lab=#net10}
N 680 -320 740 -320 {lab=#net9}
N 960 -370 1020 -370 {lab=#net10}
N 640 -560 640 -350 {lab=#net11}
N 800 -690 800 -670 {lab=#net7}
N 640 -690 800 -690 {lab=#net7}
N 960 -690 960 -670 {lab=#net7}
N 880 -690 960 -690 {lab=#net7}
N 1000 -640 1180 -640 {lab=in_n}
N 800 -290 800 -270 {lab=#net12}
N 640 -290 640 -270 {lab=#net13}
N 740 -320 760 -320 {lab=#net9}
N 800 -610 800 -540 {lab=#net10}
N 800 -540 960 -420 {lab=#net10}
N 960 -370 960 -350 {lab=#net10}
N 800 -370 800 -350 {lab=#net9}
N 800 -420 960 -540 {lab=#net9}
N 960 -610 960 -540 {lab=#net9}
N 800 -420 800 -370 {lab=#net9}
N 1020 -320 1080 -320 {lab=#net10}
N 1000 -320 1020 -320 {lab=#net10}
N 960 -420 960 -370 {lab=#net10}
N 1120 -480 1120 -350 {lab=#net14}
N 640 -560 1400 -560 {lab=#net11}
N 640 -610 640 -560 {lab=#net11}
N 1680 -640 1680 -590 {lab=out_n}
N 1560 -370 1560 -270 {lab=#net15}
N 1560 -510 1680 -510 {lab=#net16}
N 1680 -530 1680 -510 {lab=#net16}
N 1560 -510 1560 -430 {lab=#net16}
N 1440 -510 1560 -510 {lab=#net16}
N 390 -400 1520 -400 {lab=vbss}
N 1440 -530 1440 -510 {lab=#net16}
N 1680 -640 1760 -640 {lab=out_n}
N 1680 -720 1680 -640 {lab=out_n}
N 1720 -560 1760 -560 {lab=#net14}
N 1760 -560 1760 -480 {lab=#net14}
N 1120 -480 1760 -480 {lab=#net14}
N 1120 -610 1120 -480 {lab=#net14}
N 1440 -640 1440 -590 {lab=out_p}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {pwroli.sym} 1120 -210 0 0 {name=l4 lab=VSS}
C {ammeter.sym} 1120 -240 0 0 {name=Vsss1 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 1680 -910 2 1 {name=l6 lab=VDD
}
C {ammeter.sym} 1680 -880 0 1 {name=Vddd2
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 1100 -320 0 0 {name=M2
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 1460 -800 0 1 {name=M16
l=pl
w=\{1*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pmolis-sub.sym} 1660 -800 0 0 {name=M17
l=pl
w=\{1*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 400 -640 0 0 {name=p3 lab=in_p
}
C {ipin.sym} 400 -720 0 0 {name=p1 lab=in_n
}
C {opin.sym} 2000 -800 0 0 {name=p5 lab=out_p

}
C {opin.sym} 2000 -720 0 0 {name=p2 lab=out_n

}
C {iopin.sym} 400 -800 0 1 {name=p13 lab=vbdd}
C {iopin.sym} 390 -400 0 1 {name=p4 lab=vbss}
C {iopin.sym} 400 -880 0 1 {name=p9 lab=VDD}
C {pwroli.sym} 480 -910 2 0 {name=l2 lab=VDD
}
C {iopin.sym} 400 -240 0 1 {name=p8 lab=VSS

}
C {pwroli.sym} 480 -210 0 0 {name=l3 lab=VSS}
C {launcher.sym} 220 -120 0 0 {name=h2
descr="load OP from TOP"
tclcommand="
	xschem annotate_op $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]].raw 0;
	xschem load_raw $\{netlist_dir\}/[file rootname [file tail [xschem get schname 0]]]_dc.raw 0;

"
}
C {pwroli.sym} 1360 -910 2 0 {name=l7 lab=VDD
}
C {ammeter.sym} 1360 -880 0 1 {name=Vddd5
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 1380 -720 0 1 {name=M1
l=pl
w="\{1*pw\}"
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pwroli.sym} 1760 -910 2 1 {name=l11 lab=VDD
}
C {ammeter.sym} 1760 -880 0 1 {name=Vddd6
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 1740 -720 0 0 {name=M20
l=pl
w="\{1*pw\}"
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
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
C {pwroli.sym} 1440 -910 2 0 {name=l5 lab=VDD
}
C {ammeter.sym} 1440 -880 0 1 {name=Vddd1
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 880 -910 2 1 {name=l8 lab=VDD
}
C {ammeter.sym} 880 -880 0 1 {name=Vddd3
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 860 -800 0 0 {name=M4
l=pl
w=\{10*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pmolis-sub.sym} 620 -640 0 0 {name=M5
l=pl
w=\{10*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pmolis-sub.sym} 1140 -640 0 1 {name=M8
l=pl
w=\{10*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pwroli.sym} 960 -210 0 1 {name=l9 lab=VSS}
C {ammeter.sym} 960 -240 0 1 {name=Vsss2 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 980 -320 0 1 {name=M9
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pwroli.sym} 1560 -210 0 0 {name=l10 lab=VSS}
C {ammeter.sym} 1560 -240 0 0 {name=Vsss3 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 1700 -560 0 1 {name=M7
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {nmolis-sub.sym} 1420 -560 0 0 {name=M10
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 980 -640 0 1 {name=M11
l=pl
w=\{10*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pmolis-sub.sym} 780 -640 0 0 {name=M12
l=pl
w=\{10*pw\}
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pwroli.sym} 800 -210 0 0 {name=l13 lab=VSS}
C {ammeter.sym} 800 -240 0 0 {name=Vsss5 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 780 -320 0 0 {name=M13
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pwroli.sym} 640 -210 0 1 {name=l14 lab=VSS}
C {ammeter.sym} 640 -240 0 1 {name=Vsss6 
savecurrent=true
lvs_ignore=short}
C {nmolis-sub.sym} 660 -320 0 1 {name=M14
l=nl
w=\{nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {nmolis-sub.sym} 1540 -400 0 0 {name=M3
l=nl
w=\{10*nw\}
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
