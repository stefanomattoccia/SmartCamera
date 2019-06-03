############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project PATTERN_GENERATOR_CROSS
set_top pattern_generator_cross
add_files PATTERN_GENERATOR_CROSS/pattern_generator.h
add_files PATTERN_GENERATOR_CROSS/pattern_generator.cpp
add_files -tb PATTERN_GENERATOR_CROSS/test.cpp
open_solution "Zynq"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./PATTERN_GENERATOR_CROSS/Zynq/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
