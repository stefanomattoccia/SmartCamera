set C_TypeInfoList {{ 
"axi_stream_to_vga_red_255" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"selftest": [[], {"scalar": "bool"}] }, {"inStream": [[], {"reference": "0"}] }, {"R": [[],{ "pointer": "1"}] }, {"G": [[],{ "pointer": "1"}] }, {"B": [[],{ "pointer": "1"}] }, {"V_SYNC": [[],{ "pointer": "2"}] }, {"H_SYNC": [[],{ "pointer": "2"}] }],[],""], 
"1": [ "ap_uint<4>", {"struct": [[],[{"_AP_W":[[], {"scalar": { "int": 4}}]}],[],""]}], 
"0": [ "stream<ap_uint<8> >", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"3": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"2": [ "ap_uint<1>", {"struct": [[],[{"_AP_W":[[], {"scalar": { "int": 1}}]}],[],""]}],
"4": ["hls", ""]
}}
set moduleName axi_stream_to_vga_red_255
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {axi_stream_to_vga_red_255}
set C_modelType { void 0 }
set C_modelArgList {
	{ selftest uint 1 regular  }
	{ inStream_V_V int 8 regular {axi_s 0 volatile  { inStream_V_V Data } }  }
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

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "axi_stream_to_vga_red_255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "420002", "EstimateLatencyMax" : "420002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "selftest", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "R_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "G_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "B_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "V_SYNC_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "H_SYNC_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "color_blinking_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	axi_stream_to_vga_red_255 {
		selftest {Type I LastRead 0 FirstWrite -1}
		inStream_V_V {Type I LastRead 1 FirstWrite -1}
		R_V {Type O LastRead -1 FirstWrite 2}
		G_V {Type O LastRead -1 FirstWrite 2}
		B_V {Type O LastRead -1 FirstWrite 2}
		V_SYNC_V {Type O LastRead -1 FirstWrite 2}
		H_SYNC_V {Type O LastRead -1 FirstWrite 2}
		color_blinking_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "420002", "Max" : "420002"}
	, {"Name" : "Interval", "Min" : "420003", "Max" : "420003"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	selftest { ap_none {  { selftest in_data 0 1 } } }
	inStream_V_V { axis {  { inStream_V_V_TDATA in_data 0 8 }  { inStream_V_V_TVALID in_vld 0 1 }  { inStream_V_V_TREADY in_acc 1 1 } } }
	R_V { ap_none {  { R_V out_data 1 4 } } }
	G_V { ap_none {  { G_V out_data 1 4 } } }
	B_V { ap_none {  { B_V out_data 1 4 } } }
	V_SYNC_V { ap_none {  { V_SYNC_V out_data 1 1 } } }
	H_SYNC_V { ap_none {  { H_SYNC_V out_data 1 1 } } }
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
