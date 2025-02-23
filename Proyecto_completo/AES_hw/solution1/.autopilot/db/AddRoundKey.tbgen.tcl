set moduleName AddRoundKey
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
set C_modelName {AddRoundKey}
set C_modelType { int 128 }
set C_modelArgList {
	{ round uint 4 regular  }
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
	{ RoundKey_0 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_1 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_2 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_3 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_4 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_5 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_6 int 8 regular {array 22 { 1 1 } 1 1 }  }
	{ RoundKey_7 int 8 regular {array 22 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "round", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
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
 	{ "Name" : "RoundKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ round sc_in sc_lv 4 signal 0 } 
	{ data_in_0_read sc_in sc_lv 8 signal 1 } 
	{ data_in_1_read sc_in sc_lv 8 signal 2 } 
	{ data_in_2_read sc_in sc_lv 8 signal 3 } 
	{ data_in_3_read sc_in sc_lv 8 signal 4 } 
	{ data_in_4_read sc_in sc_lv 8 signal 5 } 
	{ data_in_5_read sc_in sc_lv 8 signal 6 } 
	{ data_in_6_read sc_in sc_lv 8 signal 7 } 
	{ data_in_7_read sc_in sc_lv 8 signal 8 } 
	{ data_in_8_read sc_in sc_lv 8 signal 9 } 
	{ data_in_9_read sc_in sc_lv 8 signal 10 } 
	{ data_in_10_read sc_in sc_lv 8 signal 11 } 
	{ data_in_11_read sc_in sc_lv 8 signal 12 } 
	{ data_in_1213_read sc_in sc_lv 8 signal 13 } 
	{ data_in_13_read sc_in sc_lv 8 signal 14 } 
	{ data_in_14_read sc_in sc_lv 8 signal 15 } 
	{ data_in_15_read sc_in sc_lv 8 signal 16 } 
	{ RoundKey_0_address0 sc_out sc_lv 5 signal 17 } 
	{ RoundKey_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ RoundKey_0_q0 sc_in sc_lv 8 signal 17 } 
	{ RoundKey_0_address1 sc_out sc_lv 5 signal 17 } 
	{ RoundKey_0_ce1 sc_out sc_logic 1 signal 17 } 
	{ RoundKey_0_q1 sc_in sc_lv 8 signal 17 } 
	{ RoundKey_1_address0 sc_out sc_lv 5 signal 18 } 
	{ RoundKey_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ RoundKey_1_q0 sc_in sc_lv 8 signal 18 } 
	{ RoundKey_1_address1 sc_out sc_lv 5 signal 18 } 
	{ RoundKey_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ RoundKey_1_q1 sc_in sc_lv 8 signal 18 } 
	{ RoundKey_2_address0 sc_out sc_lv 5 signal 19 } 
	{ RoundKey_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ RoundKey_2_q0 sc_in sc_lv 8 signal 19 } 
	{ RoundKey_2_address1 sc_out sc_lv 5 signal 19 } 
	{ RoundKey_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ RoundKey_2_q1 sc_in sc_lv 8 signal 19 } 
	{ RoundKey_3_address0 sc_out sc_lv 5 signal 20 } 
	{ RoundKey_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ RoundKey_3_q0 sc_in sc_lv 8 signal 20 } 
	{ RoundKey_3_address1 sc_out sc_lv 5 signal 20 } 
	{ RoundKey_3_ce1 sc_out sc_logic 1 signal 20 } 
	{ RoundKey_3_q1 sc_in sc_lv 8 signal 20 } 
	{ RoundKey_4_address0 sc_out sc_lv 5 signal 21 } 
	{ RoundKey_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ RoundKey_4_q0 sc_in sc_lv 8 signal 21 } 
	{ RoundKey_4_address1 sc_out sc_lv 5 signal 21 } 
	{ RoundKey_4_ce1 sc_out sc_logic 1 signal 21 } 
	{ RoundKey_4_q1 sc_in sc_lv 8 signal 21 } 
	{ RoundKey_5_address0 sc_out sc_lv 5 signal 22 } 
	{ RoundKey_5_ce0 sc_out sc_logic 1 signal 22 } 
	{ RoundKey_5_q0 sc_in sc_lv 8 signal 22 } 
	{ RoundKey_5_address1 sc_out sc_lv 5 signal 22 } 
	{ RoundKey_5_ce1 sc_out sc_logic 1 signal 22 } 
	{ RoundKey_5_q1 sc_in sc_lv 8 signal 22 } 
	{ RoundKey_6_address0 sc_out sc_lv 5 signal 23 } 
	{ RoundKey_6_ce0 sc_out sc_logic 1 signal 23 } 
	{ RoundKey_6_q0 sc_in sc_lv 8 signal 23 } 
	{ RoundKey_6_address1 sc_out sc_lv 5 signal 23 } 
	{ RoundKey_6_ce1 sc_out sc_logic 1 signal 23 } 
	{ RoundKey_6_q1 sc_in sc_lv 8 signal 23 } 
	{ RoundKey_7_address0 sc_out sc_lv 5 signal 24 } 
	{ RoundKey_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ RoundKey_7_q0 sc_in sc_lv 8 signal 24 } 
	{ RoundKey_7_address1 sc_out sc_lv 5 signal 24 } 
	{ RoundKey_7_ce1 sc_out sc_logic 1 signal 24 } 
	{ RoundKey_7_q1 sc_in sc_lv 8 signal 24 } 
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
 	{ "name": "round", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "round", "role": "default" }} , 
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
 	{ "name": "RoundKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "address0" }} , 
 	{ "name": "RoundKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "ce0" }} , 
 	{ "name": "RoundKey_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "q0" }} , 
 	{ "name": "RoundKey_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "address1" }} , 
 	{ "name": "RoundKey_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "ce1" }} , 
 	{ "name": "RoundKey_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "q1" }} , 
 	{ "name": "RoundKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "address0" }} , 
 	{ "name": "RoundKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "ce0" }} , 
 	{ "name": "RoundKey_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "q0" }} , 
 	{ "name": "RoundKey_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "address1" }} , 
 	{ "name": "RoundKey_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "ce1" }} , 
 	{ "name": "RoundKey_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "q1" }} , 
 	{ "name": "RoundKey_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "address0" }} , 
 	{ "name": "RoundKey_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "ce0" }} , 
 	{ "name": "RoundKey_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "q0" }} , 
 	{ "name": "RoundKey_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "address1" }} , 
 	{ "name": "RoundKey_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "ce1" }} , 
 	{ "name": "RoundKey_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "q1" }} , 
 	{ "name": "RoundKey_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "address0" }} , 
 	{ "name": "RoundKey_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "ce0" }} , 
 	{ "name": "RoundKey_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "q0" }} , 
 	{ "name": "RoundKey_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "address1" }} , 
 	{ "name": "RoundKey_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "ce1" }} , 
 	{ "name": "RoundKey_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "q1" }} , 
 	{ "name": "RoundKey_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "address0" }} , 
 	{ "name": "RoundKey_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "ce0" }} , 
 	{ "name": "RoundKey_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "q0" }} , 
 	{ "name": "RoundKey_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "address1" }} , 
 	{ "name": "RoundKey_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "ce1" }} , 
 	{ "name": "RoundKey_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "q1" }} , 
 	{ "name": "RoundKey_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "address0" }} , 
 	{ "name": "RoundKey_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "ce0" }} , 
 	{ "name": "RoundKey_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "q0" }} , 
 	{ "name": "RoundKey_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "address1" }} , 
 	{ "name": "RoundKey_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "ce1" }} , 
 	{ "name": "RoundKey_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "q1" }} , 
 	{ "name": "RoundKey_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "address0" }} , 
 	{ "name": "RoundKey_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "ce0" }} , 
 	{ "name": "RoundKey_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "q0" }} , 
 	{ "name": "RoundKey_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "address1" }} , 
 	{ "name": "RoundKey_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "ce1" }} , 
 	{ "name": "RoundKey_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "q1" }} , 
 	{ "name": "RoundKey_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "address0" }} , 
 	{ "name": "RoundKey_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "ce0" }} , 
 	{ "name": "RoundKey_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "q0" }} , 
 	{ "name": "RoundKey_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "address1" }} , 
 	{ "name": "RoundKey_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "ce1" }} , 
 	{ "name": "RoundKey_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "q1" }} , 
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
		"CDFG" : "AddRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "data_in_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "RoundKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RoundKey_7", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	AddRoundKey {
		round {Type I LastRead 0 FirstWrite -1}
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
		data_in_15_read {Type I LastRead 0 FirstWrite -1}
		RoundKey_0 {Type I LastRead 1 FirstWrite -1}
		RoundKey_1 {Type I LastRead 1 FirstWrite -1}
		RoundKey_2 {Type I LastRead 1 FirstWrite -1}
		RoundKey_3 {Type I LastRead 1 FirstWrite -1}
		RoundKey_4 {Type I LastRead 1 FirstWrite -1}
		RoundKey_5 {Type I LastRead 1 FirstWrite -1}
		RoundKey_6 {Type I LastRead 1 FirstWrite -1}
		RoundKey_7 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	round { ap_none {  { round in_data 0 4 } } }
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
	RoundKey_0 { ap_memory {  { RoundKey_0_address0 mem_address 1 5 }  { RoundKey_0_ce0 mem_ce 1 1 }  { RoundKey_0_q0 in_data 0 8 }  { RoundKey_0_address1 MemPortADDR2 1 5 }  { RoundKey_0_ce1 MemPortCE2 1 1 }  { RoundKey_0_q1 in_data 0 8 } } }
	RoundKey_1 { ap_memory {  { RoundKey_1_address0 mem_address 1 5 }  { RoundKey_1_ce0 mem_ce 1 1 }  { RoundKey_1_q0 in_data 0 8 }  { RoundKey_1_address1 MemPortADDR2 1 5 }  { RoundKey_1_ce1 MemPortCE2 1 1 }  { RoundKey_1_q1 in_data 0 8 } } }
	RoundKey_2 { ap_memory {  { RoundKey_2_address0 mem_address 1 5 }  { RoundKey_2_ce0 mem_ce 1 1 }  { RoundKey_2_q0 in_data 0 8 }  { RoundKey_2_address1 MemPortADDR2 1 5 }  { RoundKey_2_ce1 MemPortCE2 1 1 }  { RoundKey_2_q1 in_data 0 8 } } }
	RoundKey_3 { ap_memory {  { RoundKey_3_address0 mem_address 1 5 }  { RoundKey_3_ce0 mem_ce 1 1 }  { RoundKey_3_q0 in_data 0 8 }  { RoundKey_3_address1 MemPortADDR2 1 5 }  { RoundKey_3_ce1 MemPortCE2 1 1 }  { RoundKey_3_q1 in_data 0 8 } } }
	RoundKey_4 { ap_memory {  { RoundKey_4_address0 mem_address 1 5 }  { RoundKey_4_ce0 mem_ce 1 1 }  { RoundKey_4_q0 in_data 0 8 }  { RoundKey_4_address1 MemPortADDR2 1 5 }  { RoundKey_4_ce1 MemPortCE2 1 1 }  { RoundKey_4_q1 in_data 0 8 } } }
	RoundKey_5 { ap_memory {  { RoundKey_5_address0 mem_address 1 5 }  { RoundKey_5_ce0 mem_ce 1 1 }  { RoundKey_5_q0 in_data 0 8 }  { RoundKey_5_address1 MemPortADDR2 1 5 }  { RoundKey_5_ce1 MemPortCE2 1 1 }  { RoundKey_5_q1 in_data 0 8 } } }
	RoundKey_6 { ap_memory {  { RoundKey_6_address0 mem_address 1 5 }  { RoundKey_6_ce0 mem_ce 1 1 }  { RoundKey_6_q0 in_data 0 8 }  { RoundKey_6_address1 MemPortADDR2 1 5 }  { RoundKey_6_ce1 MemPortCE2 1 1 }  { RoundKey_6_q1 in_data 0 8 } } }
	RoundKey_7 { ap_memory {  { RoundKey_7_address0 mem_address 1 5 }  { RoundKey_7_ce0 mem_ce 1 1 }  { RoundKey_7_q0 in_data 0 8 }  { RoundKey_7_address1 MemPortADDR2 1 5 }  { RoundKey_7_ce1 MemPortCE2 1 1 }  { RoundKey_7_q1 in_data 0 8 } } }
}
