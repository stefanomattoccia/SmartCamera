connect -url tcp:127.0.0.1:3121
source D:/000_OFFICIAL_PIPELINE_2018/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248471216" && level==0} -index 1
fpga -file D:/000_OFFICIAL_PIPELINE_2018/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
loadhw D:/000_OFFICIAL_PIPELINE_2018/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zed 210248471216"} -index 0
ps7_init
ps7_post_config
