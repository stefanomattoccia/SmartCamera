############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXIS_TO_DDR_WRITER_AXILITE_prj
set_top axis_to_ddr_writer
add_files axis_to_ddr_writer.cpp
add_files axis_to_ddr_writer.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./AXIS_TO_DDR_WRITER_AXILITE_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "AXIS_TO_DDR_WRITER_AXILITE"
