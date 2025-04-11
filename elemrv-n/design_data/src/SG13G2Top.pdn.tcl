
# stdcell power pins
add_global_connection -net {VDD} -pin_pattern {^VDD$} -power
add_global_connection -net {VDD} -pin_pattern {^VDDPE$}
add_global_connection -net {VDD} -pin_pattern {^VDDCE$}
add_global_connection -net {VSS} -pin_pattern {^VSS$} -ground
add_global_connection -net {VSS} -pin_pattern {^VSSE$}

# rams
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VDDARRAY} -power
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VDDARRAY!} -power
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VDD!} -power
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {VSS!} -ground

# padframe core power pins
add_global_connection -net {VDD} -pin_pattern {^vdd$} -power
add_global_connection -net {VSS} -pin_pattern {^vss$} -ground

# padframe io power pins
add_global_connection -net {IOVDD} -pin_pattern {^iovdd$} -power
add_global_connection -net {IOVSS} -pin_pattern {^iovss$} -ground

global_connect

# core voltage domain
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}

# stdcell grid
define_pdn_grid -name {grid} -voltage_domains {CORE}

add_pdn_ring \
	-grid {grid} \
	-layers {Metal5 TopMetal1} \
	-widths {30.0} \
	-spacings {5.0} \
	-core_offsets {4.5} \
	-connect_to_pads
add_pdn_stripe \
	-grid {grid} \
	-layer {Metal1} \
	-width {0.44} \
	-pitch {7.56} \
	-offset {0} \
	-followpins \
	-extend_to_core_ring
add_pdn_stripe \
	-grid {grid} \
	-layer {Metal5} \
	-width {2.200} \
	-pitch {75.6} \
	-offset {13.600} \
	-extend_to_core_ring
add_pdn_stripe \
	-grid {grid} \
	-layer {TopMetal1} \
	-width {2.200} \
	-pitch {75.6} \
	-offset {13.600} \
	-extend_to_core_ring
add_pdn_stripe \
	-grid {grid} \
	-layer {TopMetal2} \
	-width {2.200} \
	-pitch {75.6} \
	-offset {13.600} \
	-extend_to_core_ring
add_pdn_connect -grid {grid} -layers {Metal1 Metal5}
add_pdn_connect -grid {grid} -layers {Metal5 TopMetal1}
add_pdn_connect -grid {grid} -layers {Metal5 TopMetal2}
add_pdn_connect -grid {grid} -layers {TopMetal1 TopMetal2}

# pdn for sram macros
define_pdn_grid \
	-name {sram_grid} \
	-voltage_domains {CORE} \
	-macro -cells {RM_IHPSG13_1P_512x32_c2_bm_bist RM_IHPSG13_1P_1024x8_c2_bm_bist} \
	-grid_over_boundary
add_pdn_ring \
	-grid {sram_grid} \
	-layer {Metal3 Metal4} \
	-widths {8.0} \
	-spacings {4.0} \
	-core_offsets {16.0} \
	-add_connect \
	-connect_to_pads

add_pdn_stripe \
	-grid {sram_grid} \
	-layer {TopMetal1} \
	-width {8.0} \
	-pitch {75.6} \
	-offset {10.0} \
	-extend_to_core_ring
add_pdn_connect -grid sram_grid -layers {TopMetal1 Metal3}
add_pdn_connect -grid sram_grid -layers {TopMetal1 Metal4}
add_pdn_connect -grid sram_grid -layers {TopMetal1 TopMetal2}
