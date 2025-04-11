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
B 2 80 -1440 710 -1110 {flags=graph

sim_type=tran
y1=-0.51
y2=3.8
divy=4
subdivy=1
x1=-1.1010283e-09
x2=1.1099683e-07
divx=6
subdivx=1


dataset=-1
rawfile= [rawfilestart]_tran_mostt.spice.raw
autoload=1
linewidth_mult=2
color="4 14 13 7 10 4 17 7 8"
node="clk
Q1
nQ1
Q2
nQ2
Q0
nQ0
net11
net12
LVL"}
B 2 80 -1100 710 -770 {flags=graph

sim_type=tran
y1=-0.5
y2=3.8
divy=4
subdivy=1
x1=-1.1010283e-09
x2=1.1099683e-07
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=[rawfilestart]_tran_mostt.spice.raw

color="4 5 8 7"
node="q0
nq0
Q1
Q2"}
B 2 80 -760 710 -430 {flags=graph,unlocked

sim_type=tran
y1=-1.4
y2=1.4
divy=4
subdivy=1
x1=1.4058289e-09
x2=9.8981364e-08
divx=6
subdivx=1
node="q0 nQ0 -
q1 nQ1 -
q2 nQ2 -
q3 nQ3 -"
color="8 5 4 17"
dataset=-1

autoload=1
rawfile=[rawfilestart]_tran_mostt.spice.raw}
B 2 80 -420 710 -90 {flags=graph

sim_type=tran
y1=-0.0002
y2=-2.2e-05
divy=4
subdivy=1
x1=-1.1010283e-09
x2=1.1099683e-07
divx=6
subdivx=1


dataset=-1

autoload=1
rawfile=[rawfilestart]_tran_mostt.spice.raw
color=4
node=i(vdd)}
B 2 4180 -1170 5830 -420 {flags=graph,unlocked

sim_type=tran
y1=-0.1
y2=7.6
divy=4
subdivy=1
x1=-1.1010283e-09
x2=1.1099683e-07
divx=6
subdivx=1


dataset=-1
rawfile= [rawfilestart]_tran_mostt.spice.raw
autoload=1
linewidth_mult=2
color="4 5 8 7 10 6 9 19"
node="q1 1 +
q2 2 +
q3 3 +
q4 4 +
q5 5 +
q6 6 +
q0
q0 nq0 - 1 +"}
B 2 1860 -2060 3510 -1310 {flags=graph,unlocked

sim_type=tran
y1=-0.1
y2=7.6
divy=4
subdivy=1
x1=0
x2=1e-07
divx=6
subdivx=1


dataset=-1
rawfile= [rawfilestart]_tran_mostt.spice.raw
autoload=1
linewidth_mult=2
color="4 5 8 7 10 6 4"
node="LVL 0 -
q0
q1 1 +
q2 2 +
q3 3 +
q4 4 +
q5 5 +
q6 6 +"}
T {tcleval(loaded .raw files: 
[xschem raw info])} 880 -240 0 0 0.3 0.3 {floater=true layer=16}
N 800 -290 800 -270 {
lab=VSS}
N 800 -530 800 -510 {
lab=VDD}
N 960 -520 960 -510 {
lab=clk}
N 960 -520 970 -520 {
lab=clk}
N 1280 -930 1280 -870 {lab=nQ0}
N 1320 -980 1400 -940 {lab=clk}
N 1280 -1030 1280 -990 {lab=#net1}
N 1440 -1030 1440 -990 {lab=#net1}
N 1530 -1030 1530 -990 {lab=#net1}
N 1440 -1030 1530 -1030 {lab=#net1}
N 1280 -1030 1440 -1030 {lab=#net1}
N 1920 -740 1920 -700 {lab=#net2}
N 1760 -1060 1760 -1020 {lab=#net3}
N 1960 -770 1980 -770 {lab=#net4}
N 2080 -1060 2080 -950 {lab=#net5}
N 2080 -810 2080 -700 {lab=#net6}
N 1440 -930 1440 -890 {lab=Q0}
N 1440 -890 2010 -890 {lab=Q0}
N 1280 -870 2010 -870 {lab=nQ0}
N 1980 -820 1980 -770 {lab=#net4}
N 1980 -820 2010 -820 {lab=#net4}
N 1980 -940 2010 -940 {lab=#net7}
N 1980 -990 1980 -940 {lab=#net7}
N 2960 -420 2960 -310 {lab=#net8}
N 2960 -170 2960 -60 {lab=#net9}
N 2860 -180 2890 -180 {lab=#net10}
N 2860 -300 2890 -300 {lab=#net11}
N 2190 -890 2570 -890 {lab=Q1}
N 2150 -870 2570 -870 {lab=nQ1}
N 3180 -350 3180 -300 {lab=#net11}
N 3280 -420 3280 -310 {lab=#net12}
N 3280 -170 3280 -60 {lab=#net13}
N 3180 -180 3210 -180 {lab=#net10}
N 3180 -300 3210 -300 {lab=#net11}
N 2860 -350 3180 -350 {lab=#net11}
N 2860 -130 3180 -130 {lab=#net10}
N 3180 -180 3180 -130 {lab=#net10}
N 3030 -250 3210 -250 {lab=Q2}
N 3030 -230 3210 -230 {lab=nQ2}
N 3500 -350 3500 -300 {lab=#net11}
N 3600 -420 3600 -310 {lab=#net14}
N 3600 -170 3600 -60 {lab=#net15}
N 3500 -180 3530 -180 {lab=#net10}
N 3500 -300 3530 -300 {lab=#net11}
N 3180 -350 3500 -350 {lab=#net11}
N 3180 -130 3500 -130 {lab=#net10}
N 3500 -180 3500 -130 {lab=#net10}
N 3350 -250 3530 -250 {lab=Q3}
N 3350 -230 3530 -230 {lab=nQ3}
N 3820 -350 3820 -300 {lab=#net11}
N 3920 -420 3920 -310 {lab=#net16}
N 3920 -170 3920 -60 {lab=#net17}
N 3820 -180 3850 -180 {lab=#net10}
N 3820 -300 3850 -300 {lab=#net11}
N 3500 -350 3820 -350 {lab=#net11}
N 3500 -130 3820 -130 {lab=#net10}
N 3820 -180 3820 -130 {lab=#net10}
N 3670 -250 3850 -250 {lab=Q4}
N 3670 -230 3850 -230 {lab=nQ4}
N 4140 -350 4140 -300 {lab=#net11}
N 4240 -420 4240 -310 {lab=#net18}
N 4240 -170 4240 -60 {lab=#net19}
N 4140 -180 4170 -180 {lab=#net10}
N 4140 -300 4170 -300 {lab=#net11}
N 3820 -350 4140 -350 {lab=#net11}
N 3820 -130 4140 -130 {lab=#net10}
N 4140 -180 4140 -130 {lab=#net10}
N 3990 -250 4170 -250 {lab=Q5}
N 3990 -230 4170 -230 {lab=nQ5}
N 4310 -250 4380 -250 {lab=Q6}
N 4310 -230 4380 -230 {lab=nQ6}
N 1760 -740 1760 -700 {lab=#net20}
N 1920 -1060 1920 -1020 {lab=#net21}
N 1760 -940 1760 -800 {lab=#net7}
N 1820 -990 1980 -990 {lab=#net7}
N 1920 -820 1920 -800 {lab=#net4}
N 2480 -740 2480 -700 {lab=#net22}
N 2320 -1060 2320 -1020 {lab=#net23}
N 2520 -770 2540 -770 {lab=#net24}
N 2860 -180 2860 -130 {lab=#net10}
N 2860 -350 2860 -300 {lab=#net11}
N 2320 -740 2320 -700 {lab=#net25}
N 2480 -1060 2480 -1020 {lab=#net26}
N 2320 -940 2320 -800 {lab=#net27}
N 2380 -990 2540 -990 {lab=#net27}
N 2480 -820 2480 -800 {lab=#net24}
N 1920 -820 1980 -820 {lab=#net4}
N 1920 -960 1920 -820 {lab=#net4}
N 2480 -820 2540 -820 {lab=#net24}
N 2480 -960 2480 -820 {lab=#net24}
N 2380 -990 2380 -940 {lab=#net27}
N 2360 -990 2380 -990 {lab=#net27}
N 2320 -940 2380 -940 {lab=#net27}
N 2320 -960 2320 -940 {lab=#net27}
N 1760 -940 1820 -940 {lab=#net7}
N 1760 -960 1760 -940 {lab=#net7}
N 1820 -990 1820 -940 {lab=#net7}
N 1800 -990 1820 -990 {lab=#net7}
N 2190 -810 2220 -810 {lab=Q1}
N 2190 -890 2190 -810 {lab=Q1}
N 2150 -890 2190 -890 {lab=Q1}
N 2640 -420 2640 -310 {lab=#net28}
N 2640 -170 2640 -60 {lab=#net29}
N 2540 -180 2570 -180 {lab=#net10}
N 2540 -300 2570 -300 {lab=#net11}
N 2480 -100 2480 -60 {lab=#net30}
N 2320 -420 2320 -380 {lab=#net31}
N 2520 -130 2540 -130 {lab=#net10}
N 2540 -180 2540 -130 {lab=#net10}
N 2540 -350 2540 -300 {lab=#net11}
N 2320 -100 2320 -60 {lab=#net32}
N 2480 -420 2480 -380 {lab=#net33}
N 2320 -300 2320 -160 {lab=#net11}
N 2380 -350 2540 -350 {lab=#net11}
N 2480 -180 2480 -160 {lab=#net10}
N 2480 -180 2540 -180 {lab=#net10}
N 2480 -320 2480 -180 {lab=#net10}
N 2380 -350 2380 -300 {lab=#net11}
N 2360 -350 2380 -350 {lab=#net11}
N 2320 -300 2380 -300 {lab=#net11}
N 2320 -320 2320 -300 {lab=#net11}
N 2400 -230 2570 -230 {lab=nQ0}
N 2400 -250 2570 -250 {lab=Q0}
N 2710 -250 2890 -250 {lab=LVL}
N 2710 -230 2890 -230 {lab=nLVL}
N 2540 -820 2540 -770 {lab=#net24}
N 2540 -350 2860 -350 {lab=#net11}
N 2540 -130 2860 -130 {lab=#net10}
C {title.sym} 160 -30 0 0 {name=l1 author="om"  net_name=true}
C {vsource.sym} 800 -480 0 0 {name=VDD value=2  net_name=true
}
C {lab_pin.sym} 970 -520 0 1 {name=p15 lab=clk  net_name=true}
C {vsource.sym} 960 -480 0 0 {name=VMINUS
value=".1 pulse -.1 .1 50p 50p 50p 50p 300p ac 1 0" 
net_name=true
}
C {vsource.sym} 800 -320 0 0 {name=VSS value=0  net_name=true
}
C {pwroli.sym} 800 -270 0 0 {name=l17 lab=VSS}
C {pwroli.sym} 800 -530 2 0 {name=l18 lab=VDD
}
C {gndoli.sym} 960 -450 0 0 {name=l21 lab=GND}
C {gndoli.sym} 800 -450 0 0 {name=l19 lab=GND}
C {gndoli.sym} 800 -350 2 0 {name=l30 lab=GND}
C {simulator_commands_shown.sym} 0 -1950 0 0 {name=COMMANDS1
simulator=none
only_toplevel=false 

value="tcleval(

amp schematics = [set amp_schem [xschem get current_dirname]/hAMPsdiff_npn13g2v_3.5mA_15dB.sch]

pdk_path = [set pdk_path /home/ich/share/pdk/ihp-sg13g2]


mosfet corners: [set corners [list tt ss ff sf fs]]
mosfet corners: [set corners [list tt]]

simulations: [set simulations [list op dc dc_zoom ac tran]]
simulations: [set simulations [list op tran]]


ac [set fstart 1003]..[set fend 100e9]Hz;

# pmos w/l = [set pw 2u]/[set pl 1u] dont work for TCL
# nmos w/l = [set nw 1u]/[set nl 1u] dont work for TCL
pmos w/l = [set pw 2e-6]/[set pl 1e-6]
nmos w/l = [set nw 1e-6]/[set nl 1e-6]

[proc rawfilestart \{\} \{
  global netlist_dir
  return $\{netlist_dir\}/[file rootname [file tail [xschem get current_name]]]
\}]

[proc sim_is_none \{\} \{ return 0\}] #proc to ignore "simulator=none" evaluation for ngspice

.raw-file path and namebase: [rawfilestart] 
)"}
C {simulator_commands.sym} 790 -910 0 0 {name="NGSPiCE TCL"
simulator=ngspice
only_toplevel=true 

value="tcleval(
    * schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
    * dir: [set srcdir [file dirname [xschem get current_name]]]
    * test: [file dirname [xschem get current_name]]/OTA33_BiAS.sym

    * mos_corner: [set_ne mos_corner tt]

    .include $\{pdk_path\}/libs.tech/ngspice/models/diodes.lib 

    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerRES.lib     res_typ
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerMOShv.lib   mos_$\{mos_corner\}
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerMOSlv.lib   mos_$\{mos_corner\}
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerCAP.lib     cap_typ
    .lib $\{pdk_path\}/libs.tech/ngspice/models/cornerHBT.lib     hbt_typ


    .option rshunt = 1.0e9
    .option rseries = 1.0e-6

    .control
        pre_osdi $\{pdk_path\}/libs.tech/ngspice/openvaf/psp103_nqs.osdi
        pre_set strict_errorhandling **destroys ac simulation with .option savecurrents

        unset ngdebug

        .option maxwarns

        .param nw=$nw
        .param nl=$nl
        .param pw=$pw
        .param pl=$pl

        .param iset=1u

        save all
        op
        write $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_zoom_dc_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw
        write $\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw

        set appendwrite

        [return \{* foreach begin\}]
        [
            set code \{\};
            foreach i $i_list \{
                append code \\" 
                alterparam iset = $i 
                reset 
                save all 
                dc vminus -3 3 0.1 
                write $\{netlist_dir\}/$\{schematic\}_dc_mos$\{mos_corner\}.raw 
                dc vminus -10m 10m 100u 
                write $\{netlist_dir\}/$\{schematic\}_zoom_dc_mos$\{mos_corner\}.raw 
                ac dec 10 $fstart $fend 
                remzerovec 
                write $\{netlist_dir\}/$\{schematic\}_ac_mos$\{mos_corner\}.raw 
                dc temp -40 160 20 
                write $\{netlist_dir\}/$\{schematic\}_temp_mos$\{mos_corner\}.raw 
                tran 1n 77u
                write $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw
                \\";
            \}
            return $code;
        ]
        [return \{* end\}]

        quit 
    .endc
)
"
spice_ignore=true}
C {launcher.sym} 1020 -1360 0 0 {name=h12
descr="load waves"
tclcommand="
proc load_wavefoarms \{\} \{

    global netlist_dir
    global mos_corner

    proc get_raw_data_info_txt \{\} \{
        set data \{\}
        foreach \{i f t\} [lrange [xschem raw info] 2 end] \{
            append data \\"$i: $\{f\}\\\\n\\"
            xschem raw switch $f $t
            for \{set j 0\} \{$j < [xschem raw_query datasets]\} \{incr j\} \{
                set points [xschem raw_query points $j]
                append data \\"  [string toupper $t] set: $j $\{points\} pts\\\\n\\"
            \}
        \}
        puts [set data]

        return [set data]
    \}
    set_ne mos_corner tt
    set schematic [file rootname [file tail [xschem get current_name]]]
    xschem raw_clear;
    xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.raw

    return [get_raw_data_info_txt]
\}

set raw_file_data_detailed [load_wavefoarms]

xschem redraw
"
}
C {simulator_commands_shown.sym} 4400 -1950 0 0 {name=COMMANDS3
simulator=none
only_toplevel=false 

value="tcleval(

spice code

[xschem getprop instance \\"Xyce TCL\\" value]
)"}
C {simulator_commands.sym} 950 -910 0 0 {name="Xyce TCL"
simulator=xyce
only_toplevel=true 

value="tcleval(
* schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
* dir:       [set srcdir [file dirname [xschem get current_name]]]
* test:      [file dirname [xschem get current_name]]/OTA33_BiAS.sym

* mos_corner: [set_ne mos_corner tt]
* mos_corner: [set_ne sim_command op]


[proc get_sim_code \{sim_command\} \{

    global netlist_dir
    global schematic
    global mos_corner

    global fstart
    global fend

    if \{$sim_command == \\"dc\\"\} \{
        return [string cat \\\\
                \\".dc vminus -3 3 0.1 \\\\\\n\\" \\\\
                \\".print dc format=raw v(*) i(*)\\"\\\\
            ]
    \} elseif \{$sim_command == \\"op\\"\} \{
        return [string cat \\\\
                \\".op\\\\\\n\\"\\\\
                \\".print dc format=raw v(*) i(*)\\"\\\\
            ]
    \} elseif \{$sim_command == \\"dc_zoom\\"\} \{
        return [string cat \\\\
                \\".dc vminus -10m 10m 100u \\\\\\n\\" \\\\
                \\".print dc format=raw v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"ac\\"\} \{
        return [string cat \\\\
                \\".ac dec 100 $fstart $fend \\\\\\n\\" \\\\
                \\".print ac format=raw v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"tran\\"\} \{
        return [string cat \\\\
                \\".tran 100p 100n \\\\\\n\\"\\\\
                \\".print tran format=raw v(*) i(*)\\" \\\\
            ]
    \} else \{
        puts    \\"error: get_sim_code\{\}; simulation not implemented $sim_command\\\\\\n\\"
        return  \\"error: simulation not implemented $sim_command\\\\\\n\\"
    \}
\}]



.option temp=27


.lib $\{pdk_path\}/libs.tech/xyce/models/cornerRES.lib     res_typ
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerCAP.lib     cap_typ

.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOShv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOSlv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ

.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0

* .step dec iset 10u 100u 3

[get_sim_code $sim_command]

)
"}
C {gndoli.sym} 800 -610 0 0 {name=l25 lab=GND}
C {vsource.sym} 800 -640 0 0 {name=Vzero value=0  net_name=true
}
C {lab_pin.sym} 800 -670 0 1 {name=p8 lab=0  net_name=true}
C {simulator_commands.sym} 950 -1150 0 0 {name=Xyce TCL1
simulator=xyce
only_toplevel=true 

value="tcleval(
* schematic: [set schematic [file rootname [file tail [xschem get current_name]]]]
* dir:       [set srcdir [file dirname [xschem get current_name]]]
* test:      [file dirname [xschem get current_name]]/OTA33_BiAS.sym

* mos_corner: [set_ne mos_corner tt]
* mos_corner: [set_ne sim_command op]


[proc get_sim_code \{sim_command\} \{

    global netlist_dir
    global schematic
    global mos_corner

    global fstart
    global fend

    if \{$sim_command == \\"op\\"\} \{
        return [string cat \\\\
                \\".op \\\\\\n\\" \\\\
                \\".print op -format=raw -file=$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"dc\\"\} \{
        return [string cat \\\\
                \\".dc vminus -3 3 0.1 \\\\\\n\\" \\\\
                \\".print dc -format=raw -file=$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"dc_zoom\\"\} \{
        return [string cat \\\\
                \\".dc vminus -10m 10m 100u \\\\\\n\\" \\\\
                \\".print dc -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"ac\\"\} \{
        return [string cat \\\\
                \\".ac dec 10 $fstart $fend \\\\\\n\\" \\\\
                \\".print ac -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} elseif \{$sim_command == \\"tran\\"\} \{
        return [string cat \\\\
                \\".tran 1n 77u \\\\\\n\\" \\\\
                \\".print tran -format=raw -file=$\{netlist_dir\}/$\{schematic\}_$\{sim_command\}_mos$\{mos_corner\}.raw  v(*) i(*)\\" \\\\
            ]
    \} else \{
        puts    \\"error: get_sim_code\{\}; simulation not implemented $sim_command\\\\\\n\\"
        return  \\"error: simulation not implemented $sim_command\\\\\\n\\"
    \}
\}]



.option temp=27

.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOShv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerMOSlv.lib   mos_$\{mos_corner\}
.lib $\{pdk_path\}/libs.tech/xyce/models/cornerHBT.lib     hbt_typ

.param nw=$nw
.param nl=$nl
.param pw=$pw
.param pl=$pl
.param iset=0

.step dec iset 1u 10u 3

[get_sim_code $sim_command]

)
"
spice_ignore=true}
C {pwroli.sym} 1400 -980 2 0 {name=l40 lab=VSS}
C {pwroli.sym} 1320 -940 0 0 {name=l41 lab=VSS}
C {lab_pin.sym} 1360 -960 3 1 {name=p1 lab=clk  net_name=true}
C {launcher.sym} 1020 -1480 0 0 {name=h2
descr="xschem annotate_op"
tclcommand="
xschem raw_clear
xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mos$\{mos_corner\}.spice.raw
"
}
C {launcher.sym} 1020 -1520 0 0 {
descr="xyce netlist simulate corners ALL" 

tclcommand="

    proc simulate_and_plot \{corners load_the_plots\} \{

	global netlist_dir
	global execute
	global mos_corner
	global sim_command
	global simulations

        set schematic [file rootname [file tail [xschem get schname 0]]]

        foreach corner $corners \{ 
            set mos_corner $\{corner\};
            foreach sim $simulations \{ 

                set sim_command $sim;

                if \{$\{sim\} == \{op\}\} \{
                    xschem netlist $\{netlist_dir\}/$\{schematic\}_mos$\{corner\}.spice
                \} else \{
                    xschem netlist $\{netlist_dir\}/$\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                \}
            \}
        \}

        puts netlists_written;

        foreach corner $corners \{ 
            foreach sim $simulations \{

                if \{$\{sim\} == \{op\}\} \{
                    xschem set netlist_name $\{schematic\}_mos$\{corner\}.spice
                \} else \{
                    xschem set netlist_name $\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                \}

                set id_$\{sim\}_$\{corner\} [simulate ]
            \}
        \}

        puts sims_started;

        while \{[llength [get_running_cmds]]\} \{

            puts -nonewline .; flush stdout;

            delay 99;
        \}

        if \{$\{load_the_plots\}\} \{
            xschem raw_clear;
            xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mostt.spice.raw
        \}

        puts done

    \}


    xschem set netlist_type spice
    set lvs_ignore 0
    set lvs_netlist 0
    set spiceprefix 1

    simulate_and_plot $\{corners\} true
"
}
C {pwroli.sym} 1920 -640 0 1 {name=l2 lab=VSS}
C {ammeter.sym} 1920 -670 0 1 {name=Vsss2 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 1760 -1120 2 0 {name=l7 lab=VDD
}
C {ammeter.sym} 1760 -1090 0 0 {name=Vddd17
savecurrent=true
lvs_ignore=short}
C {vcvs.sym} 1440 -960 0 0 {name=E1 value=1}
C {vcvs.sym} 1280 -960 2 0 {name=E2 value=1}
C {vsource.sym} 1530 -960 0 0 {name=VMINUS1
value=".7 pulse(0 2 0 100n 100n 100n) ac 1 0" 
net_name=true
}
C {gndoli.sym} 1530 -930 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1900 -870 1 1 {name=p4 lab=nQ0  net_name=true}
C {lab_pin.sym} 1900 -890 3 1 {name=p5 lab=Q0  net_name=true}
C {ngspice_probe.sym} 1930 -820 0 0 {name=r18}
C {nmolis-sub.sym} 1940 -770 0 1 {name=M2
w=0.5u
l=0.13u
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 1780 -990 0 1 {name=M10
w=1u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} 1760 -770 0 0 {name=I0 value=22u}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 2080 -880 0 0 {name=x1
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"

nw=0.5u
nl=0.13u
pw=1u
pl=0.13u 
}
C {pwroli.sym} 2080 -1120 2 1 {name=l4 lab=VDD
}
C {ammeter.sym} 2080 -1090 0 1 {name=Vddd2
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2080 -640 0 0 {name=l5 lab=VSS}
C {ammeter.sym} 2080 -670 0 1 {name=Vsss10
savecurrent=true
lvs_ignore=short}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 2960 -240 0 0 {name=x2
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 2960 -480 2 1 {name=l9 lab=VDD
}
C {ammeter.sym} 2960 -450 0 1 {name=Vddd3
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2960 0 0 0 {name=l10 lab=VSS}
C {ammeter.sym} 2960 -30 0 1 {name=Vsss3
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 3100 -230 1 1 {name=p13 lab=nQ2  net_name=true}
C {lab_pin.sym} 3100 -250 3 1 {name=p14 lab=Q2  net_name=true}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 3280 -240 0 0 {name=x3
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 3280 -480 2 1 {name=l33 lab=VDD
}
C {ammeter.sym} 3280 -450 0 1 {name=Vddd4
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 3280 0 0 0 {name=l34 lab=VSS}
C {ammeter.sym} 3280 -30 0 1 {name=Vsss11
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 3420 -230 1 1 {name=p2 lab=nQ3  net_name=true}
C {lab_pin.sym} 3420 -250 3 1 {name=p3 lab=Q3  net_name=true}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 3600 -240 0 0 {name=x4
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 3600 -480 2 1 {name=l11 lab=VDD
}
C {ammeter.sym} 3600 -450 0 1 {name=Vddd5
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 3600 0 0 0 {name=l12 lab=VSS}
C {ammeter.sym} 3600 -30 0 1 {name=Vsss4
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 3740 -230 1 1 {name=p6 lab=nQ4  net_name=true}
C {lab_pin.sym} 3740 -250 3 1 {name=p7 lab=Q4  net_name=true}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 3920 -240 0 0 {name=x5
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 3920 -480 2 1 {name=l13 lab=VDD
}
C {ammeter.sym} 3920 -450 0 1 {name=Vddd6
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 3920 0 0 0 {name=l14 lab=VSS}
C {ammeter.sym} 3920 -30 0 1 {name=Vsss5
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 4060 -230 1 1 {name=p9 lab=nQ5  net_name=true}
C {lab_pin.sym} 4060 -250 3 1 {name=p10 lab=Q5 net_name=true}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 4240 -240 0 0 {name=x6
schematic="tcleval([xschem get current_dirname]/static_div2_lv_mos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 4240 -480 2 1 {name=l15 lab=VDD
}
C {ammeter.sym} 4240 -450 0 1 {name=Vddd7
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 4240 0 0 0 {name=l16 lab=VSS}
C {ammeter.sym} 4240 -30 0 1 {name=Vsss6
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 4380 -230 1 1 {name=p16 lab=nQ6  net_name=true}
C {lab_pin.sym} 4380 -250 3 1 {name=p17 lab=Q6  net_name=true}
C {ngspice_probe.sym} 1770 -940 0 0 {name=r1}
C {pwroli.sym} 1760 -640 0 1 {name=l20 lab=VSS}
C {ammeter.sym} 1760 -670 0 1 {name=Vsss7 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 1920 -1120 2 1 {name=l22 lab=VDD
}
C {ammeter.sym} 1920 -1090 0 1 {name=Vddd8
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 1900 -990 0 0 {name=M4
w=1u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {pwroli.sym} 2480 -640 0 1 {name=l6 lab=VSS}
C {ammeter.sym} 2480 -670 0 1 {name=Vsss1 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2320 -1120 2 0 {name=l8 lab=VDD
}
C {ammeter.sym} 2320 -1090 0 0 {name=Vddd1
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 2460 -870 1 1 {name=p11 lab=nQ1  net_name=true}
C {lab_pin.sym} 2460 -890 3 1 {name=p12 lab=Q1  net_name=true}
C {ngspice_probe.sym} 2490 -820 0 0 {name=r2}
C {nmolis-sub.sym} 2500 -770 0 1 {name=M1
w=0.15u
l=0.13u
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 2340 -990 0 1 {name=M3
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} 2320 -770 0 0 {name=I1 value=5u}
C {ngspice_probe.sym} 2330 -940 0 0 {name=r3}
C {pwroli.sym} 2320 -640 0 1 {name=l23 lab=VSS}
C {ammeter.sym} 2320 -670 0 1 {name=Vsss8 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2480 -1120 2 1 {name=l24 lab=VDD
}
C {ammeter.sym} 2480 -1090 0 1 {name=Vddd9
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 2460 -990 0 0 {name=M5
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {launcher.sym} 1980 -560 0 0 {
descr="xyce netlist simulate corners ALL" 

tclcommand="

    proc simulate_and_plot \{corners load_the_plots\} \{

	global netlist_dir
	global execute
	global mos_corner
	global sim_command
	global simulations

        set schematic [file rootname [file tail [xschem get schname 0]]]

        foreach corner $corners \{ 
            set mos_corner $\{corner\};
            foreach sim $simulations \{ 

                set sim_command $sim;

                if \{$\{sim\} == \{op\}\} \{
                    xschem netlist $\{netlist_dir\}/$\{schematic\}_mos$\{corner\}.spice
                \} else \{
                    xschem netlist $\{netlist_dir\}/$\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                \}
            \}
        \}

        puts netlists_written;

        foreach corner $corners \{ 
            foreach sim $simulations \{

                if \{$\{sim\} == \{op\}\} \{
                    xschem set netlist_name $\{schematic\}_mos$\{corner\}.spice
                \} else \{
                    xschem set netlist_name $\{schematic\}_$\{sim\}_mos$\{corner\}.spice
                \}

                set id_$\{sim\}_$\{corner\} [simulate ]
            \}
        \}

        puts sims_started;

        while \{[llength [get_running_cmds]]\} \{

            puts -nonewline .; flush stdout;

            delay 99;
        \}

        if \{$\{load_the_plots\}\} \{
            xschem raw_clear;
            xschem annotate_op $\{netlist_dir\}/$\{schematic\}_mostt.spice.raw
        \}

        puts done

    \}


    xschem set netlist_type spice
    set lvs_ignore 0
    set lvs_netlist 0
    set spiceprefix 1

    simulate_and_plot $\{corners\} true
"
}
C {isource.sym} 2220 -840 0 0 {name=I2 value="10u pulse(0 1m 0 1p 1p 10p 1)"}
C {tcleval([xschem get current_dirname]/static_div2_lv_mos.sym} 2640 -240 0 0 {name=x7
schematic="tcleval([xschem get current_dirname]/lvl_lvmos.sch"
nw=0.15u
nl=0.13u
pw=0.3u
pl=0.13u}
C {pwroli.sym} 2640 -480 2 1 {name=l26 lab=VDD
}
C {ammeter.sym} 2640 -450 0 1 {name=Vddd10
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2640 0 0 0 {name=l27 lab=VSS}
C {ammeter.sym} 2640 -30 0 1 {name=Vsss9
savecurrent=true
lvs_ignore=short}
C {lab_pin.sym} 2800 -230 1 1 {name=p18 lab=nLVL  net_name=true}
C {lab_pin.sym} 2800 -250 3 1 {name=p19 lab=LVL  net_name=true}
C {pwroli.sym} 2480 0 0 1 {name=l28 lab=VSS}
C {ammeter.sym} 2480 -30 0 1 {name=Vsss12 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2320 -480 2 0 {name=l29 lab=VDD
}
C {ammeter.sym} 2320 -450 0 0 {name=Vddd11
savecurrent=true
lvs_ignore=short}
C {ngspice_probe.sym} 2490 -180 0 0 {name=r4}
C {nmolis-sub.sym} 2500 -130 0 1 {name=M6
w=0.15u
l=0.13u
ng=1
m=1
substrate=VSS
model=sg13_lv_nmos
spiceprefix=X
}
C {pmolis-sub.sym} 2340 -350 0 1 {name=M7
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} 2320 -130 0 0 {name=I3 value=5u}
C {ngspice_probe.sym} 2330 -300 0 0 {name=r5}
C {pwroli.sym} 2320 0 0 1 {name=l31 lab=VSS}
C {ammeter.sym} 2320 -30 0 1 {name=Vsss13 
savecurrent=true
lvs_ignore=short}
C {pwroli.sym} 2480 -480 2 1 {name=l32 lab=VDD
}
C {ammeter.sym} 2480 -450 0 1 {name=Vddd12
savecurrent=true
lvs_ignore=short}
C {pmolis-sub.sym} 2460 -350 0 0 {name=M8
w=0.3u
l=0.13u
ng=1
m=1
substrate=VDD
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 2400 -230 1 1 {name=p20 lab=nQ0  net_name=true}
C {lab_pin.sym} 2400 -250 3 1 {name=p21 lab=Q0  net_name=true}
