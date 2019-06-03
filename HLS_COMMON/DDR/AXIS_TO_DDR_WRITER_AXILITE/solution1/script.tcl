############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXIS_TO_DDR_WRITER_AXILITE
set_top axis_to_ddr_writer
add_files AXIS_TO_DDR_WRITER_AXILITE/axis_to_ddr_writer.cpp
add_files AXIS_TO_DDR_WRITER_AXILITE/axis_to_ddr_writer.h
add_files -tb AXIS_TO_DDR_WRITER_AXILITE/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 8 -name default
source "./AXIS_TO_DDR_WRITER_AXILITE/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
