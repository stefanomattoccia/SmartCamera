
call xelab xil_defaultlib.apatb_vga_bram_read_address_top -prj vga_bram_read_address.prj --lib "ieee_proposed=./ieee_proposed" -s vga_bram_read_address -debug wave
call xsim --noieeewarnings vga_bram_read_address -tclbatch vga_bram_read_address.tcl

