
call xelab xil_defaultlib.apatb_ov7670_grayscale_top -prj ov7670_grayscale.prj --lib "ieee_proposed=./ieee_proposed" -s ov7670_grayscale -debug wave
call xsim --noieeewarnings ov7670_grayscale -tclbatch ov7670_grayscale.tcl

