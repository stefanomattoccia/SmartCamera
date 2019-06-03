############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DDR_TO_AXIS_READER_AXILITE_prj
set_top ddr_to_axis_reader
add_files ddr_to_axis_reader.cpp
add_files ddr_to_axis_reader.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./DDR_TO_AXIS_READER_AXILITE_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "DDR_TO_AXIS_READER_AXILITE"
