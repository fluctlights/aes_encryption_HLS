-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AES_Encrypt_axi_SubBytes is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    data_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_2_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_3_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_4_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_5_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_6_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_7_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_8_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_9_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_10_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_11_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_1213_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_13_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_14_read : IN STD_LOGIC_VECTOR (7 downto 0);
    data_15_read : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce0 : OUT STD_LOGIC;
    s_box_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce1 : OUT STD_LOGIC;
    s_box_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address2 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce2 : OUT STD_LOGIC;
    s_box_q2 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address3 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce3 : OUT STD_LOGIC;
    s_box_q3 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address4 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce4 : OUT STD_LOGIC;
    s_box_q4 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce5 : OUT STD_LOGIC;
    s_box_q5 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address6 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce6 : OUT STD_LOGIC;
    s_box_q6 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_box_address7 : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_box_ce7 : OUT STD_LOGIC;
    s_box_q7 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_10 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_11 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_12 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_13 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_14 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_15 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of AES_Encrypt_axi_SubBytes is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal s_box_load_reg_505 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal s_box_load_1_reg_510 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_2_reg_515 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_3_reg_520 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_4_reg_525 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_5_reg_530 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_6_reg_535 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_load_7_reg_540 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_port_reg_data_8_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_9_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_10_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_11_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_1213_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_13_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_14_read : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_port_reg_data_15_read : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln119_fu_297_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln119_1_fu_302_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_2_fu_307_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_3_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_4_fu_317_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_5_fu_322_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_6_fu_327_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_7_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_8_fu_337_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln119_9_fu_342_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_10_fu_347_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_11_fu_352_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_12_fu_357_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_13_fu_362_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_14_fu_367_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln119_15_fu_372_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_reset_start_pp0 : STD_LOGIC;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_port_reg_data_10_read <= data_10_read;
                ap_port_reg_data_11_read <= data_11_read;
                ap_port_reg_data_1213_read <= data_1213_read;
                ap_port_reg_data_13_read <= data_13_read;
                ap_port_reg_data_14_read <= data_14_read;
                ap_port_reg_data_15_read <= data_15_read;
                ap_port_reg_data_8_read <= data_8_read;
                ap_port_reg_data_9_read <= data_9_read;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                s_box_load_1_reg_510 <= s_box_q6;
                s_box_load_2_reg_515 <= s_box_q5;
                s_box_load_3_reg_520 <= s_box_q4;
                s_box_load_4_reg_525 <= s_box_q3;
                s_box_load_5_reg_530 <= s_box_q2;
                s_box_load_6_reg_535 <= s_box_q1;
                s_box_load_7_reg_540 <= s_box_q0;
                s_box_load_reg_505 <= s_box_q7;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0, ap_reset_start_pp0, ap_idle_pp0_1to1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_idle_pp0_1to1 = ap_const_logic_1) and (ap_start = ap_const_logic_0))) and not(((ap_reset_start_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif ((((ap_reset_start_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_subdone_assign_proc : process(ap_ce)
    begin
                ap_block_pp0_stage0_subdone <= (ap_const_logic_0 = ap_ce);
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_subdone_assign_proc : process(ap_ce)
    begin
                ap_block_pp0_stage1_subdone <= (ap_const_logic_0 = ap_ce);
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_start = ap_const_logic_0))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_start_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_start = ap_const_logic_1))) then 
            ap_reset_start_pp0 <= ap_const_logic_1;
        else 
            ap_reset_start_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= s_box_load_reg_505;
    ap_return_1 <= s_box_load_1_reg_510;
    ap_return_10 <= s_box_q5;
    ap_return_11 <= s_box_q4;
    ap_return_12 <= s_box_q3;
    ap_return_13 <= s_box_q2;
    ap_return_14 <= s_box_q1;
    ap_return_15 <= s_box_q0;
    ap_return_2 <= s_box_load_2_reg_515;
    ap_return_3 <= s_box_load_3_reg_520;
    ap_return_4 <= s_box_load_4_reg_525;
    ap_return_5 <= s_box_load_5_reg_530;
    ap_return_6 <= s_box_load_6_reg_535;
    ap_return_7 <= s_box_load_7_reg_540;
    ap_return_8 <= s_box_q7;
    ap_return_9 <= s_box_q6;

    s_box_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_7_fu_332_p1, ap_block_pp0_stage1, zext_ln119_15_fu_372_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address0 <= zext_ln119_15_fu_372_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address0 <= zext_ln119_7_fu_332_p1(8 - 1 downto 0);
            else 
                s_box_address0 <= "XXXXXXXX";
            end if;
        else 
            s_box_address0 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_6_fu_327_p1, ap_block_pp0_stage1, zext_ln119_14_fu_367_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address1 <= zext_ln119_14_fu_367_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address1 <= zext_ln119_6_fu_327_p1(8 - 1 downto 0);
            else 
                s_box_address1 <= "XXXXXXXX";
            end if;
        else 
            s_box_address1 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_5_fu_322_p1, ap_block_pp0_stage1, zext_ln119_13_fu_362_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address2 <= zext_ln119_13_fu_362_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address2 <= zext_ln119_5_fu_322_p1(8 - 1 downto 0);
            else 
                s_box_address2 <= "XXXXXXXX";
            end if;
        else 
            s_box_address2 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_4_fu_317_p1, ap_block_pp0_stage1, zext_ln119_12_fu_357_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address3 <= zext_ln119_12_fu_357_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address3 <= zext_ln119_4_fu_317_p1(8 - 1 downto 0);
            else 
                s_box_address3 <= "XXXXXXXX";
            end if;
        else 
            s_box_address3 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_3_fu_312_p1, ap_block_pp0_stage1, zext_ln119_11_fu_352_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address4 <= zext_ln119_11_fu_352_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address4 <= zext_ln119_3_fu_312_p1(8 - 1 downto 0);
            else 
                s_box_address4 <= "XXXXXXXX";
            end if;
        else 
            s_box_address4 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_2_fu_307_p1, ap_block_pp0_stage1, zext_ln119_10_fu_347_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address5 <= zext_ln119_10_fu_347_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address5 <= zext_ln119_2_fu_307_p1(8 - 1 downto 0);
            else 
                s_box_address5 <= "XXXXXXXX";
            end if;
        else 
            s_box_address5 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address6_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln119_1_fu_302_p1, ap_block_pp0_stage1, zext_ln119_9_fu_342_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address6 <= zext_ln119_9_fu_342_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address6 <= zext_ln119_1_fu_302_p1(8 - 1 downto 0);
            else 
                s_box_address6 <= "XXXXXXXX";
            end if;
        else 
            s_box_address6 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_address7_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, zext_ln119_fu_297_p1, ap_block_pp0_stage0, zext_ln119_8_fu_337_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                s_box_address7 <= zext_ln119_8_fu_337_p1(8 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                s_box_address7 <= zext_ln119_fu_297_p1(8 - 1 downto 0);
            else 
                s_box_address7 <= "XXXXXXXX";
            end if;
        else 
            s_box_address7 <= "XXXXXXXX";
        end if; 
    end process;


    s_box_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce0 <= ap_const_logic_1;
        else 
            s_box_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce1 <= ap_const_logic_1;
        else 
            s_box_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce2 <= ap_const_logic_1;
        else 
            s_box_ce2 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce3 <= ap_const_logic_1;
        else 
            s_box_ce3 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce4 <= ap_const_logic_1;
        else 
            s_box_ce4 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce5 <= ap_const_logic_1;
        else 
            s_box_ce5 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce6_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce6 <= ap_const_logic_1;
        else 
            s_box_ce6 <= ap_const_logic_0;
        end if; 
    end process;


    s_box_ce7_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_ce, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            s_box_ce7 <= ap_const_logic_1;
        else 
            s_box_ce7 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln119_10_fu_347_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_10_read),64));
    zext_ln119_11_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_11_read),64));
    zext_ln119_12_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_1213_read),64));
    zext_ln119_13_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_13_read),64));
    zext_ln119_14_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_14_read),64));
    zext_ln119_15_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_15_read),64));
    zext_ln119_1_fu_302_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_1_read),64));
    zext_ln119_2_fu_307_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_2_read),64));
    zext_ln119_3_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_3_read),64));
    zext_ln119_4_fu_317_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_4_read),64));
    zext_ln119_5_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_5_read),64));
    zext_ln119_6_fu_327_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_6_read),64));
    zext_ln119_7_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_7_read),64));
    zext_ln119_8_fu_337_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_8_read),64));
    zext_ln119_9_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_port_reg_data_9_read),64));
    zext_ln119_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_0_read),64));
end behav;
