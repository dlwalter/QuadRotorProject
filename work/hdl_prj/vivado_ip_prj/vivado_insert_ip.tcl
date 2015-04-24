open_project vivado_prj.xpr
update_ip_catalog -delete_ip {./ipcore/BasicQuadrotorControlv2_hdl_dut_ipcore_v1_0/component.xml} -repo_path {./ipcore} -quiet
update_ip_catalog -add_ip {./ipcore/BasicQuadrotorControlv2_hdl_dut_ipcore_v1_0.zip} -repo_path {./ipcore}
update_ip_catalog
set HDLCODERIPVLNV [get_property VLNV [get_ipdefs -filter {NAME==BasicQuadrotorControlv2_hdl_dut_ipcore && VERSION==1.0}]]
set HDLCODERIPINST BasicQuadrotorControlv2_hdl_dut_ipcore_0
set BDFILEPATH [get_files -quiet System.bd]
open_bd_design $BDFILEPATH
create_bd_cell -type ip -vlnv $HDLCODERIPVLNV $HDLCODERIPINST
connect_bd_intf_net [get_bd_intf_pins $HDLCODERIPINST/AXI4_Lite] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins clk_wiz_0/clk_out1]] [get_bd_pins $HDLCODERIPINST/IPCORE_CLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins clk_wiz_0/clk_out1]] [get_bd_pins $HDLCODERIPINST/AXI4_Lite_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins proc_sys_reset_0/peripheral_aresetn]] [get_bd_pins $HDLCODERIPINST/IPCORE_RESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
connect_bd_net -net [get_bd_nets -of_objects [get_bd_pins proc_sys_reset_0/peripheral_aresetn]] [get_bd_pins $HDLCODERIPINST/AXI4_Lite_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
create_bd_port -dir I -from 0 -to 0 SDO_accl_pin
connect_bd_net [get_bd_ports SDO_accl_pin] [get_bd_pins $HDLCODERIPINST/SDO_accl]
create_bd_port -dir I -from 0 -to 0 SDO_gyro_pin
connect_bd_net [get_bd_ports SDO_gyro_pin] [get_bd_pins $HDLCODERIPINST/SDO_gyro]
create_bd_port -dir O -from 0 -to 0 SCL_accl_pin
connect_bd_net [get_bd_ports SCL_accl_pin] [get_bd_pins $HDLCODERIPINST/SCL_accl]
create_bd_port -dir O -from 0 -to 0 CS_accl_pin
connect_bd_net [get_bd_ports CS_accl_pin] [get_bd_pins $HDLCODERIPINST/CS_accl]
create_bd_port -dir O -from 0 -to 0 SDA_accl_pin
connect_bd_net [get_bd_ports SDA_accl_pin] [get_bd_pins $HDLCODERIPINST/SDA_accl]
create_bd_port -dir O -from 0 -to 0 SCLK_gyro_pin
connect_bd_net [get_bd_ports SCLK_gyro_pin] [get_bd_pins $HDLCODERIPINST/SCLK_gyro]
create_bd_port -dir O -from 0 -to 0 CS_gyro_pin
connect_bd_net [get_bd_ports CS_gyro_pin] [get_bd_pins $HDLCODERIPINST/CS_gyro]
create_bd_port -dir O -from 0 -to 0 SDA_gyro_pin
connect_bd_net [get_bd_ports SDA_gyro_pin] [get_bd_pins $HDLCODERIPINST/SDA_gyro]
create_bd_port -dir O -from 0 -to 0 PWM_motor1_1_pin
connect_bd_net [get_bd_ports PWM_motor1_1_pin] [get_bd_pins $HDLCODERIPINST/PWM_motor1_1]
create_bd_port -dir O -from 0 -to 0 PWM_motor2_1_pin
connect_bd_net [get_bd_ports PWM_motor2_1_pin] [get_bd_pins $HDLCODERIPINST/PWM_motor2_1]
create_bd_port -dir O -from 0 -to 0 PWM_motor3_1_pin
connect_bd_net [get_bd_ports PWM_motor3_1_pin] [get_bd_pins $HDLCODERIPINST/PWM_motor3_1]
create_bd_port -dir O -from 0 -to 0 PWM_motor4_1_pin
connect_bd_net [get_bd_ports PWM_motor4_1_pin] [get_bd_pins $HDLCODERIPINST/PWM_motor4_1]
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
