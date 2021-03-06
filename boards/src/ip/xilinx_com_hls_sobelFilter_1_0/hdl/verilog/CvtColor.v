// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_rows_V_dout,
        p_src_rows_V_empty_n,
        p_src_rows_V_read,
        p_src_cols_V_dout,
        p_src_cols_V_empty_n,
        p_src_cols_V_read,
        p_src_data_stream_0_V_dout,
        p_src_data_stream_0_V_empty_n,
        p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout,
        p_src_data_stream_1_V_empty_n,
        p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout,
        p_src_data_stream_2_V_empty_n,
        p_src_data_stream_2_V_read,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_src_rows_V_dout;
input   p_src_rows_V_empty_n;
output   p_src_rows_V_read;
input  [31:0] p_src_cols_V_dout;
input   p_src_cols_V_empty_n;
output   p_src_cols_V_read;
input  [7:0] p_src_data_stream_0_V_dout;
input   p_src_data_stream_0_V_empty_n;
output   p_src_data_stream_0_V_read;
input  [7:0] p_src_data_stream_1_V_dout;
input   p_src_data_stream_1_V_empty_n;
output   p_src_data_stream_1_V_read;
input  [7:0] p_src_data_stream_2_V_dout;
input   p_src_data_stream_2_V_empty_n;
output   p_src_data_stream_2_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_rows_V_read;
reg p_src_cols_V_read;
reg p_src_data_stream_0_V_read;
reg p_src_data_stream_1_V_read;
reg p_src_data_stream_2_V_read;
reg p_dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_rows_V_blk_n;
reg    p_src_cols_V_blk_n;
reg    p_src_data_stream_0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_23_i_reg_364;
reg    p_src_data_stream_1_V_blk_n;
reg    p_src_data_stream_2_V_blk_n;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] tmp_23_i_reg_364_pp0_iter3_reg;
reg   [30:0] j_i_reg_208;
reg   [31:0] cols_reg_345;
reg    ap_block_state1;
reg   [31:0] rows_reg_350;
wire   [0:0] tmp_i_fu_223_p2;
wire    ap_CS_fsm_state2;
wire   [30:0] i_fu_228_p2;
reg   [30:0] i_reg_359;
wire   [0:0] tmp_23_i_fu_238_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_23_i_reg_364_pp0_iter1_reg;
reg   [0:0] tmp_23_i_reg_364_pp0_iter2_reg;
wire   [30:0] j_fu_243_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] tmp_52_reg_373;
reg   [7:0] tmp_53_reg_378;
reg   [7:0] tmp_53_reg_378_pp0_iter2_reg;
reg   [7:0] tmp_54_reg_383;
reg   [7:0] tmp_54_reg_383_pp0_iter2_reg;
wire   [28:0] r_V_i_i_fu_321_p2;
reg   [28:0] r_V_i_i_reg_388;
wire   [29:0] grp_fu_327_p3;
reg   [29:0] r_V_1_reg_393;
reg    ap_enable_reg_pp0_iter3;
reg   [7:0] p_Val2_5_reg_398;
reg   [0:0] tmp_reg_403;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg   [30:0] i_i_reg_197;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] i_cast_i_fu_219_p1;
wire   [31:0] j_cast_i_fu_234_p1;
wire   [28:0] grp_fu_337_p3;
wire   [7:0] tmp_6_i_i_i_i_fu_277_p1;
wire   [7:0] p_Val2_6_fu_287_p2;
wire   [0:0] tmp_49_fu_280_p3;
wire   [0:0] tmp_50_fu_292_p3;
wire   [0:0] p_Result_2_i_i_i_i_1_fu_300_p2;
wire   [0:0] not_carry_fu_306_p2;
wire   [7:0] r_V_i_i_fu_321_p0;
wire   [21:0] r_V_i_i_fu_321_p1;
wire   [7:0] grp_fu_327_p0;
wire   [22:0] grp_fu_327_p1;
wire   [28:0] grp_fu_327_p2;
wire   [7:0] grp_fu_337_p0;
wire   [19:0] grp_fu_337_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [29:0] grp_fu_327_p00;
wire   [29:0] grp_fu_327_p20;
wire   [27:0] grp_fu_337_p00;
wire   [28:0] r_V_i_i_fu_321_p00;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

sobelFilter_mul_mbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 29 ))
sobelFilter_mul_mbkb_U27(
    .din0(r_V_i_i_fu_321_p0),
    .din1(r_V_i_i_fu_321_p1),
    .dout(r_V_i_i_fu_321_p2)
);

sobelFilter_mac_mcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 30 ))
sobelFilter_mac_mcud_U28(
    .din0(grp_fu_327_p0),
    .din1(grp_fu_327_p1),
    .din2(grp_fu_327_p2),
    .dout(grp_fu_327_p3)
);

