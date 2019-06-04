set C_TypeInfoList {{ 
"ov7670_interface" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_in": [[],"0"] }, {"href": [[],"1"] }, {"vsync": [[],"1"] }, {"data_out": [[],{ "pointer": "2"}] }, {"line_valid": [[],{ "pointer": "3"}] }, {"frame_valid": [[],{ "pointer": "3"}] }],[],""], 
"0": [ "byte", {"typedef": [[[],"4"],""]}], 
"1": [ "bit", {"typedef": [[[],"5"],""]}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"4": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"2": [ "byte", {"typedef": [[[],"4"],""]}], 
"3": [ "bit", {"typedef": [[[],"5"],""]}]
}}
set moduleName ov7670_interface
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ov7670_interface}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V int 8 regular  }
	{ href_V int 1 regular  }
	{ vsync_V int 1 regular  }
	{ data_out_V int 8 regular {pointer 1 volatile }  }
	{ line_valid_V int 1 regular {pointer 1 volatile }  }
	{ frame_valid_V int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "href_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "href.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vsync_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vsync.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "data_out_V", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_out.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "line_valid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "line_valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_valid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "frame_valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_V sc_in sc_lv 8 signal 0 } 
	{ href_V sc_in sc_lv 1 signal 1 } 
	{ vsync_V sc_in sc_lv 1 signal 2 } 
	{ data_out_V sc_out sc_lv 8 signal 3 } 
	{ line_valid_V sc_out sc_lv 1 signal 4 } 
	{ frame_valid_V sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V", "role": "default" }} , 
 	{ "name": "href_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "href_V", "role": "default" }} , 
 	{ "name": "vsync_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vsync_V", "role": "default" }} , 
 	{ "name": "data_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V", "role": "default" }} , 
 	{ "name": "line_valid_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "line_valid_V", "role": "default" }} , 
 	{ "name": "frame_valid_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_valid_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ov7670_interface",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "data_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "href_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "vsync_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "line_valid_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "frame_valid_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "count_lines", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "first", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "count_readings", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ov7670_interface {
		data_in_V {Type I LastRead 0 FirstWrite -1}
		href_V {Type I LastRead 0 FirstWrite -1}
		vsync_V {Type I LastRead 0 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 0}
		line_valid_V {Type O LastRead -1 FirstWrite 0}
		frame_valid_V {Type O LastRead -1 FirstWrite 0}
		count_lines {Type IO LastRead -1 FirstWrite -1}
		first {Type IO LastRead -1 FirstWrite -1}
		count_readings {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V { ap_none {  { data_in_V in_data 0 8 } } }
	href_V { ap_none {  { href_V in_data 0 1 } } }
	vsync_V { ap_none {  { vsync_V in_data 0 1 } } }
	data_out_V { ap_none {  { data_out_V out_data 1 8 } } }
	line_valid_V { ap_none {  { line_valid_V out_data 1 1 } } }
	frame_valid_V { ap_none {  { frame_valid_V out_data 1 1 } } }
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
