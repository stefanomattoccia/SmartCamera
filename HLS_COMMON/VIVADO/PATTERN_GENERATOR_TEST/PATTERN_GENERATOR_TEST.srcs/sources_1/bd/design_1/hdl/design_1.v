//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sat Apr 30 19:55:07 2016
//Host        : DESKTOP-S5M9ALU running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,da_axi4_cnt=2,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
    R_V,
    V_SYNC_V,
    ext_reset_in,
    selftest);
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
  output [3:0]R_V;
  output [0:0]V_SYNC_V;
  input ext_reset_in;
  input [0:0]selftest;

  wire [0:0]ap_start_1;
  wire [31:0]axi_mem_intercon_1_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_1_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_1_M00_AXI_ARCACHE;
  wire [3:0]axi_mem_intercon_1_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_1_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_1_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_1_M00_AXI_ARQOS;
  wire axi_mem_intercon_1_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_1_M00_AXI_ARSIZE;
  wire axi_mem_intercon_1_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_1_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_1_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_1_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_1_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWQOS;
  wire axi_mem_intercon_1_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_1_M00_AXI_AWSIZE;
  wire axi_mem_intercon_1_M00_AXI_AWVALID;
  wire axi_mem_intercon_1_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_1_M00_AXI_BRESP;
  wire axi_mem_intercon_1_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_1_M00_AXI_RDATA;
  wire axi_mem_intercon_1_M00_AXI_RLAST;
  wire axi_mem_intercon_1_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_1_M00_AXI_RRESP;
  wire axi_mem_intercon_1_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_1_M00_AXI_WDATA;
  wire axi_mem_intercon_1_M00_AXI_WLAST;
  wire axi_mem_intercon_1_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_1_M00_AXI_WSTRB;
  wire axi_mem_intercon_1_M00_AXI_WVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [3:0]axi_stream_to_vga_0_B_V;
  wire [3:0]axi_stream_to_vga_0_G_V;
  wire [0:0]axi_stream_to_vga_0_H_SYNC_V;
  wire [3:0]axi_stream_to_vga_0_R_V;
  wire [0:0]axi_stream_to_vga_0_V_SYNC_V;
  wire [7:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [7:0]axis_data_fifo_pipeline_to_writer_M_AXIS_TDATA;
  wire axis_data_fifo_pipeline_to_writer_M_AXIS_TREADY;
  wire axis_data_fifo_pipeline_to_writer_M_AXIS_TVALID;
  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire [2:0]axis_to_ddr_writer_frame_index_V;
  wire [31:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARADDR;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARBURST;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARCACHE;
  wire [7:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARLEN;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARLOCK;
  wire [2:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARPROT;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARQOS;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_ARREADY;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARREGION;
  wire [2:0]axis_to_ddr_writer_m_axi_base_ddr_addr_ARSIZE;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_ARVALID;
  wire [31:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWADDR;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWBURST;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWCACHE;
  wire [7:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWLEN;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWLOCK;
  wire [2:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWPROT;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWQOS;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_AWREADY;
  wire [3:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWREGION;
  wire [2:0]axis_to_ddr_writer_m_axi_base_ddr_addr_AWSIZE;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_AWVALID;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_BREADY;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_BRESP;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_BVALID;
  wire [63:0]axis_to_ddr_writer_m_axi_base_ddr_addr_RDATA;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_RLAST;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_RREADY;
  wire [1:0]axis_to_ddr_writer_m_axi_base_ddr_addr_RRESP;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_RVALID;
  wire [63:0]axis_to_ddr_writer_m_axi_base_ddr_addr_WDATA;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_WLAST;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_WREADY;
  wire [7:0]axis_to_ddr_writer_m_axi_base_ddr_addr_WSTRB;
  wire axis_to_ddr_writer_m_axi_base_ddr_addr_WVALID;
  wire clk_gen_25M_23M_clk_out2;
  wire clk_wiz_0_clk_out1;
  wire [7:0]ddr_to_axis_reader_0_outStream_V_TDATA;
  wire ddr_to_axis_reader_0_outStream_V_TREADY;
  wire ddr_to_axis_reader_0_outStream_V_TVALID;
  wire [31:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARADDR;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARBURST;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARCACHE;
  wire [7:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARLEN;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARLOCK;
  wire [2:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARPROT;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARQOS;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_ARREADY;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARREGION;
  wire [2:0]ddr_to_axis_reader_m_axi_base_ddr_addr_ARSIZE;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_ARVALID;
  wire [31:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWADDR;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWBURST;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWCACHE;
  wire [7:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWLEN;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWLOCK;
  wire [2:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWPROT;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWQOS;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_AWREADY;
  wire [3:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWREGION;
  wire [2:0]ddr_to_axis_reader_m_axi_base_ddr_addr_AWSIZE;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_AWVALID;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_BREADY;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_BRESP;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_BVALID;
  wire [63:0]ddr_to_axis_reader_m_axi_base_ddr_addr_RDATA;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_RLAST;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_RREADY;
  wire [1:0]ddr_to_axis_reader_m_axi_base_ddr_addr_RRESP;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_RVALID;
  wire [63:0]ddr_to_axis_reader_m_axi_base_ddr_addr_WDATA;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_WLAST;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_WREADY;
  wire [7:0]ddr_to_axis_reader_m_axi_base_ddr_addr_WSTRB;
  wire ddr_to_axis_reader_m_axi_base_ddr_addr_WVALID;
  wire ext_reset_in_1;
  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire [7:0]pattern_generator_cross_0_outputStream_V_TDATA;
  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire pattern_generator_cross_0_outputStream_V_TREADY;
  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire pattern_generator_cross_0_outputStream_V_TVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [0:0]reset_25M_interconnect_aresetn;
  wire [0:0]reset_25M_peripheral_aresetn;
  wire [0:0]rst_processing_system7_0_100M_interconnect_aresetn;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire [0:0]selftest_1;

  assign B_V[3:0] = axi_stream_to_vga_0_B_V;
  assign G_V[3:0] = axi_stream_to_vga_0_G_V;
  assign H_SYNC_V[0] = axi_stream_to_vga_0_H_SYNC_V;
  assign R_V[3:0] = axi_stream_to_vga_0_R_V;
  assign V_SYNC_V[0] = axi_stream_to_vga_0_V_SYNC_V;
  assign ext_reset_in_1 = ext_reset_in;
  assign selftest_1 = selftest[0];
  design_1_axi_mem_intercon_1_0 axi_mem_intercon_reader
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_processing_system7_0_100M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_mem_intercon_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_1_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(ddr_to_axis_reader_m_axi_base_ddr_addr_ARADDR),
        .S00_AXI_arburst(ddr_to_axis_reader_m_axi_base_ddr_addr_ARBURST),
        .S00_AXI_arcache(ddr_to_axis_reader_m_axi_base_ddr_addr_ARCACHE),
        .S00_AXI_arlen(ddr_to_axis_reader_m_axi_base_ddr_addr_ARLEN),
        .S00_AXI_arlock(ddr_to_axis_reader_m_axi_base_ddr_addr_ARLOCK),
        .S00_AXI_arprot(ddr_to_axis_reader_m_axi_base_ddr_addr_ARPROT),
        .S00_AXI_arqos(ddr_to_axis_reader_m_axi_base_ddr_addr_ARQOS),
        .S00_AXI_arready(ddr_to_axis_reader_m_axi_base_ddr_addr_ARREADY),
        .S00_AXI_arregion(ddr_to_axis_reader_m_axi_base_ddr_addr_ARREGION),
        .S00_AXI_arsize(ddr_to_axis_reader_m_axi_base_ddr_addr_ARSIZE),
        .S00_AXI_arvalid(ddr_to_axis_reader_m_axi_base_ddr_addr_ARVALID),
        .S00_AXI_awaddr(ddr_to_axis_reader_m_axi_base_ddr_addr_AWADDR),
        .S00_AXI_awburst(ddr_to_axis_reader_m_axi_base_ddr_addr_AWBURST),
        .S00_AXI_awcache(ddr_to_axis_reader_m_axi_base_ddr_addr_AWCACHE),
        .S00_AXI_awlen(ddr_to_axis_reader_m_axi_base_ddr_addr_AWLEN),
        .S00_AXI_awlock(ddr_to_axis_reader_m_axi_base_ddr_addr_AWLOCK),
        .S00_AXI_awprot(ddr_to_axis_reader_m_axi_base_ddr_addr_AWPROT),
        .S00_AXI_awqos(ddr_to_axis_reader_m_axi_base_ddr_addr_AWQOS),
        .S00_AXI_awready(ddr_to_axis_reader_m_axi_base_ddr_addr_AWREADY),
        .S00_AXI_awregion(ddr_to_axis_reader_m_axi_base_ddr_addr_AWREGION),
        .S00_AXI_awsize(ddr_to_axis_reader_m_axi_base_ddr_addr_AWSIZE),
        .S00_AXI_awvalid(ddr_to_axis_reader_m_axi_base_ddr_addr_AWVALID),
        .S00_AXI_bready(ddr_to_axis_reader_m_axi_base_ddr_addr_BREADY),
        .S00_AXI_bresp(ddr_to_axis_reader_m_axi_base_ddr_addr_BRESP),
        .S00_AXI_bvalid(ddr_to_axis_reader_m_axi_base_ddr_addr_BVALID),
        .S00_AXI_rdata(ddr_to_axis_reader_m_axi_base_ddr_addr_RDATA),
        .S00_AXI_rlast(ddr_to_axis_reader_m_axi_base_ddr_addr_RLAST),
        .S00_AXI_rready(ddr_to_axis_reader_m_axi_base_ddr_addr_RREADY),
        .S00_AXI_rresp(ddr_to_axis_reader_m_axi_base_ddr_addr_RRESP),
        .S00_AXI_rvalid(ddr_to_axis_reader_m_axi_base_ddr_addr_RVALID),
        .S00_AXI_wdata(ddr_to_axis_reader_m_axi_base_ddr_addr_WDATA),
        .S00_AXI_wlast(ddr_to_axis_reader_m_axi_base_ddr_addr_WLAST),
        .S00_AXI_wready(ddr_to_axis_reader_m_axi_base_ddr_addr_WREADY),
        .S00_AXI_wstrb(ddr_to_axis_reader_m_axi_base_ddr_addr_WSTRB),
        .S00_AXI_wvalid(ddr_to_axis_reader_m_axi_base_ddr_addr_WVALID));
  design_1_axi_mem_intercon_0 axi_mem_intercon_writer
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_processing_system7_0_100M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(axis_to_ddr_writer_m_axi_base_ddr_addr_ARADDR),
        .S00_AXI_arburst(axis_to_ddr_writer_m_axi_base_ddr_addr_ARBURST),
        .S00_AXI_arcache(axis_to_ddr_writer_m_axi_base_ddr_addr_ARCACHE),
        .S00_AXI_arlen(axis_to_ddr_writer_m_axi_base_ddr_addr_ARLEN),
        .S00_AXI_arlock(axis_to_ddr_writer_m_axi_base_ddr_addr_ARLOCK),
        .S00_AXI_arprot(axis_to_ddr_writer_m_axi_base_ddr_addr_ARPROT),
        .S00_AXI_arqos(axis_to_ddr_writer_m_axi_base_ddr_addr_ARQOS),
        .S00_AXI_arready(axis_to_ddr_writer_m_axi_base_ddr_addr_ARREADY),
        .S00_AXI_arregion(axis_to_ddr_writer_m_axi_base_ddr_addr_ARREGION),
        .S00_AXI_arsize(axis_to_ddr_writer_m_axi_base_ddr_addr_ARSIZE),
        .S00_AXI_arvalid(axis_to_ddr_writer_m_axi_base_ddr_addr_ARVALID),
        .S00_AXI_awaddr(axis_to_ddr_writer_m_axi_base_ddr_addr_AWADDR),
        .S00_AXI_awburst(axis_to_ddr_writer_m_axi_base_ddr_addr_AWBURST),
        .S00_AXI_awcache(axis_to_ddr_writer_m_axi_base_ddr_addr_AWCACHE),
        .S00_AXI_awlen(axis_to_ddr_writer_m_axi_base_ddr_addr_AWLEN),
        .S00_AXI_awlock(axis_to_ddr_writer_m_axi_base_ddr_addr_AWLOCK),
        .S00_AXI_awprot(axis_to_ddr_writer_m_axi_base_ddr_addr_AWPROT),
        .S00_AXI_awqos(axis_to_ddr_writer_m_axi_base_ddr_addr_AWQOS),
        .S00_AXI_awready(axis_to_ddr_writer_m_axi_base_ddr_addr_AWREADY),
        .S00_AXI_awregion(axis_to_ddr_writer_m_axi_base_ddr_addr_AWREGION),
        .S00_AXI_awsize(axis_to_ddr_writer_m_axi_base_ddr_addr_AWSIZE),
        .S00_AXI_awvalid(axis_to_ddr_writer_m_axi_base_ddr_addr_AWVALID),
        .S00_AXI_bready(axis_to_ddr_writer_m_axi_base_ddr_addr_BREADY),
        .S00_AXI_bresp(axis_to_ddr_writer_m_axi_base_ddr_addr_BRESP),
        .S00_AXI_bvalid(axis_to_ddr_writer_m_axi_base_ddr_addr_BVALID),
        .S00_AXI_rdata(axis_to_ddr_writer_m_axi_base_ddr_addr_RDATA),
        .S00_AXI_rlast(axis_to_ddr_writer_m_axi_base_ddr_addr_RLAST),
        .S00_AXI_rready(axis_to_ddr_writer_m_axi_base_ddr_addr_RREADY),
        .S00_AXI_rresp(axis_to_ddr_writer_m_axi_base_ddr_addr_RRESP),
        .S00_AXI_rvalid(axis_to_ddr_writer_m_axi_base_ddr_addr_RVALID),
        .S00_AXI_wdata(axis_to_ddr_writer_m_axi_base_ddr_addr_WDATA),
        .S00_AXI_wlast(axis_to_ddr_writer_m_axi_base_ddr_addr_WLAST),
        .S00_AXI_wready(axis_to_ddr_writer_m_axi_base_ddr_addr_WREADY),
        .S00_AXI_wstrb(axis_to_ddr_writer_m_axi_base_ddr_addr_WSTRB),
        .S00_AXI_wvalid(axis_to_ddr_writer_m_axi_base_ddr_addr_WVALID));
  design_1_axi_stream_to_vga_0_0 axi_stream_to_vga
       (.B_V(axi_stream_to_vga_0_B_V),
        .G_V(axi_stream_to_vga_0_G_V),
        .H_SYNC_V(axi_stream_to_vga_0_H_SYNC_V),
        .R_V(axi_stream_to_vga_0_R_V),
        .V_SYNC_V(axi_stream_to_vga_0_V_SYNC_V),
        .ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(reset_25M_peripheral_aresetn),
        .ap_start(ap_start_1),
        .inStream_V_V_TDATA(axis_data_fifo_0_M_AXIS_TDATA),
        .inStream_V_V_TREADY(axis_data_fifo_0_M_AXIS_TREADY),
        .inStream_V_V_TVALID(axis_data_fifo_0_M_AXIS_TVALID),
        .selftest(selftest_1));
  design_1_axis_data_fifo_1_0 axis_data_fifo_pipeline_to_writer
       (.m_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m_axis_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .m_axis_tdata(axis_data_fifo_pipeline_to_writer_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_pipeline_to_writer_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_pipeline_to_writer_M_AXIS_TVALID),
        .s_axis_aclk(clk_gen_25M_23M_clk_out2),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(pattern_generator_cross_0_outputStream_V_TDATA),
        .s_axis_tready(pattern_generator_cross_0_outputStream_V_TREADY),
        .s_axis_tvalid(pattern_generator_cross_0_outputStream_V_TVALID));
  design_1_axis_data_fifo_0_0 axis_data_fifo_reader_to_vga
       (.m_axis_aclk(clk_wiz_0_clk_out1),
        .m_axis_aresetn(reset_25M_interconnect_aresetn),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s_axis_aresetn(rst_processing_system7_0_100M_interconnect_aresetn),
        .s_axis_tdata(ddr_to_axis_reader_0_outStream_V_TDATA),
        .s_axis_tready(ddr_to_axis_reader_0_outStream_V_TREADY),
        .s_axis_tvalid(ddr_to_axis_reader_0_outStream_V_TVALID));
  design_1_axis_to_ddr_writer_0_1 axis_to_ddr_writer
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_start(ap_start_1),
        .frame_index_V(axis_to_ddr_writer_frame_index_V),
        .inputStream_V_TDATA(axis_data_fifo_pipeline_to_writer_M_AXIS_TDATA),
        .inputStream_V_TREADY(axis_data_fifo_pipeline_to_writer_M_AXIS_TREADY),
        .inputStream_V_TVALID(axis_data_fifo_pipeline_to_writer_M_AXIS_TVALID),
        .m_axi_base_ddr_addr_ARADDR(axis_to_ddr_writer_m_axi_base_ddr_addr_ARADDR),
        .m_axi_base_ddr_addr_ARBURST(axis_to_ddr_writer_m_axi_base_ddr_addr_ARBURST),
        .m_axi_base_ddr_addr_ARCACHE(axis_to_ddr_writer_m_axi_base_ddr_addr_ARCACHE),
        .m_axi_base_ddr_addr_ARLEN(axis_to_ddr_writer_m_axi_base_ddr_addr_ARLEN),
        .m_axi_base_ddr_addr_ARLOCK(axis_to_ddr_writer_m_axi_base_ddr_addr_ARLOCK),
        .m_axi_base_ddr_addr_ARPROT(axis_to_ddr_writer_m_axi_base_ddr_addr_ARPROT),
        .m_axi_base_ddr_addr_ARQOS(axis_to_ddr_writer_m_axi_base_ddr_addr_ARQOS),
        .m_axi_base_ddr_addr_ARREADY(axis_to_ddr_writer_m_axi_base_ddr_addr_ARREADY),
        .m_axi_base_ddr_addr_ARREGION(axis_to_ddr_writer_m_axi_base_ddr_addr_ARREGION),
        .m_axi_base_ddr_addr_ARSIZE(axis_to_ddr_writer_m_axi_base_ddr_addr_ARSIZE),
        .m_axi_base_ddr_addr_ARVALID(axis_to_ddr_writer_m_axi_base_ddr_addr_ARVALID),
        .m_axi_base_ddr_addr_AWADDR(axis_to_ddr_writer_m_axi_base_ddr_addr_AWADDR),
        .m_axi_base_ddr_addr_AWBURST(axis_to_ddr_writer_m_axi_base_ddr_addr_AWBURST),
        .m_axi_base_ddr_addr_AWCACHE(axis_to_ddr_writer_m_axi_base_ddr_addr_AWCACHE),
        .m_axi_base_ddr_addr_AWLEN(axis_to_ddr_writer_m_axi_base_ddr_addr_AWLEN),
        .m_axi_base_ddr_addr_AWLOCK(axis_to_ddr_writer_m_axi_base_ddr_addr_AWLOCK),
        .m_axi_base_ddr_addr_AWPROT(axis_to_ddr_writer_m_axi_base_ddr_addr_AWPROT),
        .m_axi_base_ddr_addr_AWQOS(axis_to_ddr_writer_m_axi_base_ddr_addr_AWQOS),
        .m_axi_base_ddr_addr_AWREADY(axis_to_ddr_writer_m_axi_base_ddr_addr_AWREADY),
        .m_axi_base_ddr_addr_AWREGION(axis_to_ddr_writer_m_axi_base_ddr_addr_AWREGION),
        .m_axi_base_ddr_addr_AWSIZE(axis_to_ddr_writer_m_axi_base_ddr_addr_AWSIZE),
        .m_axi_base_ddr_addr_AWVALID(axis_to_ddr_writer_m_axi_base_ddr_addr_AWVALID),
        .m_axi_base_ddr_addr_BREADY(axis_to_ddr_writer_m_axi_base_ddr_addr_BREADY),
        .m_axi_base_ddr_addr_BRESP(axis_to_ddr_writer_m_axi_base_ddr_addr_BRESP),
        .m_axi_base_ddr_addr_BVALID(axis_to_ddr_writer_m_axi_base_ddr_addr_BVALID),
        .m_axi_base_ddr_addr_RDATA(axis_to_ddr_writer_m_axi_base_ddr_addr_RDATA),
        .m_axi_base_ddr_addr_RLAST(axis_to_ddr_writer_m_axi_base_ddr_addr_RLAST),
        .m_axi_base_ddr_addr_RREADY(axis_to_ddr_writer_m_axi_base_ddr_addr_RREADY),
        .m_axi_base_ddr_addr_RRESP(axis_to_ddr_writer_m_axi_base_ddr_addr_RRESP),
        .m_axi_base_ddr_addr_RVALID(axis_to_ddr_writer_m_axi_base_ddr_addr_RVALID),
        .m_axi_base_ddr_addr_WDATA(axis_to_ddr_writer_m_axi_base_ddr_addr_WDATA),
        .m_axi_base_ddr_addr_WLAST(axis_to_ddr_writer_m_axi_base_ddr_addr_WLAST),
        .m_axi_base_ddr_addr_WREADY(axis_to_ddr_writer_m_axi_base_ddr_addr_WREADY),
        .m_axi_base_ddr_addr_WSTRB(axis_to_ddr_writer_m_axi_base_ddr_addr_WSTRB),
        .m_axi_base_ddr_addr_WVALID(axis_to_ddr_writer_m_axi_base_ddr_addr_WVALID));
  design_1_clk_wiz_0_0 clk_gen_25M_23M
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_gen_25M_23M_clk_out2));
  design_1_xlconstant_0_0 const_1
       (.dout(ap_start_1));
  design_1_ddr_to_axis_reader_0_1 ddr_to_axis_reader
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_processing_system7_0_100M_peripheral_aresetn),
        .ap_start(ap_start_1),
        .frame_index_V(axis_to_ddr_writer_frame_index_V),
        .m_axi_base_ddr_addr_ARADDR(ddr_to_axis_reader_m_axi_base_ddr_addr_ARADDR),
        .m_axi_base_ddr_addr_ARBURST(ddr_to_axis_reader_m_axi_base_ddr_addr_ARBURST),
        .m_axi_base_ddr_addr_ARCACHE(ddr_to_axis_reader_m_axi_base_ddr_addr_ARCACHE),
        .m_axi_base_ddr_addr_ARLEN(ddr_to_axis_reader_m_axi_base_ddr_addr_ARLEN),
        .m_axi_base_ddr_addr_ARLOCK(ddr_to_axis_reader_m_axi_base_ddr_addr_ARLOCK),
        .m_axi_base_ddr_addr_ARPROT(ddr_to_axis_reader_m_axi_base_ddr_addr_ARPROT),
        .m_axi_base_ddr_addr_ARQOS(ddr_to_axis_reader_m_axi_base_ddr_addr_ARQOS),
        .m_axi_base_ddr_addr_ARREADY(ddr_to_axis_reader_m_axi_base_ddr_addr_ARREADY),
        .m_axi_base_ddr_addr_ARREGION(ddr_to_axis_reader_m_axi_base_ddr_addr_ARREGION),
        .m_axi_base_ddr_addr_ARSIZE(ddr_to_axis_reader_m_axi_base_ddr_addr_ARSIZE),
        .m_axi_base_ddr_addr_ARVALID(ddr_to_axis_reader_m_axi_base_ddr_addr_ARVALID),
        .m_axi_base_ddr_addr_AWADDR(ddr_to_axis_reader_m_axi_base_ddr_addr_AWADDR),
        .m_axi_base_ddr_addr_AWBURST(ddr_to_axis_reader_m_axi_base_ddr_addr_AWBURST),
        .m_axi_base_ddr_addr_AWCACHE(ddr_to_axis_reader_m_axi_base_ddr_addr_AWCACHE),
        .m_axi_base_ddr_addr_AWLEN(ddr_to_axis_reader_m_axi_base_ddr_addr_AWLEN),
        .m_axi_base_ddr_addr_AWLOCK(ddr_to_axis_reader_m_axi_base_ddr_addr_AWLOCK),
        .m_axi_base_ddr_addr_AWPROT(ddr_to_axis_reader_m_axi_base_ddr_addr_AWPROT),
        .m_axi_base_ddr_addr_AWQOS(ddr_to_axis_reader_m_axi_base_ddr_addr_AWQOS),
        .m_axi_base_ddr_addr_AWREADY(ddr_to_axis_reader_m_axi_base_ddr_addr_AWREADY),
        .m_axi_base_ddr_addr_AWREGION(ddr_to_axis_reader_m_axi_base_ddr_addr_AWREGION),
        .m_axi_base_ddr_addr_AWSIZE(ddr_to_axis_reader_m_axi_base_ddr_addr_AWSIZE),
        .m_axi_base_ddr_addr_AWVALID(ddr_to_axis_reader_m_axi_base_ddr_addr_AWVALID),
        .m_axi_base_ddr_addr_BREADY(ddr_to_axis_reader_m_axi_base_ddr_addr_BREADY),
        .m_axi_base_ddr_addr_BRESP(ddr_to_axis_reader_m_axi_base_ddr_addr_BRESP),
        .m_axi_base_ddr_addr_BVALID(ddr_to_axis_reader_m_axi_base_ddr_addr_BVALID),
        .m_axi_base_ddr_addr_RDATA(ddr_to_axis_reader_m_axi_base_ddr_addr_RDATA),
        .m_axi_base_ddr_addr_RLAST(ddr_to_axis_reader_m_axi_base_ddr_addr_RLAST),
        .m_axi_base_ddr_addr_RREADY(ddr_to_axis_reader_m_axi_base_ddr_addr_RREADY),
        .m_axi_base_ddr_addr_RRESP(ddr_to_axis_reader_m_axi_base_ddr_addr_RRESP),
        .m_axi_base_ddr_addr_RVALID(ddr_to_axis_reader_m_axi_base_ddr_addr_RVALID),
        .m_axi_base_ddr_addr_WDATA(ddr_to_axis_reader_m_axi_base_ddr_addr_WDATA),
        .m_axi_base_ddr_addr_WLAST(ddr_to_axis_reader_m_axi_base_ddr_addr_WLAST),
        .m_axi_base_ddr_addr_WREADY(ddr_to_axis_reader_m_axi_base_ddr_addr_WREADY),
        .m_axi_base_ddr_addr_WSTRB(ddr_to_axis_reader_m_axi_base_ddr_addr_WSTRB),
        .m_axi_base_ddr_addr_WVALID(ddr_to_axis_reader_m_axi_base_ddr_addr_WVALID),
        .outStream_V_TDATA(ddr_to_axis_reader_0_outStream_V_TDATA),
        .outStream_V_TREADY(ddr_to_axis_reader_0_outStream_V_TREADY),
        .outStream_V_TVALID(ddr_to_axis_reader_0_outStream_V_TVALID));
  design_1_pattern_generator_cross_0_0 pattern_generator_cross
       (.ap_clk(clk_gen_25M_23M_clk_out2),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .outputStream_V_TDATA(pattern_generator_cross_0_outputStream_V_TDATA),
        .outputStream_V_TREADY(pattern_generator_cross_0_outputStream_V_TREADY),
        .outputStream_V_TVALID(pattern_generator_cross_0_outputStream_V_TVALID));
  design_1_processing_system7_0_0 processing_system7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP1_ARADDR(axi_mem_intercon_1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(axi_mem_intercon_1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(axi_mem_intercon_1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN(axi_mem_intercon_1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(axi_mem_intercon_1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(axi_mem_intercon_1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(axi_mem_intercon_1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(axi_mem_intercon_1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(axi_mem_intercon_1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(axi_mem_intercon_1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(axi_mem_intercon_1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_mem_intercon_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_mem_intercon_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN(axi_mem_intercon_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_mem_intercon_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_mem_intercon_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_mem_intercon_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_mem_intercon_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_mem_intercon_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_mem_intercon_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BREADY(axi_mem_intercon_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_mem_intercon_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_mem_intercon_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(axi_mem_intercon_1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RLAST(axi_mem_intercon_1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(axi_mem_intercon_1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(axi_mem_intercon_1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(axi_mem_intercon_1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(axi_mem_intercon_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(axi_mem_intercon_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_mem_intercon_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_mem_intercon_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_mem_intercon_1_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_rst_processing_system7_0_100M_0 reset_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(rst_processing_system7_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_proc_sys_reset_0_1 reset_23M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_gen_25M_23M_clk_out2));
  design_1_proc_sys_reset_0_0 reset_25M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(reset_25M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_25M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
endmodule

module design_1_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_mem_intercon_writer_ACLK_net;
  wire [0:0]axi_mem_intercon_writer_ARESETN_net;
  wire [31:0]axi_mem_intercon_writer_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_writer_to_s00_couplers_ARLEN;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_writer_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_writer_to_s00_couplers_ARREADY;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_ARREGION;
  wire [2:0]axi_mem_intercon_writer_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_writer_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_writer_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_writer_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_writer_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_writer_to_s00_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_writer_to_s00_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_writer_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_writer_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_writer_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_BRESP;
  wire axi_mem_intercon_writer_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_intercon_writer_to_s00_couplers_RDATA;
  wire axi_mem_intercon_writer_to_s00_couplers_RLAST;
  wire axi_mem_intercon_writer_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_writer_to_s00_couplers_RRESP;
  wire axi_mem_intercon_writer_to_s00_couplers_RVALID;
  wire [63:0]axi_mem_intercon_writer_to_s00_couplers_WDATA;
  wire axi_mem_intercon_writer_to_s00_couplers_WLAST;
  wire axi_mem_intercon_writer_to_s00_couplers_WREADY;
  wire [7:0]axi_mem_intercon_writer_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_writer_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_writer_ARADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_ARBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_ARCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_ARLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_ARLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_writer_ARPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_ARQOS;
  wire s00_couplers_to_axi_mem_intercon_writer_ARREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_writer_ARSIZE;
  wire s00_couplers_to_axi_mem_intercon_writer_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_writer_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_AWCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_AWLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_writer_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_writer_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_writer_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_writer_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_writer_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_writer_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_BRESP;
  wire s00_couplers_to_axi_mem_intercon_writer_BVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_writer_RDATA;
  wire s00_couplers_to_axi_mem_intercon_writer_RLAST;
  wire s00_couplers_to_axi_mem_intercon_writer_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_writer_RRESP;
  wire s00_couplers_to_axi_mem_intercon_writer_RVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_writer_WDATA;
  wire s00_couplers_to_axi_mem_intercon_writer_WLAST;
  wire s00_couplers_to_axi_mem_intercon_writer_WREADY;
  wire [7:0]s00_couplers_to_axi_mem_intercon_writer_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_writer_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_writer_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_mem_intercon_writer_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_mem_intercon_writer_ARCACHE;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_axi_mem_intercon_writer_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_axi_mem_intercon_writer_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_writer_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_mem_intercon_writer_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_mem_intercon_writer_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_writer_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_writer_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_writer_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_writer_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_mem_intercon_writer_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_mem_intercon_writer_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_writer_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_writer_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_writer_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_writer_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_writer_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_writer_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_mem_intercon_writer_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_writer_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_mem_intercon_writer_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_writer_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_mem_intercon_writer_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_writer_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_writer_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_writer_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_mem_intercon_writer_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_writer_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_writer_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_writer_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_writer_to_s00_couplers_WREADY;
  assign axi_mem_intercon_writer_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_writer_ARESETN_net = M00_ARESETN[0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_writer_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_writer_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_writer_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_writer_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_writer_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_writer_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_mem_intercon_writer_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_writer_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_mem_intercon_writer_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_writer_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_writer_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_writer_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_writer_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_writer_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_mem_intercon_writer_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_mem_intercon_writer_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_writer_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_writer_WREADY = M00_AXI_wready;
  s00_couplers_imp_18HKAHX s00_couplers
       (.M_ACLK(axi_mem_intercon_writer_ACLK_net),
        .M_ARESETN(axi_mem_intercon_writer_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_writer_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_mem_intercon_writer_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_mem_intercon_writer_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_mem_intercon_writer_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_mem_intercon_writer_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_writer_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_mem_intercon_writer_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_writer_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_mem_intercon_writer_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_writer_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_writer_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_writer_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_writer_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_writer_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_writer_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_writer_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_writer_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_writer_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_writer_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_writer_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_writer_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_writer_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_writer_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_writer_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_mem_intercon_writer_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_writer_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_writer_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_writer_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_writer_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_writer_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_writer_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_writer_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_writer_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_writer_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_writer_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_writer_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_writer_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_writer_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_writer_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_writer_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_writer_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_mem_intercon_writer_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_mem_intercon_writer_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_writer_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_writer_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_writer_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_writer_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_writer_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_writer_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_writer_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_writer_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_writer_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_writer_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_writer_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_writer_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_writer_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_writer_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_writer_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_writer_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_writer_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_writer_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_writer_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_writer_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_writer_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_writer_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_writer_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_writer_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_writer_to_s00_couplers_WVALID));
endmodule

module design_1_axi_mem_intercon_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_mem_intercon_reader_ACLK_net;
  wire [0:0]axi_mem_intercon_reader_ARESETN_net;
  wire [31:0]axi_mem_intercon_reader_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_reader_to_s00_couplers_ARLEN;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_reader_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_reader_to_s00_couplers_ARREADY;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_ARREGION;
  wire [2:0]axi_mem_intercon_reader_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_reader_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_reader_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_reader_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_reader_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_reader_to_s00_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_reader_to_s00_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_reader_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_reader_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_reader_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_BRESP;
  wire axi_mem_intercon_reader_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_intercon_reader_to_s00_couplers_RDATA;
  wire axi_mem_intercon_reader_to_s00_couplers_RLAST;
  wire axi_mem_intercon_reader_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_reader_to_s00_couplers_RRESP;
  wire axi_mem_intercon_reader_to_s00_couplers_RVALID;
  wire [63:0]axi_mem_intercon_reader_to_s00_couplers_WDATA;
  wire axi_mem_intercon_reader_to_s00_couplers_WLAST;
  wire axi_mem_intercon_reader_to_s00_couplers_WREADY;
  wire [7:0]axi_mem_intercon_reader_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_reader_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_reader_ARADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_ARBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_ARCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_ARLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_ARLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_reader_ARPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_ARQOS;
  wire s00_couplers_to_axi_mem_intercon_reader_ARREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_reader_ARSIZE;
  wire s00_couplers_to_axi_mem_intercon_reader_ARVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_reader_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_AWCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_AWLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_reader_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_reader_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_reader_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_reader_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_reader_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_reader_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_BRESP;
  wire s00_couplers_to_axi_mem_intercon_reader_BVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_reader_RDATA;
  wire s00_couplers_to_axi_mem_intercon_reader_RLAST;
  wire s00_couplers_to_axi_mem_intercon_reader_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_reader_RRESP;
  wire s00_couplers_to_axi_mem_intercon_reader_RVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_reader_WDATA;
  wire s00_couplers_to_axi_mem_intercon_reader_WLAST;
  wire s00_couplers_to_axi_mem_intercon_reader_WREADY;
  wire [7:0]s00_couplers_to_axi_mem_intercon_reader_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_reader_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_mem_intercon_reader_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_mem_intercon_reader_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_mem_intercon_reader_ARCACHE;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_axi_mem_intercon_reader_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_axi_mem_intercon_reader_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_reader_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_mem_intercon_reader_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_mem_intercon_reader_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_reader_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_reader_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_reader_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_reader_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_mem_intercon_reader_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_mem_intercon_reader_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_reader_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_reader_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_reader_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_reader_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_reader_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_reader_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_mem_intercon_reader_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_reader_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_mem_intercon_reader_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_reader_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_mem_intercon_reader_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_reader_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_reader_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_reader_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_mem_intercon_reader_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_reader_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_reader_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_reader_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_reader_to_s00_couplers_WREADY;
  assign axi_mem_intercon_reader_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_reader_ARESETN_net = M00_ARESETN[0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_reader_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_reader_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_reader_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_reader_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_reader_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_reader_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_mem_intercon_reader_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_reader_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_mem_intercon_reader_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_reader_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_reader_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_reader_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_reader_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_reader_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_axi_mem_intercon_reader_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_mem_intercon_reader_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_reader_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_reader_WREADY = M00_AXI_wready;
  s00_couplers_imp_13IKJXX s00_couplers
       (.M_ACLK(axi_mem_intercon_reader_ACLK_net),
        .M_ARESETN(axi_mem_intercon_reader_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_reader_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_mem_intercon_reader_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_mem_intercon_reader_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_mem_intercon_reader_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_mem_intercon_reader_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_reader_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_mem_intercon_reader_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_reader_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_mem_intercon_reader_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_reader_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_reader_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_reader_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_reader_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_reader_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_reader_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_reader_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_reader_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_reader_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_reader_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_reader_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_reader_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_reader_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_reader_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_reader_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_mem_intercon_reader_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_reader_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_reader_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_reader_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_reader_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_reader_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_reader_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_reader_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_reader_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_reader_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_reader_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_reader_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_reader_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_reader_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_reader_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_reader_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_reader_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_mem_intercon_reader_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_mem_intercon_reader_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_reader_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_reader_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_reader_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_reader_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_reader_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_reader_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_reader_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_reader_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_reader_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_reader_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_reader_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_reader_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_reader_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_reader_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_reader_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_reader_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_reader_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_reader_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_reader_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_reader_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_reader_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_reader_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_reader_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_reader_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_reader_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_13IKJXX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [3:0]auto_pc_to_s00_couplers_ARLEN;
  wire [1:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_18HKAHX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [3:0]auto_pc_to_s00_couplers_ARLEN;
  wire [1:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
