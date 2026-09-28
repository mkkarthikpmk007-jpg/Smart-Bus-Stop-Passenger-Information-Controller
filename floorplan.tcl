# SANITY CHECK
#
check_netlist
check_timing
report_design_mismatch -verbose
############## create  shape of Block and proceed with next steps #########################

initialize_floorplan -side_ratio {1 1} -core_offset {1} -core_utilization 0.6

# PLACE PINS
#set_block_pin_constraints -self -allowed_layers {M3 M4}
#place_pins -self

#set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 2
#place_pins -ports [get_ports *]


#setting pin locations and direction  3=out,,1=in, 4=inout(if available)
set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 3
place_pins -ports [get_ports -filter direction==out]
set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 1
place_pins -ports [get_ports -filter direction==in]

#Use below command only if INOUT port is available
#set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 4
#place_pins -ports [get_ports -filter direction==inout]
#set_individual_pin_constraints -allowed_layers {3 4} -location {0 244} -pin_spacing_distance 0.608 -ports [get_ports -filter direction==inout]
#place_pins -ports [get_ports -filter direction==inout]

set_app_option -name time.disable_recovery_removal_checks -value false
set_app_option -name time.disable_case_analysis -value false

# fix the ports
set_attribute [get_ports *] physical_status fixed
get_attribute [get_ports *] is_fixed

#source ./floorplan/fp.tcl

# Creating KEEPOUT MARGIN   for all MACRO {Left,Top, right, bottom}
#create_keepout_margin -type hard -outer {0.152 1.672 0.152 1.672} [get_cells -physical_context -filter design_type==macro]

#fix the macros
#set_attribute [get_cells -physical_context -filter design_type==macro] physical_status fixed
#get_attribute [get_cells -physical_context -filter design_type==macro] is_fixed

#ADD END CAP cells
#get_lib_cells */SHFILL*_RVT
set_boundary_cell_rules -left_boundary_cell saed32_rvt|saed32_rvt_std/SHFILL3_RVT -right_boundary_cell  saed32_rvt|saed32_rvt_std/SHFILL3_RVT -prefix endcap 

compile_targeted_boundary_cells -target_objects [get_voltage_areas]
#set_attribute [get_cells *endcap* ] is_fixed true
#Add  TAP CELLS
#create_tap_cells -lib_cell saed32_rvt|saed32_rvt_std/SHFILL3_RVT -distance 25 -skip_fixed_cells

#set_attribute [get_cells *tap* ] is_fixed true

#to check their legality location
#check_legality -cells [get_cells bound*]
#check_legality -cells [get_cells tap*]

save_block -as floorplan_done
# close_block -f
# close_lib
# exit############## FLOORPLAN ##############



