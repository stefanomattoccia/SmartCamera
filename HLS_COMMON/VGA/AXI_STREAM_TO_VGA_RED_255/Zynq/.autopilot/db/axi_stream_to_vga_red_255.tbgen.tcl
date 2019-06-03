set C_TypeInfoList {{ 
"axi_stream_to_vga_red_255" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"selftest": [[], {"scalar": "bool"}] }, {"inStream": [[], {"reference": "0"}] }, {"R": [[],{ "pointer": "1"}] }, {"G": [[],{ "pointer": "1"}] }, {"B": [[],{ "pointer": "1"}] }, {"V_SYNC": [[],{ "pointer": "2"}] }, {"H_SYNC": [[],{ "pointer": "2"}] }],[],""], 
"0": [ "stream<ap_uint<8> >", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"1": [ "ap_uint<4>", {"struct": [[],[{"_AP_W":[[], {"scalar": { "int": 4}}]}],[],""]}], 
"3": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"2": [ "ap_uint<1>", {"struct": [[],[{"_AP_W":[[], {"scalar": { "int": 1}}]}],[],""]}],
"4": ["hls", ""]
}}
set moduleName axi_stream_to_vga_red_255
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {axi_stream_to_vga_red_255}
set C_modelType { void 0 }
set C_modelArgList { 
	{ selftest uint 1 regular  }
	{ inStream_V_V int 8 regular {axi_s 0 volatile  { inStream_V_V data } }  }
	{ R_V int 4 regular {pointer 1 volatile }  }
	{ G_V int 4 regular {pointer 1 volatile }  }
	{ B_V int 4 regular {pointer 1 volatile }  }
	{ V_SYNC_V int 1 regular {pointer 1 volatile }  }
	{ H_SYNC_V int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "selftest", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "selftest","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inStream_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "R_V", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "R.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "G_V", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "G.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "B_V", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "B.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "V_SYNC_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "V_SYNC.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "H_SYNC_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "H_SYNC.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ selftest sc_in sc_logic 1 signal 0 } 
	{ inStream_V_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ inStream_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ inStream_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ R_V sc_out sc_lv 4 signal 2 } 
	{ G_V sc_out sc_lv 4 signal 3 } 
	{ B_V sc_out sc_lv 4 signal 4 } 
	{ V_SYNC_V sc_out sc_lv 1 signal 5 } 
	{ H_SYNC_V sc_out sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "selftest", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "selftest", "role": "default" }} , 
 	{ "name": "inStream_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_V", "role": "TDATA" }} , 
 	{ "name": "inStream_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_V", "role": "TVALID" }} , 
 	{ "name": "inStream_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_V", "role": "TREADY" }} , 
 	{ "name": "R_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_V", "role": "default" }} , 
 	{ "name": "G_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "G_V", "role": "default" }} , 
 	{ "name": "B_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V", "role": "default" }} , 
 	{ "name": "V_SYNC_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V_SYNC_V", "role": "default" }} , 
 	{ "name": "H_SYNC_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "H_SYNC_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	selftest { ap_none {  { selftest in_data 0 1 } } }
	inStream_V_V { axis {  { inStream_V_V_TDATA in_data 0 8 }  { inStream_V_V_TVALID in_vld 0 1 }  { inStream_V_V_TREADY in_acc 1 1 } } }
	R_V { ap_none {  { R_V out_data 1 4 } } }
	G_V { ap_none {  { G_V out_data 1 4 } } }
	B_V { ap_none {  { B_V out_data 1 4 } } }
	V_SYNC_V { ap_none {  { V_SYNC_V out_data 1 1 } } }
	H_SYNC_V { ap_none {  { H_SYNC_V out_data 1 1 } } }
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
