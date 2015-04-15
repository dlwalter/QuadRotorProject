%hdlsetuptoolpath('ToolName', 'Xilinx Vivado', 'ToolPath', 'C:\Xilinx\Vivado\2014.2\bin\vivado.bat')
%%
hdlsetuptoolpath('ToolName', 'Xilinx Vivado', 'ToolPath', 'D:\Xilinx\Vivado\2014.2\bin\vivado.bat')
%xmakefilesetup  %run once
%%
h = zynq();
h.setupZynqHardware()
%%
h.checkConnection