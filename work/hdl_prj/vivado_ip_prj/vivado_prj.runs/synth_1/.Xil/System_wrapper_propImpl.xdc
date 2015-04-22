set_property SRC_FILE_INFO {cfile:c:/Projects/QuadRotorProject/work/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0.xdc rfile:../../../vivado_prj.srcs/sources_1/bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:System_i/clk_wiz_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Projects/QuadRotorProject/work/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc rfile:../../../vivado_prj.srcs/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc id:2 order:EARLY scoped_inst:System_i/processing_system7_0/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.3
