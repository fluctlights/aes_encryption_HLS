//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sun Feb 23 16:13:28 2025
//Host        : ubuntu running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (INPUT_STREAM_tdata,
    INPUT_STREAM_tdest,
    INPUT_STREAM_tid,
    INPUT_STREAM_tkeep,
    INPUT_STREAM_tlast,
    INPUT_STREAM_tready,
    INPUT_STREAM_tstrb,
    INPUT_STREAM_tuser,
    INPUT_STREAM_tvalid,
    OUTPUT_STREAM_tdata,
    OUTPUT_STREAM_tdest,
    OUTPUT_STREAM_tid,
    OUTPUT_STREAM_tkeep,
    OUTPUT_STREAM_tlast,
    OUTPUT_STREAM_tready,
    OUTPUT_STREAM_tstrb,
    OUTPUT_STREAM_tuser,
    OUTPUT_STREAM_tvalid,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_CONTROL_BUS_araddr,
    s_axi_CONTROL_BUS_arready,
    s_axi_CONTROL_BUS_arvalid,
    s_axi_CONTROL_BUS_awaddr,
    s_axi_CONTROL_BUS_awready,
    s_axi_CONTROL_BUS_awvalid,
    s_axi_CONTROL_BUS_bready,
    s_axi_CONTROL_BUS_bresp,
    s_axi_CONTROL_BUS_bvalid,
    s_axi_CONTROL_BUS_rdata,
    s_axi_CONTROL_BUS_rready,
    s_axi_CONTROL_BUS_rresp,
    s_axi_CONTROL_BUS_rvalid,
    s_axi_CONTROL_BUS_wdata,
    s_axi_CONTROL_BUS_wready,
    s_axi_CONTROL_BUS_wstrb,
    s_axi_CONTROL_BUS_wvalid);
  input [31:0]INPUT_STREAM_tdata;
  input [4:0]INPUT_STREAM_tdest;
  input [4:0]INPUT_STREAM_tid;
  input [3:0]INPUT_STREAM_tkeep;
  input [0:0]INPUT_STREAM_tlast;
  output INPUT_STREAM_tready;
  input [3:0]INPUT_STREAM_tstrb;
  input [3:0]INPUT_STREAM_tuser;
  input INPUT_STREAM_tvalid;
  output [31:0]OUTPUT_STREAM_tdata;
  output [4:0]OUTPUT_STREAM_tdest;
  output [4:0]OUTPUT_STREAM_tid;
  output [3:0]OUTPUT_STREAM_tkeep;
  output [0:0]OUTPUT_STREAM_tlast;
  input OUTPUT_STREAM_tready;
  output [3:0]OUTPUT_STREAM_tstrb;
  output [3:0]OUTPUT_STREAM_tuser;
  output OUTPUT_STREAM_tvalid;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [3:0]s_axi_CONTROL_BUS_araddr;
  output s_axi_CONTROL_BUS_arready;
  input s_axi_CONTROL_BUS_arvalid;
  input [3:0]s_axi_CONTROL_BUS_awaddr;
  output s_axi_CONTROL_BUS_awready;
  input s_axi_CONTROL_BUS_awvalid;
  input s_axi_CONTROL_BUS_bready;
  output [1:0]s_axi_CONTROL_BUS_bresp;
  output s_axi_CONTROL_BUS_bvalid;
  output [31:0]s_axi_CONTROL_BUS_rdata;
  input s_axi_CONTROL_BUS_rready;
  output [1:0]s_axi_CONTROL_BUS_rresp;
  output s_axi_CONTROL_BUS_rvalid;
  input [31:0]s_axi_CONTROL_BUS_wdata;
  output s_axi_CONTROL_BUS_wready;
  input [3:0]s_axi_CONTROL_BUS_wstrb;
  input s_axi_CONTROL_BUS_wvalid;

  wire [31:0]INPUT_STREAM_tdata;
  wire [4:0]INPUT_STREAM_tdest;
  wire [4:0]INPUT_STREAM_tid;
  wire [3:0]INPUT_STREAM_tkeep;
  wire [0:0]INPUT_STREAM_tlast;
  wire INPUT_STREAM_tready;
  wire [3:0]INPUT_STREAM_tstrb;
  wire [3:0]INPUT_STREAM_tuser;
  wire INPUT_STREAM_tvalid;
  wire [31:0]OUTPUT_STREAM_tdata;
  wire [4:0]OUTPUT_STREAM_tdest;
  wire [4:0]OUTPUT_STREAM_tid;
  wire [3:0]OUTPUT_STREAM_tkeep;
  wire [0:0]OUTPUT_STREAM_tlast;
  wire OUTPUT_STREAM_tready;
  wire [3:0]OUTPUT_STREAM_tstrb;
  wire [3:0]OUTPUT_STREAM_tuser;
  wire OUTPUT_STREAM_tvalid;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_CONTROL_BUS_araddr;
  wire s_axi_CONTROL_BUS_arready;
  wire s_axi_CONTROL_BUS_arvalid;
  wire [3:0]s_axi_CONTROL_BUS_awaddr;
  wire s_axi_CONTROL_BUS_awready;
  wire s_axi_CONTROL_BUS_awvalid;
  wire s_axi_CONTROL_BUS_bready;
  wire [1:0]s_axi_CONTROL_BUS_bresp;
  wire s_axi_CONTROL_BUS_bvalid;
  wire [31:0]s_axi_CONTROL_BUS_rdata;
  wire s_axi_CONTROL_BUS_rready;
  wire [1:0]s_axi_CONTROL_BUS_rresp;
  wire s_axi_CONTROL_BUS_rvalid;
  wire [31:0]s_axi_CONTROL_BUS_wdata;
  wire s_axi_CONTROL_BUS_wready;
  wire [3:0]s_axi_CONTROL_BUS_wstrb;
  wire s_axi_CONTROL_BUS_wvalid;

  bd_0 bd_0_i
       (.INPUT_STREAM_tdata(INPUT_STREAM_tdata),
        .INPUT_STREAM_tdest(INPUT_STREAM_tdest),
        .INPUT_STREAM_tid(INPUT_STREAM_tid),
        .INPUT_STREAM_tkeep(INPUT_STREAM_tkeep),
        .INPUT_STREAM_tlast(INPUT_STREAM_tlast),
        .INPUT_STREAM_tready(INPUT_STREAM_tready),
        .INPUT_STREAM_tstrb(INPUT_STREAM_tstrb),
        .INPUT_STREAM_tuser(INPUT_STREAM_tuser),
        .INPUT_STREAM_tvalid(INPUT_STREAM_tvalid),
        .OUTPUT_STREAM_tdata(OUTPUT_STREAM_tdata),
        .OUTPUT_STREAM_tdest(OUTPUT_STREAM_tdest),
        .OUTPUT_STREAM_tid(OUTPUT_STREAM_tid),
        .OUTPUT_STREAM_tkeep(OUTPUT_STREAM_tkeep),
        .OUTPUT_STREAM_tlast(OUTPUT_STREAM_tlast),
        .OUTPUT_STREAM_tready(OUTPUT_STREAM_tready),
        .OUTPUT_STREAM_tstrb(OUTPUT_STREAM_tstrb),
        .OUTPUT_STREAM_tuser(OUTPUT_STREAM_tuser),
        .OUTPUT_STREAM_tvalid(OUTPUT_STREAM_tvalid),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_CONTROL_BUS_araddr(s_axi_CONTROL_BUS_araddr),
        .s_axi_CONTROL_BUS_arready(s_axi_CONTROL_BUS_arready),
        .s_axi_CONTROL_BUS_arvalid(s_axi_CONTROL_BUS_arvalid),
        .s_axi_CONTROL_BUS_awaddr(s_axi_CONTROL_BUS_awaddr),
        .s_axi_CONTROL_BUS_awready(s_axi_CONTROL_BUS_awready),
        .s_axi_CONTROL_BUS_awvalid(s_axi_CONTROL_BUS_awvalid),
        .s_axi_CONTROL_BUS_bready(s_axi_CONTROL_BUS_bready),
        .s_axi_CONTROL_BUS_bresp(s_axi_CONTROL_BUS_bresp),
        .s_axi_CONTROL_BUS_bvalid(s_axi_CONTROL_BUS_bvalid),
        .s_axi_CONTROL_BUS_rdata(s_axi_CONTROL_BUS_rdata),
        .s_axi_CONTROL_BUS_rready(s_axi_CONTROL_BUS_rready),
        .s_axi_CONTROL_BUS_rresp(s_axi_CONTROL_BUS_rresp),
        .s_axi_CONTROL_BUS_rvalid(s_axi_CONTROL_BUS_rvalid),
        .s_axi_CONTROL_BUS_wdata(s_axi_CONTROL_BUS_wdata),
        .s_axi_CONTROL_BUS_wready(s_axi_CONTROL_BUS_wready),
        .s_axi_CONTROL_BUS_wstrb(s_axi_CONTROL_BUS_wstrb),
        .s_axi_CONTROL_BUS_wvalid(s_axi_CONTROL_BUS_wvalid));
endmodule
