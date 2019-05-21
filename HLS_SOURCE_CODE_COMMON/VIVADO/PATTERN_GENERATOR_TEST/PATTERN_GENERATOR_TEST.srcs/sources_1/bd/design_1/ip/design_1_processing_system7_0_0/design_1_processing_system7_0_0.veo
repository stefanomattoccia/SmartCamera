// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:ip:processing_system7:5.5
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
design_1_processing_system7_0_0 your_instance_name (
  .TTC0_WAVE0_OUT(TTC0_WAVE0_OUT),                      // output wire TTC0_WAVE0_OUT
  .TTC0_WAVE1_OUT(TTC0_WAVE1_OUT),                      // output wire TTC0_WAVE1_OUT
  .TTC0_WAVE2_OUT(TTC0_WAVE2_OUT),                      // output wire TTC0_WAVE2_OUT
  .USB0_PORT_INDCTL(USB0_PORT_INDCTL),                  // output wire [1 : 0] USB0_PORT_INDCTL
  .USB0_VBUS_PWRSELECT(USB0_VBUS_PWRSELECT),            // output wire USB0_VBUS_PWRSELECT
  .USB0_VBUS_PWRFAULT(USB0_VBUS_PWRFAULT),              // input wire USB0_VBUS_PWRFAULT
  .S_AXI_HP0_ARREADY(S_AXI_HP0_ARREADY),                // output wire S_AXI_HP0_ARREADY
  .S_AXI_HP0_AWREADY(S_AXI_HP0_AWREADY),                // output wire S_AXI_HP0_AWREADY
  .S_AXI_HP0_BVALID(S_AXI_HP0_BVALID),                  // output wire S_AXI_HP0_BVALID
  .S_AXI_HP0_RLAST(S_AXI_HP0_RLAST),                    // output wire S_AXI_HP0_RLAST
  .S_AXI_HP0_RVALID(S_AXI_HP0_RVALID),                  // output wire S_AXI_HP0_RVALID
  .S_AXI_HP0_WREADY(S_AXI_HP0_WREADY),                  // output wire S_AXI_HP0_WREADY
  .S_AXI_HP0_BRESP(S_AXI_HP0_BRESP),                    // output wire [1 : 0] S_AXI_HP0_BRESP
  .S_AXI_HP0_RRESP(S_AXI_HP0_RRESP),                    // output wire [1 : 0] S_AXI_HP0_RRESP
  .S_AXI_HP0_BID(S_AXI_HP0_BID),                        // output wire [5 : 0] S_AXI_HP0_BID
  .S_AXI_HP0_RID(S_AXI_HP0_RID),                        // output wire [5 : 0] S_AXI_HP0_RID
  .S_AXI_HP0_RDATA(S_AXI_HP0_RDATA),                    // output wire [63 : 0] S_AXI_HP0_RDATA
  .S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT),                  // output wire [7 : 0] S_AXI_HP0_RCOUNT
  .S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT),                  // output wire [7 : 0] S_AXI_HP0_WCOUNT
  .S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT),                // output wire [2 : 0] S_AXI_HP0_RACOUNT
  .S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT),                // output wire [5 : 0] S_AXI_HP0_WACOUNT
  .S_AXI_HP0_ACLK(S_AXI_HP0_ACLK),                      // input wire S_AXI_HP0_ACLK
  .S_AXI_HP0_ARVALID(S_AXI_HP0_ARVALID),                // input wire S_AXI_HP0_ARVALID
  .S_AXI_HP0_AWVALID(S_AXI_HP0_AWVALID),                // input wire S_AXI_HP0_AWVALID
  .S_AXI_HP0_BREADY(S_AXI_HP0_BREADY),                  // input wire S_AXI_HP0_BREADY
  .S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN),  // input wire S_AXI_HP0_RDISSUECAP1_EN
  .S_AXI_HP0_RREADY(S_AXI_HP0_RREADY),                  // input wire S_AXI_HP0_RREADY
  .S_AXI_HP0_WLAST(S_AXI_HP0_WLAST),                    // input wire S_AXI_HP0_WLAST
  .S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN),  // input wire S_AXI_HP0_WRISSUECAP1_EN
  .S_AXI_HP0_WVALID(S_AXI_HP0_WVALID),                  // input wire S_AXI_HP0_WVALID
  .S_AXI_HP0_ARBURST(S_AXI_HP0_ARBURST),                // input wire [1 : 0] S_AXI_HP0_ARBURST
  .S_AXI_HP0_ARLOCK(S_AXI_HP0_ARLOCK),                  // input wire [1 : 0] S_AXI_HP0_ARLOCK
  .S_AXI_HP0_ARSIZE(S_AXI_HP0_ARSIZE),                  // input wire [2 : 0] S_AXI_HP0_ARSIZE
  .S_AXI_HP0_AWBURST(S_AXI_HP0_AWBURST),                // input wire [1 : 0] S_AXI_HP0_AWBURST
  .S_AXI_HP0_AWLOCK(S_AXI_HP0_AWLOCK),                  // input wire [1 : 0] S_AXI_HP0_AWLOCK
  .S_AXI_HP0_AWSIZE(S_AXI_HP0_AWSIZE),                  // input wire [2 : 0] S_AXI_HP0_AWSIZE
  .S_AXI_HP0_ARPROT(S_AXI_HP0_ARPROT),                  // input wire [2 : 0] S_AXI_HP0_ARPROT
  .S_AXI_HP0_AWPROT(S_AXI_HP0_AWPROT),                  // input wire [2 : 0] S_AXI_HP0_AWPROT
  .S_AXI_HP0_ARADDR(S_AXI_HP0_ARADDR),                  // input wire [31 : 0] S_AXI_HP0_ARADDR
  .S_AXI_HP0_AWADDR(S_AXI_HP0_AWADDR),                  // input wire [31 : 0] S_AXI_HP0_AWADDR
  .S_AXI_HP0_ARCACHE(S_AXI_HP0_ARCACHE),                // input wire [3 : 0] S_AXI_HP0_ARCACHE
  .S_AXI_HP0_ARLEN(S_AXI_HP0_ARLEN),                    // input wire [3 : 0] S_AXI_HP0_ARLEN
  .S_AXI_HP0_ARQOS(S_AXI_HP0_ARQOS),                    // input wire [3 : 0] S_AXI_HP0_ARQOS
  .S_AXI_HP0_AWCACHE(S_AXI_HP0_AWCACHE),                // input wire [3 : 0] S_AXI_HP0_AWCACHE
  .S_AXI_HP0_AWLEN(S_AXI_HP0_AWLEN),                    // input wire [3 : 0] S_AXI_HP0_AWLEN
  .S_AXI_HP0_AWQOS(S_AXI_HP0_AWQOS),                    // input wire [3 : 0] S_AXI_HP0_AWQOS
  .S_AXI_HP0_ARID(S_AXI_HP0_ARID),                      // input wire [5 : 0] S_AXI_HP0_ARID
  .S_AXI_HP0_AWID(S_AXI_HP0_AWID),                      // input wire [5 : 0] S_AXI_HP0_AWID
  .S_AXI_HP0_WID(S_AXI_HP0_WID),                        // input wire [5 : 0] S_AXI_HP0_WID
  .S_AXI_HP0_WDATA(S_AXI_HP0_WDATA),                    // input wire [63 : 0] S_AXI_HP0_WDATA
  .S_AXI_HP0_WSTRB(S_AXI_HP0_WSTRB),                    // input wire [7 : 0] S_AXI_HP0_WSTRB
  .S_AXI_HP1_ARREADY(S_AXI_HP1_ARREADY),                // output wire S_AXI_HP1_ARREADY
  .S_AXI_HP1_AWREADY(S_AXI_HP1_AWREADY),                // output wire S_AXI_HP1_AWREADY
  .S_AXI_HP1_BVALID(S_AXI_HP1_BVALID),                  // output wire S_AXI_HP1_BVALID
  .S_AXI_HP1_RLAST(S_AXI_HP1_RLAST),                    // output wire S_AXI_HP1_RLAST
  .S_AXI_HP1_RVALID(S_AXI_HP1_RVALID),                  // output wire S_AXI_HP1_RVALID
  .S_AXI_HP1_WREADY(S_AXI_HP1_WREADY),                  // output wire S_AXI_HP1_WREADY
  .S_AXI_HP1_BRESP(S_AXI_HP1_BRESP),                    // output wire [1 : 0] S_AXI_HP1_BRESP
  .S_AXI_HP1_RRESP(S_AXI_HP1_RRESP),                    // output wire [1 : 0] S_AXI_HP1_RRESP
  .S_AXI_HP1_BID(S_AXI_HP1_BID),                        // output wire [5 : 0] S_AXI_HP1_BID
  .S_AXI_HP1_RID(S_AXI_HP1_RID),                        // output wire [5 : 0] S_AXI_HP1_RID
  .S_AXI_HP1_RDATA(S_AXI_HP1_RDATA),                    // output wire [63 : 0] S_AXI_HP1_RDATA
  .S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT),                  // output wire [7 : 0] S_AXI_HP1_RCOUNT
  .S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT),                  // output wire [7 : 0] S_AXI_HP1_WCOUNT
  .S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT),                // output wire [2 : 0] S_AXI_HP1_RACOUNT
  .S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT),                // output wire [5 : 0] S_AXI_HP1_WACOUNT
  .S_AXI_HP1_ACLK(S_AXI_HP1_ACLK),                      // input wire S_AXI_HP1_ACLK
  .S_AXI_HP1_ARVALID(S_AXI_HP1_ARVALID),                // input wire S_AXI_HP1_ARVALID
  .S_AXI_HP1_AWVALID(S_AXI_HP1_AWVALID),                // input wire S_AXI_HP1_AWVALID
  .S_AXI_HP1_BREADY(S_AXI_HP1_BREADY),                  // input wire S_AXI_HP1_BREADY
  .S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN),  // input wire S_AXI_HP1_RDISSUECAP1_EN
  .S_AXI_HP1_RREADY(S_AXI_HP1_RREADY),                  // input wire S_AXI_HP1_RREADY
  .S_AXI_HP1_WLAST(S_AXI_HP1_WLAST),                    // input wire S_AXI_HP1_WLAST
  .S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN),  // input wire S_AXI_HP1_WRISSUECAP1_EN
  .S_AXI_HP1_WVALID(S_AXI_HP1_WVALID),                  // input wire S_AXI_HP1_WVALID
  .S_AXI_HP1_ARBURST(S_AXI_HP1_ARBURST),                // input wire [1 : 0] S_AXI_HP1_ARBURST
  .S_AXI_HP1_ARLOCK(S_AXI_HP1_ARLOCK),                  // input wire [1 : 0] S_AXI_HP1_ARLOCK
  .S_AXI_HP1_ARSIZE(S_AXI_HP1_ARSIZE),                  // input wire [2 : 0] S_AXI_HP1_ARSIZE
  .S_AXI_HP1_AWBURST(S_AXI_HP1_AWBURST),                // input wire [1 : 0] S_AXI_HP1_AWBURST
  .S_AXI_HP1_AWLOCK(S_AXI_HP1_AWLOCK),                  // input wire [1 : 0] S_AXI_HP1_AWLOCK
  .S_AXI_HP1_AWSIZE(S_AXI_HP1_AWSIZE),                  // input wire [2 : 0] S_AXI_HP1_AWSIZE
  .S_AXI_HP1_ARPROT(S_AXI_HP1_ARPROT),                  // input wire [2 : 0] S_AXI_HP1_ARPROT
  .S_AXI_HP1_AWPROT(S_AXI_HP1_AWPROT),                  // input wire [2 : 0] S_AXI_HP1_AWPROT
  .S_AXI_HP1_ARADDR(S_AXI_HP1_ARADDR),                  // input wire [31 : 0] S_AXI_HP1_ARADDR
  .S_AXI_HP1_AWADDR(S_AXI_HP1_AWADDR),                  // input wire [31 : 0] S_AXI_HP1_AWADDR
  .S_AXI_HP1_ARCACHE(S_AXI_HP1_ARCACHE),                // input wire [3 : 0] S_AXI_HP1_ARCACHE
  .S_AXI_HP1_ARLEN(S_AXI_HP1_ARLEN),                    // input wire [3 : 0] S_AXI_HP1_ARLEN
  .S_AXI_HP1_ARQOS(S_AXI_HP1_ARQOS),                    // input wire [3 : 0] S_AXI_HP1_ARQOS
  .S_AXI_HP1_AWCACHE(S_AXI_HP1_AWCACHE),                // input wire [3 : 0] S_AXI_HP1_AWCACHE
  .S_AXI_HP1_AWLEN(S_AXI_HP1_AWLEN),                    // input wire [3 : 0] S_AXI_HP1_AWLEN
  .S_AXI_HP1_AWQOS(S_AXI_HP1_AWQOS),                    // input wire [3 : 0] S_AXI_HP1_AWQOS
  .S_AXI_HP1_ARID(S_AXI_HP1_ARID),                      // input wire [5 : 0] S_AXI_HP1_ARID
  .S_AXI_HP1_AWID(S_AXI_HP1_AWID),                      // input wire [5 : 0] S_AXI_HP1_AWID
  .S_AXI_HP1_WID(S_AXI_HP1_WID),                        // input wire [5 : 0] S_AXI_HP1_WID
  .S_AXI_HP1_WDATA(S_AXI_HP1_WDATA),                    // input wire [63 : 0] S_AXI_HP1_WDATA
  .S_AXI_HP1_WSTRB(S_AXI_HP1_WSTRB),                    // input wire [7 : 0] S_AXI_HP1_WSTRB
  .FCLK_CLK0(FCLK_CLK0),                                // output wire FCLK_CLK0
  .FCLK_RESET0_N(FCLK_RESET0_N),                        // output wire FCLK_RESET0_N
  .MIO(MIO),                                            // inout wire [53 : 0] MIO
  .DDR_CAS_n(DDR_CAS_n),                                // inout wire DDR_CAS_n
  .DDR_CKE(DDR_CKE),                                    // inout wire DDR_CKE
  .DDR_Clk_n(DDR_Clk_n),                                // inout wire DDR_Clk_n
  .DDR_Clk(DDR_Clk),                                    // inout wire DDR_Clk
  .DDR_CS_n(DDR_CS_n),                                  // inout wire DDR_CS_n
  .DDR_DRSTB(DDR_DRSTB),                                // inout wire DDR_DRSTB
  .DDR_ODT(DDR_ODT),                                    // inout wire DDR_ODT
  .DDR_RAS_n(DDR_RAS_n),                                // inout wire DDR_RAS_n
  .DDR_WEB(DDR_WEB),                                    // inout wire DDR_WEB
  .DDR_BankAddr(DDR_BankAddr),                          // inout wire [2 : 0] DDR_BankAddr
  .DDR_Addr(DDR_Addr),                                  // inout wire [14 : 0] DDR_Addr
  .DDR_VRN(DDR_VRN),                                    // inout wire DDR_VRN
  .DDR_VRP(DDR_VRP),                                    // inout wire DDR_VRP
  .DDR_DM(DDR_DM),                                      // inout wire [3 : 0] DDR_DM
  .DDR_DQ(DDR_DQ),                                      // inout wire [31 : 0] DDR_DQ
  .DDR_DQS_n(DDR_DQS_n),                                // inout wire [3 : 0] DDR_DQS_n
  .DDR_DQS(DDR_DQS),                                    // inout wire [3 : 0] DDR_DQS
  .PS_SRSTB(PS_SRSTB),                                  // inout wire PS_SRSTB
  .PS_CLK(PS_CLK),                                      // inout wire PS_CLK
  .PS_PORB(PS_PORB)                                    // inout wire PS_PORB
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file design_1_processing_system7_0_0.v when simulating
// the core, design_1_processing_system7_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

