set C_TypeInfoList {{ 
"convolution_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"kernel_config": [[], {"array": ["0", [51]]}] }, {"in_img": [[], {"array": ["1", [307200]]}] }, {"out_img": [[], {"array": ["1", [307200]]}] }],[],""], 
"0": [ "s_int", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_int<8>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"1": [ "pixel", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}]
}}
set moduleName convolution_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {convolution_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ kernel_config_V int 8 regular {axi_slave 0}  }
	{ in_img_V int 8 regular {axi_s 0 volatile  { in_img_V data } }  }
	{ out_img_V int 8 regular {axi_s 1 volatile  { out_img_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "kernel_config_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "kernel_config.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 50,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "in_img_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_img.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} , 
 	{ "Name" : "out_img_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out_img.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_img_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ in_img_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_img_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ out_img_V_TDATA sc_out sc_lv 8 signal 2 } 
	{ out_img_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ out_img_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"kernel_config_V","role":"data","value":"64"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_img_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_img_V", "role": "TDATA" }} , 
 	{ "name": "in_img_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_img_V", "role": "TVALID" }} , 
 	{ "name": "in_img_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_img_V", "role": "TREADY" }} , 
 	{ "name": "out_img_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_img_V", "role": "TDATA" }} , 
 	{ "name": "out_img_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_img_V", "role": "TVALID" }} , 
 	{ "name": "out_img_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_img_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"], "CDFG" : "convolution_filter", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "kernel_config_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_img_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "in_img_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "out_img_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "out_img_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "window_V_0_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_sum_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_off_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_3_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_4_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_5_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_6_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_2", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_3", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_4", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_5", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_0_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_1_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_2_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_3_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_4_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_5_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_3", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_4", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_5", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel_V_6_6", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_4_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_5_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_AXILiteS_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U0", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U1", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U2", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U3", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U4", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U5", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U6", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U7", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U8", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U9", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U10", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U11", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U12", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U13", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U14", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U15", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U16", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U17", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U18", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U19", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U20", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U21", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U22", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U23", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U24", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U25", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U26", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U27", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U28", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U29", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U30", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U31", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U32", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U33", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U34", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U35", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U36", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U37", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U38", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U39", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U42", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_mul_8s_8ns_16_1_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_filter_sdiv_23s_8s_23_27_U49", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "310598", "Max" : "310598"}
	, {"Name" : "Interval", "Min" : "310599", "Max" : "310599"}
]}

set Spec2ImplPortList { 
	in_img_V { axis {  { in_img_V_TDATA in_data 0 8 }  { in_img_V_TVALID in_vld 0 1 }  { in_img_V_TREADY in_acc 1 1 } } }
	out_img_V { axis {  { out_img_V_TDATA out_data 1 8 }  { out_img_V_TVALID out_vld 1 1 }  { out_img_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
