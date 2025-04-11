export DESIGN_NAME=SG13G2Top
export PLATFORM=ihp-sg13g2

export VERILOG_FILES= /home/daniel/work/aesc/i2c-gpio-expander/build//I2cGpioExpander/SG13G2/zibal/SG13G2Top.v
export SDC_FILE=/home/daniel/work/aesc/i2c-gpio-expander/build//I2cGpioExpander/SG13G2/zibal/SG13G2Top.sdc

export SEAL_GDS = /home/daniel/work/aesc/i2c-gpio-expander/build//I2cGpioExpander/SG13G2/zibal//macros/sealring/sealring.gds.gz

export DIE_AREA = 0.0 0.0 1050.0 1050.0
export CORE_AREA = 425.28 427.14 631.2 630.24

export MAX_ROUTING_LAYER = TopMetal2
export HAS_IO_RING = 1

export TNS_END_PERCENT = 100
export PLACE_DENSITY = 0.75

export FOOTPRINT_TCL = /home/daniel/work/aesc/i2c-gpio-expander/build//I2cGpioExpander/SG13G2/zibal/SG13G2Top.pad.tcl
export PDN_TCL = /home/daniel/work/aesc/i2c-gpio-expander/build//I2cGpioExpander/SG13G2/zibal/SG13G2Top.pdn.tcl

export LOAD_ADDITIONAL_FILES =
export TECH_LEF = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef
export SC_LEF = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef
export ADDITIONAL_LEFS = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/lef/sg13g2_io.lef \
                         $(PLATFORM_DIR)/lef/bondpad_70x70.lef
export LIB_FILES = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/lib/sg13g2_io_typ_1p2V_3p3V_25C.lib
export GDS_FILES = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/gds/sg13g2_io.gds \
                   $(PLATFORM_DIR)/gds/bondpad_70x70.gds
