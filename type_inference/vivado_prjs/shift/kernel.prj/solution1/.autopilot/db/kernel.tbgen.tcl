set moduleName kernel
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {kernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_V int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ x_V int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ y_V int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "x_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "y_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_V_address0 sc_out sc_lv 4 signal 0 } 
	{ A_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_V_q0 sc_in sc_lv 32 signal 0 } 
	{ x_V_address0 sc_out sc_lv 4 signal 1 } 
	{ x_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_V_q0 sc_in sc_lv 32 signal 1 } 
	{ y_V_address0 sc_out sc_lv 4 signal 2 } 
	{ y_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ y_V_we0 sc_out sc_logic 1 signal 2 } 
	{ y_V_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V", "role": "address0" }} , 
 	{ "name": "A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_V", "role": "ce0" }} , 
 	{ "name": "A_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_V", "role": "q0" }} , 
 	{ "name": "x_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_V", "role": "address0" }} , 
 	{ "name": "x_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ce0" }} , 
 	{ "name": "x_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V", "role": "q0" }} , 
 	{ "name": "y_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_V", "role": "address0" }} , 
 	{ "name": "y_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "ce0" }} , 
 	{ "name": "y_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "we0" }} , 
 	{ "name": "y_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	kernel {
		A_V {Type I LastRead 1 FirstWrite -1}
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "49"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_V { ap_memory {  { A_V_address0 mem_address 1 4 }  { A_V_ce0 mem_ce 1 1 }  { A_V_q0 mem_dout 0 32 } } }
	x_V { ap_memory {  { x_V_address0 mem_address 1 4 }  { x_V_ce0 mem_ce 1 1 }  { x_V_q0 mem_dout 0 32 } } }
	y_V { ap_memory {  { y_V_address0 mem_address 1 4 }  { y_V_ce0 mem_ce 1 1 }  { y_V_we0 mem_we 1 1 }  { y_V_d0 mem_din 1 32 } } }
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
