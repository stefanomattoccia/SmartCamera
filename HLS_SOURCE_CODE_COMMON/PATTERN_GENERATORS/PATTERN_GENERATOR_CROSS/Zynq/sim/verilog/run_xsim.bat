
call xelab xil_defaultlib.apatb_pattern_generator_top -prj pattern_generator.prj --lib "ieee_proposed=./ieee_proposed" -s pattern_generator -debug wave
call xsim --noieeewarnings pattern_generator -tclbatch pattern_generator.tcl

