
call xelab xil_defaultlib.apatb_LF_valid_to_AXIS_top -prj LF_valid_to_AXIS.prj --lib "ieee_proposed=./ieee_proposed" -s LF_valid_to_AXIS -debug wave
call xsim --noieeewarnings LF_valid_to_AXIS -tclbatch LF_valid_to_AXIS.tcl

