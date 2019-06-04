############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project OV7670_GRAYSCALE_prj
set_top ov7670_grayscale
add_files ov7670_grayscale.cpp
add_files ov7670_grayscale.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./OV7670_GRAYSCALE_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "OV7670_GRAYSCALE"
