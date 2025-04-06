
set IO_LENGTH 180
set IO_WIDTH 80
set BONDPAD_SIZE 70
set SEALRING_OFFSET 70

proc calc_horizontal_pad_location {index total} {
    global IO_LENGTH
    global IO_WIDTH
    global BONDPAD_SIZE
    global SEALRING_OFFSET

    set DIE_WIDTH [expr {[lindex $::env(DIE_AREA) 2] - [lindex $::env(DIE_AREA) 0]}]
    set PAD_OFFSET [expr {$IO_LENGTH + $BONDPAD_SIZE + $SEALRING_OFFSET}]
    set PAD_AREA_WIDTH [expr {$DIE_WIDTH - ($PAD_OFFSET * 2)}]
    set HORIZONTAL_PAD_DISTANCE [expr {($PAD_AREA_WIDTH / $total) - $IO_WIDTH}]

    return [expr {$PAD_OFFSET + (($IO_WIDTH + $HORIZONTAL_PAD_DISTANCE) * $index) + ($HORIZONTAL_PAD_DISTANCE / 2)}]
}

proc calc_vertical_pad_location {index total} {
    global IO_LENGTH
    global IO_WIDTH
    global BONDPAD_SIZE
    global SEALRING_OFFSET

    set DIE_HEIGHT [expr {[lindex $::env(DIE_AREA) 3] - [lindex $::env(DIE_AREA) 1]}]
    set PAD_OFFSET [expr {$IO_LENGTH + $BONDPAD_SIZE + $SEALRING_OFFSET}]
    set PAD_AREA_HEIGHT [expr {$DIE_HEIGHT - ($PAD_OFFSET * 2)}]
    set VERTICAL_PAD_DISTANCE [expr {($PAD_AREA_HEIGHT / $total) - $IO_WIDTH}]

    return [expr {$PAD_OFFSET + (($IO_WIDTH + $VERTICAL_PAD_DISTANCE) * $index) + ($VERTICAL_PAD_DISTANCE / 2)}]
}

make_fake_io_site -name IOLibSite -width 1 -height $IO_LENGTH
make_fake_io_site -name IOLibCSite -width $IO_LENGTH -height $IO_LENGTH

set IO_OFFSET [expr {$BONDPAD_SIZE + $SEALRING_OFFSET}]
# Create IO Rows
make_io_sites \
    -horizontal_site IOLibSite \
    -vertical_site IOLibSite \
    -corner_site IOLibCSite \
    -offset $IO_OFFSET

