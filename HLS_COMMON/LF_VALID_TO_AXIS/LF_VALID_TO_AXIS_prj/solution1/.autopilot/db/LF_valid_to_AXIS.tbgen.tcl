set C_TypeInfoList {{ 
"LF_valid_to_AXIS" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_in": [[],{ "pointer": "0"}] }, {"frame_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"line_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"outputStream": [[], {"reference": "1"}] }],[],""], 
"0": [ "byte", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"1": [ "stream<ap_uint<8> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}],
"3": ["hls", ""]
}}
set moduleName LF_valid_to_AXIS
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {LF_valid_to_AXIS}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V int 8 regular {pointer 0 volatile }  }
	{ frame_valid int 1 regular {pointer 0 volatile }  }
	{ line_valid int 1 regular {pointer 0 volatile }  }
	{ outputStream_V_V int 8 regular {axi_s 1 volatile  { outputStream_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "frame_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "frame_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "line_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "line_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outputStream_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outputStream.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_V sc_in sc_lv 8 signal 0 } 
	{ frame_valid sc_in sc_logic 1 signal 1 } 
	{ line_valid sc_in sc_logic 1 signal 2 } 
	{ outputStream_V_V_TDATA sc_out sc_lv 8 signal 3 } 
	{ outputStream_V_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ outputStream_V_V_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V", "role": "default" }} , 
 	{ "name": "frame_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_valid", "role": "default" }} , 
 	{ "name": "line_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_valid", "role": "default" }} , 
 	{ "name": "outputStream_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputStream_V_V", "role": "TDATA" }} , 
 	{ "name": "outputStream_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outputStream_V_V", "role": "TVALID" }} , 
 	{ "name": "outputStream_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outputStream_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "LF_valid_to_AXIS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "data_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "frame_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputStream_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outputStream_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	LF_valid_to_AXIS {
		data_in_V {Type I LastRead 0 FirstWrite -1}
		frame_valid {Type I LastRead 0 FirstWrite -1}
		line_valid {Type I LastRead 0 FirstWrite -1}
		outputStream_V_V {Type O LastRead -1 FirstWrite 0}
		res {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V { ap_none {  { data_in_V in_data 0 8 } } }
	frame_valid { ap_none {  { frame_valid in_data 0 1 } } }
	line_valid { ap_none {  { line_valid in_data 0 1 } } }
	outputStream_V_V { axis {  { outputStream_V_V_TDATA out_data 1 8 }  { outputStream_V_V_TVALID out_vld 1 1 }  { outputStream_V_V_TREADY out_acc 0 1 } } }
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
