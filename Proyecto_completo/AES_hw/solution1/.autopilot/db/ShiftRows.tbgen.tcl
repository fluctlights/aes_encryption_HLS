set moduleName ShiftRows
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ShiftRows}
set C_modelType { int 96 }
set C_modelArgList {
	{ data_out_1_read int 8 regular  }
	{ data_out_2_read int 8 regular  }
	{ data_out_3_read int 8 regular  }
	{ data_out_5_read int 8 regular  }
	{ data_out_6_read int 8 regular  }
	{ data_out_7_read int 8 regular  }
	{ data_out_9_read int 8 regular  }
	{ data_out_10_read int 8 regular  }
	{ data_out_119_read int 8 regular  }
	{ data_out_13_read int 8 regular  }
	{ data_out_14_read int 8 regular  }
	{ data_out_15_read int 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data_out_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_119_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out_1_read sc_in sc_lv 8 signal 0 } 
	{ data_out_2_read sc_in sc_lv 8 signal 1 } 
	{ data_out_3_read sc_in sc_lv 8 signal 2 } 
	{ data_out_5_read sc_in sc_lv 8 signal 3 } 
	{ data_out_6_read sc_in sc_lv 8 signal 4 } 
	{ data_out_7_read sc_in sc_lv 8 signal 5 } 
	{ data_out_9_read sc_in sc_lv 8 signal 6 } 
	{ data_out_10_read sc_in sc_lv 8 signal 7 } 
	{ data_out_119_read sc_in sc_lv 8 signal 8 } 
	{ data_out_13_read sc_in sc_lv 8 signal 9 } 
	{ data_out_14_read sc_in sc_lv 8 signal 10 } 
	{ data_out_15_read sc_in sc_lv 8 signal 11 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
	{ ap_return_5 sc_out sc_lv 8 signal -1 } 
	{ ap_return_6 sc_out sc_lv 8 signal -1 } 
	{ ap_return_7 sc_out sc_lv 8 signal -1 } 
	{ ap_return_8 sc_out sc_lv 8 signal -1 } 
	{ ap_return_9 sc_out sc_lv 8 signal -1 } 
	{ ap_return_10 sc_out sc_lv 8 signal -1 } 
	{ ap_return_11 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_1_read", "role": "default" }} , 
 	{ "name": "data_out_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_2_read", "role": "default" }} , 
 	{ "name": "data_out_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_3_read", "role": "default" }} , 
 	{ "name": "data_out_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_5_read", "role": "default" }} , 
 	{ "name": "data_out_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_6_read", "role": "default" }} , 
 	{ "name": "data_out_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_7_read", "role": "default" }} , 
 	{ "name": "data_out_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_9_read", "role": "default" }} , 
 	{ "name": "data_out_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_10_read", "role": "default" }} , 
 	{ "name": "data_out_119_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_119_read", "role": "default" }} , 
 	{ "name": "data_out_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_13_read", "role": "default" }} , 
 	{ "name": "data_out_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_14_read", "role": "default" }} , 
 	{ "name": "data_out_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_15_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ShiftRows",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_out_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_119_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out_15_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ShiftRows {
		data_out_1_read {Type I LastRead 0 FirstWrite -1}
		data_out_2_read {Type I LastRead 0 FirstWrite -1}
		data_out_3_read {Type I LastRead 0 FirstWrite -1}
		data_out_5_read {Type I LastRead 0 FirstWrite -1}
		data_out_6_read {Type I LastRead 0 FirstWrite -1}
		data_out_7_read {Type I LastRead 0 FirstWrite -1}
		data_out_9_read {Type I LastRead 0 FirstWrite -1}
		data_out_10_read {Type I LastRead 0 FirstWrite -1}
		data_out_119_read {Type I LastRead 0 FirstWrite -1}
		data_out_13_read {Type I LastRead 0 FirstWrite -1}
		data_out_14_read {Type I LastRead 0 FirstWrite -1}
		data_out_15_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_out_1_read { ap_none {  { data_out_1_read in_data 0 8 } } }
	data_out_2_read { ap_none {  { data_out_2_read in_data 0 8 } } }
	data_out_3_read { ap_none {  { data_out_3_read in_data 0 8 } } }
	data_out_5_read { ap_none {  { data_out_5_read in_data 0 8 } } }
	data_out_6_read { ap_none {  { data_out_6_read in_data 0 8 } } }
	data_out_7_read { ap_none {  { data_out_7_read in_data 0 8 } } }
	data_out_9_read { ap_none {  { data_out_9_read in_data 0 8 } } }
	data_out_10_read { ap_none {  { data_out_10_read in_data 0 8 } } }
	data_out_119_read { ap_none {  { data_out_119_read in_data 0 8 } } }
	data_out_13_read { ap_none {  { data_out_13_read in_data 0 8 } } }
	data_out_14_read { ap_none {  { data_out_14_read in_data 0 8 } } }
	data_out_15_read { ap_none {  { data_out_15_read in_data 0 8 } } }
}
