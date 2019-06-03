
call xelab xil_defaultlib.apatb_axis_to_ddr_writer_top -prj axis_to_ddr_writer.prj --lib "ieee_proposed=./ieee_proposed" -s axis_to_ddr_writer -debug wave
call xsim --noieeewarnings axis_to_ddr_writer -tclbatch axis_to_ddr_writer.tcl

