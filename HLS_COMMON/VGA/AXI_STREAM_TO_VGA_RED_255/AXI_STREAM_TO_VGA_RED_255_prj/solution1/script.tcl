############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_STREAM_TO_VGA_RED_255_prj
set_top axi_stream_to_vga_red_255
add_files vga.cpp
add_files vga.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./AXI_STREAM_TO_VGA_RED_255_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -display_name "AXI_STREAM_TO_VGA_RED_255"
