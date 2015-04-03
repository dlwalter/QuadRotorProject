hdlsetuptoolpath('ToolName', 'Xilinx ISE', 'ToolPath', 'C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\ise.exe')
%%
%xmakefilesetup  %run once
%%
h = zynq();
h.setupZynqHardware()
%%
h.checkConnection