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


// IP VLNV: xilinx.com:hls:ov7670_LUMA_CHROMA:1.0
// IP Revision: 1708191309

(* X_CORE_INFO = "ov7670_LUMA_CHROMA,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "design_1_ov7670_LUMA_CHROMA_0_0,ov7670_LUMA_CHROMA,{}" *)
(* CORE_GENERATION_INFO = "design_1_ov7670_LUMA_CHROMA_0_0,ov7670_LUMA_CHROMA,{x_ipProduct=Vivado 2016.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=ov7670_LUMA_CHROMA,x_ipVersion=1.0,x_ipCoreRevision=1708191309,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ov7670_LUMA_CHROMA_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  inStream_V_V_TVALID,
  inStream_V_V_TREADY,
  inStream_V_V_TDATA,
  outStream_grayscale_V_V_TVALID,
  outStream_grayscale_V_V_TREADY,
  outStream_grayscale_V_V_TDATA,
  enable_raw_stream,
  outStream_LUMA_V_V_TVALID,
  outStream_LUMA_V_V_TREADY,
  outStream_LUMA_V_V_TDATA,
  outStream_CHROMA_V_V_TVALID,
  outStream_CHROMA_V_V_TREADY,
  outStream_CHROMA_V_V_TDATA
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_V_V TVALID" *)
input wire inStream_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_V_V TREADY" *)
output wire inStream_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_V_V TDATA" *)
input wire [7 : 0] inStream_V_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_grayscale_V_V TVALID" *)
output wire outStream_grayscale_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_grayscale_V_V TREADY" *)
input wire outStream_grayscale_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_grayscale_V_V TDATA" *)
output wire [7 : 0] outStream_grayscale_V_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 enable_raw_stream DATA" *)
input wire [0 : 0] enable_raw_stream;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_LUMA_V_V TVALID" *)
output wire outStream_LUMA_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_LUMA_V_V TREADY" *)
input wire outStream_LUMA_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_LUMA_V_V TDATA" *)
output wire [7 : 0] outStream_LUMA_V_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_CHROMA_V_V TVALID" *)
output wire outStream_CHROMA_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_CHROMA_V_V TREADY" *)
input wire outStream_CHROMA_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream_CHROMA_V_V TDATA" *)
output wire [7 : 0] outStream_CHROMA_V_V_TDATA;

  ov7670_LUMA_CHROMA inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .inStream_V_V_TVALID(inStream_V_V_TVALID),
    .inStream_V_V_TREADY(inStream_V_V_TREADY),
    .inStream_V_V_TDATA(inStream_V_V_TDATA),
    .outStream_grayscale_V_V_TVALID(outStream_grayscale_V_V_TVALID),
    .outStream_grayscale_V_V_TREADY(outStream_grayscale_V_V_TREADY),
    .outStream_grayscale_V_V_TDATA(outStream_grayscale_V_V_TDATA),
    .enable_raw_stream(enable_raw_stream),
    .outStream_LUMA_V_V_TVALID(outStream_LUMA_V_V_TVALID),
    .outStream_LUMA_V_V_TREADY(outStream_LUMA_V_V_TREADY),
    .outStream_LUMA_V_V_TDATA(outStream_LUMA_V_V_TDATA),
    .outStream_CHROMA_V_V_TVALID(outStream_CHROMA_V_V_TVALID),
    .outStream_CHROMA_V_V_TREADY(outStream_CHROMA_V_V_TREADY),
    .outStream_CHROMA_V_V_TDATA(outStream_CHROMA_V_V_TDATA)
  );
endmodule
