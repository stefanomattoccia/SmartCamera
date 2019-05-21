//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Mon Sep 25 20:58:43 2017
//Host        : Bert running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (B_V,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    G_V,
    H_SYNC_V,
    LED_FRAME_VALID,
    OV7670_RESET,
    PCLK,
    R_V,
    V_SYNC_V,
    XCLK,
    data_in_V,
    href_V,
    reset_sw,
    selftest,
    vsync_V);
  output [3:0]B_V;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [3:0]G_V;
  output [0:0]H_SYNC_V;
  output [0:0]LED_FRAME_VALID;
  output [0:0]OV7670_RESET;
  input PCLK;
  output [3:0]R_V;
  output [0:0]V_SYNC_V;
  output XCLK;
  input [7:0]data_in_V;
  input [0:0]href_V;
  input reset_sw;
  input [0:0]selftest;
  input [0:0]vsync_V;

  wire [3:0]B_V;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]G_V;
  wire [0:0]H_SYNC_V;
  wire [0:0]LED_FRAME_VALID;
  wire [0:0]OV7670_RESET;
  wire PCLK;
  wire [3:0]R_V;
  wire [0:0]V_SYNC_V;
  wire XCLK;
  wire [7:0]data_in_V;
  wire [0:0]href_V;
  wire reset_sw;
  wire [0:0]selftest;
  wire [0:0]vsync_V;

  design_1 design_1_i
       (.B_V(B_V),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .G_V(G_V),
        .H_SYNC_V(H_SYNC_V),
        .LED_FRAME_VALID(LED_FRAME_VALID),
        .OV7670_RESET(OV7670_RESET),
        .PCLK(PCLK),
        .R_V(R_V),
        .V_SYNC_V(V_SYNC_V),
        .XCLK(XCLK),
        .data_in_V(data_in_V),
        .href_V(href_V),
        .reset_sw(reset_sw),
        .selftest(selftest),
        .vsync_V(vsync_V));
endmodule
