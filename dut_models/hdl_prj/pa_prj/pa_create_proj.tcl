# Create new project
create_project -part xc7z020clg484-1 -force pa_prj
set_property target_language VHDL [current_project]
add_files -norecurse ../edk_prj/system.xmp
make_wrapper -files [get_files ../edk_prj/system.xmp] -top -fileset [get_filesets sources_1] -import
add_files -fileset constrs_1 pa_constraint.ucf
close_project
exit
