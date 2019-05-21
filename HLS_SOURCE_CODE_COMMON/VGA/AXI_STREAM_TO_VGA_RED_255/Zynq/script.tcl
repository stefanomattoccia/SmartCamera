############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_STREAM_TO_VGA_RED_255
set_top axi_stream_to_vga_red_255
add_files AXI_STREAM_TO_VGA_RED_255/vga.h
add_files AXI_STREAM_TO_VGA_RED_255/vga.cpp
add_files -tb AXI_STREAM_TO_VGA_RED_255/testbench.cpp
open_solution "Zynq"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./AXI_STREAM_TO_VGA_RED_255/Zynq/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
