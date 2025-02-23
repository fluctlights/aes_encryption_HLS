set moduleName SubBytes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {SubBytes}
set C_modelType { int 128 }
set C_modelArgList {
	{ data_0_read int 8 regular  }
	{ data_1_read int 8 regular  }
	{ data_2_read int 8 regular  }
	{ data_3_read int 8 regular  }
	{ data_4_read int 8 regular  }
	{ data_5_read int 8 regular  }
	{ data_6_read int 8 regular  }
	{ data_7_read int 8 regular  }
	{ data_8_read int 8 regular  }
	{ data_9_read int 8 regular  }
	{ data_10_read int 8 regular  }
	{ data_11_read int 8 regular  }
	{ data_1213_read int 8 regular  }
	{ data_13_read int 8 regular  }
	{ data_14_read int 8 regular  }
	{ data_15_read int 8 regular  }
	{ s_box int 8 regular {array 256 { 1 1 1 1 1 1 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_1213_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_box", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ data_0_read sc_in sc_lv 8 signal 0 } 
	{ data_1_read sc_in sc_lv 8 signal 1 } 
	{ data_2_read sc_in sc_lv 8 signal 2 } 
	{ data_3_read sc_in sc_lv 8 signal 3 } 
	{ data_4_read sc_in sc_lv 8 signal 4 } 
	{ data_5_read sc_in sc_lv 8 signal 5 } 
	{ data_6_read sc_in sc_lv 8 signal 6 } 
	{ data_7_read sc_in sc_lv 8 signal 7 } 
	{ data_8_read sc_in sc_lv 8 signal 8 } 
	{ data_9_read sc_in sc_lv 8 signal 9 } 
	{ data_10_read sc_in sc_lv 8 signal 10 } 
	{ data_11_read sc_in sc_lv 8 signal 11 } 
	{ data_1213_read sc_in sc_lv 8 signal 12 } 
	{ data_13_read sc_in sc_lv 8 signal 13 } 
	{ data_14_read sc_in sc_lv 8 signal 14 } 
	{ data_15_read sc_in sc_lv 8 signal 15 } 
	{ s_box_address0 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce0 sc_out sc_logic 1 signal 16 } 
	{ s_box_q0 sc_in sc_lv 8 signal 16 } 
	{ s_box_address1 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce1 sc_out sc_logic 1 signal 16 } 
	{ s_box_q1 sc_in sc_lv 8 signal 16 } 
	{ s_box_address2 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce2 sc_out sc_logic 1 signal 16 } 
	{ s_box_q2 sc_in sc_lv 8 signal 16 } 
	{ s_box_address3 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce3 sc_out sc_logic 1 signal 16 } 
	{ s_box_q3 sc_in sc_lv 8 signal 16 } 
	{ s_box_address4 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce4 sc_out sc_logic 1 signal 16 } 
	{ s_box_q4 sc_in sc_lv 8 signal 16 } 
	{ s_box_address5 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce5 sc_out sc_logic 1 signal 16 } 
	{ s_box_q5 sc_in sc_lv 8 signal 16 } 
	{ s_box_address6 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce6 sc_out sc_logic 1 signal 16 } 
	{ s_box_q6 sc_in sc_lv 8 signal 16 } 
	{ s_box_address7 sc_out sc_lv 8 signal 16 } 
	{ s_box_ce7 sc_out sc_logic 1 signal 16 } 
	{ s_box_q7 sc_in sc_lv 8 signal 16 } 
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
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "data_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0_read", "role": "default" }} , 
 	{ "name": "data_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_1_read", "role": "default" }} , 
 	{ "name": "data_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_2_read", "role": "default" }} , 
 	{ "name": "data_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_3_read", "role": "default" }} , 
 	{ "name": "data_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_4_read", "role": "default" }} , 
 	{ "name": "data_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_5_read", "role": "default" }} , 
 	{ "name": "data_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_6_read", "role": "default" }} , 
 	{ "name": "data_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_7_read", "role": "default" }} , 
 	{ "name": "data_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_8_read", "role": "default" }} , 
 	{ "name": "data_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_9_read", "role": "default" }} , 
 	{ "name": "data_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_10_read", "role": "default" }} , 
 	{ "name": "data_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_11_read", "role": "default" }} , 
 	{ "name": "data_1213_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_1213_read", "role": "default" }} , 
 	{ "name": "data_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_13_read", "role": "default" }} , 
 	{ "name": "data_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_14_read", "role": "default" }} , 
 	{ "name": "data_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_15_read", "role": "default" }} , 
 	{ "name": "s_box_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address0" }} , 
 	{ "name": "s_box_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce0" }} , 
 	{ "name": "s_box_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q0" }} , 
 	{ "name": "s_box_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address1" }} , 
 	{ "name": "s_box_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce1" }} , 
 	{ "name": "s_box_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q1" }} , 
 	{ "name": "s_box_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address2" }} , 
 	{ "name": "s_box_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce2" }} , 
 	{ "name": "s_box_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q2" }} , 
 	{ "name": "s_box_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address3" }} , 
 	{ "name": "s_box_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce3" }} , 
 	{ "name": "s_box_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q3" }} , 
 	{ "name": "s_box_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address4" }} , 
 	{ "name": "s_box_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce4" }} , 
 	{ "name": "s_box_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q4" }} , 
 	{ "name": "s_box_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address5" }} , 
 	{ "name": "s_box_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce5" }} , 
 	{ "name": "s_box_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q5" }} , 
 	{ "name": "s_box_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address6" }} , 
 	{ "name": "s_box_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce6" }} , 
 	{ "name": "s_box_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q6" }} , 
 	{ "name": "s_box_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "address7" }} , 
 	{ "name": "s_box_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box", "role": "ce7" }} , 
 	{ "name": "s_box_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box", "role": "q7" }} , 
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
		"CDFG" : "SubBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1213_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_box", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	SubBytes {
		data_0_read {Type I LastRead 0 FirstWrite -1}
		data_1_read {Type I LastRead 0 FirstWrite -1}
		data_2_read {Type I LastRead 0 FirstWrite -1}
		data_3_read {Type I LastRead 0 FirstWrite -1}
		data_4_read {Type I LastRead 0 FirstWrite -1}
		data_5_read {Type I LastRead 0 FirstWrite -1}
		data_6_read {Type I LastRead 0 FirstWrite -1}
		data_7_read {Type I LastRead 0 FirstWrite -1}
		data_8_read {Type I LastRead 1 FirstWrite -1}
		data_9_read {Type I LastRead 1 FirstWrite -1}
		data_10_read {Type I LastRead 1 FirstWrite -1}
		data_11_read {Type I LastRead 1 FirstWrite -1}
		data_1213_read {Type I LastRead 1 FirstWrite -1}
		data_13_read {Type I LastRead 1 FirstWrite -1}
		data_14_read {Type I LastRead 1 FirstWrite -1}
		data_15_read {Type I LastRead 1 FirstWrite -1}
		s_box {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_read { ap_none {  { data_0_read in_data 0 8 } } }
	data_1_read { ap_none {  { data_1_read in_data 0 8 } } }
	data_2_read { ap_none {  { data_2_read in_data 0 8 } } }
	data_3_read { ap_none {  { data_3_read in_data 0 8 } } }
	data_4_read { ap_none {  { data_4_read in_data 0 8 } } }
	data_5_read { ap_none {  { data_5_read in_data 0 8 } } }
	data_6_read { ap_none {  { data_6_read in_data 0 8 } } }
	data_7_read { ap_none {  { data_7_read in_data 0 8 } } }
	data_8_read { ap_none {  { data_8_read in_data 0 8 } } }
	data_9_read { ap_none {  { data_9_read in_data 0 8 } } }
	data_10_read { ap_none {  { data_10_read in_data 0 8 } } }
	data_11_read { ap_none {  { data_11_read in_data 0 8 } } }
	data_1213_read { ap_none {  { data_1213_read in_data 0 8 } } }
	data_13_read { ap_none {  { data_13_read in_data 0 8 } } }
	data_14_read { ap_none {  { data_14_read in_data 0 8 } } }
	data_15_read { ap_none {  { data_15_read in_data 0 8 } } }
	s_box { ap_memory {  { s_box_address0 mem_address 1 8 }  { s_box_ce0 mem_ce 1 1 }  { s_box_q0 in_data 0 8 }  { s_box_address1 MemPortADDR2 1 8 }  { s_box_ce1 MemPortCE2 1 1 }  { s_box_q1 in_data 0 8 }  { s_box_address2 MemPortADDR2 1 8 }  { s_box_ce2 MemPortCE2 1 1 }  { s_box_q2 in_data 0 8 }  { s_box_address3 MemPortADDR2 1 8 }  { s_box_ce3 MemPortCE2 1 1 }  { s_box_q3 in_data 0 8 }  { s_box_address4 MemPortADDR2 1 8 }  { s_box_ce4 MemPortCE2 1 1 }  { s_box_q4 in_data 0 8 }  { s_box_address5 MemPortADDR2 1 8 }  { s_box_ce5 MemPortCE2 1 1 }  { s_box_q5 in_data 0 8 }  { s_box_address6 MemPortADDR2 1 8 }  { s_box_ce6 MemPortCE2 1 1 }  { s_box_q6 in_data 0 8 }  { s_box_address7 MemPortADDR2 1 8 }  { s_box_ce7 MemPortCE2 1 1 }  { s_box_q7 in_data 0 8 } } }
}
