############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DDR_TO_AXIS_READER_VGA64
set_top ddr_to_axis_reader
add_files DDR_TO_AXIS_READER_VGA64/ddr_to_axis_reader.h
add_files DDR_TO_AXIS_READER_VGA64/ddr_to_axis_reader.cpp
add_files -tb DDR_TO_AXIS_READER_VGA64/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./DDR_TO_AXIS_READER_VGA64/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
