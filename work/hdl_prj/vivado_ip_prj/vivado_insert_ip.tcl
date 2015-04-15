open_project vivado_prj.xpr
update_ip_catalog -delete_ip {./ipcore/L3G4200D_SPI_hdl_dut_ipcore_v1_0/component.xml} -repo_path {./ipcore} -quiet
update_ip_catalog -add_ip {./ipcore/L3G4200D_SPI_hdl_dut_ipcore_v1_0.zip} -repo_path {./ipcore}
update_ip_catalog
set HDLCODERIPVLNV [get_property VLNV [get_ipdefs -filter {NAME==L3G4200D_SPI_hdl_dut_ipcore && VERSION==1.0}]]
set HDLCODERIPINST L3G4200D_SPI_hdl_dut_ipcore_0
set BDFILEPATH [get_files -quiet System.bd]
open_bd_design $BDFILEPATH
create_bd_cell -type ip -vlnv $HDLCODERIPVLNV $HDLCODERIPINST
connect_bd_intf_net [get_bd_intf_pins $HDLCODERIPINST/AXI4_Lite] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins clk_wiz_0/clk_out1]] [get_bd_pins $HDLCODERIPINST/IPCORE_CLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins clk_wiz_0/clk_out1]] [get_bd_pins $HDLCODERIPINST/AXI4_Lite_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins proc_sys_reset_0/peripheral_aresetn]] [get_bd_pins $HDLCODERIPINST/IPCORE_RESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins proc_sys_reset_0/peripheral_aresetn]] [get_bd_pins $HDLCODERIPINST/AXI4_Lite_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
create_bd_port -dir I -from 0 -to 0 SDO_pin
connect_bd_net [get_bd_ports SDO_pin] [get_bd_pins $HDLCODERIPINST/SDO]
create_bd_port -dir O -from 0 -to 0 SCLK_pin
connect_bd_net [get_bd_ports SCLK_pin] [get_bd_pins $HDLCODERIPINST/SCLK]
create_bd_port -dir O -from 0 -to 0 CS_pin
connect_bd_net [get_bd_ports CS_pin] [get_bd_pins $HDLCODERIPINST/CS]
create_bd_port -dir O -from 0 -to 0 SDI_pin
connect_bd_net [get_bd_ports SDI_pin] [get_bd_pins $HDLCODERIPINST/SDI]
create_bd_addr_seg -range {65536} -offset {0x40010000} [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs $HDLCODERIPINST/AXI4_Lite/reg0] SEG_${HDLCODERIPINST}_reg0
make_wrapper -files $BDFILEPATH -top
regsub -all "System.vhd" [get_files System.vhd] "System_wrapper.vhd" TOPFILEPATH
add_files -norecurse $TOPFILEPATH
update_compile_order -fileset sources_1
validate_bd_design
save_bd_design
add_files -fileset constrs_1 -norecurse vivado_constraint.xdc
close_project
exit
