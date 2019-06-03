############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VIDEO_STREAM_MUX
set_top mux_sd_ov
add_files mux_sd_ov.cpp
add_files mux_sd_ov.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./VIDEO_STREAM_MUX/solution1/directives.tcl"
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "VIDEO_STREAM_MUX"
