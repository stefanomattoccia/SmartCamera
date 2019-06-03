############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PATTERN_GENERATOR_CROSS_prj
set_top pattern_generator_cross
add_files pattern_generator.cpp
add_files pattern_generator.h
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./PATTERN_GENERATOR_CROSS_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "PATTERN_GENERATOR_CROSS"
