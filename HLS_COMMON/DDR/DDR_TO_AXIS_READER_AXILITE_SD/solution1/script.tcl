############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DDR_TO_AXIS_READER_AXILITE_SD
set_top ddr_to_axis_reader_SD
add_files DDR_TO_AXIS_READER_AXILITE_SD/ddr_to_axis_reader_SD.h
add_files DDR_TO_AXIS_READER_AXILITE_SD/ddr_to_axis_reader_SD.cpp
add_files -tb DDR_TO_AXIS_READER_AXILITE_SD/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 42 -name default
set_clock_uncertainty 1
#source "./DDR_TO_AXIS_READER_AXILITE_SD/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
