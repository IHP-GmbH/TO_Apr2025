current_design SG13G2Top
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_fanout 8 [current_design]
set_max_capacitance 0.5 [current_design]
set_max_transition 3 [current_design]
set_max_area 0

set_ideal_network [get_pins sg13g2_IOPad_io_clock/p2c]
create_clock [get_pins sg13g2_IOPad_io_clock/p2c] -name clk_core -period 50.0 -waveform {0 25.0}
set_clock_uncertainty 0.15 [get_clocks clk_core]
set_clock_transition 0.25 [get_clocks clk_core]

set_ideal_network [get_pins sg13g2_IOPad_io_jtag_tck/p2c]
create_clock [get_pins sg13g2_IOPad_io_jtag_tck/p2c] -name clk_jtag -period 100.0 -waveform {0 50.0}
set_clock_uncertainty 0.15 [get_clocks clk_jtag]
set_clock_transition 0.25 [get_clocks clk_jtag]

set_false_path -from [get_clocks clk_core] -to [get_clocks clk_jtag]
set_false_path -from [get_clocks clk_jtag] -to [get_clocks clk_core]
set clock_ports [get_ports { 
	io_clock_PAD 
	io_jtag_tck_PAD 
}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clock_ports

set_load -pin_load 5 [all_inputs]
set_load -pin_load 5 [all_outputs]
