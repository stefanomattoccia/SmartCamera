set C_TypeInfoList {{ 
"ddr_to_axis_reader" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"outStream": [[], {"reference": "0"}] }, {"base_ddr_addr": [[],{ "pointer": "1"}] }, {"frame_index": [[],{ "pointer": "2"}] }, {"frame_count": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"frame_count_equals": [[],{ "pointer":  {"scalar": "unsigned int"}}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"3"]}}], 
"1": [ "u64", {"typedef": [[[], {"scalar": "long long unsigned int"}],""]}], 
"2": [ "ap_uint<3>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 3}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName ddr_to_axis_reader
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {ddr_to_axis_reader}
set C_modelType { void 0 }
set C_modelArgList { 
	{ outStream_V int 8 regular {axi_s 1 volatile  { outStream_V data } }  }
	{ base_ddr_addr int 64 regular {axi_master 0}  }
	{ frame_index_V int 3 regular {pointer 0}  }
	{ frame_count int 32 regular {pointer 1}  }
	{ frame_count_equals int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outStream_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "base_ddr_addr", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "base_ddr_addr","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_index_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "frame_index.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_count", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame_count","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_count_equals", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame_count_equals","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outStream_V_TDATA sc_out sc_lv 8 signal 0 } 
	{ outStream_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ outStream_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axi_base_ddr_addr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_base_ddr_addr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_base_ddr_addr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_base_ddr_addr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_base_ddr_addr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_base_ddr_addr_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_base_ddr_addr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_base_ddr_addr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_base_ddr_addr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_base_ddr_addr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_base_ddr_addr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_base_ddr_addr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_base_ddr_addr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_base_ddr_addr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_base_ddr_addr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_base_ddr_addr_BUSER sc_in sc_lv 1 signal 1 } 
	{ frame_index_V sc_in sc_lv 3 signal 2 } 
	{ frame_count sc_out sc_lv 32 signal 3 } 
	{ frame_count_equals sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outStream_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V", "role": "TDATA" }} , 
 	{ "name": "outStream_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V", "role": "TVALID" }} , 
 	{ "name": "outStream_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V", "role": "TREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_base_ddr_addr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_base_ddr_addr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WVALID" }} , 
 	{ "name": "m_axi_base_ddr_addr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WDATA" }} , 
 	{ "name": "m_axi_base_ddr_addr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_base_ddr_addr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WLAST" }} , 
 	{ "name": "m_axi_base_ddr_addr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WID" }} , 
 	{ "name": "m_axi_base_ddr_addr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "WUSER" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARID" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_base_ddr_addr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_base_ddr_addr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RVALID" }} , 
 	{ "name": "m_axi_base_ddr_addr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RDATA" }} , 
 	{ "name": "m_axi_base_ddr_addr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RLAST" }} , 
 	{ "name": "m_axi_base_ddr_addr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RID" }} , 
 	{ "name": "m_axi_base_ddr_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_base_ddr_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_base_ddr_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_base_ddr_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_base_ddr_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_base_ddr_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "BID" }} , 
 	{ "name": "m_axi_base_ddr_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "base_ddr_addr", "role": "BUSER" }} , 
 	{ "name": "frame_index_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "frame_index_V", "role": "default" }} , 
 	{ "name": "frame_count", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_count", "role": "default" }} , 
 	{ "name": "frame_count_equals", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_count_equals", "role": "default" }}  ]}
set Spec2ImplPortList { 
	outStream_V { axis {  { outStream_V_TDATA out_data 1 8 }  { outStream_V_TVALID out_vld 1 1 }  { outStream_V_TREADY out_acc 0 1 } } }
	base_ddr_addr { m_axi {  { m_axi_base_ddr_addr_AWVALID VALID 1 1 }  { m_axi_base_ddr_addr_AWREADY READY 0 1 }  { m_axi_base_ddr_addr_AWADDR ADDR 1 32 }  { m_axi_base_ddr_addr_AWID ID 1 1 }  { m_axi_base_ddr_addr_AWLEN LEN 1 8 }  { m_axi_base_ddr_addr_AWSIZE SIZE 1 3 }  { m_axi_base_ddr_addr_AWBURST BURST 1 2 }  { m_axi_base_ddr_addr_AWLOCK LOCK 1 2 }  { m_axi_base_ddr_addr_AWCACHE CACHE 1 4 }  { m_axi_base_ddr_addr_AWPROT PROT 1 3 }  { m_axi_base_ddr_addr_AWQOS QOS 1 4 }  { m_axi_base_ddr_addr_AWREGION REGION 1 4 }  { m_axi_base_ddr_addr_AWUSER USER 1 1 }  { m_axi_base_ddr_addr_WVALID VALID 1 1 }  { m_axi_base_ddr_addr_WREADY READY 0 1 }  { m_axi_base_ddr_addr_WDATA DATA 1 64 }  { m_axi_base_ddr_addr_WSTRB STRB 1 8 }  { m_axi_base_ddr_addr_WLAST LAST 1 1 }  { m_axi_base_ddr_addr_WID ID 1 1 }  { m_axi_base_ddr_addr_WUSER USER 1 1 }  { m_axi_base_ddr_addr_ARVALID VALID 1 1 }  { m_axi_base_ddr_addr_ARREADY READY 0 1 }  { m_axi_base_ddr_addr_ARADDR ADDR 1 32 }  { m_axi_base_ddr_addr_ARID ID 1 1 }  { m_axi_base_ddr_addr_ARLEN LEN 1 8 }  { m_axi_base_ddr_addr_ARSIZE SIZE 1 3 }  { m_axi_base_ddr_addr_ARBURST BURST 1 2 }  { m_axi_base_ddr_addr_ARLOCK LOCK 1 2 }  { m_axi_base_ddr_addr_ARCACHE CACHE 1 4 }  { m_axi_base_ddr_addr_ARPROT PROT 1 3 }  { m_axi_base_ddr_addr_ARQOS QOS 1 4 }  { m_axi_base_ddr_addr_ARREGION REGION 1 4 }  { m_axi_base_ddr_addr_ARUSER USER 1 1 }  { m_axi_base_ddr_addr_RVALID VALID 0 1 }  { m_axi_base_ddr_addr_RREADY READY 1 1 }  { m_axi_base_ddr_addr_RDATA DATA 0 64 }  { m_axi_base_ddr_addr_RLAST LAST 0 1 }  { m_axi_base_ddr_addr_RID ID 0 1 }  { m_axi_base_ddr_addr_RUSER USER 0 1 }  { m_axi_base_ddr_addr_RRESP RESP 0 2 }  { m_axi_base_ddr_addr_BVALID VALID 0 1 }  { m_axi_base_ddr_addr_BREADY READY 1 1 }  { m_axi_base_ddr_addr_BRESP RESP 0 2 }  { m_axi_base_ddr_addr_BID ID 0 1 }  { m_axi_base_ddr_addr_BUSER USER 0 1 } } }
	frame_index_V { ap_none {  { frame_index_V in_data 0 3 } } }
	frame_count { ap_none {  { frame_count out_data 1 32 } } }
	frame_count_equals { ap_none {  { frame_count_equals out_data 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ base_ddr_addr 6 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ base_ddr_addr 6 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
