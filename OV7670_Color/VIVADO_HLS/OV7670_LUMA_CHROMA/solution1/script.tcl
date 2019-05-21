############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project OV7670_LUMA_CHROMA
set_top ov7670_LUMA_CHROMA
add_files OV7670_LUMA_CHROMA/ov7670_LUMA_CHROMA.cpp
add_files OV7670_LUMA_CHROMA/ov7670_LUMA_CHROMA.h
add_files -tb OV7670_LUMA_CHROMA/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./OV7670_LUMA_CHROMA/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
