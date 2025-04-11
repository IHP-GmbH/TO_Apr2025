export DESIGN_NAME=SG13G2Top
export PLATFORM=ihp-sg13g2
export SDC_FILE=/home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal/SG13G2Top.sdc
export VERILOG_FILES=/home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal/*.v

export SEAL_GDS = /home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal//macros/sealring/sealring.gds.gz

export DIE_AREA = 0.0 0.0 2522.4 2521.26
export CORE_AREA = 394.08 396.9 2125.44 2124.36

export MAX_ROUTING_LAYER = TopMetal2
export HAS_IO_RING = 1

export TNS_END_PERCENT = 100
export PLACE_DENSITY = 0.75
export GDS_ALLOW_EMPTY = RM_IHPSG13_1P_BITKIT_16x2_*

export FOOTPRINT_TCL = /home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal/SG13G2Top.pad.tcl
export PDN_TCL = /home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal/SG13G2Top.pdn.tcl

export MACRO_PLACEMENT_TCL = /home/daniel/work/aesc/ElemRV/build//ElemRV/SG13G2/zibal/SG13G2Top.macro.tcl

export LOAD_ADDITIONAL_FILES =
export TECH_LEF = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef
export SC_LEF = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef
export ADDITIONAL_LEFS = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/lef/sg13g2_io.lef \
                         $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/lef/RM_IHPSG13_1P_512x32_c2_bm_bist.lef \
                         $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/lef/RM_IHPSG13_1P_1024x8_c2_bm_bist.lef \
                         $(PLATFORM_DIR)/lef/bondpad_70x70.lef
export LIB_FILES = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/lib/sg13g2_io_typ_1p2V_3p3V_25C.lib \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/lib/RM_IHPSG13_1P_512x32_c2_bm_bist_typ_1p20V_25C.lib \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/lib/RM_IHPSG13_1P_1024x8_c2_bm_bist_typ_1p20V_25C.lib
export GDS_FILES = $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_io/gds/sg13g2_io.gds \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/gds/RM_IHPSG13_1P_512x32_c2_bm_bist.gds \
                   $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_sram/gds/RM_IHPSG13_1P_1024x8_c2_bm_bist.gds \
                   $(PLATFORM_DIR)/gds/bondpad_70x70.gds
