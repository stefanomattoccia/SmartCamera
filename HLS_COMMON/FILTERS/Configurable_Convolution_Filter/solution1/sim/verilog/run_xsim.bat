
call xelab xil_defaultlib.apatb_convolution_filter_top -prj convolution_filter.prj --initfile "C:/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s convolution_filter 
call xsim --noieeewarnings convolution_filter -tclbatch convolution_filter.tcl

