
call xelab xil_defaultlib.apatb_ov7670_interface_top -prj ov7670_interface.prj --lib "ieee_proposed=./ieee_proposed" -s ov7670_interface -debug wave
call xsim --noieeewarnings ov7670_interface -tclbatch ov7670_interface.tcl

