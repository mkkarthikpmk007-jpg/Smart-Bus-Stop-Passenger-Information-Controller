
####### Setting Up Target & Link Libraries #############
source /home/sriragav5071/smart/common_setup.tcl

####### Creating library of the block ########

set link_library  $LINK_LIBRARY_FILES_CLG
set target_library $TARGET_LIBRARY_FILES_CLG

create_lib -ref_libs $NDM_REFERENCE_LIB_DIRS_CLG -technology $TECH_FILE ./lib_pdc

#read netlist
read_verilog /home/sriragav5071/smart/output/smart_bus_HDL.v


#set current design -top level module name
current_design smart_bus

#linking library + netlist
link

save_lib -as post_import_design


#defining attributes for metal layers -- HVH (preferable) or VHV 
define_user_attribute -type string -name routing_direction -classes routing_rule

#for horizontal 
set_attribute -objects [get_layers {M1 M3 M5 M7 M9}] -name routing_direction -value horizontal

#for vertical
set_attribute -objects [get_layers {M2 M4 M6 M8 MRDL}] -name routing_direction -value vertical


#reading TLU+ file ---max file
read_parasitic_tech -tlup $TLUPLUS_MAX_FILE -layermap $MAP_FILE  -name worst_para

#min file
read_parasitic_tech -tlup $TLUPLUS_MIN_FILE -layermap $MAP_FILE -name best_para

#reading the .sdc file 
source -e -v /home/sriragav5071/smart/mcmm.tcl


#save_block -as minsoc_data1
save_block -as import_done

save_lib

#close_blocks -force
#close_lib








