connect -url tcp:127.0.0.1:3121
source F:/Tesi/ProgettoVivado/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248A273AD"} -index 0
loadhw F:/Tesi/ProgettoVivado/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248A273AD"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A273AD"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A273AD"} -index 0
dow F:/Tesi/ProgettoVivado/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/Test_OV_7670_ARM/Debug/Test_OV_7670_ARM.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A273AD"} -index 0
con
