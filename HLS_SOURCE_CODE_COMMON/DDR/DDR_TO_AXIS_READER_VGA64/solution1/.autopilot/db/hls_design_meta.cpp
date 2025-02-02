#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("outStream_V_TDATA", 8, hls_out, 0, "axis", "out_data", 1),
	Port_Property("outStream_V_TVALID", 1, hls_out, 0, "axis", "out_vld", 1),
	Port_Property("outStream_V_TREADY", 1, hls_in, 0, "axis", "out_acc", 1),
	Port_Property("m_axi_base_ddr_addr_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_base_ddr_addr_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_base_ddr_addr_AWADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_base_ddr_addr_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_base_ddr_addr_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_base_ddr_addr_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_base_ddr_addr_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_base_ddr_addr_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_base_ddr_addr_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_base_ddr_addr_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_base_ddr_addr_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_base_ddr_addr_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_base_ddr_addr_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_base_ddr_addr_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_base_ddr_addr_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_base_ddr_addr_WDATA", 64, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_base_ddr_addr_WSTRB", 8, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_base_ddr_addr_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_base_ddr_addr_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_base_ddr_addr_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_base_ddr_addr_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_base_ddr_addr_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_base_ddr_addr_ARADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_base_ddr_addr_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_base_ddr_addr_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_base_ddr_addr_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_base_ddr_addr_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_base_ddr_addr_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_base_ddr_addr_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_base_ddr_addr_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_base_ddr_addr_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_base_ddr_addr_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_base_ddr_addr_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_base_ddr_addr_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_base_ddr_addr_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_base_ddr_addr_RDATA", 64, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_base_ddr_addr_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_base_ddr_addr_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_base_ddr_addr_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_base_ddr_addr_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_base_ddr_addr_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_base_ddr_addr_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_base_ddr_addr_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_base_ddr_addr_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_base_ddr_addr_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("frame_index_V", 3, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("frame_count", 32, hls_out, 3, "ap_none", "out_data", 1),
	Port_Property("frame_count_equals", 32, hls_out, 4, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "ddr_to_axis_reader";
