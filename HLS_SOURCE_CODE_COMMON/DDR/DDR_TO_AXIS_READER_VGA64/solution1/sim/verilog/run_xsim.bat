
call xelab xil_defaultlib.apatb_ddr_to_axis_reader_top -prj ddr_to_axis_reader.prj --lib "ieee_proposed=./ieee_proposed" -s ddr_to_axis_reader -debug wave
call xsim --noieeewarnings ddr_to_axis_reader -tclbatch ddr_to_axis_reader.tcl

