set C_TypeInfoList {{ 
"pattern_generator_cross" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"outputStream": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName pattern_generator_cross
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {pattern_generator_cross}
set C_modelType { void 0 }
set C_modelArgList { 
	{ outputStream_V int 8 regular {axi_s 1 volatile  { outputStream_V data } }  }
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
set Spec2ImplPortList { 
	outputStream_V { axis {  { outputStream_V_TDATA out_data 1 8 }  { outputStream_V_TVALID out_vld 1 1 }  { outputStream_V_TREADY out_acc 0 1 } } }
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
