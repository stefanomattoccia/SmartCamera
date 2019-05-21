// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:ddr_to_axis_reader:1.0
// IP Revision: 1604301925

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ddr_to_axis_reader_0_1 (
  s_axi_AXILiteS_AWADDR,
  s_axi_AXILiteS_AWVALID,
  s_axi_AXILiteS_AWREADY,
  s_axi_AXILiteS_WDATA,
  s_axi_AXILiteS_WSTRB,
  s_axi_AXILiteS_WVALID,
  s_axi_AXILiteS_WREADY,
  s_axi_AXILiteS_BRESP,
  s_axi_AXILiteS_BVALID,
  s_axi_AXILiteS_BREADY,
  s_axi_AXILiteS_ARADDR,
  s_axi_AXILiteS_ARVALID,
  s_axi_AXILiteS_ARREADY,
  s_axi_AXILiteS_RDATA,
  s_axi_AXILiteS_RRESP,
  s_axi_AXILiteS_RVALID,
  s_axi_AXILiteS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  outStream_V_TVALID,
  outStream_V_TREADY,
  outStream_V_TDATA,
  m_axi_base_ddr_addr_AWADDR,
  m_axi_base_ddr_addr_AWLEN,
  m_axi_base_ddr_addr_AWSIZE,
  m_axi_base_ddr_addr_AWBURST,
  m_axi_base_ddr_addr_AWLOCK,
  m_axi_base_ddr_addr_AWREGION,
  m_axi_base_ddr_addr_AWCACHE,
  m_axi_base_ddr_addr_AWPROT,
  m_axi_base_ddr_addr_AWQOS,
  m_axi_base_ddr_addr_AWVALID,
  m_axi_base_ddr_addr_AWREADY,
  m_axi_base_ddr_addr_WDATA,
  m_axi_base_ddr_addr_WSTRB,
  m_axi_base_ddr_addr_WLAST,
  m_axi_base_ddr_addr_WVALID,
  m_axi_base_ddr_addr_WREADY,
  m_axi_base_ddr_addr_BRESP,
  m_axi_base_ddr_addr_BVALID,
  m_axi_base_ddr_addr_BREADY,
  m_axi_base_ddr_addr_ARADDR,
  m_axi_base_ddr_addr_ARLEN,
  m_axi_base_ddr_addr_ARSIZE,
  m_axi_base_ddr_addr_ARBURST,
  m_axi_base_ddr_addr_ARLOCK,
  m_axi_base_ddr_addr_ARREGION,
  m_axi_base_ddr_addr_ARCACHE,
  m_axi_base_ddr_addr_ARPROT,
  m_axi_base_ddr_addr_ARQOS,
  m_axi_base_ddr_addr_ARVALID,
  m_axi_base_ddr_addr_ARREADY,
  m_axi_base_ddr_addr_RDATA,
  m_axi_base_ddr_addr_RRESP,
  m_axi_base_ddr_addr_RLAST,
  m_axi_base_ddr_addr_RVALID,
  m_axi_base_ddr_addr_RREADY,
  frame_index_V
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *)
input wire [5 : 0] s_axi_AXILiteS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *)
input wire s_axi_AXILiteS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *)
output wire s_axi_AXILiteS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *)
input wire [31 : 0] s_axi_AXILiteS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *)
input wire [3 : 0] s_axi_AXILiteS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *)
input wire s_axi_AXILiteS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *)
output wire s_axi_AXILiteS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *)
output wire [1 : 0] s_axi_AXILiteS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *)
output wire s_axi_AXILiteS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *)
input wire s_axi_AXILiteS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *)
input wire [5 : 0] s_axi_AXILiteS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *)
input wire s_axi_AXILiteS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *)
output wire s_axi_AXILiteS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *)
output wire [31 : 0] s_axi_AXILiteS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *)
output wire [1 : 0] s_axi_AXILiteS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *)
output wire s_axi_AXILiteS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *)
input wire s_axi_AXILiteS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_V TVALID" *)
output wire outStream_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_V TREADY" *)
input wire outStream_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_V TDATA" *)
output wire [7 : 0] outStream_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWADDR" *)
output wire [31 : 0] m_axi_base_ddr_addr_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWLEN" *)
output wire [7 : 0] m_axi_base_ddr_addr_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWSIZE" *)
output wire [2 : 0] m_axi_base_ddr_addr_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWBURST" *)
output wire [1 : 0] m_axi_base_ddr_addr_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWLOCK" *)
output wire [1 : 0] m_axi_base_ddr_addr_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWREGION" *)
output wire [3 : 0] m_axi_base_ddr_addr_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWCACHE" *)
output wire [3 : 0] m_axi_base_ddr_addr_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWPROT" *)
output wire [2 : 0] m_axi_base_ddr_addr_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWQOS" *)
output wire [3 : 0] m_axi_base_ddr_addr_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWVALID" *)
output wire m_axi_base_ddr_addr_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr AWREADY" *)
input wire m_axi_base_ddr_addr_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr WDATA" *)
output wire [63 : 0] m_axi_base_ddr_addr_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr WSTRB" *)
output wire [7 : 0] m_axi_base_ddr_addr_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr WLAST" *)
output wire m_axi_base_ddr_addr_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr WVALID" *)
output wire m_axi_base_ddr_addr_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr WREADY" *)
input wire m_axi_base_ddr_addr_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr BRESP" *)
input wire [1 : 0] m_axi_base_ddr_addr_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr BVALID" *)
input wire m_axi_base_ddr_addr_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr BREADY" *)
output wire m_axi_base_ddr_addr_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARADDR" *)
output wire [31 : 0] m_axi_base_ddr_addr_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARLEN" *)
output wire [7 : 0] m_axi_base_ddr_addr_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARSIZE" *)
output wire [2 : 0] m_axi_base_ddr_addr_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARBURST" *)
output wire [1 : 0] m_axi_base_ddr_addr_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARLOCK" *)
output wire [1 : 0] m_axi_base_ddr_addr_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARREGION" *)
output wire [3 : 0] m_axi_base_ddr_addr_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARCACHE" *)
output wire [3 : 0] m_axi_base_ddr_addr_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARPROT" *)
output wire [2 : 0] m_axi_base_ddr_addr_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARQOS" *)
output wire [3 : 0] m_axi_base_ddr_addr_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARVALID" *)
output wire m_axi_base_ddr_addr_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr ARREADY" *)
input wire m_axi_base_ddr_addr_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr RDATA" *)
input wire [63 : 0] m_axi_base_ddr_addr_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr RRESP" *)
input wire [1 : 0] m_axi_base_ddr_addr_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr RLAST" *)
input wire m_axi_base_ddr_addr_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr RVALID" *)
input wire m_axi_base_ddr_addr_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_base_ddr_addr RREADY" *)
output wire m_axi_base_ddr_addr_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 frame_index_V DATA" *)
input wire [7 : 0] frame_index_V;

  ddr_to_axis_reader #(
    .C_S_AXI_AXILITES_ADDR_WIDTH(6),
    .C_S_AXI_AXILITES_DATA_WIDTH(32),
    .C_M_AXI_BASE_DDR_ADDR_ID_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_ADDR_WIDTH(32),
    .C_M_AXI_BASE_DDR_ADDR_DATA_WIDTH(64),
    .C_M_AXI_BASE_DDR_ADDR_AWUSER_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_ARUSER_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_WUSER_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_RUSER_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_BUSER_WIDTH(1),
    .C_M_AXI_BASE_DDR_ADDR_USER_VALUE('H00000000),
    .C_M_AXI_BASE_DDR_ADDR_PROT_VALUE('B000),
    .C_M_AXI_BASE_DDR_ADDR_CACHE_VALUE('B0011),
    .C_M_AXI_BASE_DDR_ADDR_TARGET_ADDR('H00000000)
  ) inst (
    .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
    .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
    .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
    .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
    .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
    .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
    .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
    .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .outStream_V_TVALID(outStream_V_TVALID),
    .outStream_V_TREADY(outStream_V_TREADY),
    .outStream_V_TDATA(outStream_V_TDATA),
    .m_axi_base_ddr_addr_AWID(),
    .m_axi_base_ddr_addr_AWADDR(m_axi_base_ddr_addr_AWADDR),
    .m_axi_base_ddr_addr_AWLEN(m_axi_base_ddr_addr_AWLEN),
    .m_axi_base_ddr_addr_AWSIZE(m_axi_base_ddr_addr_AWSIZE),
    .m_axi_base_ddr_addr_AWBURST(m_axi_base_ddr_addr_AWBURST),
    .m_axi_base_ddr_addr_AWLOCK(m_axi_base_ddr_addr_AWLOCK),
    .m_axi_base_ddr_addr_AWREGION(m_axi_base_ddr_addr_AWREGION),
    .m_axi_base_ddr_addr_AWCACHE(m_axi_base_ddr_addr_AWCACHE),
    .m_axi_base_ddr_addr_AWPROT(m_axi_base_ddr_addr_AWPROT),
    .m_axi_base_ddr_addr_AWQOS(m_axi_base_ddr_addr_AWQOS),
    .m_axi_base_ddr_addr_AWUSER(),
    .m_axi_base_ddr_addr_AWVALID(m_axi_base_ddr_addr_AWVALID),
    .m_axi_base_ddr_addr_AWREADY(m_axi_base_ddr_addr_AWREADY),
    .m_axi_base_ddr_addr_WID(),
    .m_axi_base_ddr_addr_WDATA(m_axi_base_ddr_addr_WDATA),
    .m_axi_base_ddr_addr_WSTRB(m_axi_base_ddr_addr_WSTRB),
    .m_axi_base_ddr_addr_WLAST(m_axi_base_ddr_addr_WLAST),
    .m_axi_base_ddr_addr_WUSER(),
    .m_axi_base_ddr_addr_WVALID(m_axi_base_ddr_addr_WVALID),
    .m_axi_base_ddr_addr_WREADY(m_axi_base_ddr_addr_WREADY),
    .m_axi_base_ddr_addr_BID(1'B0),
    .m_axi_base_ddr_addr_BRESP(m_axi_base_ddr_addr_BRESP),
    .m_axi_base_ddr_addr_BUSER(1'B0),
    .m_axi_base_ddr_addr_BVALID(m_axi_base_ddr_addr_BVALID),
    .m_axi_base_ddr_addr_BREADY(m_axi_base_ddr_addr_BREADY),
    .m_axi_base_ddr_addr_ARID(),
    .m_axi_base_ddr_addr_ARADDR(m_axi_base_ddr_addr_ARADDR),
    .m_axi_base_ddr_addr_ARLEN(m_axi_base_ddr_addr_ARLEN),
    .m_axi_base_ddr_addr_ARSIZE(m_axi_base_ddr_addr_ARSIZE),
    .m_axi_base_ddr_addr_ARBURST(m_axi_base_ddr_addr_ARBURST),
    .m_axi_base_ddr_addr_ARLOCK(m_axi_base_ddr_addr_ARLOCK),
    .m_axi_base_ddr_addr_ARREGION(m_axi_base_ddr_addr_ARREGION),
    .m_axi_base_ddr_addr_ARCACHE(m_axi_base_ddr_addr_ARCACHE),
    .m_axi_base_ddr_addr_ARPROT(m_axi_base_ddr_addr_ARPROT),
    .m_axi_base_ddr_addr_ARQOS(m_axi_base_ddr_addr_ARQOS),
    .m_axi_base_ddr_addr_ARUSER(),
    .m_axi_base_ddr_addr_ARVALID(m_axi_base_ddr_addr_ARVALID),
    .m_axi_base_ddr_addr_ARREADY(m_axi_base_ddr_addr_ARREADY),
    .m_axi_base_ddr_addr_RID(1'B0),
    .m_axi_base_ddr_addr_RDATA(m_axi_base_ddr_addr_RDATA),
    .m_axi_base_ddr_addr_RRESP(m_axi_base_ddr_addr_RRESP),
    .m_axi_base_ddr_addr_RLAST(m_axi_base_ddr_addr_RLAST),
    .m_axi_base_ddr_addr_RUSER(1'B0),
    .m_axi_base_ddr_addr_RVALID(m_axi_base_ddr_addr_RVALID),
    .m_axi_base_ddr_addr_RREADY(m_axi_base_ddr_addr_RREADY),
    .frame_index_V(frame_index_V)
  );
endmodule
