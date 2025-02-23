set moduleName KeyExpansion
set isTopModule 0
set isCombinational 0
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
set C_modelName {KeyExpansion}
set C_modelType { void 0 }
set C_modelArgList {
	{ RoundKey_0 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_1 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_2 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_3 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_4 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_5 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_6 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ RoundKey_7 int 8 regular {array 22 { 0 0 } 0 1 }  }
	{ Key_0_read int 8 regular  }
	{ Key_1_read int 8 regular  }
	{ Key_2_read int 8 regular  }
	{ Key_3_read int 8 regular  }
	{ Key_4_read int 8 regular  }
	{ Key_5_read int 8 regular  }
	{ Key_6_read int 8 regular  }
	{ Key_7_read int 8 regular  }
	{ Key_8_read int 8 regular  }
	{ Key_9_read int 8 regular  }
	{ Key_10_read int 8 regular  }
	{ Key_11_read int 8 regular  }
	{ Key_12_read int 8 regular  }
	{ Key_13_read int 8 regular  }
	{ Key_14_read int 8 regular  }
	{ Key_15_read int 8 regular  }
	{ s_box int 8 regular {array 256 { 1 1 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "RoundKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "RoundKey_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Key_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_12_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Key_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_box", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 99
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RoundKey_0_address0 sc_out sc_lv 5 signal 0 } 
	{ RoundKey_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_0_we0 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_0_d0 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_0_address1 sc_out sc_lv 5 signal 0 } 
	{ RoundKey_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_0_we1 sc_out sc_logic 1 signal 0 } 
	{ RoundKey_0_d1 sc_out sc_lv 8 signal 0 } 
	{ RoundKey_1_address0 sc_out sc_lv 5 signal 1 } 
	{ RoundKey_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ RoundKey_1_we0 sc_out sc_logic 1 signal 1 } 
	{ RoundKey_1_d0 sc_out sc_lv 8 signal 1 } 
	{ RoundKey_1_address1 sc_out sc_lv 5 signal 1 } 
	{ RoundKey_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ RoundKey_1_we1 sc_out sc_logic 1 signal 1 } 
	{ RoundKey_1_d1 sc_out sc_lv 8 signal 1 } 
	{ RoundKey_2_address0 sc_out sc_lv 5 signal 2 } 
	{ RoundKey_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ RoundKey_2_we0 sc_out sc_logic 1 signal 2 } 
	{ RoundKey_2_d0 sc_out sc_lv 8 signal 2 } 
	{ RoundKey_2_address1 sc_out sc_lv 5 signal 2 } 
	{ RoundKey_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ RoundKey_2_we1 sc_out sc_logic 1 signal 2 } 
	{ RoundKey_2_d1 sc_out sc_lv 8 signal 2 } 
	{ RoundKey_3_address0 sc_out sc_lv 5 signal 3 } 
	{ RoundKey_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ RoundKey_3_we0 sc_out sc_logic 1 signal 3 } 
	{ RoundKey_3_d0 sc_out sc_lv 8 signal 3 } 
	{ RoundKey_3_address1 sc_out sc_lv 5 signal 3 } 
	{ RoundKey_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ RoundKey_3_we1 sc_out sc_logic 1 signal 3 } 
	{ RoundKey_3_d1 sc_out sc_lv 8 signal 3 } 
	{ RoundKey_4_address0 sc_out sc_lv 5 signal 4 } 
	{ RoundKey_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ RoundKey_4_we0 sc_out sc_logic 1 signal 4 } 
	{ RoundKey_4_d0 sc_out sc_lv 8 signal 4 } 
	{ RoundKey_4_address1 sc_out sc_lv 5 signal 4 } 
	{ RoundKey_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ RoundKey_4_we1 sc_out sc_logic 1 signal 4 } 
	{ RoundKey_4_d1 sc_out sc_lv 8 signal 4 } 
	{ RoundKey_5_address0 sc_out sc_lv 5 signal 5 } 
	{ RoundKey_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ RoundKey_5_we0 sc_out sc_logic 1 signal 5 } 
	{ RoundKey_5_d0 sc_out sc_lv 8 signal 5 } 
	{ RoundKey_5_address1 sc_out sc_lv 5 signal 5 } 
	{ RoundKey_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ RoundKey_5_we1 sc_out sc_logic 1 signal 5 } 
	{ RoundKey_5_d1 sc_out sc_lv 8 signal 5 } 
	{ RoundKey_6_address0 sc_out sc_lv 5 signal 6 } 
	{ RoundKey_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ RoundKey_6_we0 sc_out sc_logic 1 signal 6 } 
	{ RoundKey_6_d0 sc_out sc_lv 8 signal 6 } 
	{ RoundKey_6_address1 sc_out sc_lv 5 signal 6 } 
	{ RoundKey_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ RoundKey_6_we1 sc_out sc_logic 1 signal 6 } 
	{ RoundKey_6_d1 sc_out sc_lv 8 signal 6 } 
	{ RoundKey_7_address0 sc_out sc_lv 5 signal 7 } 
	{ RoundKey_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ RoundKey_7_we0 sc_out sc_logic 1 signal 7 } 
	{ RoundKey_7_d0 sc_out sc_lv 8 signal 7 } 
	{ RoundKey_7_address1 sc_out sc_lv 5 signal 7 } 
	{ RoundKey_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ RoundKey_7_we1 sc_out sc_logic 1 signal 7 } 
	{ RoundKey_7_d1 sc_out sc_lv 8 signal 7 } 
	{ Key_0_read sc_in sc_lv 8 signal 8 } 
	{ Key_1_read sc_in sc_lv 8 signal 9 } 
	{ Key_2_read sc_in sc_lv 8 signal 10 } 
	{ Key_3_read sc_in sc_lv 8 signal 11 } 
	{ Key_4_read sc_in sc_lv 8 signal 12 } 
	{ Key_5_read sc_in sc_lv 8 signal 13 } 
	{ Key_6_read sc_in sc_lv 8 signal 14 } 
	{ Key_7_read sc_in sc_lv 8 signal 15 } 
	{ Key_8_read sc_in sc_lv 8 signal 16 } 
	{ Key_9_read sc_in sc_lv 8 signal 17 } 
	{ Key_10_read sc_in sc_lv 8 signal 18 } 
	{ Key_11_read sc_in sc_lv 8 signal 19 } 
	{ Key_12_read sc_in sc_lv 8 signal 20 } 
	{ Key_13_read sc_in sc_lv 8 signal 21 } 
	{ Key_14_read sc_in sc_lv 8 signal 22 } 
	{ Key_15_read sc_in sc_lv 8 signal 23 } 
	{ s_box_address0 sc_out sc_lv 8 signal 24 } 
	{ s_box_ce0 sc_out sc_logic 1 signal 24 } 
	{ s_box_q0 sc_in sc_lv 8 signal 24 } 
	{ s_box_address1 sc_out sc_lv 8 signal 24 } 
	{ s_box_ce1 sc_out sc_logic 1 signal 24 } 
	{ s_box_q1 sc_in sc_lv 8 signal 24 } 
	{ s_box_address2 sc_out sc_lv 8 signal 24 } 
	{ s_box_ce2 sc_out sc_logic 1 signal 24 } 
	{ s_box_q2 sc_in sc_lv 8 signal 24 } 
	{ s_box_address3 sc_out sc_lv 8 signal 24 } 
	{ s_box_ce3 sc_out sc_logic 1 signal 24 } 
	{ s_box_q3 sc_in sc_lv 8 signal 24 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RoundKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "address0" }} , 
 	{ "name": "RoundKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "ce0" }} , 
 	{ "name": "RoundKey_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "we0" }} , 
 	{ "name": "RoundKey_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "d0" }} , 
 	{ "name": "RoundKey_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "address1" }} , 
 	{ "name": "RoundKey_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "ce1" }} , 
 	{ "name": "RoundKey_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "we1" }} , 
 	{ "name": "RoundKey_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_0", "role": "d1" }} , 
 	{ "name": "RoundKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "address0" }} , 
 	{ "name": "RoundKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "ce0" }} , 
 	{ "name": "RoundKey_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "we0" }} , 
 	{ "name": "RoundKey_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "d0" }} , 
 	{ "name": "RoundKey_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "address1" }} , 
 	{ "name": "RoundKey_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "ce1" }} , 
 	{ "name": "RoundKey_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "we1" }} , 
 	{ "name": "RoundKey_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_1", "role": "d1" }} , 
 	{ "name": "RoundKey_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "address0" }} , 
 	{ "name": "RoundKey_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "ce0" }} , 
 	{ "name": "RoundKey_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "we0" }} , 
 	{ "name": "RoundKey_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "d0" }} , 
 	{ "name": "RoundKey_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "address1" }} , 
 	{ "name": "RoundKey_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "ce1" }} , 
 	{ "name": "RoundKey_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "we1" }} , 
 	{ "name": "RoundKey_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_2", "role": "d1" }} , 
 	{ "name": "RoundKey_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "address0" }} , 
 	{ "name": "RoundKey_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "ce0" }} , 
 	{ "name": "RoundKey_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "we0" }} , 
 	{ "name": "RoundKey_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "d0" }} , 
 	{ "name": "RoundKey_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "address1" }} , 
 	{ "name": "RoundKey_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "ce1" }} , 
 	{ "name": "RoundKey_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "we1" }} , 
 	{ "name": "RoundKey_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_3", "role": "d1" }} , 
 	{ "name": "RoundKey_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "address0" }} , 
 	{ "name": "RoundKey_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "ce0" }} , 
 	{ "name": "RoundKey_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "we0" }} , 
 	{ "name": "RoundKey_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "d0" }} , 
 	{ "name": "RoundKey_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "address1" }} , 
 	{ "name": "RoundKey_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "ce1" }} , 
 	{ "name": "RoundKey_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "we1" }} , 
 	{ "name": "RoundKey_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_4", "role": "d1" }} , 
 	{ "name": "RoundKey_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "address0" }} , 
 	{ "name": "RoundKey_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "ce0" }} , 
 	{ "name": "RoundKey_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "we0" }} , 
 	{ "name": "RoundKey_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "d0" }} , 
 	{ "name": "RoundKey_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "address1" }} , 
 	{ "name": "RoundKey_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "ce1" }} , 
 	{ "name": "RoundKey_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "we1" }} , 
 	{ "name": "RoundKey_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_5", "role": "d1" }} , 
 	{ "name": "RoundKey_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "address0" }} , 
 	{ "name": "RoundKey_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "ce0" }} , 
 	{ "name": "RoundKey_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "we0" }} , 
 	{ "name": "RoundKey_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "d0" }} , 
 	{ "name": "RoundKey_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "address1" }} , 
 	{ "name": "RoundKey_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "ce1" }} , 
 	{ "name": "RoundKey_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "we1" }} , 
 	{ "name": "RoundKey_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_6", "role": "d1" }} , 
 	{ "name": "RoundKey_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "address0" }} , 
 	{ "name": "RoundKey_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "ce0" }} , 
 	{ "name": "RoundKey_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "we0" }} , 
 	{ "name": "RoundKey_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "d0" }} , 
 	{ "name": "RoundKey_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "address1" }} , 
 	{ "name": "RoundKey_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "ce1" }} , 
 	{ "name": "RoundKey_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "we1" }} , 
 	{ "name": "RoundKey_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "RoundKey_7", "role": "d1" }} , 
 	{ "name": "Key_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_0_read", "role": "default" }} , 
 	{ "name": "Key_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_1_read", "role": "default" }} , 
 	{ "name": "Key_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_2_read", "role": "default" }} , 
 	{ "name": "Key_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_3_read", "role": "default" }} , 
 	{ "name": "Key_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_4_read", "role": "default" }} , 
 	{ "name": "Key_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_5_read", "role": "default" }} , 
 	{ "name": "Key_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_6_read", "role": "default" }} , 
 	{ "name": "Key_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_7_read", "role": "default" }} , 
 	{ "name": "Key_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_8_read", "role": "default" }} , 
 	{ "name": "Key_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_9_read", "role": "default" }} , 
 	{ "name": "Key_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_10_read", "role": "default" }} , 
 	{ "name": "Key_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_11_read", "role": "default" }} , 
 	{ "name": "Key_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_12_read", "role": "default" }} , 
 	{ "name": "Key_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_13_read", "role": "default" }} , 
 	{ "name": "Key_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_14_read", "role": "default" }} , 
 	{ "name": "Key_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Key_15_read", "role": "default" }} , 
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
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "11",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "RoundKey_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RoundKey_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "Key_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_box", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	KeyExpansion {
		RoundKey_0 {Type O LastRead -1 FirstWrite 0}
		RoundKey_1 {Type O LastRead -1 FirstWrite 0}
		RoundKey_2 {Type O LastRead -1 FirstWrite 0}
		RoundKey_3 {Type O LastRead -1 FirstWrite 0}
		RoundKey_4 {Type O LastRead -1 FirstWrite 0}
		RoundKey_5 {Type O LastRead -1 FirstWrite 0}
		RoundKey_6 {Type O LastRead -1 FirstWrite 0}
		RoundKey_7 {Type O LastRead -1 FirstWrite 0}
		Key_0_read {Type I LastRead 0 FirstWrite -1}
		Key_1_read {Type I LastRead 0 FirstWrite -1}
		Key_2_read {Type I LastRead 0 FirstWrite -1}
		Key_3_read {Type I LastRead 0 FirstWrite -1}
		Key_4_read {Type I LastRead 0 FirstWrite -1}
		Key_5_read {Type I LastRead 0 FirstWrite -1}
		Key_6_read {Type I LastRead 0 FirstWrite -1}
		Key_7_read {Type I LastRead 0 FirstWrite -1}
		Key_8_read {Type I LastRead 0 FirstWrite -1}
		Key_9_read {Type I LastRead 0 FirstWrite -1}
		Key_10_read {Type I LastRead 0 FirstWrite -1}
		Key_11_read {Type I LastRead 0 FirstWrite -1}
		Key_12_read {Type I LastRead 0 FirstWrite -1}
		Key_13_read {Type I LastRead 0 FirstWrite -1}
		Key_14_read {Type I LastRead 0 FirstWrite -1}
		Key_15_read {Type I LastRead 0 FirstWrite -1}
		s_box {Type I LastRead 10 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RoundKey_0 { ap_memory {  { RoundKey_0_address0 mem_address 1 5 }  { RoundKey_0_ce0 mem_ce 1 1 }  { RoundKey_0_we0 mem_we 1 1 }  { RoundKey_0_d0 mem_din 1 8 }  { RoundKey_0_address1 MemPortADDR2 1 5 }  { RoundKey_0_ce1 MemPortCE2 1 1 }  { RoundKey_0_we1 MemPortWE2 1 1 }  { RoundKey_0_d1 MemPortDIN2 1 8 } } }
	RoundKey_1 { ap_memory {  { RoundKey_1_address0 mem_address 1 5 }  { RoundKey_1_ce0 mem_ce 1 1 }  { RoundKey_1_we0 mem_we 1 1 }  { RoundKey_1_d0 mem_din 1 8 }  { RoundKey_1_address1 MemPortADDR2 1 5 }  { RoundKey_1_ce1 MemPortCE2 1 1 }  { RoundKey_1_we1 MemPortWE2 1 1 }  { RoundKey_1_d1 MemPortDIN2 1 8 } } }
	RoundKey_2 { ap_memory {  { RoundKey_2_address0 mem_address 1 5 }  { RoundKey_2_ce0 mem_ce 1 1 }  { RoundKey_2_we0 mem_we 1 1 }  { RoundKey_2_d0 mem_din 1 8 }  { RoundKey_2_address1 MemPortADDR2 1 5 }  { RoundKey_2_ce1 MemPortCE2 1 1 }  { RoundKey_2_we1 MemPortWE2 1 1 }  { RoundKey_2_d1 MemPortDIN2 1 8 } } }
	RoundKey_3 { ap_memory {  { RoundKey_3_address0 mem_address 1 5 }  { RoundKey_3_ce0 mem_ce 1 1 }  { RoundKey_3_we0 mem_we 1 1 }  { RoundKey_3_d0 mem_din 1 8 }  { RoundKey_3_address1 MemPortADDR2 1 5 }  { RoundKey_3_ce1 MemPortCE2 1 1 }  { RoundKey_3_we1 MemPortWE2 1 1 }  { RoundKey_3_d1 MemPortDIN2 1 8 } } }
	RoundKey_4 { ap_memory {  { RoundKey_4_address0 mem_address 1 5 }  { RoundKey_4_ce0 mem_ce 1 1 }  { RoundKey_4_we0 mem_we 1 1 }  { RoundKey_4_d0 mem_din 1 8 }  { RoundKey_4_address1 MemPortADDR2 1 5 }  { RoundKey_4_ce1 MemPortCE2 1 1 }  { RoundKey_4_we1 MemPortWE2 1 1 }  { RoundKey_4_d1 MemPortDIN2 1 8 } } }
	RoundKey_5 { ap_memory {  { RoundKey_5_address0 mem_address 1 5 }  { RoundKey_5_ce0 mem_ce 1 1 }  { RoundKey_5_we0 mem_we 1 1 }  { RoundKey_5_d0 mem_din 1 8 }  { RoundKey_5_address1 MemPortADDR2 1 5 }  { RoundKey_5_ce1 MemPortCE2 1 1 }  { RoundKey_5_we1 MemPortWE2 1 1 }  { RoundKey_5_d1 MemPortDIN2 1 8 } } }
	RoundKey_6 { ap_memory {  { RoundKey_6_address0 mem_address 1 5 }  { RoundKey_6_ce0 mem_ce 1 1 }  { RoundKey_6_we0 mem_we 1 1 }  { RoundKey_6_d0 mem_din 1 8 }  { RoundKey_6_address1 MemPortADDR2 1 5 }  { RoundKey_6_ce1 MemPortCE2 1 1 }  { RoundKey_6_we1 MemPortWE2 1 1 }  { RoundKey_6_d1 MemPortDIN2 1 8 } } }
	RoundKey_7 { ap_memory {  { RoundKey_7_address0 mem_address 1 5 }  { RoundKey_7_ce0 mem_ce 1 1 }  { RoundKey_7_we0 mem_we 1 1 }  { RoundKey_7_d0 mem_din 1 8 }  { RoundKey_7_address1 MemPortADDR2 1 5 }  { RoundKey_7_ce1 MemPortCE2 1 1 }  { RoundKey_7_we1 MemPortWE2 1 1 }  { RoundKey_7_d1 MemPortDIN2 1 8 } } }
	Key_0_read { ap_none {  { Key_0_read in_data 0 8 } } }
	Key_1_read { ap_none {  { Key_1_read in_data 0 8 } } }
	Key_2_read { ap_none {  { Key_2_read in_data 0 8 } } }
	Key_3_read { ap_none {  { Key_3_read in_data 0 8 } } }
	Key_4_read { ap_none {  { Key_4_read in_data 0 8 } } }
	Key_5_read { ap_none {  { Key_5_read in_data 0 8 } } }
	Key_6_read { ap_none {  { Key_6_read in_data 0 8 } } }
	Key_7_read { ap_none {  { Key_7_read in_data 0 8 } } }
	Key_8_read { ap_none {  { Key_8_read in_data 0 8 } } }
	Key_9_read { ap_none {  { Key_9_read in_data 0 8 } } }
	Key_10_read { ap_none {  { Key_10_read in_data 0 8 } } }
	Key_11_read { ap_none {  { Key_11_read in_data 0 8 } } }
	Key_12_read { ap_none {  { Key_12_read in_data 0 8 } } }
	Key_13_read { ap_none {  { Key_13_read in_data 0 8 } } }
	Key_14_read { ap_none {  { Key_14_read in_data 0 8 } } }
	Key_15_read { ap_none {  { Key_15_read in_data 0 8 } } }
	s_box { ap_memory {  { s_box_address0 mem_address 1 8 }  { s_box_ce0 mem_ce 1 1 }  { s_box_q0 in_data 0 8 }  { s_box_address1 MemPortADDR2 1 8 }  { s_box_ce1 MemPortCE2 1 1 }  { s_box_q1 in_data 0 8 }  { s_box_address2 MemPortADDR2 1 8 }  { s_box_ce2 MemPortCE2 1 1 }  { s_box_q2 in_data 0 8 }  { s_box_address3 MemPortADDR2 1 8 }  { s_box_ce3 MemPortCE2 1 1 }  { s_box_q3 in_data 0 8 } } }
}
