hdlsetuptoolpath('ToolName', 'Xilinx Vivado', 'ToolPath', 'C:\Xilinx\Vivado\2014.4\bin\vivado.bat')
%xmakefilesetup  %run once
%%
h = zynq();
h.setupZynqHardware()
%%
h.checkConnection