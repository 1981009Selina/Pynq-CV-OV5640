-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity xFFastCornerDetectio is
port (
    p_strm_in_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_strm_in_V_V_empty_n : IN STD_LOGIC;
    p_strm_in_V_V_read : OUT STD_LOGIC;
    p_strm_out_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_strm_out_V_V_full_n : IN STD_LOGIC;
    p_strm_out_V_V_write : OUT STD_LOGIC;
    p_src_mat_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_rows_read_empty_n : IN STD_LOGIC;
    p_src_mat_rows_read_read : OUT STD_LOGIC;
    p_src_mat_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_cols_read_empty_n : IN STD_LOGIC;
    p_src_mat_cols_read_read : OUT STD_LOGIC;
    p_threshold_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_threshold_empty_n : IN STD_LOGIC;
    p_threshold_read : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of xFFastCornerDetectio is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal xFfast7x755_U0_ap_start : STD_LOGIC;
    signal xFfast7x755_U0_ap_done : STD_LOGIC;
    signal xFfast7x755_U0_ap_continue : STD_LOGIC;
    signal xFfast7x755_U0_ap_idle : STD_LOGIC;
    signal xFfast7x755_U0_ap_ready : STD_LOGIC;
    signal xFfast7x755_U0_start_out : STD_LOGIC;
    signal xFfast7x755_U0_start_write : STD_LOGIC;
    signal xFfast7x755_U0_p_strm_in_V_V_read : STD_LOGIC;
    signal xFfast7x755_U0_p_dst_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFfast7x755_U0_p_dst_V_V_write : STD_LOGIC;
    signal xFfast7x755_U0_p_src_mat_rows_read_read : STD_LOGIC;
    signal xFfast7x755_U0_p_src_mat_cols_read_read : STD_LOGIC;
    signal xFfast7x755_U0_p_threshold_read : STD_LOGIC;
    signal xFfast7x755_U0_p_c_i_din : STD_LOGIC_VECTOR (15 downto 0);
    signal xFfast7x755_U0_p_c_i_write : STD_LOGIC;
    signal xFfast7x755_U0_p_c1_i_din : STD_LOGIC_VECTOR (15 downto 0);
    signal xFfast7x755_U0_p_c1_i_write : STD_LOGIC;
    signal xFfastnms56_U0_ap_start : STD_LOGIC;
    signal xFfastnms56_U0_ap_done : STD_LOGIC;
    signal xFfastnms56_U0_ap_continue : STD_LOGIC;
    signal xFfastnms56_U0_ap_idle : STD_LOGIC;
    signal xFfastnms56_U0_ap_ready : STD_LOGIC;
    signal xFfastnms56_U0_p_dst_V_V_read : STD_LOGIC;
    signal xFfastnms56_U0_p_strm_out_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFfastnms56_U0_p_strm_out_V_V_write : STD_LOGIC;
    signal xFfastnms56_U0_p_image_height_read : STD_LOGIC;
    signal xFfastnms56_U0_p_image_width_read : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_dst_V_V_full_n : STD_LOGIC;
    signal p_dst_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_dst_V_V_empty_n : STD_LOGIC;
    signal p_c_i_full_n : STD_LOGIC;
    signal p_c_i_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal p_c_i_empty_n : STD_LOGIC;
    signal p_c1_i_full_n : STD_LOGIC;
    signal p_c1_i_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal p_c1_i_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_xFfastnms56_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFfastnms56_U0_full_n : STD_LOGIC;
    signal start_for_xFfastnms56_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFfastnms56_U0_empty_n : STD_LOGIC;
    signal xFfastnms56_U0_start_full_n : STD_LOGIC;
    signal xFfastnms56_U0_start_write : STD_LOGIC;

    component xFfast7x755 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_strm_in_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_strm_in_V_V_empty_n : IN STD_LOGIC;
        p_strm_in_V_V_read : OUT STD_LOGIC;
        p_dst_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_V_V_full_n : IN STD_LOGIC;
        p_dst_V_V_write : OUT STD_LOGIC;
        p_src_mat_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_empty_n : IN STD_LOGIC;
        p_src_mat_rows_read_read : OUT STD_LOGIC;
        p_src_mat_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read_empty_n : IN STD_LOGIC;
        p_src_mat_cols_read_read : OUT STD_LOGIC;
        p_threshold_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_threshold_empty_n : IN STD_LOGIC;
        p_threshold_read : OUT STD_LOGIC;
        p_c_i_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        p_c_i_full_n : IN STD_LOGIC;
        p_c_i_write : OUT STD_LOGIC;
        p_c1_i_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        p_c1_i_full_n : IN STD_LOGIC;
        p_c1_i_write : OUT STD_LOGIC );
    end component;


    component xFfastnms56 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_dst_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_dst_V_V_empty_n : IN STD_LOGIC;
        p_dst_V_V_read : OUT STD_LOGIC;
        p_strm_out_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_strm_out_V_V_full_n : IN STD_LOGIC;
        p_strm_out_V_V_write : OUT STD_LOGIC;
        p_image_height_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        p_image_height_empty_n : IN STD_LOGIC;
        p_image_height_read : OUT STD_LOGIC;
        p_image_width_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        p_image_width_empty_n : IN STD_LOGIC;
        p_image_width_read : OUT STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w16_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_xFfastnfYi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    xFfast7x755_U0 : component xFfast7x755
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFfast7x755_U0_ap_start,
        start_full_n => start_for_xFfastnms56_U0_full_n,
        ap_done => xFfast7x755_U0_ap_done,
        ap_continue => xFfast7x755_U0_ap_continue,
        ap_idle => xFfast7x755_U0_ap_idle,
        ap_ready => xFfast7x755_U0_ap_ready,
        start_out => xFfast7x755_U0_start_out,
        start_write => xFfast7x755_U0_start_write,
        p_strm_in_V_V_dout => p_strm_in_V_V_dout,
        p_strm_in_V_V_empty_n => p_strm_in_V_V_empty_n,
        p_strm_in_V_V_read => xFfast7x755_U0_p_strm_in_V_V_read,
        p_dst_V_V_din => xFfast7x755_U0_p_dst_V_V_din,
        p_dst_V_V_full_n => p_dst_V_V_full_n,
        p_dst_V_V_write => xFfast7x755_U0_p_dst_V_V_write,
        p_src_mat_rows_read_dout => p_src_mat_rows_read_dout,
        p_src_mat_rows_read_empty_n => p_src_mat_rows_read_empty_n,
        p_src_mat_rows_read_read => xFfast7x755_U0_p_src_mat_rows_read_read,
        p_src_mat_cols_read_dout => p_src_mat_cols_read_dout,
        p_src_mat_cols_read_empty_n => p_src_mat_cols_read_empty_n,
        p_src_mat_cols_read_read => xFfast7x755_U0_p_src_mat_cols_read_read,
        p_threshold_dout => p_threshold_dout,
        p_threshold_empty_n => p_threshold_empty_n,
        p_threshold_read => xFfast7x755_U0_p_threshold_read,
        p_c_i_din => xFfast7x755_U0_p_c_i_din,
        p_c_i_full_n => p_c_i_full_n,
        p_c_i_write => xFfast7x755_U0_p_c_i_write,
        p_c1_i_din => xFfast7x755_U0_p_c1_i_din,
        p_c1_i_full_n => p_c1_i_full_n,
        p_c1_i_write => xFfast7x755_U0_p_c1_i_write);

    xFfastnms56_U0 : component xFfastnms56
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => xFfastnms56_U0_ap_start,
        ap_done => xFfastnms56_U0_ap_done,
        ap_continue => xFfastnms56_U0_ap_continue,
        ap_idle => xFfastnms56_U0_ap_idle,
        ap_ready => xFfastnms56_U0_ap_ready,
        p_dst_V_V_dout => p_dst_V_V_dout,
        p_dst_V_V_empty_n => p_dst_V_V_empty_n,
        p_dst_V_V_read => xFfastnms56_U0_p_dst_V_V_read,
        p_strm_out_V_V_din => xFfastnms56_U0_p_strm_out_V_V_din,
        p_strm_out_V_V_full_n => p_strm_out_V_V_full_n,
        p_strm_out_V_V_write => xFfastnms56_U0_p_strm_out_V_V_write,
        p_image_height_dout => p_c_i_dout,
        p_image_height_empty_n => p_c_i_empty_n,
        p_image_height_read => xFfastnms56_U0_p_image_height_read,
        p_image_width_dout => p_c1_i_dout,
        p_image_width_empty_n => p_c1_i_empty_n,
        p_image_width_read => xFfastnms56_U0_p_image_width_read);

    p_dst_V_V_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFfast7x755_U0_p_dst_V_V_din,
        if_full_n => p_dst_V_V_full_n,
        if_write => xFfast7x755_U0_p_dst_V_V_write,
        if_dout => p_dst_V_V_dout,
        if_empty_n => p_dst_V_V_empty_n,
        if_read => xFfastnms56_U0_p_dst_V_V_read);

    p_c_i_U : component fifo_w16_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFfast7x755_U0_p_c_i_din,
        if_full_n => p_c_i_full_n,
        if_write => xFfast7x755_U0_p_c_i_write,
        if_dout => p_c_i_dout,
        if_empty_n => p_c_i_empty_n,
        if_read => xFfastnms56_U0_p_image_height_read);

    p_c1_i_U : component fifo_w16_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFfast7x755_U0_p_c1_i_din,
        if_full_n => p_c1_i_full_n,
        if_write => xFfast7x755_U0_p_c1_i_write,
        if_dout => p_c1_i_dout,
        if_empty_n => p_c1_i_empty_n,
        if_read => xFfastnms56_U0_p_image_width_read);

    start_for_xFfastnfYi_U : component start_for_xFfastnfYi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xFfastnms56_U0_din,
        if_full_n => start_for_xFfastnms56_U0_full_n,
        if_write => xFfast7x755_U0_start_write,
        if_dout => start_for_xFfastnms56_U0_dout,
        if_empty_n => start_for_xFfastnms56_U0_empty_n,
        if_read => xFfastnms56_U0_ap_ready);




    ap_done <= xFfastnms56_U0_ap_done;
    ap_idle <= (xFfastnms56_U0_ap_idle and xFfast7x755_U0_ap_idle);
    ap_ready <= xFfast7x755_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= xFfastnms56_U0_ap_done;
    ap_sync_ready <= xFfast7x755_U0_ap_ready;
    p_src_mat_cols_read_read <= xFfast7x755_U0_p_src_mat_cols_read_read;
    p_src_mat_rows_read_read <= xFfast7x755_U0_p_src_mat_rows_read_read;
    p_strm_in_V_V_read <= xFfast7x755_U0_p_strm_in_V_V_read;
    p_strm_out_V_V_din <= xFfastnms56_U0_p_strm_out_V_V_din;
    p_strm_out_V_V_write <= xFfastnms56_U0_p_strm_out_V_V_write;
    p_threshold_read <= xFfast7x755_U0_p_threshold_read;
    start_for_xFfastnms56_U0_din <= (0=>ap_const_logic_1, others=>'-');
    xFfast7x755_U0_ap_continue <= ap_const_logic_1;
    xFfast7x755_U0_ap_start <= ap_start;
    xFfastnms56_U0_ap_continue <= ap_continue;
    xFfastnms56_U0_ap_start <= start_for_xFfastnms56_U0_empty_n;
    xFfastnms56_U0_start_full_n <= ap_const_logic_1;
    xFfastnms56_U0_start_write <= ap_const_logic_0;
end behav;
