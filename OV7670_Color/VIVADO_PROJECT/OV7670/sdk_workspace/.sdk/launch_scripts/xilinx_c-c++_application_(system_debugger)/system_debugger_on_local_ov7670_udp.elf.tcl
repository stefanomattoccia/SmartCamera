connect -url tcp:127.0.0.1:3121
source Z:/Dropbox/000_OV_VISION_PIPELINE_2016/OV/VIVADO/OV7670/sdk_workspace/design_1_wrapper_hw_platform_1/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
loadhw Z:/Dropbox/000_OV_VISION_PIPELINE_2016/OV/VIVADO/OV7670/sdk_workspace/design_1_wrapper_hw_platform_1/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
dow Z:/Dropbox/000_OV_VISION_PIPELINE_2016/OV/VIVADO/OV7670/sdk_workspace/ov7670_udp/Debug/ov7670_udp.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
con
