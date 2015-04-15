function hB = plugin_board()
% Board definition
% Construct board object
hB = hdlcoder.Board;
hB.BoardName    = 'MicroZed';
% FPGA device information
hB.FPGAVendor   = 'Xilinx';
hB.FPGAFamily   = 'Zynq';
hB.FPGADevice   = 'xc7z020';
hB.FPGAPackage  = 'clg400';
hB.FPGASpeed    = '-1';
% Tool information
hB.SupportedTool = {'Xilinx Vivado'};
% FPGA JTAG chain position
hB.JTAGChainPosition = 2;
%% Add interfaces
% Standard "External Port" interface
hB.addExternalPortInterface( ...
    'IOPadConstraint', {'IOSTANDARD = LVCMOS33'});
% Custom board external I/O interface
