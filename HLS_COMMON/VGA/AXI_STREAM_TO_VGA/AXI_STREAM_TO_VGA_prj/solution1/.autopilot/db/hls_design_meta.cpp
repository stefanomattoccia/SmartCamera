#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("selftest", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("inStream_V_V_TDATA", 8, hls_in, 1, "axis", "in_data", 1),
	Port_Property("inStream_V_V_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("inStream_V_V_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("R_V", 4, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("G_V", 4, hls_out, 3, "ap_none", "out_data", 1),
	Port_Property("B_V", 4, hls_out, 4, "ap_none", "out_data", 1),
	Port_Property("V_SYNC_V", 1, hls_out, 5, "ap_none", "out_data", 1),
	Port_Property("H_SYNC_V", 1, hls_out, 6, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "axi_stream_to_vga";
