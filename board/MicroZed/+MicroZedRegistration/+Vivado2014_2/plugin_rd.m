function hRD = plugin_rd()
% Reference design definition
% Construct reference design object
hRD = hdlcoder.ReferenceDesign('SynthesisTool', 'Xilinx Vivado');
hRD.ReferenceDesignName = 'Custom Board (Vivado 2014.2)';
hRD.BoardName = 'MicroZed';
% Tool information
hRD.SupportedToolVersion = {'2014.2'};
%% Add custom design files
% add custom Vivado design
hRD.addCustomVivadoDesign( ...
    'CustomBlockDesignTcl', 'System.tcl');
hRD.CustomFiles = {'MicroZed_7z020_RevB_v4.xml'};
%% Add interfaces
% add clock interface
hRD.addClockInterface( ...
  'ClockConnection',   'clk_wiz_0/clk_out1', ...
  'ResetConnection',   'proc_sys_reset_0/peripheral_aresetn');
% add AXI4 and AXI4-Lite slave interfaces
hRD.addAXI4SlaveInterface( ...
    'InterfaceConnection', 'axi_interconnect_0/M00_AXI', ...
    'BaseAddress',         '0x40010000', ...
    'MasterAddressSpace',  'processing_system7_0/Data');