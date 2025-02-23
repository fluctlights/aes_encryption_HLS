// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_INPUT_STREAM_TDATA "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_data_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TDATA "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_data_V.dat"
`define TV_IN_INPUT_STREAM_TKEEP "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_keep_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TKEEP "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_keep_V.dat"
`define TV_IN_INPUT_STREAM_TSTRB "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_strb_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TSTRB "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_strb_V.dat"
`define TV_IN_INPUT_STREAM_TUSER "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_user_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TUSER "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_user_V.dat"
`define TV_IN_INPUT_STREAM_TLAST "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_last_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TLAST "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_last_V.dat"
`define TV_IN_INPUT_STREAM_TID "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_id_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TID "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_id_V.dat"
`define TV_IN_INPUT_STREAM_TDEST "../tv/cdatafile/c.AES_Encrypt_axi.autotvin_INPUT_STREAM_V_dest_V.dat"
`define INGRESS_STATUS_INPUT_STREAM_TDEST "../tv/stream_size/stream_ingress_status_INPUT_STREAM_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 30

module AESL_axi_s_INPUT_STREAM (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_INPUT_STREAM_TDATA,
    output [4 - 1:0] TRAN_INPUT_STREAM_TKEEP,
    output [4 - 1:0] TRAN_INPUT_STREAM_TSTRB,
    output [4 - 1:0] TRAN_INPUT_STREAM_TUSER,
    output TRAN_INPUT_STREAM_TLAST,
    output [5 - 1:0] TRAN_INPUT_STREAM_TID,
    output [5 - 1:0] TRAN_INPUT_STREAM_TDEST,
    output TRAN_INPUT_STREAM_TVALID,
    input TRAN_INPUT_STREAM_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_INPUT_STREAM_TVALID_temp;
    wire INPUT_STREAM_TDATA_full;
    wire INPUT_STREAM_TDATA_empty;
    reg INPUT_STREAM_TDATA_write_en;
    reg [32 - 1:0] INPUT_STREAM_TDATA_write_data;
    reg INPUT_STREAM_TDATA_read_en;
    wire [32 - 1:0] INPUT_STREAM_TDATA_read_data;
    
    fifo #(8, 32) fifo_INPUT_STREAM_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TDATA_write_en),
        .write_data(INPUT_STREAM_TDATA_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TDATA_read_en),
        .read_data(INPUT_STREAM_TDATA_read_data),
        .full(INPUT_STREAM_TDATA_full),
        .empty(INPUT_STREAM_TDATA_empty));
    
    always @ (*) begin
        INPUT_STREAM_TDATA_write_en <= 0;
        INPUT_STREAM_TDATA_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TDATA = INPUT_STREAM_TDATA_read_data;
    wire INPUT_STREAM_TKEEP_full;
    wire INPUT_STREAM_TKEEP_empty;
    reg INPUT_STREAM_TKEEP_write_en;
    reg [4 - 1:0] INPUT_STREAM_TKEEP_write_data;
    reg INPUT_STREAM_TKEEP_read_en;
    wire [4 - 1:0] INPUT_STREAM_TKEEP_read_data;
    
    fifo #(8, 4) fifo_INPUT_STREAM_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TKEEP_write_en),
        .write_data(INPUT_STREAM_TKEEP_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TKEEP_read_en),
        .read_data(INPUT_STREAM_TKEEP_read_data),
        .full(INPUT_STREAM_TKEEP_full),
        .empty(INPUT_STREAM_TKEEP_empty));
    
    always @ (*) begin
        INPUT_STREAM_TKEEP_write_en <= 0;
        INPUT_STREAM_TKEEP_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TKEEP = INPUT_STREAM_TKEEP_read_data;
    wire INPUT_STREAM_TSTRB_full;
    wire INPUT_STREAM_TSTRB_empty;
    reg INPUT_STREAM_TSTRB_write_en;
    reg [4 - 1:0] INPUT_STREAM_TSTRB_write_data;
    reg INPUT_STREAM_TSTRB_read_en;
    wire [4 - 1:0] INPUT_STREAM_TSTRB_read_data;
    
    fifo #(8, 4) fifo_INPUT_STREAM_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TSTRB_write_en),
        .write_data(INPUT_STREAM_TSTRB_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TSTRB_read_en),
        .read_data(INPUT_STREAM_TSTRB_read_data),
        .full(INPUT_STREAM_TSTRB_full),
        .empty(INPUT_STREAM_TSTRB_empty));
    
    always @ (*) begin
        INPUT_STREAM_TSTRB_write_en <= 0;
        INPUT_STREAM_TSTRB_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TSTRB = INPUT_STREAM_TSTRB_read_data;
    wire INPUT_STREAM_TUSER_full;
    wire INPUT_STREAM_TUSER_empty;
    reg INPUT_STREAM_TUSER_write_en;
    reg [4 - 1:0] INPUT_STREAM_TUSER_write_data;
    reg INPUT_STREAM_TUSER_read_en;
    wire [4 - 1:0] INPUT_STREAM_TUSER_read_data;
    
    fifo #(8, 4) fifo_INPUT_STREAM_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TUSER_write_en),
        .write_data(INPUT_STREAM_TUSER_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TUSER_read_en),
        .read_data(INPUT_STREAM_TUSER_read_data),
        .full(INPUT_STREAM_TUSER_full),
        .empty(INPUT_STREAM_TUSER_empty));
    
    always @ (*) begin
        INPUT_STREAM_TUSER_write_en <= 0;
        INPUT_STREAM_TUSER_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TUSER = INPUT_STREAM_TUSER_read_data;
    wire INPUT_STREAM_TLAST_full;
    wire INPUT_STREAM_TLAST_empty;
    reg INPUT_STREAM_TLAST_write_en;
    reg [1 - 1:0] INPUT_STREAM_TLAST_write_data;
    reg INPUT_STREAM_TLAST_read_en;
    wire [1 - 1:0] INPUT_STREAM_TLAST_read_data;
    
    fifo #(8, 1) fifo_INPUT_STREAM_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TLAST_write_en),
        .write_data(INPUT_STREAM_TLAST_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TLAST_read_en),
        .read_data(INPUT_STREAM_TLAST_read_data),
        .full(INPUT_STREAM_TLAST_full),
        .empty(INPUT_STREAM_TLAST_empty));
    
    always @ (*) begin
        INPUT_STREAM_TLAST_write_en <= 0;
        INPUT_STREAM_TLAST_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TLAST = INPUT_STREAM_TLAST_read_data;
    wire INPUT_STREAM_TID_full;
    wire INPUT_STREAM_TID_empty;
    reg INPUT_STREAM_TID_write_en;
    reg [5 - 1:0] INPUT_STREAM_TID_write_data;
    reg INPUT_STREAM_TID_read_en;
    wire [5 - 1:0] INPUT_STREAM_TID_read_data;
    
    fifo #(8, 5) fifo_INPUT_STREAM_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TID_write_en),
        .write_data(INPUT_STREAM_TID_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TID_read_en),
        .read_data(INPUT_STREAM_TID_read_data),
        .full(INPUT_STREAM_TID_full),
        .empty(INPUT_STREAM_TID_empty));
    
    always @ (*) begin
        INPUT_STREAM_TID_write_en <= 0;
        INPUT_STREAM_TID_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TID = INPUT_STREAM_TID_read_data;
    wire INPUT_STREAM_TDEST_full;
    wire INPUT_STREAM_TDEST_empty;
    reg INPUT_STREAM_TDEST_write_en;
    reg [5 - 1:0] INPUT_STREAM_TDEST_write_data;
    reg INPUT_STREAM_TDEST_read_en;
    wire [5 - 1:0] INPUT_STREAM_TDEST_read_data;
    
    fifo #(8, 5) fifo_INPUT_STREAM_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(INPUT_STREAM_TDEST_write_en),
        .write_data(INPUT_STREAM_TDEST_write_data),
        .read_clock(clk),
        .read_en(INPUT_STREAM_TDEST_read_en),
        .read_data(INPUT_STREAM_TDEST_read_data),
        .full(INPUT_STREAM_TDEST_full),
        .empty(INPUT_STREAM_TDEST_empty));
    
    always @ (*) begin
        INPUT_STREAM_TDEST_write_en <= 0;
        INPUT_STREAM_TDEST_read_en <= TRAN_INPUT_STREAM_TREADY & TRAN_INPUT_STREAM_TVALID;
    end
    
    assign TRAN_INPUT_STREAM_TDEST = INPUT_STREAM_TDEST_read_data;
    assign TRAN_INPUT_STREAM_TVALID = TRAN_INPUT_STREAM_TVALID_temp;

    
    assign TRAN_INPUT_STREAM_TVALID_temp = ~(INPUT_STREAM_TDATA_empty || INPUT_STREAM_TKEEP_empty || INPUT_STREAM_TSTRB_empty || INPUT_STREAM_TUSER_empty || INPUT_STREAM_TLAST_empty || INPUT_STREAM_TID_empty || INPUT_STREAM_TDEST_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [223:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [223:0] rm_0x(input [223:0] token);
        reg [223:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_INPUT_STREAM_TDATA;
    
    assign transaction = transaction_load_INPUT_STREAM_TDATA;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TDATA
        integer fp;
        reg [223:0] token;
        reg [32 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TDATA = 0;
        fifo_INPUT_STREAM_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TDATA = transaction_load_INPUT_STREAM_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TKEEP;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TKEEP
        integer fp;
        reg [223:0] token;
        reg [4 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TKEEP = 0;
        fifo_INPUT_STREAM_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TKEEP = transaction_load_INPUT_STREAM_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TSTRB;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TSTRB
        integer fp;
        reg [223:0] token;
        reg [4 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TSTRB = 0;
        fifo_INPUT_STREAM_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TSTRB = transaction_load_INPUT_STREAM_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TUSER;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TUSER
        integer fp;
        reg [223:0] token;
        reg [4 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TUSER = 0;
        fifo_INPUT_STREAM_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TUSER = transaction_load_INPUT_STREAM_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TLAST;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TLAST
        integer fp;
        reg [223:0] token;
        reg [1 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TLAST = 0;
        fifo_INPUT_STREAM_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TLAST = transaction_load_INPUT_STREAM_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TID;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TID
        integer fp;
        reg [223:0] token;
        reg [5 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TID = 0;
        fifo_INPUT_STREAM_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TID = transaction_load_INPUT_STREAM_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_INPUT_STREAM_TDEST;
    
    initial begin : AXI_stream_driver_INPUT_STREAM_TDEST
        integer fp;
        reg [223:0] token;
        reg [5 - 1:0] data;
        reg [223:0] data_integer;
        integer fp_ingress_status;
        reg [223:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_INPUT_STREAM_TDEST = 0;
        fifo_INPUT_STREAM_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_INPUT_STREAM_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_INPUT_STREAM_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_INPUT_STREAM_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_INPUT_STREAM_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_INPUT_STREAM_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_INPUT_STREAM_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_INPUT_STREAM_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_INPUT_STREAM_TDEST = transaction_load_INPUT_STREAM_TDEST + 1;
            end
        end
    end

endmodule
