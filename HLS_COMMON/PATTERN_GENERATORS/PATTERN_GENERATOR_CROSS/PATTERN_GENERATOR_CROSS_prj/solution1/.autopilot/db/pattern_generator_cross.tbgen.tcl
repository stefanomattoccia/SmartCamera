set C_TypeInfoList {{ 
"pattern_generator_cross" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"outputStream": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName pattern_generator_cross
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pattern_generator_cross}
set C_modelType { void 0 }
set C_modelArgList {
	{ outputStream_V int 8 regular {axi_s 1 volatile  { outputStream_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outputStream_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outputStream.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ outputStream_V_TDATA sc_out sc_lv 8 signal 0 } 
	{ outputStream_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ outputStream_V_TREADY sc_in sc_logic 1 outacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "outputStream_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputStream_V", "role": "TDATA" }} , 
 	{ "name": "outputStream_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outputStream_V", "role": "TVALID" }} , 
 	{ "name": "outputStream_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outputStream_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pattern_generator_cross",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "735423", "EstimateLatencyMax" : "735423",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "outputStream_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outputStream_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lineX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lineY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dirX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dirY", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	pattern_generator_cross {
		outputStream_V {Type O LastRead -1 FirstWrite 2}
		lineX {Type IO LastRead -1 FirstWrite -1}
		lineY {Type IO LastRead -1 FirstWrite -1}
		dirX {Type IO LastRead -1 FirstWrite -1}
		dirY {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "735423", "Max" : "735423"}
	, {"Name" : "Interval", "Min" : "735424", "Max" : "735424"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	outputStream_V { axis {  { outputStream_V_TDATA out_data 1 8 }  { outputStream_V_TVALID out_vld 1 1 }  { outputStream_V_TREADY out_acc 0 1 } } }
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
