set moduleName MixColumns
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
set C_modelName {MixColumns}
set C_modelType { int 128 }
set C_modelArgList {
	{ data_in_0_read int 8 regular  }
	{ data_in_1_read int 8 regular  }
	{ data_in_2_read int 8 regular  }
	{ data_in_3_read int 8 regular  }
	{ data_in_4_read int 8 regular  }
	{ data_in_5_read int 8 regular  }
	{ data_in_6_read int 8 regular  }
	{ data_in_7_read int 8 regular  }
	{ data_in_8_read int 8 regular  }
	{ data_in_9_read int 8 regular  }
	{ data_in_10_read int 8 regular  }
	{ data_in_11_read int 8 regular  }
	{ data_in_1213_read int 8 regular  }
	{ data_in_13_read int 8 regular  }
	{ data_in_14_read int 8 regular  }
	{ data_in_15_read int 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data_in_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_1213_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_0_read sc_in sc_lv 8 signal 0 } 
	{ data_in_1_read sc_in sc_lv 8 signal 1 } 
	{ data_in_2_read sc_in sc_lv 8 signal 2 } 
	{ data_in_3_read sc_in sc_lv 8 signal 3 } 
	{ data_in_4_read sc_in sc_lv 8 signal 4 } 
	{ data_in_5_read sc_in sc_lv 8 signal 5 } 
	{ data_in_6_read sc_in sc_lv 8 signal 6 } 
	{ data_in_7_read sc_in sc_lv 8 signal 7 } 
	{ data_in_8_read sc_in sc_lv 8 signal 8 } 
	{ data_in_9_read sc_in sc_lv 8 signal 9 } 
	{ data_in_10_read sc_in sc_lv 8 signal 10 } 
	{ data_in_11_read sc_in sc_lv 8 signal 11 } 
	{ data_in_1213_read sc_in sc_lv 8 signal 12 } 
	{ data_in_13_read sc_in sc_lv 8 signal 13 } 
	{ data_in_14_read sc_in sc_lv 8 signal 14 } 
	{ data_in_15_read sc_in sc_lv 8 signal 15 } 
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
	{ ap_return_12 sc_out sc_lv 8 signal -1 } 
	{ ap_return_13 sc_out sc_lv 8 signal -1 } 
	{ ap_return_14 sc_out sc_lv 8 signal -1 } 
	{ ap_return_15 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_0_read", "role": "default" }} , 
 	{ "name": "data_in_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_1_read", "role": "default" }} , 
 	{ "name": "data_in_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_2_read", "role": "default" }} , 
 	{ "name": "data_in_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_3_read", "role": "default" }} , 
 	{ "name": "data_in_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_4_read", "role": "default" }} , 
 	{ "name": "data_in_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_5_read", "role": "default" }} , 
 	{ "name": "data_in_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_6_read", "role": "default" }} , 
 	{ "name": "data_in_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_7_read", "role": "default" }} , 
 	{ "name": "data_in_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_8_read", "role": "default" }} , 
 	{ "name": "data_in_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_9_read", "role": "default" }} , 
 	{ "name": "data_in_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_10_read", "role": "default" }} , 
 	{ "name": "data_in_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_11_read", "role": "default" }} , 
 	{ "name": "data_in_1213_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_1213_read", "role": "default" }} , 
 	{ "name": "data_in_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_13_read", "role": "default" }} , 
 	{ "name": "data_in_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_14_read", "role": "default" }} , 
 	{ "name": "data_in_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_15_read", "role": "default" }} , 
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
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "MixColumns",
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
			{"Name" : "data_in_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_1213_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_15_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	MixColumns {
		data_in_0_read {Type I LastRead 0 FirstWrite -1}
		data_in_1_read {Type I LastRead 0 FirstWrite -1}
		data_in_2_read {Type I LastRead 0 FirstWrite -1}
		data_in_3_read {Type I LastRead 0 FirstWrite -1}
		data_in_4_read {Type I LastRead 0 FirstWrite -1}
		data_in_5_read {Type I LastRead 0 FirstWrite -1}
		data_in_6_read {Type I LastRead 0 FirstWrite -1}
		data_in_7_read {Type I LastRead 0 FirstWrite -1}
		data_in_8_read {Type I LastRead 0 FirstWrite -1}
		data_in_9_read {Type I LastRead 0 FirstWrite -1}
		data_in_10_read {Type I LastRead 0 FirstWrite -1}
		data_in_11_read {Type I LastRead 0 FirstWrite -1}
		data_in_1213_read {Type I LastRead 0 FirstWrite -1}
		data_in_13_read {Type I LastRead 0 FirstWrite -1}
		data_in_14_read {Type I LastRead 0 FirstWrite -1}
		data_in_15_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_0_read { ap_none {  { data_in_0_read in_data 0 8 } } }
	data_in_1_read { ap_none {  { data_in_1_read in_data 0 8 } } }
	data_in_2_read { ap_none {  { data_in_2_read in_data 0 8 } } }
	data_in_3_read { ap_none {  { data_in_3_read in_data 0 8 } } }
	data_in_4_read { ap_none {  { data_in_4_read in_data 0 8 } } }
	data_in_5_read { ap_none {  { data_in_5_read in_data 0 8 } } }
	data_in_6_read { ap_none {  { data_in_6_read in_data 0 8 } } }
	data_in_7_read { ap_none {  { data_in_7_read in_data 0 8 } } }
	data_in_8_read { ap_none {  { data_in_8_read in_data 0 8 } } }
	data_in_9_read { ap_none {  { data_in_9_read in_data 0 8 } } }
	data_in_10_read { ap_none {  { data_in_10_read in_data 0 8 } } }
	data_in_11_read { ap_none {  { data_in_11_read in_data 0 8 } } }
	data_in_1213_read { ap_none {  { data_in_1213_read in_data 0 8 } } }
	data_in_13_read { ap_none {  { data_in_13_read in_data 0 8 } } }
	data_in_14_read { ap_none {  { data_in_14_read in_data 0 8 } } }
	data_in_15_read { ap_none {  { data_in_15_read in_data 0 8 } } }
}
