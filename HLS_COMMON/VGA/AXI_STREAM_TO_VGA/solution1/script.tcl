############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_STREAM_TO_VGA
set_top axi_stream_to_vga
add_files AXI_STREAM_TO_VGA/vga_bram_read_address.h
add_files AXI_STREAM_TO_VGA/vga_bram_read_address.cpp
add_files -tb AXI_STREAM_TO_VGA/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./AXI_STREAM_TO_VGA/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -format ip_catalog
