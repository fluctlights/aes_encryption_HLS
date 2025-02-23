set moduleName AES_Encrypt_axi
set isTopModule 1
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
set C_modelName {AES_Encrypt_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_STREAM_V_data_V int 32 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ INPUT_STREAM_V_keep_V int 4 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ INPUT_STREAM_V_strb_V int 4 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ INPUT_STREAM_V_user_V int 4 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ INPUT_STREAM_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ INPUT_STREAM_V_id_V int 5 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ INPUT_STREAM_V_dest_V int 5 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ OUTPUT_STREAM_V_data_V int 32 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ OUTPUT_STREAM_V_keep_V int 4 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ OUTPUT_STREAM_V_strb_V int 4 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ OUTPUT_STREAM_V_user_V int 4 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ OUTPUT_STREAM_V_id_V int 5 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ OUTPUT_STREAM_V_dest_V int 5 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ INPUT_STREAM_TDATA sc_in sc_lv 32 signal 0 } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 4 signal 1 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 4 signal 2 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 4 signal 3 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TID sc_in sc_lv 5 signal 5 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 5 signal 6 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 32 signal 7 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 13 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 4 signal 8 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 4 signal 9 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 4 signal 10 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 5 signal 12 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 5 signal 13 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"AES_Encrypt_axi","role":"start","value":"0","valid_bit":"0"},{"name":"AES_Encrypt_axi","role":"continue","value":"0","valid_bit":"4"},{"name":"AES_Encrypt_axi","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"AES_Encrypt_axi","role":"start","value":"0","valid_bit":"0"},{"name":"AES_Encrypt_axi","role":"done","value":"0","valid_bit":"1"},{"name":"AES_Encrypt_axi","role":"idle","value":"0","valid_bit":"2"},{"name":"AES_Encrypt_axi","role":"ready","value":"0","valid_bit":"3"},{"name":"AES_Encrypt_axi","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "AES_Encrypt_axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "43",
		"VariableLatency" : "0", "ExactLatency" : "53", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "53",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "INPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "INPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "INPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "INPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "INPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "INPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "INPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "INPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "OUTPUT_STREAM"},
			{"Name" : "s_box", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_SubBytes_fu_276", "Port" : "s_box"},
					{"ID" : "10", "SubInstance" : "grp_KeyExpansion_fu_206", "Port" : "s_box"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_box_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_206", "Parent" : "0",
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
			{"Name" : "s_box", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AddRoundKey_fu_236", "Parent" : "0",
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
			{"Name" : "RoundKey_7", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SubBytes_fu_276", "Parent" : "0",
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
			{"Name" : "s_box", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ShiftRows_fu_298", "Parent" : "0",
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
			{"Name" : "data_out_15_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MixColumns_fu_314", "Parent" : "0",
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
			{"Name" : "data_in_15_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_keep_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_strb_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_user_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_last_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_id_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_INPUT_STREAM_V_dest_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_data_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_keep_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_strb_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_user_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_last_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_id_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_OUTPUT_STREAM_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AES_Encrypt_axi {
		INPUT_STREAM_V_data_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_keep_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_strb_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_user_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_last_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_id_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_dest_V {Type I LastRead 7 FirstWrite -1}
		OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 49}
		OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 49}
		s_box {Type I LastRead -1 FirstWrite -1}}
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
		s_box {Type I LastRead 10 FirstWrite -1}}
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
		RoundKey_7 {Type I LastRead 1 FirstWrite -1}}
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
		s_box {Type I LastRead 2 FirstWrite -1}}
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
		data_out_15_read {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "53", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "43", "Max" : "43"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	INPUT_STREAM_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 32 } } }
	INPUT_STREAM_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 4 } } }
	INPUT_STREAM_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 4 } } }
	INPUT_STREAM_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 4 } } }
	INPUT_STREAM_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	INPUT_STREAM_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 5 } } }
	INPUT_STREAM_V_dest_V { axis {  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 }  { INPUT_STREAM_TDEST in_data 0 5 } } }
	OUTPUT_STREAM_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 32 } } }
	OUTPUT_STREAM_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 4 } } }
	OUTPUT_STREAM_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 4 } } }
	OUTPUT_STREAM_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 4 } } }
	OUTPUT_STREAM_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	OUTPUT_STREAM_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 5 } } }
	OUTPUT_STREAM_V_dest_V { axis {  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TREADY out_acc 0 1 }  { OUTPUT_STREAM_TDEST out_data 1 5 } } }
}

set maxi_interface_dict [dict create]

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
