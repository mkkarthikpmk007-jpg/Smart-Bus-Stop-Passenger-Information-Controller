puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Variables common to all RM scripts
# Script: common_setup.tcl
# Version: F-2011.09-SP4 (April 2, 2012)
# Copyright (C) 2007-2012 Synopsys, Inc. All rights reserved.
##########################################################################################

set DESIGN_NAME                   "smart_bus"  ;#  The name of the top-level design

## Point to the new 32nm SAED libs
set DESIGN_REF_PATH "/home/sriragav5071/smart/ref"
set DESIGN_REF_PATH1 "/home/sriragav5071/smart/ref"

set DESIGN_REF_TECH_PATH          "/home/sriragav5071/smart/ref/tech"

#set DESIGN_REF_DATA_PATH          ""  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path to 
                                       #  the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical RM flow.
##########################################################################################
# Hierarchical Flow Design Variables
##########################################################################################

set HIERARCHICAL_DESIGNS           "" ;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS             "" ;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

#set ADDITIONAL_SEARCH_PATH      " \
#        ${DESIGN_REF_PATH}/stdcell_rvt/db_nldm \
#        ${DESIGN_REF_PATH}/stdcell_hvt/db_nldm \
#        ${DESIGN_REF_PATH}/stdcell_lvt/db_nldm \
#  	${DESIGN_REF_PATH}/SAED14nm_EDK_SRAM_v_05072020/lib/sram_lp \
#	${DESIGN_REF_PATH}/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/#db_nldm "





#clock_gating
set LINK_LIBRARY_FILES_CLG   "* \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p95vn40c.db "

#clock_gating
set TARGET_LIBRARY_FILES_CLG    " \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff1p16v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ff1p16vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32hvt_ss0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32rvt_ss0p95vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p75v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p75vn40c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p95v125c.db \
${DESIGN_REF_PATH}/DBs/saed32lvt_ss0p95vn40c.db "


set NDM_REFERENCE_LIB_DIRS_CLG  " \
         ${DESIGN_REF_PATH}/CLIBs/saed32_hvt.ndm \
	 ${DESIGN_REF_PATH}/CLIBs/saed32_lvt.ndm \
	 ${DESIGN_REF_PATH}/CLIBs/saed32_rvt.ndm "
	
set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the MW ref libs

set TECH_FILE                     "${DESIGN_REF_PATH}/tech/saed32nm_1p9m.tf"  ;#  Milkyway technology file
set MAP_FILE                      "${DESIGN_REF_PATH}/tech/saed32nm_tf_itf_tluplus.map"  ;#  Mapping file for TLUplus
set TLUPLUS_MAX_FILE              "${DESIGN_REF_PATH}/tech/saed32nm_1p9m_Cmax.lv.tluplus"  ;#  Max TLUplus file
set TLUPLUS_MIN_FILE              "${DESIGN_REF_PATH}/tech/saed32nm_1p9m_Cmin.lv.tluplus"  ;#  Min TLUplus file
#set GDS_MAP_FILE          	  "${DESIGN_REF_PATH}/tech/milkyway/saed14nm_1p9m_gdsout_mw.map"
#set STD_CELL_GDS                  " \
#				${DESIGN_REF_PATH}/stdcell_rvt/gds/saed14rvt.gds \
#				${DESIGN_REF_PATH}/stdcell_lvt/gds/saed14lvt.gds \
#				${DESIGN_REF_PATH}/stdcell_hvt/gds/saed14hvt.gds \
#				${DESIGN_REF_PATH}/stdcell_slvt/gds/saed14slvt.gds \
				"
#set SRAM_SINGLE_GDS               "${DESIGN_REF_PATH}/SAED14nm_EDK_SRAM_v_05072020/lib/sram/gds/single.gds"
#set SRAMLP_SINGLELP_GDS		  "${DESIGN_REF_PATH}/SAED14nm_EDK_SRAM_v_05072020/lib/sram_lp/gds/singlelp.gds"
set NDM_POWER_NET                "VDD" ;#
set NDM_POWER_PORT               "VDD" ;#
set NDM_GROUND_NET               "VSS" ;#
set NDM_GROUND_PORT              "VSS" ;#

set MIN_ROUTING_LAYER            "M2"   ;# Min routing layer
set MAX_ROUTING_LAYER            "M7"   ;# Max routing layer

##RH variable for ICC SAED library and design input data
#set ICC_INPUT_DATA "/global/scratch/mculver/PD_fest_2012/initial_design/dhm"

#set LIBRARY_DONT_USE_FILE        "../../DATA_SAED/use_tie.tcl"   ;# Tcl file with library modifications for dont_use


puts "RM-Info: Completed script [info script]\n"