sobelFilter_mac_mdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 20 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
sobelFilter_mac_mdEe_U29(
    .din0(grp_fu_337_p0),
    .din1(grp_fu_337_p1),
    .din2(r_V_i_i_reg_388),
    .dout(grp_fu_337_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_i_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((tmp_i_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_i_reg_197 <= i_reg_359;
    end else if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_197 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_23_i_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_i_reg_208 <= j_fu_243_p2;
    end else if (((tmp_i_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_i_reg_208 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_reg_345 <= p_src_cols_V_dout;
        rows_reg_350 <= p_src_rows_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_359 <= i_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_23_i_reg_364_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_5_reg_398 <= {{grp_fu_327_p3[29:22]}};
        tmp_reg_403 <= grp_fu_327_p3[32'd21];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_23_i_reg_364_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_1_reg_393 <= grp_fu_327_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_23_i_reg_364_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        r_V_i_i_reg_388 <= r_V_i_i_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_23_i_reg_364 <= tmp_23_i_fu_238_p2;
        tmp_23_i_reg_364_pp0_iter1_reg <= tmp_23_i_reg_364;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_23_i_reg_364_pp0_iter2_reg <= tmp_23_i_reg_364_pp0_iter1_reg;
        tmp_23_i_reg_364_pp0_iter3_reg <= tmp_23_i_reg_364_pp0_iter2_reg;
        tmp_53_reg_378_pp0_iter2_reg <= tmp_53_reg_378;
        tmp_54_reg_383_pp0_iter2_reg <= tmp_54_reg_383;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_52_reg_373 <= p_src_data_stream_0_V_dout;
        tmp_53_reg_378 <= p_src_data_stream_1_V_dout;
        tmp_54_reg_383 <= p_src_data_stream_2_V_dout;
    end
end

always @ (*) begin
    if ((tmp_23_i_fu_238_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_blk_n = p_src_cols_V_empty_n;
    end else begin
        p_src_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_read = 1'b1;
    end else begin
        p_src_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_0_V_blk_n = p_src_data_stream_0_V_empty_n;
    end else begin
        p_src_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_0_V_read = 1'b1;
    end else begin
        p_src_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_1_V_blk_n = p_src_data_stream_1_V_empty_n;
    end else begin
        p_src_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_1_V_read = 1'b1;
    end else begin
        p_src_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_stream_2_V_blk_n = p_src_data_stream_2_V_empty_n;
    end else begin
        p_src_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_23_i_reg_364 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_src_data_stream_2_V_read = 1'b1;
    end else begin
        p_src_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_V_blk_n = p_src_rows_V_empty_n;
    end else begin
        p_src_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_V_read = 1'b1;
    end else begin
        p_src_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_23_i_fu_238_p2 == 1'd0)) & ~((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_23_i_fu_238_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_cols_V_empty_n == 1'b0) | (p_src_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_2_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_1_V_empty_n == 1'b0)) | ((tmp_23_i_reg_364 == 1'd1) & (p_src_data_stream_0_V_empty_n == 1'b0)));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp0_stage0_iter4 = ((tmp_23_i_reg_364_pp0_iter3_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_327_p0 = grp_fu_327_p00;

assign grp_fu_327_p00 = tmp_53_reg_378_pp0_iter2_reg;

assign grp_fu_327_p1 = 30'd2462056;

assign grp_fu_327_p2 = grp_fu_327_p20;

assign grp_fu_327_p20 = grp_fu_337_p3;

assign grp_fu_337_p0 = grp_fu_337_p00;

assign grp_fu_337_p00 = tmp_54_reg_383_pp0_iter2_reg;

assign grp_fu_337_p1 = 28'd478150;

assign i_cast_i_fu_219_p1 = i_i_reg_197;

assign i_fu_228_p2 = (i_i_reg_197 + 31'd1);

assign j_cast_i_fu_234_p1 = j_i_reg_208;

assign j_fu_243_p2 = (j_i_reg_208 + 31'd1);

assign not_carry_fu_306_p2 = (tmp_50_fu_292_p3 | p_Result_2_i_i_i_i_1_fu_300_p2);

assign p_Result_2_i_i_i_i_1_fu_300_p2 = (tmp_49_fu_280_p3 ^ 1'd1);

assign p_Val2_6_fu_287_p2 = (p_Val2_5_reg_398 + tmp_6_i_i_i_i_fu_277_p1);

assign p_dst_data_stream_V_din = ((not_carry_fu_306_p2[0:0] === 1'b1) ? p_Val2_6_fu_287_p2 : 8'd255);

assign r_V_i_i_fu_321_p0 = r_V_i_i_fu_321_p00;

assign r_V_i_i_fu_321_p00 = tmp_52_reg_373;

assign r_V_i_i_fu_321_p1 = 29'd1254096;

assign tmp_23_i_fu_238_p2 = (($signed(j_cast_i_fu_234_p1) < $signed(cols_reg_345)) ? 1'b1 : 1'b0);

assign tmp_49_fu_280_p3 = r_V_1_reg_393[32'd29];

assign tmp_50_fu_292_p3 = p_Val2_6_fu_287_p2[32'd7];

assign tmp_6_i_i_i_i_fu_277_p1 = tmp_reg_403;

assign tmp_i_fu_223_p2 = (($signed(i_cast_i_fu_219_p1) < $signed(rows_reg_350)) ? 1'b1 : 1'b0);

endmodule //CvtColor
