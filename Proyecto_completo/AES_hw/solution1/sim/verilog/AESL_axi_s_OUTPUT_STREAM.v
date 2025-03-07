// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_OUTPUT_STREAM_TDATA "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_data_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TDATA "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_data_V.dat"
`define TV_OUT_OUTPUT_STREAM_TKEEP "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_keep_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TKEEP "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_keep_V.dat"
`define TV_OUT_OUTPUT_STREAM_TSTRB "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_strb_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TSTRB "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_strb_V.dat"
`define TV_OUT_OUTPUT_STREAM_TUSER "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_user_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TUSER "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_user_V.dat"
`define TV_OUT_OUTPUT_STREAM_TLAST "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_last_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TLAST "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_last_V.dat"
`define TV_OUT_OUTPUT_STREAM_TID "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_id_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TID "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_id_V.dat"
`define TV_OUT_OUTPUT_STREAM_TDEST "../tv/rtldatafile/rtl.AES_Encrypt_axi.autotvout_OUTPUT_STREAM_V_dest_V.dat"
`define EGRESS_STATUS_OUTPUT_STREAM_TDEST "../tv/stream_size/stream_egress_status_OUTPUT_STREAM_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 30

module AESL_axi_s_OUTPUT_STREAM (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_OUTPUT_STREAM_TDATA,
    input [4 - 1:0] TRAN_OUTPUT_STREAM_TKEEP,
    input [4 - 1:0] TRAN_OUTPUT_STREAM_TSTRB,
    input [4 - 1:0] TRAN_OUTPUT_STREAM_TUSER,
    input TRAN_OUTPUT_STREAM_TLAST,
    input [5 - 1:0] TRAN_OUTPUT_STREAM_TID,
    input [5 - 1:0] TRAN_OUTPUT_STREAM_TDEST,
    input TRAN_OUTPUT_STREAM_TVALID,
    output TRAN_OUTPUT_STREAM_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_OUTPUT_STREAM_TVALID_temp;
    wire OUTPUT_STREAM_TDATA_full;
    wire OUTPUT_STREAM_TDATA_empty;
    reg OUTPUT_STREAM_TDATA_write_en;
    reg [32 - 1:0] OUTPUT_STREAM_TDATA_write_data;
    reg OUTPUT_STREAM_TDATA_read_en;
    wire [32 - 1:0] OUTPUT_STREAM_TDATA_read_data;
    
    fifo #(4, 32) fifo_OUTPUT_STREAM_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TDATA_write_en),
        .write_data(OUTPUT_STREAM_TDATA_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TDATA_read_en),
        .read_data(OUTPUT_STREAM_TDATA_read_data),
        .full(OUTPUT_STREAM_TDATA_full),
        .empty(OUTPUT_STREAM_TDATA_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TDATA_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TDATA_write_data <= TRAN_OUTPUT_STREAM_TDATA;
        OUTPUT_STREAM_TDATA_read_en <= 0;
    end
    wire OUTPUT_STREAM_TKEEP_full;
    wire OUTPUT_STREAM_TKEEP_empty;
    reg OUTPUT_STREAM_TKEEP_write_en;
    reg [4 - 1:0] OUTPUT_STREAM_TKEEP_write_data;
    reg OUTPUT_STREAM_TKEEP_read_en;
    wire [4 - 1:0] OUTPUT_STREAM_TKEEP_read_data;
    
    fifo #(4, 4) fifo_OUTPUT_STREAM_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TKEEP_write_en),
        .write_data(OUTPUT_STREAM_TKEEP_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TKEEP_read_en),
        .read_data(OUTPUT_STREAM_TKEEP_read_data),
        .full(OUTPUT_STREAM_TKEEP_full),
        .empty(OUTPUT_STREAM_TKEEP_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TKEEP_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TKEEP_write_data <= TRAN_OUTPUT_STREAM_TKEEP;
        OUTPUT_STREAM_TKEEP_read_en <= 0;
    end
    wire OUTPUT_STREAM_TSTRB_full;
    wire OUTPUT_STREAM_TSTRB_empty;
    reg OUTPUT_STREAM_TSTRB_write_en;
    reg [4 - 1:0] OUTPUT_STREAM_TSTRB_write_data;
    reg OUTPUT_STREAM_TSTRB_read_en;
    wire [4 - 1:0] OUTPUT_STREAM_TSTRB_read_data;
    
    fifo #(4, 4) fifo_OUTPUT_STREAM_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TSTRB_write_en),
        .write_data(OUTPUT_STREAM_TSTRB_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TSTRB_read_en),
        .read_data(OUTPUT_STREAM_TSTRB_read_data),
        .full(OUTPUT_STREAM_TSTRB_full),
        .empty(OUTPUT_STREAM_TSTRB_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TSTRB_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TSTRB_write_data <= TRAN_OUTPUT_STREAM_TSTRB;
        OUTPUT_STREAM_TSTRB_read_en <= 0;
    end
    wire OUTPUT_STREAM_TUSER_full;
    wire OUTPUT_STREAM_TUSER_empty;
    reg OUTPUT_STREAM_TUSER_write_en;
    reg [4 - 1:0] OUTPUT_STREAM_TUSER_write_data;
    reg OUTPUT_STREAM_TUSER_read_en;
    wire [4 - 1:0] OUTPUT_STREAM_TUSER_read_data;
    
    fifo #(4, 4) fifo_OUTPUT_STREAM_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TUSER_write_en),
        .write_data(OUTPUT_STREAM_TUSER_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TUSER_read_en),
        .read_data(OUTPUT_STREAM_TUSER_read_data),
        .full(OUTPUT_STREAM_TUSER_full),
        .empty(OUTPUT_STREAM_TUSER_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TUSER_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TUSER_write_data <= TRAN_OUTPUT_STREAM_TUSER;
        OUTPUT_STREAM_TUSER_read_en <= 0;
    end
    wire OUTPUT_STREAM_TLAST_full;
    wire OUTPUT_STREAM_TLAST_empty;
    reg OUTPUT_STREAM_TLAST_write_en;
    reg [1 - 1:0] OUTPUT_STREAM_TLAST_write_data;
    reg OUTPUT_STREAM_TLAST_read_en;
    wire [1 - 1:0] OUTPUT_STREAM_TLAST_read_data;
    
    fifo #(4, 1) fifo_OUTPUT_STREAM_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TLAST_write_en),
        .write_data(OUTPUT_STREAM_TLAST_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TLAST_read_en),
        .read_data(OUTPUT_STREAM_TLAST_read_data),
        .full(OUTPUT_STREAM_TLAST_full),
        .empty(OUTPUT_STREAM_TLAST_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TLAST_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TLAST_write_data <= TRAN_OUTPUT_STREAM_TLAST;
        OUTPUT_STREAM_TLAST_read_en <= 0;
    end
    wire OUTPUT_STREAM_TID_full;
    wire OUTPUT_STREAM_TID_empty;
    reg OUTPUT_STREAM_TID_write_en;
    reg [5 - 1:0] OUTPUT_STREAM_TID_write_data;
    reg OUTPUT_STREAM_TID_read_en;
    wire [5 - 1:0] OUTPUT_STREAM_TID_read_data;
    
    fifo #(4, 5) fifo_OUTPUT_STREAM_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TID_write_en),
        .write_data(OUTPUT_STREAM_TID_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TID_read_en),
        .read_data(OUTPUT_STREAM_TID_read_data),
        .full(OUTPUT_STREAM_TID_full),
        .empty(OUTPUT_STREAM_TID_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TID_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TID_write_data <= TRAN_OUTPUT_STREAM_TID;
        OUTPUT_STREAM_TID_read_en <= 0;
    end
    wire OUTPUT_STREAM_TDEST_full;
    wire OUTPUT_STREAM_TDEST_empty;
    reg OUTPUT_STREAM_TDEST_write_en;
    reg [5 - 1:0] OUTPUT_STREAM_TDEST_write_data;
    reg OUTPUT_STREAM_TDEST_read_en;
    wire [5 - 1:0] OUTPUT_STREAM_TDEST_read_data;
    
    fifo #(4, 5) fifo_OUTPUT_STREAM_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(OUTPUT_STREAM_TDEST_write_en),
        .write_data(OUTPUT_STREAM_TDEST_write_data),
        .read_clock(clk),
        .read_en(OUTPUT_STREAM_TDEST_read_en),
        .read_data(OUTPUT_STREAM_TDEST_read_data),
        .full(OUTPUT_STREAM_TDEST_full),
        .empty(OUTPUT_STREAM_TDEST_empty));
    
    always @ (*) begin
        OUTPUT_STREAM_TDEST_write_en <= TRAN_OUTPUT_STREAM_TVALID;
        OUTPUT_STREAM_TDEST_write_data <= TRAN_OUTPUT_STREAM_TDEST;
        OUTPUT_STREAM_TDEST_read_en <= 0;
    end
    assign TRAN_OUTPUT_STREAM_TVALID = TRAN_OUTPUT_STREAM_TVALID_temp;

    
    assign TRAN_OUTPUT_STREAM_TREADY = ~(OUTPUT_STREAM_TDATA_full || OUTPUT_STREAM_TKEEP_full || OUTPUT_STREAM_TSTRB_full || OUTPUT_STREAM_TUSER_full || OUTPUT_STREAM_TLAST_full || OUTPUT_STREAM_TID_full || OUTPUT_STREAM_TDEST_full);
    
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
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TDATA;
    
    assign transaction = transaction_save_OUTPUT_STREAM_TDATA;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TDATA = 0;
        fifo_OUTPUT_STREAM_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TDATA);
                while (~fifo_OUTPUT_STREAM_TDATA.empty) begin
                    fifo_OUTPUT_STREAM_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TDATA = transaction_save_OUTPUT_STREAM_TDATA + 1;
                fifo_OUTPUT_STREAM_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TKEEP;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TKEEP = 0;
        fifo_OUTPUT_STREAM_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TKEEP);
                while (~fifo_OUTPUT_STREAM_TKEEP.empty) begin
                    fifo_OUTPUT_STREAM_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TKEEP = transaction_save_OUTPUT_STREAM_TKEEP + 1;
                fifo_OUTPUT_STREAM_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TSTRB;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TSTRB = 0;
        fifo_OUTPUT_STREAM_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TSTRB);
                while (~fifo_OUTPUT_STREAM_TSTRB.empty) begin
                    fifo_OUTPUT_STREAM_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TSTRB = transaction_save_OUTPUT_STREAM_TSTRB + 1;
                fifo_OUTPUT_STREAM_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TUSER;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TUSER
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TUSER = 0;
        fifo_OUTPUT_STREAM_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TUSER);
                while (~fifo_OUTPUT_STREAM_TUSER.empty) begin
                    fifo_OUTPUT_STREAM_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TUSER = transaction_save_OUTPUT_STREAM_TUSER + 1;
                fifo_OUTPUT_STREAM_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TLAST;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TLAST = 0;
        fifo_OUTPUT_STREAM_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TLAST);
                while (~fifo_OUTPUT_STREAM_TLAST.empty) begin
                    fifo_OUTPUT_STREAM_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TLAST = transaction_save_OUTPUT_STREAM_TLAST + 1;
                fifo_OUTPUT_STREAM_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TID;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TID
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TID = 0;
        fifo_OUTPUT_STREAM_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TID);
                while (~fifo_OUTPUT_STREAM_TID.empty) begin
                    fifo_OUTPUT_STREAM_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TID = transaction_save_OUTPUT_STREAM_TID + 1;
                fifo_OUTPUT_STREAM_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_OUTPUT_STREAM_TDEST;
    
    initial begin : AXI_stream_receiver_OUTPUT_STREAM_TDEST
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_OUTPUT_STREAM_TDEST = 0;
        fifo_OUTPUT_STREAM_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_OUTPUT_STREAM_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_OUTPUT_STREAM_TDEST);
                while (~fifo_OUTPUT_STREAM_TDEST.empty) begin
                    fifo_OUTPUT_STREAM_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_OUTPUT_STREAM_TDEST = transaction_save_OUTPUT_STREAM_TDEST + 1;
                fifo_OUTPUT_STREAM_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
