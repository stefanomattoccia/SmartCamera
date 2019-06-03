set C_TypeInfoList {{ 
"ov7670_LUMA_CHROMA" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inStream": [[], {"reference": "0"}] }, {"outStream_grayscale": [[], {"reference": "0"}] }, {"enable_raw_stream": [[], {"scalar": "bool"}] }, {"outStream_LUMA": [[], {"reference": "0"}] }, {"outStream_CHROMA": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<8> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName ov7670_LUMA_CHROMA
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ov7670_LUMA_CHROMA}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_V int 8 regular {axi_s 0 volatile  { inStream_V_V Data } }  }
	{ outStream_grayscale_V_V int 8 regular {axi_s 1 volatile  { outStream_grayscale_V_V Data } }  }
	{ enable_raw_stream uint 1 regular  }
	{ outStream_LUMA_V_V int 8 regular {axi_s 1 volatile  { outStream_LUMA_V_V Data } }  }
	{ outStream_CHROMA_V_V int 8 regular {axi_s 1 volatile  { outStream_CHROMA_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_grayscale_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream_grayscale.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "enable_raw_stream", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "enable_raw_stream","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "outStream_LUMA_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream_LUMA.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_CHROMA_V_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream_CHROMA.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream_V_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ inStream_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ inStream_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ outStream_grayscale_V_V_TDATA sc_out sc_lv 8 signal 1 } 
	{ outStream_grayscale_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ outStream_grayscale_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ enable_raw_stream sc_in sc_logic 1 signal 2 } 
	{ outStream_LUMA_V_V_TDATA sc_out sc_lv 8 signal 3 } 
	{ outStream_LUMA_V_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ outStream_LUMA_V_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ outStream_CHROMA_V_V_TDATA sc_out sc_lv 8 signal 4 } 
	{ outStream_CHROMA_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ outStream_CHROMA_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inStream_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_V", "role": "TDATA" }} , 
 	{ "name": "inStream_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_V", "role": "TVALID" }} , 
 	{ "name": "inStream_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_V", "role": "TREADY" }} , 
 	{ "name": "outStream_grayscale_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_grayscale_V_V", "role": "TDATA" }} , 
 	{ "name": "outStream_grayscale_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_grayscale_V_V", "role": "TVALID" }} , 
 	{ "name": "outStream_grayscale_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_grayscale_V_V", "role": "TREADY" }} , 
 	{ "name": "enable_raw_stream", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_raw_stream", "role": "default" }} , 
 	{ "name": "outStream_LUMA_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_LUMA_V_V", "role": "TDATA" }} , 
 	{ "name": "outStream_LUMA_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_LUMA_V_V", "role": "TVALID" }} , 
 	{ "name": "outStream_LUMA_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_LUMA_V_V", "role": "TREADY" }} , 
 	{ "name": "outStream_CHROMA_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_CHROMA_V_V", "role": "TDATA" }} , 
 	{ "name": "outStream_CHROMA_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_CHROMA_V_V", "role": "TVALID" }} , 
 	{ "name": "outStream_CHROMA_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_CHROMA_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ov7670_LUMA_CHROMA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "inStream_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_grayscale_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_grayscale_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enable_raw_stream", "Type" : "None", "Direction" : "I"},
			{"Name" : "outStream_LUMA_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_LUMA_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_CHROMA_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_CHROMA_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grayscale_valid", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ov7670_LUMA_CHROMA {
		inStream_V_V {Type I LastRead 0 FirstWrite -1}
		outStream_grayscale_V_V {Type O LastRead -1 FirstWrite 1}
		enable_raw_stream {Type I LastRead 1 FirstWrite -1}
		outStream_LUMA_V_V {Type O LastRead -1 FirstWrite 2}
		outStream_CHROMA_V_V {Type O LastRead -1 FirstWrite 1}
		grayscale_valid {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream_V_V { axis {  { inStream_V_V_TDATA in_data 0 8 }  { inStream_V_V_TVALID in_vld 0 1 }  { inStream_V_V_TREADY in_acc 1 1 } } }
	outStream_grayscale_V_V { axis {  { outStream_grayscale_V_V_TDATA out_data 1 8 }  { outStream_grayscale_V_V_TVALID out_vld 1 1 }  { outStream_grayscale_V_V_TREADY out_acc 0 1 } } }
	enable_raw_stream { ap_none {  { enable_raw_stream in_data 0 1 } } }
	outStream_LUMA_V_V { axis {  { outStream_LUMA_V_V_TDATA out_data 1 8 }  { outStream_LUMA_V_V_TVALID out_vld 1 1 }  { outStream_LUMA_V_V_TREADY out_acc 0 1 } } }
	outStream_CHROMA_V_V { axis {  { outStream_CHROMA_V_V_TDATA out_data 1 8 }  { outStream_CHROMA_V_V_TVALID out_vld 1 1 }  { outStream_CHROMA_V_V_TREADY out_acc 0 1 } } }
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
