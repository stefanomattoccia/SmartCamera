connect -url tcp:127.0.0.1:3121
source /home/gian/Documenti/HiPeRTLab/Projects/SmartCamera/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A274C8"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248A274C8" && level==0} -index 1
fpga -file /home/gian/Documenti/HiPeRTLab/Projects/SmartCamera/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A274C8"} -index 0
loadhw -hw /home/gian/Documenti/HiPeRTLab/Projects/SmartCamera/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A274C8"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A274C8"} -index 0
dow /home/gian/Documenti/HiPeRTLab/Projects/SmartCamera/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/OV_7670_ARM/Debug/OV_7670_ARM.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A274C8"} -index 0
con
