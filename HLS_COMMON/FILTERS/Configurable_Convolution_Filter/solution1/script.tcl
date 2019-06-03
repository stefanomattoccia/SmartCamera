############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Configurable_Convolution_Filter
set_top convolution_filter
add_files Configurable_Convolution_Filter/configurable_convolution_filter.h
add_files Configurable_Convolution_Filter/configurable_convolution_filter.cpp
add_files -tb Configurable_Convolution_Filter/Testbench.cpp
add_files -tb Configurable_Convolution_Filter/Testbench.h
add_files -tb Configurable_Convolution_Filter/ap_bmp.cpp
add_files -tb Configurable_Convolution_Filter/ap_bmp.h
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 24MHz -name default
#source "./Configurable_Convolution_Filter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
