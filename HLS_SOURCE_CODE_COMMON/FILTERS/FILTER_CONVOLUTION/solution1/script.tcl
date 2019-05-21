############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FILTER_CONVOLUTION
set_top Filter_Convolution
add_files FILTER_CONVOLUTION/Filter_convolution.cpp
add_files FILTER_CONVOLUTION/Filter_convolution.h
add_files -tb FILTER_CONVOLUTION/Testbench.cpp
add_files -tb FILTER_CONVOLUTION/Testbench.h
add_files -tb FILTER_CONVOLUTION/ap_bmp.cpp
add_files -tb FILTER_CONVOLUTION/ap_bmp.h
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./FILTER_CONVOLUTION/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
