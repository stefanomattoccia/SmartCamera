############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LF_VALID_TO_AXIS_prj
set_top LF_valid_to_AXIS
add_files LF_valid_to_AXIS.cpp
add_files LF_valid_to_AXIS.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./LF_VALID_TO_AXIS_prj/solution1/directives.tcl"
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "LF_VALID_TO_AXIS"