# Place Pads
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 0 16] {sg13g2_IOPadIOVdd_south_0} -master sg13g2_IOPadIOVdd
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 1 16] {sg13g2_IOPadIOVss_south_1} -master sg13g2_IOPadIOVss
# IO pin io_pins_10
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 2 16] {sg13g2_IOPad_io_pins_10} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_11
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 3 16] {sg13g2_IOPad_io_pins_11} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_12
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 4 16] {sg13g2_IOPad_io_pins_12} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_13
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 5 16] {sg13g2_IOPad_io_pins_13} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_14
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 6 16] {sg13g2_IOPad_io_pins_14} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_15
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 7 16] {sg13g2_IOPad_io_pins_15} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_16
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 8 16] {sg13g2_IOPad_io_pins_16} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_17
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 9 16] {sg13g2_IOPad_io_pins_17} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_18
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 10 16] {sg13g2_IOPad_io_pins_18} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_19
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 11 16] {sg13g2_IOPad_io_pins_19} -master sg13g2_IOPadInOut4mA
# IO pin io_reset
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 12 16] {sg13g2_IOPad_io_reset} -master sg13g2_IOPadIn
# IO pin io_clock
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 13 16] {sg13g2_IOPad_io_clock} -master sg13g2_IOPadIn
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 14 16] {sg13g2_IOPadVss_south_14} -master sg13g2_IOPadVss
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 15 16] {sg13g2_IOPadVdd_south_15} -master sg13g2_IOPadVdd
place_pad -row IO_EAST -location [calc_vertical_pad_location 0 16] {sg13g2_IOPadIOVdd_east_0} -master sg13g2_IOPadIOVdd
place_pad -row IO_EAST -location [calc_vertical_pad_location 1 16] {sg13g2_IOPadIOVss_east_1} -master sg13g2_IOPadIOVss
# IO pin io_spi_cs_0
place_pad -row IO_EAST -location [calc_vertical_pad_location 2 16] {sg13g2_IOPad_io_spi_cs_0} -master sg13g2_IOPadOut4mA
# IO pin io_spi_sck
place_pad -row IO_EAST -location [calc_vertical_pad_location 3 16] {sg13g2_IOPad_io_spi_sck} -master sg13g2_IOPadOut4mA
# IO pin io_spi_dq_3
place_pad -row IO_EAST -location [calc_vertical_pad_location 4 16] {sg13g2_IOPad_io_spi_dq_3} -master sg13g2_IOPadInOut4mA
# IO pin io_spi_dq_2
place_pad -row IO_EAST -location [calc_vertical_pad_location 5 16] {sg13g2_IOPad_io_spi_dq_2} -master sg13g2_IOPadInOut4mA
# IO pin io_spi_dq_1
place_pad -row IO_EAST -location [calc_vertical_pad_location 6 16] {sg13g2_IOPad_io_spi_dq_1} -master sg13g2_IOPadInOut4mA
# IO pin io_spi_dq_0
place_pad -row IO_EAST -location [calc_vertical_pad_location 7 16] {sg13g2_IOPad_io_spi_dq_0} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_6
place_pad -row IO_EAST -location [calc_vertical_pad_location 8 16] {sg13g2_IOPad_io_pins_6} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_7
place_pad -row IO_EAST -location [calc_vertical_pad_location 9 16] {sg13g2_IOPad_io_pins_7} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_8
place_pad -row IO_EAST -location [calc_vertical_pad_location 10 16] {sg13g2_IOPad_io_pins_8} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_9
place_pad -row IO_EAST -location [calc_vertical_pad_location 11 16] {sg13g2_IOPad_io_pins_9} -master sg13g2_IOPadInOut4mA
# IO pin io_forFutureUse_0
place_pad -row IO_EAST -location [calc_vertical_pad_location 12 16] {sg13g2_IOPad_io_forFutureUse_0} -master sg13g2_IOPadIn
# IO pin io_hyperbus_ck
place_pad -row IO_EAST -location [calc_vertical_pad_location 13 16] {sg13g2_IOPad_io_hyperbus_ck} -master sg13g2_IOPadOut30mA
place_pad -row IO_EAST -location [calc_vertical_pad_location 14 16] {sg13g2_IOPadVss_east_14} -master sg13g2_IOPadVss
place_pad -row IO_EAST -location [calc_vertical_pad_location 15 16] {sg13g2_IOPadVdd_east_15} -master sg13g2_IOPadVdd
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 0 16] {sg13g2_IOPadVdd_north_0} -master sg13g2_IOPadVdd
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 1 16] {sg13g2_IOPadVss_north_1} -master sg13g2_IOPadVss
# IO pin io_hyperbus_dq_0
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 2 16] {sg13g2_IOPad_io_hyperbus_dq_0} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_1
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 3 16] {sg13g2_IOPad_io_hyperbus_dq_1} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_2
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 4 16] {sg13g2_IOPad_io_hyperbus_dq_2} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_3
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 5 16] {sg13g2_IOPad_io_hyperbus_dq_3} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_4
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 6 16] {sg13g2_IOPad_io_hyperbus_dq_4} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_5
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 7 16] {sg13g2_IOPad_io_hyperbus_dq_5} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_6
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 8 16] {sg13g2_IOPad_io_hyperbus_dq_6} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_dq_7
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 9 16] {sg13g2_IOPad_io_hyperbus_dq_7} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_reset
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 10 16] {sg13g2_IOPad_io_hyperbus_reset} -master sg13g2_IOPadOut4mA
# IO pin io_hyperbus_rwds
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 11 16] {sg13g2_IOPad_io_hyperbus_rwds} -master sg13g2_IOPadInOut30mA
# IO pin io_hyperbus_cs_0
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 12 16] {sg13g2_IOPad_io_hyperbus_cs_0} -master sg13g2_IOPadOut4mA
# IO pin io_hyperbus_cs_1
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 13 16] {sg13g2_IOPad_io_hyperbus_cs_1} -master sg13g2_IOPadOut4mA
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 14 16] {sg13g2_IOPadIOVss_north_14} -master sg13g2_IOPadIOVss
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 15 16] {sg13g2_IOPadIOVdd_north_15} -master sg13g2_IOPadIOVdd
place_pad -row IO_WEST -location [calc_vertical_pad_location 0 16] {sg13g2_IOPadVdd_west_0} -master sg13g2_IOPadVdd
place_pad -row IO_WEST -location [calc_vertical_pad_location 1 16] {sg13g2_IOPadVss_west_1} -master sg13g2_IOPadVss
# IO pin io_jtag_tms
place_pad -row IO_WEST -location [calc_vertical_pad_location 2 16] {sg13g2_IOPad_io_jtag_tms} -master sg13g2_IOPadIn
# IO pin io_jtag_tdi
place_pad -row IO_WEST -location [calc_vertical_pad_location 3 16] {sg13g2_IOPad_io_jtag_tdi} -master sg13g2_IOPadIn
# IO pin io_jtag_tdo
place_pad -row IO_WEST -location [calc_vertical_pad_location 4 16] {sg13g2_IOPad_io_jtag_tdo} -master sg13g2_IOPadOut4mA
# IO pin io_jtag_tck
place_pad -row IO_WEST -location [calc_vertical_pad_location 5 16] {sg13g2_IOPad_io_jtag_tck} -master sg13g2_IOPadIn
# IO pin io_forFutureUse_1
place_pad -row IO_WEST -location [calc_vertical_pad_location 6 16] {sg13g2_IOPad_io_forFutureUse_1} -master sg13g2_IOPadIn
# IO pin io_forFutureUse_2
place_pad -row IO_WEST -location [calc_vertical_pad_location 7 16] {sg13g2_IOPad_io_forFutureUse_2} -master sg13g2_IOPadIn
# IO pin io_pins_0
place_pad -row IO_WEST -location [calc_vertical_pad_location 8 16] {sg13g2_IOPad_io_pins_0} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_1
place_pad -row IO_WEST -location [calc_vertical_pad_location 9 16] {sg13g2_IOPad_io_pins_1} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_2
place_pad -row IO_WEST -location [calc_vertical_pad_location 10 16] {sg13g2_IOPad_io_pins_2} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_3
place_pad -row IO_WEST -location [calc_vertical_pad_location 11 16] {sg13g2_IOPad_io_pins_3} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_4
place_pad -row IO_WEST -location [calc_vertical_pad_location 12 16] {sg13g2_IOPad_io_pins_4} -master sg13g2_IOPadInOut4mA
# IO pin io_pins_5
place_pad -row IO_WEST -location [calc_vertical_pad_location 13 16] {sg13g2_IOPad_io_pins_5} -master sg13g2_IOPadInOut4mA
place_pad -row IO_WEST -location [calc_vertical_pad_location 14 16] {sg13g2_IOPadIOVss_west_14} -master sg13g2_IOPadIOVss
place_pad -row IO_WEST -location [calc_vertical_pad_location 15 16] {sg13g2_IOPadIOVdd_west_15} -master sg13g2_IOPadIOVdd
# Place Corner Cells and Filler
place_corners sg13g2_Corner

set iofill {
    sg13g2_Filler10000
    sg13g2_Filler4000
    sg13g2_Filler2000
    sg13g2_Filler1000
    sg13g2_Filler400
    sg13g2_Filler200
}

place_io_fill -row IO_NORTH {*}$iofill
place_io_fill -row IO_SOUTH {*}$iofill
place_io_fill -row IO_WEST {*}$iofill
place_io_fill -row IO_EAST {*}$iofill

connect_by_abutment

place_bondpad -bond bondpad_70x70 sg13g2_IOPad* -offset {5.0 -70.0}

remove_io_rows
