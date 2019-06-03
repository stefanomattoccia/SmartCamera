-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:axis_to_ddr_writer:1.0
-- IP Revision: 1604301920

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT design_1_axis_to_ddr_writer_0_1
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inputStream_V_TVALID : IN STD_LOGIC;
    inputStream_V_TREADY : OUT STD_LOGIC;
    inputStream_V_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_base_ddr_addr_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_base_ddr_addr_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_base_ddr_addr_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_base_ddr_addr_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_base_ddr_addr_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_AWVALID : OUT STD_LOGIC;
    m_axi_base_ddr_addr_AWREADY : IN STD_LOGIC;
    m_axi_base_ddr_addr_WDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_base_ddr_addr_WSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_base_ddr_addr_WLAST : OUT STD_LOGIC;
    m_axi_base_ddr_addr_WVALID : OUT STD_LOGIC;
    m_axi_base_ddr_addr_WREADY : IN STD_LOGIC;
    m_axi_base_ddr_addr_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_BVALID : IN STD_LOGIC;
    m_axi_base_ddr_addr_BREADY : OUT STD_LOGIC;
    m_axi_base_ddr_addr_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_base_ddr_addr_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_base_ddr_addr_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_base_ddr_addr_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_base_ddr_addr_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_base_ddr_addr_ARVALID : OUT STD_LOGIC;
    m_axi_base_ddr_addr_ARREADY : IN STD_LOGIC;
    m_axi_base_ddr_addr_RDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_base_ddr_addr_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_base_ddr_addr_RLAST : IN STD_LOGIC;
    m_axi_base_ddr_addr_RVALID : IN STD_LOGIC;
    m_axi_base_ddr_addr_RREADY : OUT STD_LOGIC;
    frame_index_V : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    frame_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : design_1_axis_to_ddr_writer_0_1
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    inputStream_V_TVALID => inputStream_V_TVALID,
    inputStream_V_TREADY => inputStream_V_TREADY,
    inputStream_V_TDATA => inputStream_V_TDATA,
    m_axi_base_ddr_addr_AWADDR => m_axi_base_ddr_addr_AWADDR,
    m_axi_base_ddr_addr_AWLEN => m_axi_base_ddr_addr_AWLEN,
    m_axi_base_ddr_addr_AWSIZE => m_axi_base_ddr_addr_AWSIZE,
    m_axi_base_ddr_addr_AWBURST => m_axi_base_ddr_addr_AWBURST,
    m_axi_base_ddr_addr_AWLOCK => m_axi_base_ddr_addr_AWLOCK,
    m_axi_base_ddr_addr_AWREGION => m_axi_base_ddr_addr_AWREGION,
    m_axi_base_ddr_addr_AWCACHE => m_axi_base_ddr_addr_AWCACHE,
    m_axi_base_ddr_addr_AWPROT => m_axi_base_ddr_addr_AWPROT,
    m_axi_base_ddr_addr_AWQOS => m_axi_base_ddr_addr_AWQOS,
    m_axi_base_ddr_addr_AWVALID => m_axi_base_ddr_addr_AWVALID,
    m_axi_base_ddr_addr_AWREADY => m_axi_base_ddr_addr_AWREADY,
    m_axi_base_ddr_addr_WDATA => m_axi_base_ddr_addr_WDATA,
    m_axi_base_ddr_addr_WSTRB => m_axi_base_ddr_addr_WSTRB,
    m_axi_base_ddr_addr_WLAST => m_axi_base_ddr_addr_WLAST,
    m_axi_base_ddr_addr_WVALID => m_axi_base_ddr_addr_WVALID,
    m_axi_base_ddr_addr_WREADY => m_axi_base_ddr_addr_WREADY,
    m_axi_base_ddr_addr_BRESP => m_axi_base_ddr_addr_BRESP,
    m_axi_base_ddr_addr_BVALID => m_axi_base_ddr_addr_BVALID,
    m_axi_base_ddr_addr_BREADY => m_axi_base_ddr_addr_BREADY,
    m_axi_base_ddr_addr_ARADDR => m_axi_base_ddr_addr_ARADDR,
    m_axi_base_ddr_addr_ARLEN => m_axi_base_ddr_addr_ARLEN,
    m_axi_base_ddr_addr_ARSIZE => m_axi_base_ddr_addr_ARSIZE,
    m_axi_base_ddr_addr_ARBURST => m_axi_base_ddr_addr_ARBURST,
    m_axi_base_ddr_addr_ARLOCK => m_axi_base_ddr_addr_ARLOCK,
    m_axi_base_ddr_addr_ARREGION => m_axi_base_ddr_addr_ARREGION,
    m_axi_base_ddr_addr_ARCACHE => m_axi_base_ddr_addr_ARCACHE,
    m_axi_base_ddr_addr_ARPROT => m_axi_base_ddr_addr_ARPROT,
    m_axi_base_ddr_addr_ARQOS => m_axi_base_ddr_addr_ARQOS,
    m_axi_base_ddr_addr_ARVALID => m_axi_base_ddr_addr_ARVALID,
    m_axi_base_ddr_addr_ARREADY => m_axi_base_ddr_addr_ARREADY,
    m_axi_base_ddr_addr_RDATA => m_axi_base_ddr_addr_RDATA,
    m_axi_base_ddr_addr_RRESP => m_axi_base_ddr_addr_RRESP,
    m_axi_base_ddr_addr_RLAST => m_axi_base_ddr_addr_RLAST,
    m_axi_base_ddr_addr_RVALID => m_axi_base_ddr_addr_RVALID,
    m_axi_base_ddr_addr_RREADY => m_axi_base_ddr_addr_RREADY,
    frame_index_V => frame_index_V,
    frame_count => frame_count
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file design_1_axis_to_ddr_writer_0_1.vhd when simulating
-- the core, design_1_axis_to_ddr_writer_0_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

