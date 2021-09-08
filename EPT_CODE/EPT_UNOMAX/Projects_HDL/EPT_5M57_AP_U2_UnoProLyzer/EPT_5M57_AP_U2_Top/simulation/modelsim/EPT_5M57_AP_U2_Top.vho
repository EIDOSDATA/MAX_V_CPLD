-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/15/2018 22:32:02"

-- 
-- Device: Altera 5M570ZT100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	EPT_5M57_AP_U2_Top IS
    PORT (
	aa : IN std_logic_vector(1 DOWNTO 0);
	bc_in : IN std_logic_vector(1 DOWNTO 0);
	bc_out : OUT std_logic_vector(2 DOWNTO 0);
	bd_inout : INOUT std_logic_vector(7 DOWNTO 0);
	LB_SER : OUT std_logic_vector(1 DOWNTO 0);
	LB_AD : OUT std_logic_vector(5 DOWNTO 0);
	LB_IOH : OUT std_logic_vector(7 DOWNTO 0);
	LB_IOL : OUT std_logic_vector(7 DOWNTO 0);
	ADC_MOSI : OUT std_logic;
	ADC_CLK : OUT std_logic;
	ADC_MISO : IN std_logic;
	ADC_CS : OUT std_logic;
	ADC_CNVST : OUT std_logic;
	ADC_EOC : IN std_logic;
	TR_DIR_1 : OUT std_logic;
	TR_OE_1 : OUT std_logic;
	TR_DIR_2 : OUT std_logic;
	TR_OE_2 : OUT std_logic;
	TR_DIR_3 : OUT std_logic;
	TR_OE_3 : OUT std_logic;
	SW_USER_1 : IN std_logic;
	SW_USER_2 : IN std_logic;
	LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END EPT_5M57_AP_U2_Top;

-- Design Ports Information


ARCHITECTURE structure OF EPT_5M57_AP_U2_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_bc_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_bc_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LB_SER : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LB_AD : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LB_IOH : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LB_IOL : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_MOSI : std_logic;
SIGNAL ww_ADC_CLK : std_logic;
SIGNAL ww_ADC_MISO : std_logic;
SIGNAL ww_ADC_CS : std_logic;
SIGNAL ww_ADC_CNVST : std_logic;
SIGNAL ww_ADC_EOC : std_logic;
SIGNAL ww_TR_DIR_1 : std_logic;
SIGNAL ww_TR_OE_1 : std_logic;
SIGNAL ww_TR_DIR_2 : std_logic;
SIGNAL ww_TR_OE_2 : std_logic;
SIGNAL ww_TR_DIR_3 : std_logic;
SIGNAL ww_TR_OE_3 : std_logic;
SIGNAL ww_SW_USER_1 : std_logic;
SIGNAL ww_SW_USER_2 : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan0~5\ : std_logic;
SIGNAL \LessThan0~10\ : std_logic;
SIGNAL \LessThan0~15\ : std_logic;
SIGNAL \mem_array[4][0]~regout\ : std_logic;
SIGNAL \mem_array[2][0]~regout\ : std_logic;
SIGNAL \mem_array[2][1]~regout\ : std_logic;
SIGNAL \mem_array[4][1]~regout\ : std_logic;
SIGNAL \mem_array[6][2]~regout\ : std_logic;
SIGNAL \mem_array[5][2]~regout\ : std_logic;
SIGNAL \mem_array[2][2]~regout\ : std_logic;
SIGNAL \mem_array[1][2]~regout\ : std_logic;
SIGNAL \mem_array[6][3]~regout\ : std_logic;
SIGNAL \mem_array[5][3]~regout\ : std_logic;
SIGNAL \mem_array[2][3]~regout\ : std_logic;
SIGNAL \mem_array[1][3]~regout\ : std_logic;
SIGNAL \mem_array[3][4]~regout\ : std_logic;
SIGNAL \mem_array[5][4]~regout\ : std_logic;
SIGNAL \mem_array[3][5]~regout\ : std_logic;
SIGNAL \mem_array[5][5]~regout\ : std_logic;
SIGNAL \mem_array[3][6]~regout\ : std_logic;
SIGNAL \mem_array[5][6]~regout\ : std_logic;
SIGNAL \mem_array[3][7]~regout\ : std_logic;
SIGNAL \mem_array[5][7]~regout\ : std_logic;
SIGNAL \LessThan0~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~5\ : std_logic;
SIGNAL \LessThan0~25\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~5\ : std_logic;
SIGNAL \LessThan0~30\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~10\ : std_logic;
SIGNAL \LessThan0~35\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~15\ : std_logic;
SIGNAL \LessThan0~40\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~20\ : std_logic;
SIGNAL \LessThan0~45\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~25\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~25\ : std_logic;
SIGNAL \LessThan0~50\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~30\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~30\ : std_logic;
SIGNAL \LessThan0~55\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~35\ : std_logic;
SIGNAL \LessThan0~60\ : std_logic;
SIGNAL \LessThan0~65\ : std_logic;
SIGNAL \LessThan0~70\ : std_logic;
SIGNAL \LessThan0~75\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~8\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_host_flag\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|xint[10]~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~3\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~3\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~4\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|to_trigupdate\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~2\ : std_logic;
SIGNAL \adc_convst_cmd_reg~regout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in[2]~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~5\ : std_logic;
SIGNAL \adc_convst_delay_value[15]~0_combout\ : std_logic;
SIGNAL \adc_cnvst_reg~16_combout\ : std_logic;
SIGNAL \adc_cnvst_reg~19_combout\ : std_logic;
SIGNAL \adc_cnvst_reg.01~regout\ : std_logic;
SIGNAL \adc_cnvst_reg.11~regout\ : std_logic;
SIGNAL \ADC_EOC~combout\ : std_logic;
SIGNAL \adc_eoc_reg~regout\ : std_logic;
SIGNAL \adc_cnvst_reg~22_combout\ : std_logic;
SIGNAL \adc_cnvst_reg~24_combout\ : std_logic;
SIGNAL \adc_cnvst_reg.10~regout\ : std_logic;
SIGNAL \adc_convst_cmd_count~31_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_81\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~29_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_82\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~27_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \adc_convst_cmd_count~23_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~25_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_83\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_84\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~21_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_85\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~19_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_86\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~17_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~15_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_87\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~13_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_88\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~11_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_89\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~9_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_90\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~7_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~5_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_91\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_92\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \adc_convst_cmd_count~1_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\ : std_logic;
SIGNAL \LessThan0~77_cout0\ : std_logic;
SIGNAL \LessThan0~77COUT1_81\ : std_logic;
SIGNAL \LessThan0~72_cout0\ : std_logic;
SIGNAL \LessThan0~72COUT1_82\ : std_logic;
SIGNAL \LessThan0~67_cout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ : std_logic;
SIGNAL \LessThan0~62_cout0\ : std_logic;
SIGNAL \LessThan0~62COUT1_83\ : std_logic;
SIGNAL \LessThan0~57_cout0\ : std_logic;
SIGNAL \LessThan0~57COUT1_84\ : std_logic;
SIGNAL \LessThan0~52_cout0\ : std_logic;
SIGNAL \LessThan0~52COUT1_85\ : std_logic;
SIGNAL \LessThan0~47_cout0\ : std_logic;
SIGNAL \LessThan0~47COUT1_86\ : std_logic;
SIGNAL \LessThan0~42_cout\ : std_logic;
SIGNAL \LessThan0~37_cout0\ : std_logic;
SIGNAL \LessThan0~37COUT1_87\ : std_logic;
SIGNAL \LessThan0~32_cout0\ : std_logic;
SIGNAL \LessThan0~32COUT1_88\ : std_logic;
SIGNAL \LessThan0~27_cout0\ : std_logic;
SIGNAL \LessThan0~27COUT1_89\ : std_logic;
SIGNAL \LessThan0~22_cout0\ : std_logic;
SIGNAL \LessThan0~22COUT1_90\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~12_cout0\ : std_logic;
SIGNAL \LessThan0~12COUT1_91\ : std_logic;
SIGNAL \LessThan0~7_cout0\ : std_logic;
SIGNAL \LessThan0~7COUT1_92\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \adc_cnvst_reg~17\ : std_logic;
SIGNAL \adc_cnvst_reg.00~regout\ : std_logic;
SIGNAL \adc_convst_cmd_count~0_combout\ : std_logic;
SIGNAL \adc_convst_cmd~0_combout\ : std_logic;
SIGNAL \adc_convst_cmd~1_combout\ : std_logic;
SIGNAL \adc_convst_cmd~regout\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~1\ : std_logic;
SIGNAL \master_spi_initiate_transmit~regout\ : std_logic;
SIGNAL \always2~0\ : std_logic;
SIGNAL \adc_channel_select[0]~2_combout\ : std_logic;
SIGNAL \next[3]~1_combout\ : std_logic;
SIGNAL \next[3]~0_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|CLK_SPI~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|read_spi_inst|SCLK~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|SCLK~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_start~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|DONE~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|next[0]~2\ : std_logic;
SIGNAL \SPI_IFACE_INST|read_spi_start~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|read_spi_inst|DONE~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|WE_OUT_N~regout\ : std_logic;
SIGNAL \master_spi_initiate_receive_reg~regout\ : std_logic;
SIGNAL \master_spi_initiate_receive~regout\ : std_logic;
SIGNAL \adc_data_rcvd_msb~regout\ : std_logic;
SIGNAL \adc_channel_select[1]~0_combout\ : std_logic;
SIGNAL \mem_array_index[2]~2_combout\ : std_logic;
SIGNAL \mem_array_index~0_combout\ : std_logic;
SIGNAL \next[9]~7_combout\ : std_logic;
SIGNAL \start_block_out~regout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|block_transfer_state.IDLE\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out~14\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_in\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|always0~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|to_transfer_update\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[0]~16\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[0]~1\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[0]~1COUT1_1\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[1]~3\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[1]~3COUT1_2\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[2]~5\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[2]~5COUT1_3\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|LessThan1~0\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[3]~7\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[3]~7COUT1_4\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[4]~9\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[5]~11\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[6]~13\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|data_count[6]~13COUT1_6\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|LessThan1~1\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|LessThan1~2\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|always3~0\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|always3~1\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|always3~2\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|shift_reg~11_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|DATA_OUT~2_combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|SPI_CLK~0_combout\ : std_logic;
SIGNAL \ADC_MISO~combout\ : std_logic;
SIGNAL \SPI_IFACE_INST|SPI_CS_N~regout\ : std_logic;
SIGNAL \adc_conv_start~0_combout\ : std_logic;
SIGNAL \adc_conv_start~regout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|Selector15~1\ : std_logic;
SIGNAL \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\ : std_logic;
SIGNAL \always9~3_combout\ : std_logic;
SIGNAL \serial_receive_data_reg.10~regout\ : std_logic;
SIGNAL \serial_receive_data_reg~9_combout\ : std_logic;
SIGNAL \serial_receive_data_reg.01~regout\ : std_logic;
SIGNAL \serial_receive_data_reg.00~regout\ : std_logic;
SIGNAL \always9~4_combout\ : std_logic;
SIGNAL \mem_array[3][2]~0_combout\ : std_logic;
SIGNAL \mem_array[0][0]~3_combout\ : std_logic;
SIGNAL \mem_array[0][0]~regout\ : std_logic;
SIGNAL \mem_array[4][0]~2_combout\ : std_logic;
SIGNAL \Mux7~0\ : std_logic;
SIGNAL \mem_array[6][0]~4_combout\ : std_logic;
SIGNAL \mem_array[6][0]~regout\ : std_logic;
SIGNAL \mem_array[2][0]~1_combout\ : std_logic;
SIGNAL \Mux7~1\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|Selector15~0\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[0]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|uc_out~8\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ : std_logic;
SIGNAL \mem_array[6][1]~regout\ : std_logic;
SIGNAL \mem_array[0][1]~regout\ : std_logic;
SIGNAL \Mux6~0\ : std_logic;
SIGNAL \Mux6~1\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[1]~reg0\ : std_logic;
SIGNAL \mem_array[7][2]~6_combout\ : std_logic;
SIGNAL \mem_array[7][2]~regout\ : std_logic;
SIGNAL \mem_array[4][2]~regout\ : std_logic;
SIGNAL \Mux5~0\ : std_logic;
SIGNAL \mem_array[5][2]~5_combout\ : std_logic;
SIGNAL \Mux5~1\ : std_logic;
SIGNAL \mem_array[3][2]~8_combout\ : std_logic;
SIGNAL \mem_array[3][2]~regout\ : std_logic;
SIGNAL \mem_array[0][2]~regout\ : std_logic;
SIGNAL \Mux5~2\ : std_logic;
SIGNAL \mem_array[1][2]~7_combout\ : std_logic;
SIGNAL \Mux5~3\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[2]~reg0\ : std_logic;
SIGNAL \mem_array[7][3]~regout\ : std_logic;
SIGNAL \mem_array[4][3]~regout\ : std_logic;
SIGNAL \Mux4~0\ : std_logic;
SIGNAL \Mux4~1\ : std_logic;
SIGNAL \mem_array[3][3]~regout\ : std_logic;
SIGNAL \mem_array[0][3]~regout\ : std_logic;
SIGNAL \Mux4~2\ : std_logic;
SIGNAL \Mux4~3\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[3]~reg0\ : std_logic;
SIGNAL \mem_array[1][4]~regout\ : std_logic;
SIGNAL \Mux3~0\ : std_logic;
SIGNAL \mem_array[7][4]~regout\ : std_logic;
SIGNAL \Mux3~1\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[4]~reg0\ : std_logic;
SIGNAL \mem_array[7][5]~regout\ : std_logic;
SIGNAL \mem_array[1][5]~regout\ : std_logic;
SIGNAL \Mux2~0\ : std_logic;
SIGNAL \Mux2~1\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[5]~reg0\ : std_logic;
SIGNAL \mem_array[7][6]~regout\ : std_logic;
SIGNAL \mem_array[1][6]~regout\ : std_logic;
SIGNAL \Mux1~0\ : std_logic;
SIGNAL \Mux1~1\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[6]~reg0\ : std_logic;
SIGNAL \mem_array[1][7]~regout\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \mem_array[7][7]~regout\ : std_logic;
SIGNAL \Mux0~1\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \BLOCK_TRANSFER_INST|uc_out[7]~reg0\ : std_logic;
SIGNAL receive_endterm_select : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|write_spi_inst|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \aa~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bc_in~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|write_spi_inst|state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|read_spi_inst|state\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|clock_spi_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL mem_array_index : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|write_spi_inst|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_INST_1|state_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|read_spi_inst|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL state : std_logic_vector(10 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BLOCK_TRANSFER_INST|data_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL transfer_storage_register : std_logic_vector(7 DOWNTO 0);
SIGNAL adc_channel_select : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL adc_convst_cmd_count : std_logic_vector(15 DOWNTO 0);
SIGNAL adc_convst_delay_value : std_logic_vector(15 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\ : std_logic_vector(8 DOWNTO 0);
SIGNAL adc_channels_to_read : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_IFACE_INST|read_spi_inst|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wireOR|uc_out\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \BLOCK_TRANSFER_INST|block_transfer_state_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|to_trigupdate_counter\ : std_logic_vector(10 DOWNTO 8);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|xint\ : std_logic_vector(10 DOWNTO 8);
SIGNAL \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|ALT_INV_state\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \ALT_INV_aa~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_adc_conv_start~regout\ : std_logic;
SIGNAL \SPI_IFACE_INST|ALT_INV_SPI_CS_N~regout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_WR\ : std_logic;

BEGIN

ww_aa <= aa;
ww_bc_in <= bc_in;
bc_out <= ww_bc_out;
LB_SER <= ww_LB_SER;
LB_AD <= ww_LB_AD;
LB_IOH <= ww_LB_IOH;
LB_IOL <= ww_LB_IOL;
ADC_MOSI <= ww_ADC_MOSI;
ADC_CLK <= ww_ADC_CLK;
ww_ADC_MISO <= ADC_MISO;
ADC_CS <= ww_ADC_CS;
ADC_CNVST <= ww_ADC_CNVST;
ww_ADC_EOC <= ADC_EOC;
TR_DIR_1 <= ww_TR_DIR_1;
TR_OE_1 <= ww_TR_OE_1;
TR_DIR_2 <= ww_TR_DIR_2;
TR_OE_2 <= ww_TR_OE_2;
TR_DIR_3 <= ww_TR_DIR_3;
TR_OE_3 <= ww_TR_OE_3;
ww_SW_USER_1 <= SW_USER_1;
ww_SW_USER_2 <= SW_USER_2;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\ <= NOT \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\;
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|ALT_INV_state\(3) <= NOT \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3);
\ALT_INV_aa~combout\(0) <= NOT \aa~combout\(0);
\ALT_INV_adc_conv_start~regout\ <= NOT \adc_conv_start~regout\;
\SPI_IFACE_INST|ALT_INV_SPI_CS_N~regout\ <= NOT \SPI_IFACE_INST|SPI_CS_N~regout\;
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_WR\ <= NOT \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\;

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(0),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(0),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(1),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(1),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(2),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(2),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(3),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(3),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(4),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(4),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(5),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(5),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(6),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(6),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~I_I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(7),
	oe => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	padio => bd_inout(7),
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aa[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_aa(1),
	combout => \aa~combout\(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aa[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_aa(0),
	combout => \aa~combout\(0));

-- Location: LC_X8_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1));

-- Location: LC_X10_Y2_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \aa~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7));

-- Location: LC_X12_Y1_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\);

-- Location: LC_X11_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cece",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\);

-- Location: LC_X10_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\);

-- Location: LC_X12_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1COUT1_1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1COUT1_1\);

-- Location: LC_X12_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1) $ 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1COUT1_1\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[0]~1COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3COUT1_2\);

-- Location: LC_X12_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2) $ 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~3COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5COUT1_3\);

-- Location: LC_X12_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3) $ 
-- ((((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5COUT1_3\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[2]~5COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7COUT1_4\);

-- Location: LC_X12_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\);

-- Location: LC_X12_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4) $ 
-- ((((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7COUT1_4\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[3]~7COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4),
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\);

-- Location: LC_X12_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5) $ 
-- ((((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\);

-- Location: LC_X12_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6) $ 
-- ((((!(!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13COUT1_6\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[5]~11COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13COUT1_6\);

-- Location: LC_X12_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13\) # (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13COUT1_6\) $ (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\, , , \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[7]~19\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[6]~13COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7));

-- Location: LC_X10_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~18\);

-- Location: LC_X12_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(5),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\);

-- Location: LC_X10_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~14\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|LessThan0~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17\);

-- Location: LC_X10_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2\);

-- Location: LC_X10_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_cntr[1]~17\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\);

-- Location: LC_X8_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\);

-- Location: LC_X8_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\);

-- Location: LC_X8_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2));

-- Location: LC_X10_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1));

-- Location: LC_X10_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\);

-- Location: LC_X8_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2));

-- Location: LC_X8_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2\);

-- Location: LC_X8_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\);

-- Location: LC_X6_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \aa~combout\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5));

-- Location: LC_X5_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	datad => \aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4));

-- Location: LC_X8_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3)) # ((H1_control_multiplexor[4]) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4));

-- Location: LC_X8_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & (H1_control_multiplexor[5] & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5));

-- Location: LC_X6_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \aa~combout\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3));

-- Location: LC_X8_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (!H1_control_multiplexor[3] & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & ((H1_control_multiplexor[3] $ 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0552",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3));

-- Location: LC_X11_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c1c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0));

-- Location: LC_X11_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\);

-- Location: LC_X11_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0) $ 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\, , , 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|ALT_INV_state\(3),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1));

-- Location: LC_X11_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2) $ 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\, , , !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|ALT_INV_state\(3),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2));

-- Location: LC_X11_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2)) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|data_byte_ready_delay_cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\);

-- Location: LC_X11_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\ & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~1\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\);

-- Location: LC_X10_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3));

-- Location: LC_X8_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0)) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\);

-- Location: LC_X6_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\);

-- Location: LC_X12_Y1_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\);

-- Location: LC_X10_Y4_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\);

-- Location: LC_X10_Y4_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1));

-- Location: LC_X12_Y1_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\);

-- Location: LC_X10_Y4_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\);

-- Location: LC_X12_Y2_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2));

-- Location: LC_X12_Y1_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\);

-- Location: LC_X12_Y1_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3));

-- Location: LC_X12_Y1_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\);

-- Location: LC_X12_Y2_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4));

-- Location: LC_X12_Y1_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\);

-- Location: LC_X12_Y2_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5));

-- Location: LC_X12_Y1_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) $ ((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9COUT1_6\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9COUT1_6\);

-- Location: LC_X12_Y2_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\ & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6));

-- Location: LC_X12_Y1_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9COUT1_6\) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~9COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\);

-- Location: LC_X12_Y1_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7));

-- Location: LC_X11_Y1_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\);

-- Location: LC_X11_Y1_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\);

-- Location: LC_X10_Y2_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\);

-- Location: LC_X10_Y2_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~8\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~8\);

-- Location: LC_X6_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\ = (((\aa~combout\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \aa~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\);

-- Location: LC_X10_Y2_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~8\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7));

-- Location: LC_X10_Y1_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~5\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~5\);

-- Location: LC_X10_Y1_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~5\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4));

-- Location: LC_X6_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (H1_length_to_device[3]))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3));

-- Location: LC_X5_Y6_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2))))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	datad => \aa~combout\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2));

-- Location: LC_X6_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((H1_length_to_device[2])))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2));

-- Location: LC_X5_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1))))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	datad => \aa~combout\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1));

-- Location: LC_X6_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (H1_length_to_device[1]))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1));

-- Location: LC_X5_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0))))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	datad => \aa~combout\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0));

-- Location: LC_X6_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (H1_length_to_device[0]))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0));

-- Location: LC_X10_Y1_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37COUT1_1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37COUT1_1\);

-- Location: LC_X10_Y1_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37COUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~37COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32COUT1_2\);

-- Location: LC_X10_Y1_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~32COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27COUT1_3\);

-- Location: LC_X10_Y1_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27COUT1_3\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~27COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22COUT1_4\);

-- Location: LC_X10_Y1_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) $ ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22COUT1_4\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~22COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\);

-- Location: LC_X10_Y2_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6) = (\aa~combout\(0) & ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \aa~combout\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6));

-- Location: LC_X10_Y2_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((H1_length_to_device[6])))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6));

-- Location: LC_X6_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\);

-- Location: LC_X6_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5));

-- Location: LC_X10_Y1_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\);

-- Location: LC_X10_Y1_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) $ ((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7COUT1_6\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~12COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7COUT1_6\);

-- Location: LC_X10_Y1_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7COUT1_6\) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~7COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\);

-- Location: LC_X11_Y1_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~35\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~35\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\);

-- Location: LC_X11_Y1_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~30\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~37COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~30\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\);

-- Location: LC_X11_Y1_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~25\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~32COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~25\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\);

-- Location: LC_X11_Y1_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~20\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~27COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\);

-- Location: LC_X11_Y1_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~15\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~22COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~15\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\);

-- Location: LC_X11_Y1_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~10\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\);

-- Location: LC_X11_Y1_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~5\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~12COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\);

-- Location: LC_X11_Y1_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add5~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~7COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\);

-- Location: LC_X11_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5\);

-- Location: LC_X11_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~5\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[0]~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4));

-- Location: LC_X10_Y4_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\);

-- Location: LC_X10_Y4_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\);

-- Location: LC_X10_Y4_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\);

-- Location: LC_X10_Y4_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\);

-- Location: LC_X10_Y4_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\);

-- Location: LC_X10_Y4_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\);

-- Location: LC_X10_Y4_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\);

-- Location: LC_X12_Y2_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0));

-- Location: LC_X10_Y2_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\);

-- Location: LC_X10_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\);

-- Location: LC_X8_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\);

-- Location: LC_X11_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\);

-- Location: LC_X10_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11\);

-- Location: LC_X6_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~11\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0));

-- Location: LC_X6_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\);

-- Location: LC_X6_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\);

-- Location: LC_X6_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\);

-- Location: LC_X4_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\);

-- Location: LC_X4_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\);

-- Location: LC_X4_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\);

-- Location: LC_X4_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\);

-- Location: LC_X4_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) $ ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4),
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\);

-- Location: LC_X4_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\);

-- Location: LC_X4_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) $ ((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\);

-- Location: LC_X4_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) $ (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7));

-- Location: LC_X3_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32COUT1_1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~30\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32COUT1_1\);

-- Location: LC_X3_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~25_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32COUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff03",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~32COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~25\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27COUT1_2\);

-- Location: LC_X3_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22COUT1_3\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~27COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22COUT1_3\);

-- Location: LC_X3_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22COUT1_3\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~22COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\);

-- Location: LC_X3_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\);

-- Location: LC_X3_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) $ ((((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7COUT1_5\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~12COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7COUT1_5\);

-- Location: LC_X3_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7COUT1_5\) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~7COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0\);

-- Location: LC_X10_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0));

-- Location: LC_X10_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1) = DFFEAS((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1));

-- Location: LC_X10_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7272",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\);

-- Location: LC_X10_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1) & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7750",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\);

-- Location: LC_X1_Y6_N5
\ACTIVE_TRIGGER_INST|to_trigupdate_counter[8]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8) = DFFEAS((\ACTIVE_TRIGGER_INST|to_trigupdate\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9)) # ((!\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datab => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8));

-- Location: LC_X1_Y6_N0
\ACTIVE_TRIGGER_INST|to_trigupdate_counter[9]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9) = DFFEAS((\ACTIVE_TRIGGER_INST|to_trigupdate\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9)) # ((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datab => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9));

-- Location: LC_X1_Y6_N7
\ACTIVE_TRIGGER_INST|trigger_to_host_flag~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_host_flag\ = DFFEAS((\ACTIVE_TRIGGER_INST|to_trigupdate\ & (\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9) & (\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datab => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\);

-- Location: LC_X1_Y4_N9
\ACTIVE_TRIGGER_INST|xint[10]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint[10]~0\ = ((!\ACTIVE_TRIGGER_INST|trigger_to_host_flag\ & (\aa~combout\(0) & !\ACTIVE_TRIGGER_INST|Equal1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datac => \aa~combout\(0),
	datad => \ACTIVE_TRIGGER_INST|Equal1~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|xint[10]~0\);

-- Location: LC_X1_Y4_N2
\ACTIVE_TRIGGER_INST|xint[8]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(8) = DFFEAS((\ACTIVE_TRIGGER_INST|xint[10]~0\ $ (((\ACTIVE_TRIGGER_INST|xint\(8))))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(8));

-- Location: LC_X1_Y4_N7
\ACTIVE_TRIGGER_INST|xint[9]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(9) = DFFEAS((\ACTIVE_TRIGGER_INST|xint\(9) $ (((\ACTIVE_TRIGGER_INST|xint\(8) & \ACTIVE_TRIGGER_INST|xint[10]~0\)))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRIGGER_INST|xint\(8),
	datac => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(9));

-- Location: LC_X1_Y4_N8
\ACTIVE_TRIGGER_INST|xint[10]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(10) = DFFEAS(\ACTIVE_TRIGGER_INST|xint\(10) $ (((\ACTIVE_TRIGGER_INST|xint\(8) & (\ACTIVE_TRIGGER_INST|xint\(9) & \ACTIVE_TRIGGER_INST|xint[10]~0\)))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(10),
	datab => \ACTIVE_TRIGGER_INST|xint\(8),
	datac => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(10));

-- Location: LC_X1_Y4_N1
\ACTIVE_TRIGGER_INST|Mux0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~0\ = (((\ACTIVE_TRIGGER_INST|xint\(9) & \ACTIVE_TRIGGER_INST|xint\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~0\);

-- Location: LC_X1_Y4_N4
\ACTIVE_TRIGGER_INST|Mux0~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~1\ = (((!\ACTIVE_TRIGGER_INST|xint\(9) & \ACTIVE_TRIGGER_INST|Mux0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~1\);

-- Location: LC_X1_Y4_N0
\ACTIVE_TRIGGER_INST|Mux0~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~2\ = (((\ACTIVE_TRIGGER_INST|xint\(9) & \ACTIVE_TRIGGER_INST|xint\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~2\);

-- Location: LC_X1_Y4_N3
\ACTIVE_TRIGGER_INST|Mux0~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~3\ = ((!\ACTIVE_TRIGGER_INST|xint\(9) & (\ACTIVE_TRIGGER_INST|Mux0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|Mux0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~3\);

-- Location: LC_X1_Y4_N5
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\ = (\ACTIVE_TRIGGER_INST|xint\(10) & (((!\ACTIVE_TRIGGER_INST|Mux0~3\)))) # (!\ACTIVE_TRIGGER_INST|xint\(10) & (((!\ACTIVE_TRIGGER_INST|Mux0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|Mux0~1\,
	datad => \ACTIVE_TRIGGER_INST|Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\);

-- Location: LC_X1_Y4_N6
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\ = ((\ACTIVE_TRIGGER_INST|trigger_to_host_flag\) # ((\ACTIVE_TRIGGER_INST|Equal1~4\) # (!\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\);

-- Location: LC_X1_Y5_N6
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6) = DFFEAS((D1_previous_to_trigupdate[6] & ((\ACTIVE_TRIGGER_INST|xint\(8)) # ((!\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(9))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6));

-- Location: LC_X1_Y5_N9
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7) = DFFEAS((D1_previous_to_trigupdate[7] & (((!\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(9))) # (!\ACTIVE_TRIGGER_INST|xint\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7));

-- Location: LC_X1_Y5_N7
\ACTIVE_TRIGGER_INST|Equal1~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~3\ = (!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6) & (((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~3\);

-- Location: LC_X1_Y5_N5
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1) = DFFEAS((D1_previous_to_trigupdate[1] & (((\ACTIVE_TRIGGER_INST|xint\(9)) # (\ACTIVE_TRIGGER_INST|xint\(10))) # (!\ACTIVE_TRIGGER_INST|xint\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1));

-- Location: LC_X1_Y5_N4
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0) = DFFEAS((D1_previous_to_trigupdate[0] & ((\ACTIVE_TRIGGER_INST|xint\(8)) # ((\ACTIVE_TRIGGER_INST|xint\(9)) # (\ACTIVE_TRIGGER_INST|xint\(10))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0));

-- Location: LC_X1_Y5_N8
\ACTIVE_TRIGGER_INST|Equal1~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~0\ = (!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1) & (((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~0\);

-- Location: LC_X1_Y5_N1
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2) = DFFEAS((D1_previous_to_trigupdate[2] & ((\ACTIVE_TRIGGER_INST|xint\(8)) # ((\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(9))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2));

-- Location: LC_X1_Y5_N3
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3) = DFFEAS((D1_previous_to_trigupdate[3] & (((\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(9))) # (!\ACTIVE_TRIGGER_INST|xint\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3));

-- Location: LC_X1_Y6_N6
\ACTIVE_TRIGGER_INST|Equal1~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~1\ = (((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2) & !\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2),
	datad => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~1\);

-- Location: LC_X1_Y5_N2
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4) = DFFEAS((D1_previous_to_trigupdate[4] & ((\ACTIVE_TRIGGER_INST|xint\(8)) # ((\ACTIVE_TRIGGER_INST|xint\(9)) # (!\ACTIVE_TRIGGER_INST|xint\(10))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4));

-- Location: LC_X1_Y5_N0
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5) = DFFEAS((D1_previous_to_trigupdate[5] & (((\ACTIVE_TRIGGER_INST|xint\(9)) # (!\ACTIVE_TRIGGER_INST|xint\(10))) # (!\ACTIVE_TRIGGER_INST|xint\(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(8),
	datab => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5),
	datad => \ACTIVE_TRIGGER_INST|xint\(10),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5));

-- Location: LC_X1_Y6_N8
\ACTIVE_TRIGGER_INST|Equal1~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~2\ = (((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4) & !\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4),
	datad => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~2\);

-- Location: LC_X1_Y6_N3
\ACTIVE_TRIGGER_INST|Equal1~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~4\ = (\ACTIVE_TRIGGER_INST|Equal1~3\ & (\ACTIVE_TRIGGER_INST|Equal1~0\ & (\ACTIVE_TRIGGER_INST|Equal1~1\ & \ACTIVE_TRIGGER_INST|Equal1~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|Equal1~3\,
	datab => \ACTIVE_TRIGGER_INST|Equal1~0\,
	datac => \ACTIVE_TRIGGER_INST|Equal1~1\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~4\);

-- Location: LC_X1_Y6_N4
\ACTIVE_TRIGGER_INST|to_trigupdate~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate\ = DFFEAS(((!\ACTIVE_TRIGGER_INST|trigger_to_host_flag\ & (\ACTIVE_TRIGGER_INST|to_trigupdate\ & !\ACTIVE_TRIGGER_INST|Equal1~4\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~4\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate\);

-- Location: LC_X8_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\);

-- Location: LC_X5_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ = (((H1_uc_in_command[2] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(2));

-- Location: LC_X5_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0));

-- Location: LC_X5_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\);

-- Location: LC_X8_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\);

-- Location: LC_X5_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\ = (((H1_uc_in_payload[3] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(3));

-- Location: LC_X5_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1));

-- Location: LC_X5_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\);

-- Location: LC_X5_Y5_N8
\ACTIVE_TRIGGER_INST|trigger_to_device~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~3\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~3\);

-- Location: LC_X5_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\ = (((H1_uc_in_payload[2] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(2));

-- Location: LC_X5_Y5_N0
\ACTIVE_TRIGGER_INST|trigger_to_device~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~2\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~2\);

-- Location: LC_X7_Y7_N7
adc_convst_cmd_reg : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_reg~regout\ = DFFEAS((\adc_convst_cmd_reg~regout\ & (((!\ACTIVE_TRIGGER_INST|trigger_to_device~3\)))) # (!\adc_convst_cmd_reg~regout\ & (((\ACTIVE_TRIGGER_INST|trigger_to_device~2\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_reg~regout\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_convst_cmd_reg~regout\);

-- Location: LC_X10_Y2_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\ = (((H1_uc_in_payload[7] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(7));

-- Location: LC_X5_Y4_N6
\ACTIVE_TRANSFER_INST_1|state_in[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(3) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_INST_1|state_in\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(3));

-- Location: LC_X8_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\);

-- Location: LC_X5_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\ = (((H1_uc_in_address[1] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(1));

-- Location: LC_X5_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\ = (((H1_uc_in_address[0] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(0));

-- Location: LC_X5_Y7_N5
\ACTIVE_TRANSFER_INST_1|next_in~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|next_in~1\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|next_in~1\);

-- Location: LC_X5_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\ = (((H1_uc_in_address[2] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(2));

-- Location: LC_X5_Y7_N7
\ACTIVE_TRANSFER_INST_1|next_in~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|next_in~2\ = (((\ACTIVE_TRANSFER_INST_1|next_in~1\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_INST_1|next_in~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|next_in~2\);

-- Location: LC_X5_Y4_N4
\ACTIVE_TRANSFER_INST_1|state_in[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(0) = DFFEAS(((!\ACTIVE_TRANSFER_INST_1|state_in\(3) & ((\ACTIVE_TRANSFER_INST_1|state_in\(0)) # (\ACTIVE_TRANSFER_INST_1|next_in~2\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(3),
	datad => \ACTIVE_TRANSFER_INST_1|next_in~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(0));

-- Location: LC_X5_Y4_N7
\ACTIVE_TRANSFER_INST_1|next_in[2]~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|next_in[2]~4\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|next_in[2]~4\);

-- Location: LC_X5_Y4_N2
\ACTIVE_TRANSFER_INST_1|state_in[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(1) = DFFEAS((\ACTIVE_TRANSFER_INST_1|state_in\(0) & (\ACTIVE_TRANSFER_INST_1|state_in\(1) & (!\ACTIVE_TRANSFER_INST_1|next_in[2]~4\))) # (!\ACTIVE_TRANSFER_INST_1|state_in\(0) & ((\ACTIVE_TRANSFER_INST_1|next_in~2\) # 
-- ((\ACTIVE_TRANSFER_INST_1|state_in\(1) & !\ACTIVE_TRANSFER_INST_1|next_in[2]~4\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datab => \ACTIVE_TRANSFER_INST_1|state_in\(1),
	datac => \ACTIVE_TRANSFER_INST_1|next_in[2]~4\,
	datad => \ACTIVE_TRANSFER_INST_1|next_in~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(1));

-- Location: LC_X5_Y4_N0
\ACTIVE_TRANSFER_INST_1|state_in[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & \ACTIVE_TRANSFER_INST_1|state_in\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datad => \ACTIVE_TRANSFER_INST_1|state_in\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(2));

-- Location: LC_X2_Y4_N8
\ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\);

-- Location: LC_X5_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\ = (((H1_uc_in_payload[4] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(4));

-- Location: LC_X5_Y5_N9
\ACTIVE_TRIGGER_INST|trigger_to_device~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~4\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~4\);

-- Location: LC_X5_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ = (((H1_uc_in_payload[5] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(5));

-- Location: LC_X3_Y4_N8
\ACTIVE_TRIGGER_INST|trigger_to_device~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~5\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~5\);

-- Location: LC_X3_Y4_N9
\adc_convst_delay_value[15]~0\ : maxv_lcell
-- Equation(s):
-- \adc_convst_delay_value[15]~0_combout\ = (((!\ACTIVE_TRIGGER_INST|trigger_to_device~4\ & \ACTIVE_TRIGGER_INST|trigger_to_device~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_delay_value[15]~0_combout\);

-- Location: LC_X4_Y4_N3
\adc_convst_delay_value[15]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(15) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(15));

-- Location: LC_X5_Y5_N5
\adc_cnvst_reg~16\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg~16_combout\ = ((\adc_convst_cmd_reg~regout\ & (!\ACTIVE_TRIGGER_INST|trigger_to_device~3\)) # (!\adc_convst_cmd_reg~regout\ & ((!\ACTIVE_TRIGGER_INST|trigger_to_device~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	datad => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_cnvst_reg~16_combout\);

-- Location: LC_X7_Y7_N9
\adc_cnvst_reg~19\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg~19_combout\ = (!\adc_convst_cmd_reg~regout\ & (((\adc_cnvst_reg.01~regout\ & !\ACTIVE_TRIGGER_INST|trigger_to_device~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datac => \adc_cnvst_reg.01~regout\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_cnvst_reg~19_combout\);

-- Location: LC_X7_Y7_N0
\adc_cnvst_reg.01\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg.01~regout\ = DFFEAS((\adc_cnvst_reg~19_combout\) # ((!\ACTIVE_TRIGGER_INST|trigger_to_device~3\ & (\adc_convst_cmd_count~0_combout\ & !\LessThan0~0_combout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \adc_cnvst_reg~19_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_cnvst_reg.01~regout\);

-- Location: LC_X7_Y7_N4
\adc_cnvst_reg.11\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg.11~regout\ = DFFEAS((\adc_cnvst_reg.10~regout\ & ((\adc_convst_cmd_reg~regout\ & (!\ACTIVE_TRIGGER_INST|trigger_to_device~3\)) # (!\adc_convst_cmd_reg~regout\ & ((!\ACTIVE_TRIGGER_INST|trigger_to_device~2\))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , \adc_cnvst_reg~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "084c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.10~regout\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_cnvst_reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_cnvst_reg.11~regout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_EOC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_EOC,
	combout => \ADC_EOC~combout\);

-- Location: LC_X9_Y7_N3
adc_eoc_reg : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg~17\ = ((\adc_convst_cmd_reg~regout\ & (!adc_eoc_reg & \adc_cnvst_reg.11~regout\))) # (!\adc_cnvst_reg~16_combout\)
-- \adc_eoc_reg~regout\ = DFFEAS(\adc_cnvst_reg~17\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ADC_EOC~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b33",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \ADC_EOC~combout\,
	datad => \adc_cnvst_reg.11~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_cnvst_reg~17\,
	regout => \adc_eoc_reg~regout\);

-- Location: LC_X9_Y7_N2
\adc_cnvst_reg~22\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg~22_combout\ = (\adc_cnvst_reg.00~regout\ & (((!\adc_eoc_reg~regout\)) # (!\adc_cnvst_reg.11~regout\))) # (!\adc_cnvst_reg.00~regout\ & (!\LessThan0~0_combout\ & ((!\adc_eoc_reg~regout\) # (!\adc_cnvst_reg.11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.00~regout\,
	datab => \adc_cnvst_reg.11~regout\,
	datac => \adc_eoc_reg~regout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_cnvst_reg~22_combout\);

-- Location: LC_X7_Y7_N6
\adc_cnvst_reg~24\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg~24_combout\ = (\adc_convst_cmd_reg~regout\ & ((\adc_cnvst_reg~22_combout\) # ((\ACTIVE_TRIGGER_INST|trigger_to_device~3\)))) # (!\adc_convst_cmd_reg~regout\ & (((\ACTIVE_TRIGGER_INST|trigger_to_device~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg~22_combout\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_cnvst_reg~24_combout\);

-- Location: LC_X7_Y7_N8
\adc_cnvst_reg.10\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg.10~regout\ = DFFEAS((\adc_cnvst_reg.01~regout\ & ((\adc_convst_cmd_reg~regout\ & (!\ACTIVE_TRIGGER_INST|trigger_to_device~3\)) # (!\adc_convst_cmd_reg~regout\ & ((!\ACTIVE_TRIGGER_INST|trigger_to_device~2\))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , \adc_cnvst_reg~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "084c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_cnvst_reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_cnvst_reg.10~regout\);

-- Location: LC_X9_Y6_N4
\adc_convst_cmd_count~31\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~31_combout\ = (adc_convst_cmd_count(0) & ((\adc_cnvst_reg.10~regout\) # ((\adc_cnvst_reg.01~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.10~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(0),
	datad => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~31_combout\);

-- Location: LC_X3_Y7_N2
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = \LessThan0~0_combout\ $ ((adc_convst_cmd_count(0)))
-- \Add0~77\ = CARRY((\LessThan0~0_combout\ & (adc_convst_cmd_count(0))))
-- \Add0~77COUT1_81\ = CARRY((\LessThan0~0_combout\ & (adc_convst_cmd_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => adc_convst_cmd_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_81\);

-- Location: LC_X3_Y7_N1
\adc_convst_cmd_count[0]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(0) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~31_combout\) # ((\Add0~75_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_count~31_combout\,
	datab => \Add0~75_combout\,
	datac => \adc_cnvst_reg~16_combout\,
	datad => \adc_convst_cmd_count~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(0));

-- Location: LC_X3_Y7_N3
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (adc_convst_cmd_count(1) $ ((\Add0~77\)))
-- \Add0~72\ = CARRY(((!\Add0~77\) # (!adc_convst_cmd_count(1))))
-- \Add0~72COUT1_82\ = CARRY(((!\Add0~77COUT1_81\) # (!adc_convst_cmd_count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(1),
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_82\);

-- Location: LC_X2_Y6_N8
\adc_convst_cmd_count~29\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~29_combout\ = (adc_convst_cmd_count(1) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(1),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~29_combout\);

-- Location: LC_X2_Y6_N2
\adc_convst_cmd_count[1]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(1) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~29_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~70_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \Add0~70_combout\,
	datad => \adc_convst_cmd_count~29_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(1));

-- Location: LC_X3_Y7_N4
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (adc_convst_cmd_count(2) $ ((!\Add0~72\)))
-- \Add0~67\ = CARRY(((adc_convst_cmd_count(2) & !\Add0~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(2),
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X2_Y7_N3
\adc_convst_cmd_count~27\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~27_combout\ = (adc_convst_cmd_count(2) & ((\adc_cnvst_reg.01~regout\) # ((\adc_cnvst_reg.10~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.01~regout\,
	datab => \adc_convst_cmd_reg~regout\,
	datac => adc_convst_cmd_count(2),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~27_combout\);

-- Location: LC_X2_Y7_N0
\adc_convst_cmd_count[2]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(2) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~27_combout\) # ((\Add0~65_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \Add0~65_combout\,
	datac => \adc_convst_cmd_count~0_combout\,
	datad => \adc_convst_cmd_count~27_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(2));

-- Location: LC_X9_Y6_N6
\adc_convst_cmd_count~23\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~23_combout\ = (adc_convst_cmd_count(4) & ((\adc_cnvst_reg.10~regout\) # ((\adc_cnvst_reg.01~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.10~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(4),
	datad => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~23_combout\);

-- Location: LC_X3_Y7_N5
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (adc_convst_cmd_count(3) $ ((\Add0~67\)))
-- \Add0~62\ = CARRY(((!\Add0~67\) # (!adc_convst_cmd_count(3))))
-- \Add0~62COUT1_83\ = CARRY(((!\Add0~67\) # (!adc_convst_cmd_count(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(3),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_83\);

-- Location: LC_X2_Y7_N2
\adc_convst_cmd_count~25\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~25_combout\ = (adc_convst_cmd_count(3) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(3),
	datab => \adc_convst_cmd_reg~regout\,
	datac => \adc_cnvst_reg.01~regout\,
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~25_combout\);

-- Location: LC_X2_Y7_N6
\adc_convst_cmd_count[3]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(3) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~25_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~60_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_count~0_combout\,
	datab => \Add0~60_combout\,
	datac => \adc_cnvst_reg~16_combout\,
	datad => \adc_convst_cmd_count~25_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(3));

-- Location: LC_X3_Y7_N6
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (adc_convst_cmd_count(4) $ ((!(!\Add0~67\ & \Add0~62\) # (\Add0~67\ & \Add0~62COUT1_83\))))
-- \Add0~57\ = CARRY(((adc_convst_cmd_count(4) & !\Add0~62\)))
-- \Add0~57COUT1_84\ = CARRY(((adc_convst_cmd_count(4) & !\Add0~62COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(4),
	cin => \Add0~67\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_84\);

-- Location: LC_X3_Y7_N0
\adc_convst_cmd_count[4]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(4) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~23_combout\) # ((\Add0~55_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \adc_convst_cmd_count~23_combout\,
	datac => \Add0~55_combout\,
	datad => \adc_convst_cmd_count~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(4));

-- Location: LC_X3_Y7_N7
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (adc_convst_cmd_count(5) $ (((!\Add0~67\ & \Add0~57\) # (\Add0~67\ & \Add0~57COUT1_84\))))
-- \Add0~52\ = CARRY(((!\Add0~57\) # (!adc_convst_cmd_count(5))))
-- \Add0~52COUT1_85\ = CARRY(((!\Add0~57COUT1_84\) # (!adc_convst_cmd_count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(5),
	cin => \Add0~67\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_85\);

-- Location: LC_X2_Y7_N9
\adc_convst_cmd_count~21\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~21_combout\ = (adc_convst_cmd_count(5) & ((\adc_cnvst_reg.01~regout\) # ((\adc_cnvst_reg.10~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.01~regout\,
	datab => \adc_convst_cmd_reg~regout\,
	datac => adc_convst_cmd_count(5),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~21_combout\);

-- Location: LC_X2_Y7_N7
\adc_convst_cmd_count[5]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(5) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~21_combout\) # ((\Add0~50_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Add0~50_combout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \adc_convst_cmd_count~0_combout\,
	datad => \adc_convst_cmd_count~21_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(5));

-- Location: LC_X3_Y7_N8
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = adc_convst_cmd_count(6) $ ((((!(!\Add0~67\ & \Add0~52\) # (\Add0~67\ & \Add0~52COUT1_85\)))))
-- \Add0~47\ = CARRY((adc_convst_cmd_count(6) & ((!\Add0~52\))))
-- \Add0~47COUT1_86\ = CARRY((adc_convst_cmd_count(6) & ((!\Add0~52COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(6),
	cin => \Add0~67\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_86\);

-- Location: LC_X2_Y7_N4
\adc_convst_cmd_count~19\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~19_combout\ = (adc_convst_cmd_count(6) & ((\adc_cnvst_reg.01~regout\) # ((\adc_cnvst_reg.10~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.01~regout\,
	datab => \adc_convst_cmd_reg~regout\,
	datac => adc_convst_cmd_count(6),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~19_combout\);

-- Location: LC_X2_Y7_N5
\adc_convst_cmd_count[6]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(6) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~19_combout\) # ((\Add0~45_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \Add0~45_combout\,
	datac => \adc_convst_cmd_count~0_combout\,
	datad => \adc_convst_cmd_count~19_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(6));

-- Location: LC_X3_Y7_N9
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = adc_convst_cmd_count(7) $ (((((!\Add0~67\ & \Add0~47\) # (\Add0~67\ & \Add0~47COUT1_86\)))))
-- \Add0~42\ = CARRY(((!\Add0~47COUT1_86\)) # (!adc_convst_cmd_count(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(7),
	cin => \Add0~67\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X3_Y6_N1
\adc_convst_cmd_count~17\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~17_combout\ = (adc_convst_cmd_count(7) & ((\adc_cnvst_reg.01~regout\) # ((\adc_cnvst_reg.10~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.01~regout\,
	datab => \adc_convst_cmd_reg~regout\,
	datac => adc_convst_cmd_count(7),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~17_combout\);

-- Location: LC_X3_Y6_N0
\adc_convst_cmd_count[7]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(7) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~17_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~40_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_count~0_combout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \Add0~40_combout\,
	datad => \adc_convst_cmd_count~17_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(7));

-- Location: LC_X4_Y7_N0
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = adc_convst_cmd_count(8) $ ((((!\Add0~42\))))
-- \Add0~37\ = CARRY((adc_convst_cmd_count(8) & ((!\Add0~42\))))
-- \Add0~37COUT1_87\ = CARRY((adc_convst_cmd_count(8) & ((!\Add0~42\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(8),
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_87\);

-- Location: LC_X2_Y6_N7
\adc_convst_cmd_count~15\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~15_combout\ = (adc_convst_cmd_count(8) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(8),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~15_combout\);

-- Location: LC_X2_Y6_N0
\adc_convst_cmd_count[8]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(8) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~15_combout\) # ((\Add0~35_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \Add0~35_combout\,
	datac => \adc_convst_cmd_count~15_combout\,
	datad => \adc_convst_cmd_count~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(8));

-- Location: LC_X4_Y7_N1
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (adc_convst_cmd_count(9) $ (((!\Add0~42\ & \Add0~37\) # (\Add0~42\ & \Add0~37COUT1_87\))))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!adc_convst_cmd_count(9))))
-- \Add0~32COUT1_88\ = CARRY(((!\Add0~37COUT1_87\) # (!adc_convst_cmd_count(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(9),
	cin => \Add0~42\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_88\);

-- Location: LC_X9_Y7_N0
\adc_convst_cmd_count~13\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~13_combout\ = (adc_convst_cmd_count(9) & ((\adc_cnvst_reg.10~regout\) # ((\adc_cnvst_reg.01~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.10~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => \adc_convst_cmd_reg~regout\,
	datad => adc_convst_cmd_count(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~13_combout\);

-- Location: LC_X9_Y7_N1
\adc_convst_cmd_count[9]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(9) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~13_combout\) # ((\Add0~30_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Add0~30_combout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \adc_convst_cmd_count~13_combout\,
	datad => \adc_cnvst_reg~16_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(9));

-- Location: LC_X4_Y7_N2
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = adc_convst_cmd_count(10) $ ((((!(!\Add0~42\ & \Add0~32\) # (\Add0~42\ & \Add0~32COUT1_88\)))))
-- \Add0~27\ = CARRY((adc_convst_cmd_count(10) & ((!\Add0~32\))))
-- \Add0~27COUT1_89\ = CARRY((adc_convst_cmd_count(10) & ((!\Add0~32COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(10),
	cin => \Add0~42\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_89\);

-- Location: LC_X9_Y7_N8
\adc_convst_cmd_count~11\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~11_combout\ = (adc_convst_cmd_count(10) & ((\adc_cnvst_reg.10~regout\) # ((\adc_cnvst_reg.01~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.10~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(10),
	datad => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~11_combout\);

-- Location: LC_X9_Y7_N4
\adc_convst_cmd_count[10]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(10) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~11_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~25_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_count~0_combout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \Add0~25_combout\,
	datad => \adc_convst_cmd_count~11_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(10));

-- Location: LC_X4_Y7_N3
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (adc_convst_cmd_count(11) $ (((!\Add0~42\ & \Add0~27\) # (\Add0~42\ & \Add0~27COUT1_89\))))
-- \Add0~22\ = CARRY(((!\Add0~27\) # (!adc_convst_cmd_count(11))))
-- \Add0~22COUT1_90\ = CARRY(((!\Add0~27COUT1_89\) # (!adc_convst_cmd_count(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(11),
	cin => \Add0~42\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_90\);

-- Location: LC_X2_Y7_N8
\adc_convst_cmd_count~9\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~9_combout\ = (adc_convst_cmd_count(11) & ((\adc_cnvst_reg.01~regout\) # ((\adc_cnvst_reg.10~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.01~regout\,
	datab => \adc_convst_cmd_reg~regout\,
	datac => adc_convst_cmd_count(11),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~9_combout\);

-- Location: LC_X2_Y7_N1
\adc_convst_cmd_count[11]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(11) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~9_combout\) # ((\Add0~20_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \Add0~20_combout\,
	datac => \adc_convst_cmd_count~0_combout\,
	datad => \adc_convst_cmd_count~9_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(11));

-- Location: LC_X4_Y7_N4
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = adc_convst_cmd_count(12) $ ((((!(!\Add0~42\ & \Add0~22\) # (\Add0~42\ & \Add0~22COUT1_90\)))))
-- \Add0~17\ = CARRY((adc_convst_cmd_count(12) & ((!\Add0~22COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(12),
	cin => \Add0~42\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X4_Y7_N9
\adc_convst_cmd_count~7\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~7_combout\ = (adc_convst_cmd_count(12) & ((\adc_cnvst_reg.10~regout\) # ((\adc_cnvst_reg.01~regout\) # (!\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(12),
	datab => \adc_cnvst_reg.10~regout\,
	datac => \adc_convst_cmd_reg~regout\,
	datad => \adc_cnvst_reg.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~7_combout\);

-- Location: LC_X4_Y7_N8
\adc_convst_cmd_count[12]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(12) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~7_combout\) # ((\Add0~15_combout\ & \adc_convst_cmd_count~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Add0~15_combout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \adc_convst_cmd_count~0_combout\,
	datad => \adc_convst_cmd_count~7_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(12));

-- Location: LC_X4_Y7_N5
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (adc_convst_cmd_count(13) $ ((\Add0~17\)))
-- \Add0~12\ = CARRY(((!\Add0~17\) # (!adc_convst_cmd_count(13))))
-- \Add0~12COUT1_91\ = CARRY(((!\Add0~17\) # (!adc_convst_cmd_count(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(13),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_91\);

-- Location: LC_X2_Y6_N9
\adc_convst_cmd_count~5\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~5_combout\ = (adc_convst_cmd_count(13) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(13),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~5_combout\);

-- Location: LC_X2_Y6_N6
\adc_convst_cmd_count[13]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(13) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~5_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~10_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \Add0~10_combout\,
	datad => \adc_convst_cmd_count~5_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(13));

-- Location: LC_X4_Y7_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (adc_convst_cmd_count(14) $ ((!(!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_91\))))
-- \Add0~7\ = CARRY(((adc_convst_cmd_count(14) & !\Add0~12\)))
-- \Add0~7COUT1_92\ = CARRY(((adc_convst_cmd_count(14) & !\Add0~12COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => adc_convst_cmd_count(14),
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_92\);

-- Location: LC_X2_Y6_N1
\adc_convst_cmd_count~3\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~3_combout\ = (adc_convst_cmd_count(14) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(14),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~3_combout\);

-- Location: LC_X2_Y6_N3
\adc_convst_cmd_count[14]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(14) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~3_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~5_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \Add0~5_combout\,
	datad => \adc_convst_cmd_count~3_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(14));

-- Location: LC_X4_Y7_N7
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((!\Add0~17\ & \Add0~7\) # (\Add0~17\ & \Add0~7COUT1_92\) $ (adc_convst_cmd_count(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => adc_convst_cmd_count(15),
	cin => \Add0~17\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X2_Y6_N4
\adc_convst_cmd_count~1\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~1_combout\ = (adc_convst_cmd_count(15) & (((\adc_cnvst_reg.01~regout\) # (\adc_cnvst_reg.10~regout\)) # (!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => adc_convst_cmd_count(15),
	datad => \adc_cnvst_reg.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~1_combout\);

-- Location: LC_X2_Y6_N5
\adc_convst_cmd_count[15]\ : maxv_lcell
-- Equation(s):
-- adc_convst_cmd_count(15) = DFFEAS((\adc_cnvst_reg~16_combout\ & ((\adc_convst_cmd_count~1_combout\) # ((\adc_convst_cmd_count~0_combout\ & \Add0~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg~16_combout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \Add0~0_combout\,
	datad => \adc_convst_cmd_count~1_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_cmd_count(15));

-- Location: LC_X5_Y5_N3
\ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\);

-- Location: LC_X4_Y4_N7
\adc_convst_delay_value[12]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(12) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(12));

-- Location: LC_X2_Y4_N5
\adc_convst_delay_value[7]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(7) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(7));

-- Location: LC_X5_Y5_N7
\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\);

-- Location: LC_X3_Y5_N8
\adc_convst_delay_value[2]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(2) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(2));

-- Location: LC_X5_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\ = (((H1_uc_in_payload[1] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(1));

-- Location: LC_X2_Y4_N1
\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\);

-- Location: LC_X2_Y4_N7
\adc_convst_delay_value[1]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(1) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(1));

-- Location: LC_X5_Y6_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\ = (((H1_uc_in_payload[0] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(0));

-- Location: LC_X2_Y4_N3
\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\);

-- Location: LC_X2_Y4_N0
\adc_convst_delay_value[0]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(0) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(0));

-- Location: LC_X3_Y6_N2
\LessThan0~77\ : maxv_lcell
-- Equation(s):
-- \LessThan0~77_cout0\ = CARRY((!adc_convst_cmd_count(0) & (adc_convst_delay_value(0))))
-- \LessThan0~77COUT1_81\ = CARRY((!adc_convst_cmd_count(0) & (adc_convst_delay_value(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(0),
	datab => adc_convst_delay_value(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~75\,
	cout0 => \LessThan0~77_cout0\,
	cout1 => \LessThan0~77COUT1_81\);

-- Location: LC_X3_Y6_N3
\LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \LessThan0~72_cout0\ = CARRY((adc_convst_delay_value(1) & (adc_convst_cmd_count(1) & !\LessThan0~77_cout0\)) # (!adc_convst_delay_value(1) & ((adc_convst_cmd_count(1)) # (!\LessThan0~77_cout0\))))
-- \LessThan0~72COUT1_82\ = CARRY((adc_convst_delay_value(1) & (adc_convst_cmd_count(1) & !\LessThan0~77COUT1_81\)) # (!adc_convst_delay_value(1) & ((adc_convst_cmd_count(1)) # (!\LessThan0~77COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(1),
	datab => adc_convst_cmd_count(1),
	cin0 => \LessThan0~77_cout0\,
	cin1 => \LessThan0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~70\,
	cout0 => \LessThan0~72_cout0\,
	cout1 => \LessThan0~72COUT1_82\);

-- Location: LC_X3_Y6_N4
\LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \LessThan0~67_cout\ = CARRY((adc_convst_cmd_count(2) & (!adc_convst_delay_value(2) & !\LessThan0~72COUT1_82\)) # (!adc_convst_cmd_count(2) & ((!\LessThan0~72COUT1_82\) # (!adc_convst_delay_value(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff17",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(2),
	datab => adc_convst_delay_value(2),
	cin0 => \LessThan0~72_cout0\,
	cin1 => \LessThan0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~65\,
	cout => \LessThan0~67_cout\);

-- Location: LC_X10_Y2_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\ = (((H1_uc_in_payload[6] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(6));

-- Location: LC_X2_Y4_N4
\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\);

-- Location: LC_X2_Y4_N2
\adc_convst_delay_value[6]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(6) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(6));

-- Location: LC_X2_Y4_N9
\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\);

-- Location: LC_X2_Y4_N6
\adc_convst_delay_value[5]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(5) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(5));

-- Location: LC_X3_Y5_N9
\adc_convst_delay_value[4]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(4) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(4));

-- Location: LC_X5_Y5_N6
\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\);

-- Location: LC_X3_Y5_N0
\adc_convst_delay_value[3]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(3) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(3));

-- Location: LC_X3_Y6_N5
\LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \LessThan0~62_cout0\ = CARRY((adc_convst_cmd_count(3) & ((!\LessThan0~67_cout\) # (!adc_convst_delay_value(3)))) # (!adc_convst_cmd_count(3) & (!adc_convst_delay_value(3) & !\LessThan0~67_cout\)))
-- \LessThan0~62COUT1_83\ = CARRY((adc_convst_cmd_count(3) & ((!\LessThan0~67_cout\) # (!adc_convst_delay_value(3)))) # (!adc_convst_cmd_count(3) & (!adc_convst_delay_value(3) & !\LessThan0~67_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(3),
	datab => adc_convst_delay_value(3),
	cin => \LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~60\,
	cout0 => \LessThan0~62_cout0\,
	cout1 => \LessThan0~62COUT1_83\);

-- Location: LC_X3_Y6_N6
\LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \LessThan0~57_cout0\ = CARRY((adc_convst_delay_value(4) & ((!\LessThan0~62_cout0\) # (!adc_convst_cmd_count(4)))) # (!adc_convst_delay_value(4) & (!adc_convst_cmd_count(4) & !\LessThan0~62_cout0\)))
-- \LessThan0~57COUT1_84\ = CARRY((adc_convst_delay_value(4) & ((!\LessThan0~62COUT1_83\) # (!adc_convst_cmd_count(4)))) # (!adc_convst_delay_value(4) & (!adc_convst_cmd_count(4) & !\LessThan0~62COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(4),
	datab => adc_convst_cmd_count(4),
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~62_cout0\,
	cin1 => \LessThan0~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~55\,
	cout0 => \LessThan0~57_cout0\,
	cout1 => \LessThan0~57COUT1_84\);

-- Location: LC_X3_Y6_N7
\LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \LessThan0~52_cout0\ = CARRY((adc_convst_delay_value(5) & ((adc_convst_cmd_count(5)) # (!\LessThan0~57_cout0\))) # (!adc_convst_delay_value(5) & (adc_convst_cmd_count(5) & !\LessThan0~57_cout0\)))
-- \LessThan0~52COUT1_85\ = CARRY((adc_convst_delay_value(5) & ((adc_convst_cmd_count(5)) # (!\LessThan0~57COUT1_84\))) # (!adc_convst_delay_value(5) & (adc_convst_cmd_count(5) & !\LessThan0~57COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(5),
	datab => adc_convst_cmd_count(5),
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~57_cout0\,
	cin1 => \LessThan0~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~50\,
	cout0 => \LessThan0~52_cout0\,
	cout1 => \LessThan0~52COUT1_85\);

-- Location: LC_X3_Y6_N8
\LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \LessThan0~47_cout0\ = CARRY((adc_convst_delay_value(6) & (!adc_convst_cmd_count(6) & !\LessThan0~52_cout0\)) # (!adc_convst_delay_value(6) & ((!\LessThan0~52_cout0\) # (!adc_convst_cmd_count(6)))))
-- \LessThan0~47COUT1_86\ = CARRY((adc_convst_delay_value(6) & (!adc_convst_cmd_count(6) & !\LessThan0~52COUT1_85\)) # (!adc_convst_delay_value(6) & ((!\LessThan0~52COUT1_85\) # (!adc_convst_cmd_count(6)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff17",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(6),
	datab => adc_convst_cmd_count(6),
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~52_cout0\,
	cin1 => \LessThan0~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~45\,
	cout0 => \LessThan0~47_cout0\,
	cout1 => \LessThan0~47COUT1_86\);

-- Location: LC_X3_Y6_N9
\LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \LessThan0~42_cout\ = CARRY((adc_convst_delay_value(7) & ((adc_convst_cmd_count(7)) # (!\LessThan0~47COUT1_86\))) # (!adc_convst_delay_value(7) & (adc_convst_cmd_count(7) & !\LessThan0~47COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(7),
	datab => adc_convst_cmd_count(7),
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~47_cout0\,
	cin1 => \LessThan0~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~40\,
	cout => \LessThan0~42_cout\);

-- Location: LC_X4_Y4_N1
\adc_convst_delay_value[11]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(11) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(11));

-- Location: LC_X3_Y4_N5
\adc_convst_delay_value[10]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(10) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(10));

-- Location: LC_X4_Y4_N8
\adc_convst_delay_value[9]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(9) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(9));

-- Location: LC_X3_Y4_N0
\adc_convst_delay_value[8]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(8) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(8));

-- Location: LC_X4_Y6_N0
\LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \LessThan0~37_cout0\ = CARRY((adc_convst_cmd_count(8) & (adc_convst_delay_value(8) & !\LessThan0~42_cout\)) # (!adc_convst_cmd_count(8) & ((adc_convst_delay_value(8)) # (!\LessThan0~42_cout\))))
-- \LessThan0~37COUT1_87\ = CARRY((adc_convst_cmd_count(8) & (adc_convst_delay_value(8) & !\LessThan0~42_cout\)) # (!adc_convst_cmd_count(8) & ((adc_convst_delay_value(8)) # (!\LessThan0~42_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(8),
	datab => adc_convst_delay_value(8),
	cin => \LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~35\,
	cout0 => \LessThan0~37_cout0\,
	cout1 => \LessThan0~37COUT1_87\);

-- Location: LC_X4_Y6_N1
\LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \LessThan0~32_cout0\ = CARRY((adc_convst_cmd_count(9) & ((!\LessThan0~37_cout0\) # (!adc_convst_delay_value(9)))) # (!adc_convst_cmd_count(9) & (!adc_convst_delay_value(9) & !\LessThan0~37_cout0\)))
-- \LessThan0~32COUT1_88\ = CARRY((adc_convst_cmd_count(9) & ((!\LessThan0~37COUT1_87\) # (!adc_convst_delay_value(9)))) # (!adc_convst_cmd_count(9) & (!adc_convst_delay_value(9) & !\LessThan0~37COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(9),
	datab => adc_convst_delay_value(9),
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~37_cout0\,
	cin1 => \LessThan0~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~30\,
	cout0 => \LessThan0~32_cout0\,
	cout1 => \LessThan0~32COUT1_88\);

-- Location: LC_X4_Y6_N2
\LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \LessThan0~27_cout0\ = CARRY((adc_convst_delay_value(10) & (!adc_convst_cmd_count(10) & !\LessThan0~32_cout0\)) # (!adc_convst_delay_value(10) & ((!\LessThan0~32_cout0\) # (!adc_convst_cmd_count(10)))))
-- \LessThan0~27COUT1_89\ = CARRY((adc_convst_delay_value(10) & (!adc_convst_cmd_count(10) & !\LessThan0~32COUT1_88\)) # (!adc_convst_delay_value(10) & ((!\LessThan0~32COUT1_88\) # (!adc_convst_cmd_count(10)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff17",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(10),
	datab => adc_convst_cmd_count(10),
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~32_cout0\,
	cin1 => \LessThan0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~25\,
	cout0 => \LessThan0~27_cout0\,
	cout1 => \LessThan0~27COUT1_89\);

-- Location: LC_X4_Y6_N3
\LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \LessThan0~22_cout0\ = CARRY((adc_convst_cmd_count(11) & ((adc_convst_delay_value(11)) # (!\LessThan0~27_cout0\))) # (!adc_convst_cmd_count(11) & (adc_convst_delay_value(11) & !\LessThan0~27_cout0\)))
-- \LessThan0~22COUT1_90\ = CARRY((adc_convst_cmd_count(11) & ((adc_convst_delay_value(11)) # (!\LessThan0~27COUT1_89\))) # (!adc_convst_cmd_count(11) & (adc_convst_delay_value(11) & !\LessThan0~27COUT1_89\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(11),
	datab => adc_convst_delay_value(11),
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~27_cout0\,
	cin1 => \LessThan0~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~20\,
	cout0 => \LessThan0~22_cout0\,
	cout1 => \LessThan0~22COUT1_90\);

-- Location: LC_X4_Y6_N4
\LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((adc_convst_delay_value(12) & ((!\LessThan0~22COUT1_90\) # (!adc_convst_cmd_count(12)))) # (!adc_convst_delay_value(12) & (!adc_convst_cmd_count(12) & !\LessThan0~22COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(12),
	datab => adc_convst_cmd_count(12),
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~22_cout0\,
	cin1 => \LessThan0~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~15\,
	cout => \LessThan0~17_cout\);

-- Location: LC_X4_Y4_N2
\adc_convst_delay_value[14]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(14) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(14));

-- Location: LC_X3_Y4_N2
\adc_convst_delay_value[13]\ : maxv_lcell
-- Equation(s):
-- adc_convst_delay_value(13) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \adc_convst_delay_value[15]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \adc_convst_delay_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_convst_delay_value(13));

-- Location: LC_X4_Y6_N5
\LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \LessThan0~12_cout0\ = CARRY((adc_convst_delay_value(13) & (adc_convst_cmd_count(13) & !\LessThan0~17_cout\)) # (!adc_convst_delay_value(13) & ((adc_convst_cmd_count(13)) # (!\LessThan0~17_cout\))))
-- \LessThan0~12COUT1_91\ = CARRY((adc_convst_delay_value(13) & (adc_convst_cmd_count(13) & !\LessThan0~17_cout\)) # (!adc_convst_delay_value(13) & ((adc_convst_cmd_count(13)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(13),
	datab => adc_convst_cmd_count(13),
	cin => \LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~10\,
	cout0 => \LessThan0~12_cout0\,
	cout1 => \LessThan0~12COUT1_91\);

-- Location: LC_X4_Y6_N6
\LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \LessThan0~7_cout0\ = CARRY((adc_convst_cmd_count(14) & (adc_convst_delay_value(14) & !\LessThan0~12_cout0\)) # (!adc_convst_cmd_count(14) & ((adc_convst_delay_value(14)) # (!\LessThan0~12_cout0\))))
-- \LessThan0~7COUT1_92\ = CARRY((adc_convst_cmd_count(14) & (adc_convst_delay_value(14) & !\LessThan0~12COUT1_91\)) # (!adc_convst_cmd_count(14) & ((adc_convst_delay_value(14)) # (!\LessThan0~12COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_cmd_count(14),
	datab => adc_convst_delay_value(14),
	cin => \LessThan0~17_cout\,
	cin0 => \LessThan0~12_cout0\,
	cin1 => \LessThan0~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5\,
	cout0 => \LessThan0~7_cout0\,
	cout1 => \LessThan0~7COUT1_92\);

-- Location: LC_X4_Y6_N7
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (adc_convst_delay_value(15) & ((((!\LessThan0~17_cout\ & \LessThan0~7_cout0\) # (\LessThan0~17_cout\ & \LessThan0~7COUT1_92\)) # (!adc_convst_cmd_count(15))))) # (!adc_convst_delay_value(15) & ((((!\LessThan0~17_cout\ & 
-- \LessThan0~7_cout0\) # (\LessThan0~17_cout\ & \LessThan0~7COUT1_92\) & !adc_convst_cmd_count(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_convst_delay_value(15),
	datad => adc_convst_cmd_count(15),
	cin => \LessThan0~17_cout\,
	cin0 => \LessThan0~7_cout0\,
	cin1 => \LessThan0~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X9_Y7_N6
\adc_cnvst_reg.00\ : maxv_lcell
-- Equation(s):
-- \adc_cnvst_reg.00~regout\ = DFFEAS((!\adc_cnvst_reg~17\ & ((\adc_cnvst_reg.00~regout\) # ((!\LessThan0~0_combout\ & \adc_convst_cmd_reg~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_cnvst_reg.00~regout\,
	datab => \LessThan0~0_combout\,
	datac => \adc_convst_cmd_reg~regout\,
	datad => \adc_cnvst_reg~17\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_cnvst_reg.00~regout\);

-- Location: LC_X9_Y7_N9
\adc_convst_cmd_count~0\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd_count~0_combout\ = (!\adc_cnvst_reg.00~regout\ & (((\adc_convst_cmd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.00~regout\,
	datac => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd_count~0_combout\);

-- Location: LC_X7_Y7_N1
\adc_convst_cmd~0\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd~0_combout\ = (\adc_cnvst_reg.11~regout\) # ((\adc_cnvst_reg.01~regout\) # ((!\adc_convst_cmd_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.11~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => \adc_convst_cmd_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd~0_combout\);

-- Location: LC_X7_Y7_N2
\adc_convst_cmd~1\ : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd~1_combout\ = (\adc_convst_cmd~regout\ & ((\adc_convst_cmd~0_combout\) # ((\adc_convst_cmd_count~0_combout\ & !\LessThan0~0_combout\)))) # (!\adc_convst_cmd~regout\ & (\adc_convst_cmd_count~0_combout\ & (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_convst_cmd~regout\,
	datab => \adc_convst_cmd_count~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \adc_convst_cmd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_convst_cmd~1_combout\);

-- Location: LC_X7_Y7_N3
adc_convst_cmd : maxv_lcell
-- Equation(s):
-- \adc_convst_cmd~regout\ = DFFEAS((\adc_convst_cmd_reg~regout\ & (((!\ACTIVE_TRIGGER_INST|trigger_to_device~3\ & \adc_convst_cmd~1_combout\)))) # (!\adc_convst_cmd_reg~regout\ & ((\ACTIVE_TRIGGER_INST|trigger_to_device~2\) # 
-- ((\adc_convst_cmd~1_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd_reg~regout\,
	datab => \ACTIVE_TRIGGER_INST|trigger_to_device~2\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~3\,
	datad => \adc_convst_cmd~1_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_convst_cmd~regout\);

-- Location: LC_X9_Y4_N7
\state[0]\ : maxv_lcell
-- Equation(s):
-- state(0) = DFFEAS((state(10) & (!\start_block_out~regout\ & ((state(0)) # (\adc_convst_cmd~regout\)))) # (!state(10) & ((state(0)) # ((\adc_convst_cmd~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => state(10),
	datab => state(0),
	datac => \adc_convst_cmd~regout\,
	datad => \start_block_out~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LC_X7_Y7_N5
\state[1]\ : maxv_lcell
-- Equation(s):
-- state(1) = DFFEAS((\adc_convst_cmd~regout\ & (((!state(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_convst_cmd~regout\,
	datad => state(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LC_X3_Y4_N7
\ACTIVE_TRIGGER_INST|trigger_to_device~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~1\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~1\);

-- Location: LC_X4_Y4_N6
\transfer_storage_register[4]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(4) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(4));

-- Location: LC_X5_Y4_N5
master_spi_initiate_transmit : maxv_lcell
-- Equation(s):
-- \master_spi_initiate_transmit~regout\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_spi_initiate_transmit~regout\);

-- Location: LC_X4_Y4_N5
\transfer_storage_register[7]\ : maxv_lcell
-- Equation(s):
-- \always2~0\ = (((transfer_storage_register[7] & \master_spi_initiate_transmit~regout\)))
-- transfer_storage_register(7) = DFFEAS(\always2~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\,
	datad => \master_spi_initiate_transmit~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always2~0\,
	regout => transfer_storage_register(7));

-- Location: LC_X6_Y4_N6
\adc_channels_to_read[1]\ : maxv_lcell
-- Equation(s):
-- adc_channels_to_read(1) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \always2~0\, transfer_storage_register(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => transfer_storage_register(4),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \always2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_channels_to_read(1));

-- Location: LC_X4_Y4_N9
\transfer_storage_register[3]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(3) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(3));

-- Location: LC_X6_Y4_N5
\adc_channels_to_read[0]\ : maxv_lcell
-- Equation(s):
-- adc_channels_to_read(0) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \always2~0\, transfer_storage_register(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => transfer_storage_register(3),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \always2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_channels_to_read(0));

-- Location: LC_X10_Y3_N1
\adc_channel_select[0]~2\ : maxv_lcell
-- Equation(s):
-- \adc_channel_select[0]~2_combout\ = (\adc_data_rcvd_msb~regout\ & (((adc_channel_select(0))))) # (!\adc_data_rcvd_msb~regout\ & ((adc_channel_select(0) & ((!state(8)))) # (!adc_channel_select(0) & (adc_channel_select(1) & state(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_channel_select(1),
	datab => \adc_data_rcvd_msb~regout\,
	datac => adc_channel_select(0),
	datad => state(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_channel_select[0]~2_combout\);

-- Location: LC_X10_Y3_N7
\adc_channel_select[0]\ : maxv_lcell
-- Equation(s):
-- adc_channel_select(0) = DFFEAS(((state(1) & (adc_channels_to_read(0))) # (!state(1) & ((\adc_channel_select[0]~2_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => state(1),
	datac => adc_channels_to_read(0),
	datad => \adc_channel_select[0]~2_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_channel_select(0));

-- Location: LC_X12_Y3_N6
\state[7]\ : maxv_lcell
-- Equation(s):
-- state(7) = DFFEAS(((\adc_data_rcvd_msb~regout\ & ((state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \adc_data_rcvd_msb~regout\,
	datad => state(6),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(7));

-- Location: LC_X10_Y3_N2
\next[3]~1\ : maxv_lcell
-- Equation(s):
-- \next[3]~1_combout\ = (state(7)) # ((state(8) & ((adc_channel_select(1)) # (adc_channel_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => adc_channel_select(1),
	datab => state(8),
	datac => adc_channel_select(0),
	datad => state(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next[3]~1_combout\);

-- Location: LC_X4_Y6_N9
\state[2]\ : maxv_lcell
-- Equation(s):
-- state(2) = DFFEAS(((state(1)) # ((state(2) & \adc_eoc_reg~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => state(2),
	datac => state(1),
	datad => \adc_eoc_reg~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LC_X6_Y4_N8
\next[3]~0\ : maxv_lcell
-- Equation(s):
-- \next[3]~0_combout\ = (\master_spi_initiate_receive~regout\ & (((!\start_block_out~regout\ & state(10))))) # (!\master_spi_initiate_receive~regout\ & ((state(3)) # ((!\start_block_out~regout\ & state(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \master_spi_initiate_receive~regout\,
	datab => state(3),
	datac => \start_block_out~regout\,
	datad => state(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next[3]~0_combout\);

-- Location: LC_X4_Y6_N8
\state[3]\ : maxv_lcell
-- Equation(s):
-- state(3) = DFFEAS((\next[3]~1_combout\) # ((\next[3]~0_combout\) # ((state(2) & !\adc_eoc_reg~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \next[3]~1_combout\,
	datab => state(2),
	datac => \next[3]~0_combout\,
	datad => \adc_eoc_reg~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(3));

-- Location: LC_X11_Y3_N6
\SPI_IFACE_INST|clock_spi_count[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|clock_spi_count\(0) = DFFEAS((((!\SPI_IFACE_INST|clock_spi_count\(0) & !\SPI_IFACE_INST|clock_spi_count\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|clock_spi_count\(0),
	datad => \SPI_IFACE_INST|clock_spi_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|clock_spi_count\(0));

-- Location: LC_X11_Y3_N3
\SPI_IFACE_INST|clock_spi_count[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|clock_spi_count\(1) = DFFEAS((((\SPI_IFACE_INST|clock_spi_count\(0) & !\SPI_IFACE_INST|clock_spi_count\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|clock_spi_count\(0),
	datad => \SPI_IFACE_INST|clock_spi_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|clock_spi_count\(1));

-- Location: LC_X11_Y3_N7
\SPI_IFACE_INST|CLK_SPI\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|CLK_SPI~regout\ = DFFEAS(((\SPI_IFACE_INST|CLK_SPI~regout\ $ (\SPI_IFACE_INST|clock_spi_count\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|CLK_SPI~regout\,
	datad => \SPI_IFACE_INST|clock_spi_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|CLK_SPI~regout\);

-- Location: LC_X1_Y7_N9
\SPI_IFACE_INST|read_spi_inst|SCLK\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|SCLK~regout\ = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(3)) # (\SPI_IFACE_INST|read_spi_inst|state\(1)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(3),
	datad => \SPI_IFACE_INST|read_spi_inst|state\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|SCLK~regout\);

-- Location: LC_X7_Y4_N1
\SPI_IFACE_INST|state[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(1) = DFFEAS(((\master_spi_initiate_transmit~regout\ & ((!\SPI_IFACE_INST|state\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \master_spi_initiate_transmit~regout\,
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(1));

-- Location: LC_X8_Y4_N8
\SPI_IFACE_INST|write_spi_inst|bit_count[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|bit_count\(1) = DFFEAS(((\SPI_IFACE_INST|write_spi_inst|state\(3) & (\SPI_IFACE_INST|write_spi_inst|bit_count\(0) $ (\SPI_IFACE_INST|write_spi_inst|bit_count\(1))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), 
-- GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datab => \SPI_IFACE_INST|write_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(3),
	datad => \SPI_IFACE_INST|write_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|bit_count\(1));

-- Location: LC_X8_Y4_N5
\SPI_IFACE_INST|write_spi_inst|state[4]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|state\(4) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|bit_count\(2) & (\SPI_IFACE_INST|write_spi_inst|bit_count\(0) & (\SPI_IFACE_INST|write_spi_inst|state\(2) & \SPI_IFACE_INST|write_spi_inst|bit_count\(1)))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|bit_count\(2),
	datab => \SPI_IFACE_INST|write_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(2),
	datad => \SPI_IFACE_INST|write_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|state\(4));

-- Location: LC_X8_Y4_N1
\SPI_IFACE_INST|write_spi_inst|SCLK~0\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\ = (\SPI_IFACE_INST|write_spi_inst|state\(4)) # (((\SPI_IFACE_INST|write_spi_inst|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(4),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\);

-- Location: LC_X8_Y4_N0
\SPI_IFACE_INST|write_spi_inst|bit_count[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|bit_count\(0) = DFFEAS(((\SPI_IFACE_INST|write_spi_inst|state\(3) & (!\SPI_IFACE_INST|write_spi_inst|bit_count\(0)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , 
-- \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datab => \SPI_IFACE_INST|write_spi_inst|state\(3),
	datac => \SPI_IFACE_INST|write_spi_inst|bit_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|bit_count\(0));

-- Location: LC_X8_Y4_N3
\SPI_IFACE_INST|write_spi_inst|bit_count[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|bit_count\(2) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|state\(3) & (\SPI_IFACE_INST|write_spi_inst|bit_count\(2) $ (((\SPI_IFACE_INST|write_spi_inst|bit_count\(0) & \SPI_IFACE_INST|write_spi_inst|bit_count\(1)))))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|bit_count\(2),
	datab => \SPI_IFACE_INST|write_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(3),
	datad => \SPI_IFACE_INST|write_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|bit_count\(2));

-- Location: LC_X8_Y4_N9
\SPI_IFACE_INST|write_spi_inst|state[3]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|state\(3) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|state\(2) & (((!\SPI_IFACE_INST|write_spi_inst|bit_count\(1)) # (!\SPI_IFACE_INST|write_spi_inst|bit_count\(0))) # (!\SPI_IFACE_INST|write_spi_inst|bit_count\(2)))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|bit_count\(2),
	datab => \SPI_IFACE_INST|write_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(2),
	datad => \SPI_IFACE_INST|write_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|state\(3));

-- Location: LC_X8_Y4_N4
\SPI_IFACE_INST|write_spi_inst|state[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|always3~0\ = (((\SPI_IFACE_INST|write_spi_inst|state\(3)) # (\SPI_IFACE_INST|write_spi_inst|state\(1))))
-- \SPI_IFACE_INST|write_spi_inst|state\(2) = DFFEAS(\SPI_IFACE_INST|write_spi_inst|always3~0\, GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|write_spi_inst|state\(3),
	datad => \SPI_IFACE_INST|write_spi_inst|state\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	regout => \SPI_IFACE_INST|write_spi_inst|state\(2));

-- Location: LC_X8_Y4_N2
\SPI_IFACE_INST|write_spi_inst|SCLK\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|SCLK~regout\ = DFFEAS((!\SPI_IFACE_INST|write_spi_inst|state\(1) & ((\SPI_IFACE_INST|write_spi_inst|state\(2)) # ((\SPI_IFACE_INST|write_spi_inst|SCLK~regout\ & !\SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\)))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|SCLK~regout\,
	datab => \SPI_IFACE_INST|write_spi_inst|state\(1),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(2),
	datad => \SPI_IFACE_INST|write_spi_inst|SCLK~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|SCLK~regout\);

-- Location: LC_X7_Y4_N6
\SPI_IFACE_INST|write_spi_start\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_start~regout\ = DFFEAS((\SPI_IFACE_INST|state\(1)) # ((\SPI_IFACE_INST|write_spi_start~regout\ & ((\SPI_IFACE_INST|write_spi_inst|SCLK~regout\) # (\SPI_IFACE_INST|state\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \SPI_IFACE_INST|write_spi_start~regout\,
	datab => \SPI_IFACE_INST|state\(1),
	datac => \SPI_IFACE_INST|write_spi_inst|SCLK~regout\,
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_start~regout\);

-- Location: LC_X11_Y3_N4
\SPI_IFACE_INST|write_spi_inst|state[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|state\(0) = DFFEAS(((!\SPI_IFACE_INST|write_spi_inst|state\(4) & ((\SPI_IFACE_INST|write_spi_inst|state\(0)) # (\SPI_IFACE_INST|write_spi_start~regout\)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(0),
	datac => \SPI_IFACE_INST|write_spi_start~regout\,
	datad => \SPI_IFACE_INST|write_spi_inst|state\(4),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|state\(0));

-- Location: LC_X11_Y3_N5
\SPI_IFACE_INST|write_spi_inst|state[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|always3~2\ = (((\SPI_IFACE_INST|write_spi_start~regout\ & !\SPI_IFACE_INST|write_spi_inst|state\(0))))
-- \SPI_IFACE_INST|write_spi_inst|state\(1) = DFFEAS(\SPI_IFACE_INST|write_spi_inst|always3~2\, GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|write_spi_start~regout\,
	datad => \SPI_IFACE_INST|write_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	regout => \SPI_IFACE_INST|write_spi_inst|state\(1));

-- Location: LC_X11_Y3_N0
\SPI_IFACE_INST|write_spi_inst|DONE\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|always3~1\ = ((L1_DONE & (\SPI_IFACE_INST|write_spi_inst|state\(1))) # (!L1_DONE & ((!\SPI_IFACE_INST|write_spi_inst|state\(0)))))
-- \SPI_IFACE_INST|write_spi_inst|DONE~regout\ = DFFEAS(\SPI_IFACE_INST|write_spi_inst|always3~1\, GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , \SPI_IFACE_INST|write_spi_inst|state\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0af",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(1),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(4),
	datad => \SPI_IFACE_INST|write_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|always3~1\,
	regout => \SPI_IFACE_INST|write_spi_inst|DONE~regout\);

-- Location: LC_X7_Y4_N4
\SPI_IFACE_INST|state[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(2) = DFFEAS(((\SPI_IFACE_INST|state\(1)) # ((\SPI_IFACE_INST|state\(2) & !\SPI_IFACE_INST|write_spi_inst|DONE~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \SPI_IFACE_INST|state\(1),
	datac => \SPI_IFACE_INST|state\(2),
	datad => \SPI_IFACE_INST|write_spi_inst|DONE~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(2));

-- Location: LC_X7_Y4_N7
\SPI_IFACE_INST|read_spi_inst|DONE\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|next[0]~2\ = (\SPI_IFACE_INST|state\(5) & (((!\master_spi_initiate_transmit~regout\ & !\SPI_IFACE_INST|state\(0))) # (!K1_DONE))) # (!\SPI_IFACE_INST|state\(5) & (!\master_spi_initiate_transmit~regout\ & ((!\SPI_IFACE_INST|state\(0)))))
-- \SPI_IFACE_INST|read_spi_inst|DONE~regout\ = DFFEAS(\SPI_IFACE_INST|next[0]~2\, GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , \SPI_IFACE_INST|read_spi_inst|state\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a3b",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|state\(5),
	datab => \master_spi_initiate_transmit~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(3),
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|next[0]~2\,
	regout => \SPI_IFACE_INST|read_spi_inst|DONE~regout\);

-- Location: LC_X7_Y4_N9
\SPI_IFACE_INST|state[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(0) = DFFEAS((\SPI_IFACE_INST|state\(2) & (!\SPI_IFACE_INST|write_spi_inst|DONE~regout\ & ((\master_spi_initiate_receive~regout\) # (!\SPI_IFACE_INST|next[0]~2\)))) # (!\SPI_IFACE_INST|state\(2) & 
-- (((\master_spi_initiate_receive~regout\)) # (!\SPI_IFACE_INST|next[0]~2\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \SPI_IFACE_INST|state\(2),
	datab => \SPI_IFACE_INST|next[0]~2\,
	datac => \master_spi_initiate_receive~regout\,
	datad => \SPI_IFACE_INST|write_spi_inst|DONE~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(0));

-- Location: LC_X7_Y4_N2
\SPI_IFACE_INST|state[3]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(3) = DFFEAS(((!\master_spi_initiate_transmit~regout\ & (\master_spi_initiate_receive~regout\ & !\SPI_IFACE_INST|state\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \master_spi_initiate_transmit~regout\,
	datac => \master_spi_initiate_receive~regout\,
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(3));

-- Location: LC_X1_Y6_N1
\SPI_IFACE_INST|read_spi_start\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_start~regout\ = DFFEAS(((\SPI_IFACE_INST|state\(3)) # ((!\SPI_IFACE_INST|read_spi_inst|SCLK~regout\ & \SPI_IFACE_INST|read_spi_start~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \SPI_IFACE_INST|read_spi_inst|SCLK~regout\,
	datac => \SPI_IFACE_INST|read_spi_start~regout\,
	datad => \SPI_IFACE_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_start~regout\);

-- Location: LC_X1_Y7_N6
\SPI_IFACE_INST|read_spi_inst|state[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|state\(0) = DFFEAS((!\SPI_IFACE_INST|read_spi_inst|state\(3) & ((\SPI_IFACE_INST|read_spi_inst|state\(0)) # ((\SPI_IFACE_INST|read_spi_start~regout\)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3232",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datab => \SPI_IFACE_INST|read_spi_inst|state\(3),
	datac => \SPI_IFACE_INST|read_spi_start~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|state\(0));

-- Location: LC_X1_Y7_N1
\SPI_IFACE_INST|read_spi_inst|state[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|state\(1) = DFFEAS((\SPI_IFACE_INST|read_spi_inst|state\(2)) # ((\SPI_IFACE_INST|read_spi_start~regout\ & (!\SPI_IFACE_INST|read_spi_inst|state\(0)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|state\(2),
	datab => \SPI_IFACE_INST|read_spi_start~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|state\(1));

-- Location: LC_X1_Y7_N8
\SPI_IFACE_INST|read_spi_inst|bit_count[2]~1\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\ = ((\SPI_IFACE_INST|read_spi_inst|state\(3)) # ((\SPI_IFACE_INST|read_spi_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SPI_IFACE_INST|read_spi_inst|state\(3),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\);

-- Location: LC_X1_Y7_N7
\SPI_IFACE_INST|read_spi_inst|bit_count[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|bit_count\(2) = DFFEAS((\SPI_IFACE_INST|read_spi_inst|state\(2) & (\SPI_IFACE_INST|read_spi_inst|bit_count\(2) $ (((\SPI_IFACE_INST|read_spi_inst|bit_count\(0) & \SPI_IFACE_INST|read_spi_inst|bit_count\(1)))))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|state\(2),
	datab => \SPI_IFACE_INST|read_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|read_spi_inst|bit_count\(2),
	datad => \SPI_IFACE_INST|read_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|bit_count\(2));

-- Location: LC_X1_Y7_N5
\SPI_IFACE_INST|read_spi_inst|state[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|state\(2) = DFFEAS((\SPI_IFACE_INST|read_spi_inst|state\(1) & (((!\SPI_IFACE_INST|read_spi_inst|bit_count\(0)) # (!\SPI_IFACE_INST|read_spi_inst|bit_count\(2))) # (!\SPI_IFACE_INST|read_spi_inst|bit_count\(1)))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|bit_count\(1),
	datab => \SPI_IFACE_INST|read_spi_inst|state\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|bit_count\(2),
	datad => \SPI_IFACE_INST|read_spi_inst|bit_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|state\(2));

-- Location: LC_X1_Y7_N2
\SPI_IFACE_INST|read_spi_inst|bit_count[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|bit_count\(0) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(2) & !\SPI_IFACE_INST|read_spi_inst|bit_count\(0)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , 
-- \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(2),
	datad => \SPI_IFACE_INST|read_spi_inst|bit_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|bit_count\(0));

-- Location: LC_X1_Y7_N3
\SPI_IFACE_INST|read_spi_inst|bit_count[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|bit_count\(1) = DFFEAS(((\SPI_IFACE_INST|read_spi_inst|state\(2) & (\SPI_IFACE_INST|read_spi_inst|bit_count\(0) $ (\SPI_IFACE_INST|read_spi_inst|bit_count\(1))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), 
-- GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datab => \SPI_IFACE_INST|read_spi_inst|bit_count\(0),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(2),
	datad => \SPI_IFACE_INST|read_spi_inst|bit_count\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|bit_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|bit_count\(1));

-- Location: LC_X1_Y7_N0
\SPI_IFACE_INST|read_spi_inst|state[3]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|state\(3) = DFFEAS((\SPI_IFACE_INST|read_spi_inst|bit_count\(1) & (\SPI_IFACE_INST|read_spi_inst|state\(1) & (\SPI_IFACE_INST|read_spi_inst|bit_count\(2) & \SPI_IFACE_INST|read_spi_inst|bit_count\(0)))), 
-- GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|bit_count\(1),
	datab => \SPI_IFACE_INST|read_spi_inst|state\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|bit_count\(2),
	datad => \SPI_IFACE_INST|read_spi_inst|bit_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|state\(3));

-- Location: LC_X7_Y4_N0
\SPI_IFACE_INST|state[4]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(4) = DFFEAS(((\SPI_IFACE_INST|state\(3)) # ((!\SPI_IFACE_INST|read_spi_inst|DONE~regout\ & \SPI_IFACE_INST|state\(4)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \SPI_IFACE_INST|read_spi_inst|DONE~regout\,
	datac => \SPI_IFACE_INST|state\(4),
	datad => \SPI_IFACE_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(4));

-- Location: LC_X7_Y4_N5
\SPI_IFACE_INST|state[5]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|state\(5) = DFFEAS((\SPI_IFACE_INST|state\(5) & (((\SPI_IFACE_INST|read_spi_inst|DONE~regout\) # (\master_spi_initiate_receive~regout\)))) # (!\SPI_IFACE_INST|state\(5) & (\SPI_IFACE_INST|state\(4) & 
-- (\SPI_IFACE_INST|read_spi_inst|DONE~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eae0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \SPI_IFACE_INST|state\(5),
	datab => \SPI_IFACE_INST|state\(4),
	datac => \SPI_IFACE_INST|read_spi_inst|DONE~regout\,
	datad => \master_spi_initiate_receive~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|state\(5));

-- Location: LC_X7_Y4_N3
\SPI_IFACE_INST|WE_OUT_N\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|WE_OUT_N~regout\ = DFFEAS((\SPI_IFACE_INST|state\(5)) # (((\SPI_IFACE_INST|WE_OUT_N~regout\ & \SPI_IFACE_INST|state\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \SPI_IFACE_INST|state\(5),
	datac => \SPI_IFACE_INST|WE_OUT_N~regout\,
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|WE_OUT_N~regout\);

-- Location: LC_X5_Y4_N9
master_spi_initiate_receive_reg : maxv_lcell
-- Equation(s):
-- \master_spi_initiate_receive_reg~regout\ = DFFEAS((((!state(3) & \SPI_IFACE_INST|WE_OUT_N~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => state(3),
	datad => \SPI_IFACE_INST|WE_OUT_N~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_spi_initiate_receive_reg~regout\);

-- Location: LC_X5_Y4_N3
master_spi_initiate_receive : maxv_lcell
-- Equation(s):
-- \master_spi_initiate_receive~regout\ = DFFEAS((state(3)) # ((\master_spi_initiate_receive~regout\ & (\master_spi_initiate_receive_reg~regout\ $ (!\SPI_IFACE_INST|WE_OUT_N~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \master_spi_initiate_receive~regout\,
	datab => \master_spi_initiate_receive_reg~regout\,
	datac => state(3),
	datad => \SPI_IFACE_INST|WE_OUT_N~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \master_spi_initiate_receive~regout\);

-- Location: LC_X5_Y4_N1
\state[4]\ : maxv_lcell
-- Equation(s):
-- state(4) = DFFEAS((\master_spi_initiate_receive~regout\ & ((state(3)) # ((state(4) & !\SPI_IFACE_INST|WE_OUT_N~regout\)))) # (!\master_spi_initiate_receive~regout\ & (state(4) & ((!\SPI_IFACE_INST|WE_OUT_N~regout\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \master_spi_initiate_receive~regout\,
	datab => state(4),
	datac => state(3),
	datad => \SPI_IFACE_INST|WE_OUT_N~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(4));

-- Location: LC_X12_Y3_N9
\state[5]\ : maxv_lcell
-- Equation(s):
-- state(5) = DFFEAS(((\SPI_IFACE_INST|WE_OUT_N~regout\ & ((state(5)) # (state(4))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => state(5),
	datac => state(4),
	datad => \SPI_IFACE_INST|WE_OUT_N~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(5));

-- Location: LC_X12_Y3_N2
\state[6]\ : maxv_lcell
-- Equation(s):
-- state(6) = DFFEAS(((state(5) & ((!\SPI_IFACE_INST|WE_OUT_N~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => state(5),
	datad => \SPI_IFACE_INST|WE_OUT_N~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(6));

-- Location: LC_X12_Y3_N1
\state[8]\ : maxv_lcell
-- Equation(s):
-- state(8) = DFFEAS(((!\adc_data_rcvd_msb~regout\ & ((state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \adc_data_rcvd_msb~regout\,
	datad => state(6),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(8));

-- Location: LC_X10_Y3_N0
adc_data_rcvd_msb : maxv_lcell
-- Equation(s):
-- \adc_data_rcvd_msb~regout\ = DFFEAS((state(1)) # ((!state(7) & ((state(8)) # (\adc_data_rcvd_msb~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => state(8),
	datab => state(1),
	datac => \adc_data_rcvd_msb~regout\,
	datad => state(7),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_data_rcvd_msb~regout\);

-- Location: LC_X10_Y3_N3
\adc_channel_select[1]~0\ : maxv_lcell
-- Equation(s):
-- \adc_channel_select[1]~0_combout\ = ((!\adc_data_rcvd_msb~regout\ & (!adc_channel_select(0) & state(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \adc_data_rcvd_msb~regout\,
	datac => adc_channel_select(0),
	datad => state(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_channel_select[1]~0_combout\);

-- Location: LC_X10_Y3_N8
\adc_channel_select[1]\ : maxv_lcell
-- Equation(s):
-- adc_channel_select(1) = DFFEAS((state(1) & (((adc_channels_to_read(1))))) # (!state(1) & (adc_channel_select(1) & ((!\adc_channel_select[1]~0_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => adc_channel_select(1),
	datab => state(1),
	datac => adc_channels_to_read(1),
	datad => \adc_channel_select[1]~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => adc_channel_select(1));

-- Location: LC_X9_Y4_N8
\mem_array_index[2]~2\ : maxv_lcell
-- Equation(s):
-- \mem_array_index[2]~2_combout\ = (state(9) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22) & \start_block_out~regout\)))) # (!state(9) & (state(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(10),
	datab => state(9),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22),
	datad => \start_block_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array_index[2]~2_combout\);

-- Location: LC_X9_Y4_N6
\mem_array_index[1]\ : maxv_lcell
-- Equation(s):
-- mem_array_index(1) = DFFEAS((\start_block_out~regout\ & (state(9) & (mem_array_index(1) $ (mem_array_index(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \mem_array_index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => \start_block_out~regout\,
	datac => mem_array_index(0),
	datad => state(9),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \mem_array_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_array_index(1));

-- Location: LC_X9_Y4_N9
\mem_array_index~0\ : maxv_lcell
-- Equation(s):
-- \mem_array_index~0_combout\ = ((\start_block_out~regout\ & ((state(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \start_block_out~regout\,
	datad => state(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array_index~0_combout\);

-- Location: LC_X9_Y4_N5
\mem_array_index[2]\ : maxv_lcell
-- Equation(s):
-- mem_array_index(2) = DFFEAS((\mem_array_index~0_combout\ & (mem_array_index(2) $ (((mem_array_index(1) & mem_array_index(0)))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \mem_array_index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => mem_array_index(0),
	datad => \mem_array_index~0_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \mem_array_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_array_index(2));

-- Location: LC_X9_Y4_N0
\next[9]~7\ : maxv_lcell
-- Equation(s):
-- \next[9]~7_combout\ = (state(9) & (((!mem_array_index(1)) # (!mem_array_index(2))) # (!mem_array_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mem_array_index(0),
	datab => mem_array_index(2),
	datac => mem_array_index(1),
	datad => state(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next[9]~7_combout\);

-- Location: LC_X10_Y3_N4
\state[9]\ : maxv_lcell
-- Equation(s):
-- state(9) = DFFEAS((\next[9]~7_combout\) # ((!adc_channel_select(1) & (!adc_channel_select(0) & state(8)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => adc_channel_select(1),
	datab => \next[9]~7_combout\,
	datac => adc_channel_select(0),
	datad => state(8),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(9));

-- Location: LC_X9_Y4_N4
\mem_array_index[0]\ : maxv_lcell
-- Equation(s):
-- mem_array_index(0) = DFFEAS(((\start_block_out~regout\ & (!mem_array_index(0) & state(9)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \mem_array_index[2]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \start_block_out~regout\,
	datac => mem_array_index(0),
	datad => state(9),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \mem_array_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_array_index(0));

-- Location: LC_X9_Y4_N2
\state[10]\ : maxv_lcell
-- Equation(s):
-- state(10) = DFFEAS((mem_array_index(0) & (mem_array_index(2) & (mem_array_index(1) & state(9)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(0),
	datab => mem_array_index(2),
	datac => mem_array_index(1),
	datad => state(9),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(10));

-- Location: LC_X9_Y4_N1
start_block_out : maxv_lcell
-- Equation(s):
-- \start_block_out~regout\ = DFFEAS(((state(9)) # ((\start_block_out~regout\ & !state(10)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \start_block_out~regout\,
	datac => state(10),
	datad => state(9),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_block_out~regout\);

-- Location: LC_X11_Y4_N2
\BLOCK_TRANSFER_INST|block_transfer_state.IDLE~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|block_transfer_state.IDLE\ = DFFEAS(((!\BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\ & ((\BLOCK_TRANSFER_INST|block_transfer_state.IDLE\) # (\start_block_out~regout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\,
	datac => \BLOCK_TRANSFER_INST|block_transfer_state.IDLE\,
	datad => \start_block_out~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|block_transfer_state.IDLE\);

-- Location: LC_X11_Y4_N1
\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\ = DFFEAS((\BLOCK_TRANSFER_INST|block_transfer_state.IDLE\ & (!\BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) & ((\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\)))) # 
-- (!\BLOCK_TRANSFER_INST|block_transfer_state.IDLE\ & ((\start_block_out~regout\) # ((!\BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) & \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.IDLE\,
	datab => \BLOCK_TRANSFER_INST|block_transfer_state_counter\(0),
	datac => \start_block_out~regout\,
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\);

-- Location: LC_X7_Y6_N8
\BLOCK_TRANSFER_INST|uc_out~14_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out~14\ = ((\aa~combout\(0) & ((\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\) # (\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datac => \aa~combout\(0),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|uc_out~14\);

-- Location: LC_X10_Y2_N5
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X8_Y6_N6
\ACTIVE_TRANSFER_INST_1|start_transfer_in~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_in\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \~GND~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_in\);

-- Location: LC_X5_Y4_N8
\ACTIVE_TRANSFER_INST_1|transfer_received~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ = DFFEAS(((\ACTIVE_TRANSFER_INST_1|state_in\(2)) # ((\ACTIVE_TRANSFER_INST_1|state_in\(0) & \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\);

-- Location: LC_X8_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\);

-- Location: LC_X8_Y6_N1
\ACTIVE_TRANSFER_INST_1|start_transfer_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|always0~2\ = (!\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & ((\ACTIVE_TRANSFER_INST_1|start_transfer_in\) # ((\ACTIVE_TRANSFER_INST_1|transfer_received~reg0\) # (B1_start_transfer_reg))))
-- \ACTIVE_TRANSFER_INST_1|start_transfer_reg\ = DFFEAS(\ACTIVE_TRANSFER_INST_1|always0~2\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_INST_1|start_transfer_in\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|always0~2\,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\);

-- Location: LC_X8_Y6_N9
\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\ = DFFEAS((\ACTIVE_TRANSFER_INST_1|always0~2\) # ((!\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\ & (\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_INST_1|always0~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\);

-- Location: LC_X8_Y6_N7
\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ & (!\ACTIVE_TRANSFER_INST_1|always0~2\ & ((\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\) # 
-- (\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_INST_1|always0~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\);

-- Location: LC_X8_Y6_N3
\ACTIVE_TRANSFER_INST_1|transfer_busy~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy~0\ = (\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\)) # (!\ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\))) # 
-- (!\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ & \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.10\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg.01\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|transfer_busy~0\);

-- Location: LC_X8_Y6_N4
\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ = DFFEAS((\ACTIVE_TRANSFER_INST_1|transfer_busy~0\) # (((\ACTIVE_TRANSFER_INST_1|always0~2\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_busy~0\,
	datad => \ACTIVE_TRANSFER_INST_1|always0~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\);

-- Location: LC_X8_Y6_N2
\ACTIVE_TRANSFER_INST_1|start_transfer_count[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0) = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1) $ 
-- (!\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0))))) # (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (((\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	datab => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0));

-- Location: LC_X8_Y6_N8
\ACTIVE_TRANSFER_INST_1|start_transfer_count[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1) = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & ((\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1)) # 
-- (\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0))))) # (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2a2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	datab => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1));

-- Location: LC_X8_Y6_N0
\ACTIVE_TRANSFER_INST_1|to_transfer_update~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|to_transfer_update\ = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (!\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1) & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & \ACTIVE_TRANSFER_INST_1|to_transfer_update\))) # 
-- (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (((\ACTIVE_TRANSFER_INST_1|start_transfer_in\) # (\ACTIVE_TRANSFER_INST_1|to_transfer_update\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	datab => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|to_transfer_update\);

-- Location: LC_X11_Y4_N6
\BLOCK_TRANSFER_INST|uc_out~13_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out~13\ = (\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & (((\aa~combout\(0) & !\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datac => \aa~combout\(0),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|uc_out~13\);

-- Location: LC_X10_Y6_N0
\wireOR|uc_out[20]\ : maxv_lcell
-- Equation(s):
-- \wireOR|uc_out\(20) = (((\ACTIVE_TRANSFER_INST_1|to_transfer_update\) # (\BLOCK_TRANSFER_INST|uc_out~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	datad => \BLOCK_TRANSFER_INST|uc_out~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wireOR|uc_out\(20));

-- Location: LC_X7_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & ((\BLOCK_TRANSFER_INST|uc_out~14\) # ((\wireOR|uc_out\(20)) # (\ACTIVE_TRIGGER_INST|to_trigupdate\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3332",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|uc_out~14\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datac => \wireOR|uc_out\(20),
	datad => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\);

-- Location: LC_X7_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) $ (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1)) # 
-- ((H1_command_from_device[2]))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out~14\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3636",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	datac => \BLOCK_TRANSFER_INST|uc_out~14\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2));

-- Location: LC_X7_Y6_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1) $ 
-- (H1_command_from_device[0]))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \ACTIVE_TRIGGER_INST|to_trigupdate\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0));

-- Location: LC_X7_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) & (H1_command_from_device[1] & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \wireOR|uc_out\(20), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	datac => \wireOR|uc_out\(20),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1));

-- Location: LC_X10_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[22]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22) = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~23\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22));

-- Location: LC_X11_Y4_N5
\BLOCK_TRANSFER_INST|data_count[0]~16_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count[0]~16\ = (\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & (\BLOCK_TRANSFER_INST|LessThan1~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22)))) # 
-- (!\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & (((\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datab => \BLOCK_TRANSFER_INST|LessThan1~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|data_count[0]~16\);

-- Location: LC_X11_Y2_N0
\BLOCK_TRANSFER_INST|data_count[0]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(0) = DFFEAS(((!\BLOCK_TRANSFER_INST|data_count\(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[0]~1\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(0))))
-- \BLOCK_TRANSFER_INST|data_count[0]~1COUT1_1\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|data_count\(0),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(0),
	cout0 => \BLOCK_TRANSFER_INST|data_count[0]~1\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[0]~1COUT1_1\);

-- Location: LC_X11_Y2_N1
\BLOCK_TRANSFER_INST|data_count[1]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(1) = DFFEAS((\BLOCK_TRANSFER_INST|data_count\(1) $ ((!\BLOCK_TRANSFER_INST|data_count[0]~1\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[1]~3\ = CARRY(((!\BLOCK_TRANSFER_INST|data_count\(1) & !\BLOCK_TRANSFER_INST|data_count[0]~1\)))
-- \BLOCK_TRANSFER_INST|data_count[1]~3COUT1_2\ = CARRY(((!\BLOCK_TRANSFER_INST|data_count\(1) & !\BLOCK_TRANSFER_INST|data_count[0]~1COUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|data_count\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[0]~1\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[0]~1COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(1),
	cout0 => \BLOCK_TRANSFER_INST|data_count[1]~3\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[1]~3COUT1_2\);

-- Location: LC_X11_Y2_N2
\BLOCK_TRANSFER_INST|data_count[2]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(2) = DFFEAS((\BLOCK_TRANSFER_INST|data_count\(2) $ ((\BLOCK_TRANSFER_INST|data_count[1]~3\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[2]~5\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(2)) # (!\BLOCK_TRANSFER_INST|data_count[1]~3\)))
-- \BLOCK_TRANSFER_INST|data_count[2]~5COUT1_3\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(2)) # (!\BLOCK_TRANSFER_INST|data_count[1]~3COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|data_count\(2),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[1]~3\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[1]~3COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(2),
	cout0 => \BLOCK_TRANSFER_INST|data_count[2]~5\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[2]~5COUT1_3\);

-- Location: LC_X11_Y2_N3
\BLOCK_TRANSFER_INST|data_count[3]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(3) = DFFEAS(\BLOCK_TRANSFER_INST|data_count\(3) $ ((((!\BLOCK_TRANSFER_INST|data_count[2]~5\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, VCC, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[3]~7\ = CARRY((!\BLOCK_TRANSFER_INST|data_count\(3) & ((!\BLOCK_TRANSFER_INST|data_count[2]~5\))))
-- \BLOCK_TRANSFER_INST|data_count[3]~7COUT1_4\ = CARRY((!\BLOCK_TRANSFER_INST|data_count\(3) & ((!\BLOCK_TRANSFER_INST|data_count[2]~5COUT1_3\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|data_count\(3),
	datac => VCC,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[2]~5\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[2]~5COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(3),
	cout0 => \BLOCK_TRANSFER_INST|data_count[3]~7\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[3]~7COUT1_4\);

-- Location: LC_X11_Y2_N8
\BLOCK_TRANSFER_INST|LessThan1~0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|LessThan1~0\ = ((\BLOCK_TRANSFER_INST|data_count\(1)) # ((\BLOCK_TRANSFER_INST|data_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_TRANSFER_INST|data_count\(1),
	datac => \BLOCK_TRANSFER_INST|data_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|LessThan1~0\);

-- Location: LC_X11_Y2_N4
\BLOCK_TRANSFER_INST|data_count[4]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(4) = DFFEAS(\BLOCK_TRANSFER_INST|data_count\(4) $ ((((\BLOCK_TRANSFER_INST|data_count[3]~7\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[4]~9\ = CARRY((\BLOCK_TRANSFER_INST|data_count\(4)) # ((!\BLOCK_TRANSFER_INST|data_count[3]~7COUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|data_count\(4),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[3]~7\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[3]~7COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(4),
	cout => \BLOCK_TRANSFER_INST|data_count[4]~9\);

-- Location: LC_X11_Y2_N5
\BLOCK_TRANSFER_INST|data_count[5]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(5) = DFFEAS(\BLOCK_TRANSFER_INST|data_count\(5) $ ((((!\BLOCK_TRANSFER_INST|data_count[4]~9\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , 
-- !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[5]~11\ = CARRY((!\BLOCK_TRANSFER_INST|data_count\(5) & ((!\BLOCK_TRANSFER_INST|data_count[4]~9\))))
-- \BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\ = CARRY((!\BLOCK_TRANSFER_INST|data_count\(5) & ((!\BLOCK_TRANSFER_INST|data_count[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|data_count\(5),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin => \BLOCK_TRANSFER_INST|data_count[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(5),
	cout0 => \BLOCK_TRANSFER_INST|data_count[5]~11\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\);

-- Location: LC_X11_Y2_N6
\BLOCK_TRANSFER_INST|data_count[6]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(6) = DFFEAS((\BLOCK_TRANSFER_INST|data_count\(6) $ (((!\BLOCK_TRANSFER_INST|data_count[4]~9\ & \BLOCK_TRANSFER_INST|data_count[5]~11\) # (\BLOCK_TRANSFER_INST|data_count[4]~9\ & 
-- \BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)
-- \BLOCK_TRANSFER_INST|data_count[6]~13\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(6)) # (!\BLOCK_TRANSFER_INST|data_count[5]~11\)))
-- \BLOCK_TRANSFER_INST|data_count[6]~13COUT1_6\ = CARRY(((\BLOCK_TRANSFER_INST|data_count\(6)) # (!\BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|data_count\(6),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin => \BLOCK_TRANSFER_INST|data_count[4]~9\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[5]~11\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[5]~11COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(6),
	cout0 => \BLOCK_TRANSFER_INST|data_count[6]~13\,
	cout1 => \BLOCK_TRANSFER_INST|data_count[6]~13COUT1_6\);

-- Location: LC_X11_Y2_N7
\BLOCK_TRANSFER_INST|data_count[7]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|data_count\(7) = DFFEAS((\BLOCK_TRANSFER_INST|data_count\(7) $ ((!(!\BLOCK_TRANSFER_INST|data_count[4]~9\ & \BLOCK_TRANSFER_INST|data_count[6]~13\) # (\BLOCK_TRANSFER_INST|data_count[4]~9\ & 
-- \BLOCK_TRANSFER_INST|data_count[6]~13COUT1_6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \BLOCK_TRANSFER_INST|data_count[0]~16\, \~GND~combout\, , , !\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \BLOCK_TRANSFER_INST|data_count\(7),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => \BLOCK_TRANSFER_INST|ALT_INV_block_transfer_state.TRANSFER_BYTE\,
	ena => \BLOCK_TRANSFER_INST|data_count[0]~16\,
	cin => \BLOCK_TRANSFER_INST|data_count[4]~9\,
	cin0 => \BLOCK_TRANSFER_INST|data_count[6]~13\,
	cin1 => \BLOCK_TRANSFER_INST|data_count[6]~13COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|data_count\(7));

-- Location: LC_X11_Y2_N9
\BLOCK_TRANSFER_INST|LessThan1~1_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|LessThan1~1\ = (\BLOCK_TRANSFER_INST|data_count\(5)) # ((\BLOCK_TRANSFER_INST|data_count\(7)) # ((\BLOCK_TRANSFER_INST|data_count\(4)) # (\BLOCK_TRANSFER_INST|data_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|data_count\(5),
	datab => \BLOCK_TRANSFER_INST|data_count\(7),
	datac => \BLOCK_TRANSFER_INST|data_count\(4),
	datad => \BLOCK_TRANSFER_INST|data_count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|LessThan1~1\);

-- Location: LC_X11_Y4_N7
\BLOCK_TRANSFER_INST|LessThan1~2_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|LessThan1~2\ = (\BLOCK_TRANSFER_INST|data_count\(3)) # ((\BLOCK_TRANSFER_INST|LessThan1~0\) # ((\BLOCK_TRANSFER_INST|data_count\(2)) # (\BLOCK_TRANSFER_INST|LessThan1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|data_count\(3),
	datab => \BLOCK_TRANSFER_INST|LessThan1~0\,
	datac => \BLOCK_TRANSFER_INST|data_count\(2),
	datad => \BLOCK_TRANSFER_INST|LessThan1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|LessThan1~2\);

-- Location: LC_X11_Y4_N0
\BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\ = DFFEAS((((!\BLOCK_TRANSFER_INST|LessThan1~2\ & \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|LessThan1~2\,
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\);

-- Location: LC_X11_Y4_N9
\BLOCK_TRANSFER_INST|block_transfer_state_counter[0]~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) = DFFEAS((\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\) # ((\BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) & ((\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\) # 
-- (\BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datab => \BLOCK_TRANSFER_INST|block_transfer_state_counter\(0),
	datac => \BLOCK_TRANSFER_INST|block_transfer_state.END_TRANSFER\,
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|block_transfer_state_counter\(0));

-- Location: LC_X11_Y4_N3
\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE~I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ = DFFEAS((\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & ((\BLOCK_TRANSFER_INST|LessThan1~2\) # ((\BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) & 
-- \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\)))) # (!\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & (\BLOCK_TRANSFER_INST|block_transfer_state_counter\(0) & ((\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datab => \BLOCK_TRANSFER_INST|block_transfer_state_counter\(0),
	datac => \BLOCK_TRANSFER_INST|LessThan1~2\,
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\);

-- Location: LC_X7_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3) = DFFEAS(((\aa~combout\(0) & (\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ $ (\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datac => \aa~combout\(0),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3));

-- Location: LC_X2_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22COUT1_1\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22COUT1_1\);

-- Location: LC_X2_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17COUT1_2\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22COUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff03",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~15\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~22COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~15\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17COUT1_2\);

-- Location: LC_X2_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17COUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ffcf",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~10\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~17COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12COUT1_3\);

-- Location: LC_X2_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7COUT1_4\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12COUT1_3\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff05",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~5\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~12COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7COUT1_4\);

-- Location: LC_X2_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add1~0\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~7COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\);

-- Location: LC_X4_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\);

-- Location: LC_X4_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\);

-- Location: LC_X2_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\);

-- Location: LC_X2_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ & 
-- (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03b3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan2~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\);

-- Location: LC_X6_Y6_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\);

-- Location: LC_X8_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14\);

-- Location: LC_X6_Y6_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\);

-- Location: LC_X6_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~14\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6));

-- Location: LC_X6_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)) # (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\);

-- Location: LC_X10_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bc_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bc_in(0),
	combout => \bc_in~combout\(0));

-- Location: LC_X10_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\ = (((\bc_in~combout\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \bc_in~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\);

-- Location: LC_X10_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\);

-- Location: LC_X10_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (\bc_in~combout\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datac => \bc_in~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\);

-- Location: LC_X6_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\);

-- Location: LC_X6_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7));

-- Location: LC_X6_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[8]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8));

-- Location: LC_X8_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\);

-- Location: LC_X8_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bc_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bc_in(1),
	combout => \bc_in~combout\(1));

-- Location: LC_X8_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3)) # (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)) # (!\bc_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3),
	datac => \bc_in~combout\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\);

-- Location: LC_X7_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate\) # (\wireOR|uc_out\(20) $ (\BLOCK_TRANSFER_INST|uc_out~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3132",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wireOR|uc_out\(20),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datad => \BLOCK_TRANSFER_INST|uc_out~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\);

-- Location: LC_X7_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\);

-- Location: LC_X7_Y6_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0\ = (\BLOCK_TRANSFER_INST|uc_out~14\) # (((\ACTIVE_TRIGGER_INST|to_trigupdate\) # (\wireOR|uc_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|uc_out~14\,
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datad => \wireOR|uc_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0\);

-- Location: LC_X7_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|FT_245_SM_BUSY~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan1~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1\);

-- Location: LC_X7_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(8),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_delay\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\);

-- Location: LC_X8_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & (((!\bc_in~combout\(1) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datac => \bc_in~combout\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\);

-- Location: LC_X6_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a3a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\);

-- Location: LC_X6_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\);

-- Location: LC_X6_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6));

-- Location: LC_X6_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7));

-- Location: LC_X6_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~6\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4));

-- Location: LC_X6_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\);

-- Location: LC_X6_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7707",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0));

-- Location: LC_X10_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (((\bc_in~combout\(0) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11d1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datac => \bc_in~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\);

-- Location: LC_X6_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)) # (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\);

-- Location: LC_X6_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\);

-- Location: LC_X5_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1))) # (!\aa~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \aa~combout\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1\);

-- Location: LC_X5_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ = (((\aa~combout\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \aa~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\);

-- Location: LC_X5_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\);

-- Location: LC_X3_Y4_N4
\transfer_storage_register[5]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(5) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(5));

-- Location: LC_X3_Y4_N3
\transfer_storage_register[2]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(2) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(2));

-- Location: LC_X11_Y3_N2
\SPI_IFACE_INST|write_spi_inst|shift_reg~11\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg~11_combout\ = (\SPI_IFACE_INST|write_spi_inst|state\(0)) # ((\SPI_IFACE_INST|write_spi_inst|state\(3)) # ((\SPI_IFACE_INST|write_spi_inst|state\(1)) # (\SPI_IFACE_INST|write_spi_inst|DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(0),
	datab => \SPI_IFACE_INST|write_spi_inst|state\(3),
	datac => \SPI_IFACE_INST|write_spi_inst|state\(1),
	datad => \SPI_IFACE_INST|write_spi_inst|DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|shift_reg~11_combout\);

-- Location: LC_X3_Y4_N6
\transfer_storage_register[0]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(0) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(0));

-- Location: LC_X8_Y4_N7
\SPI_IFACE_INST|write_spi_inst|shift_reg[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(0) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(0))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg~11_combout\ & 
-- ((\SPI_IFACE_INST|write_spi_inst|shift_reg\(0))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	datab => \SPI_IFACE_INST|write_spi_inst|shift_reg~11_combout\,
	datac => transfer_storage_register(0),
	datad => \SPI_IFACE_INST|write_spi_inst|shift_reg\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(0));

-- Location: LC_X4_Y4_N4
\transfer_storage_register[1]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(1) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(1));

-- Location: LC_X11_Y3_N1
\SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\ = (\SPI_IFACE_INST|write_spi_inst|always3~1\) # ((\SPI_IFACE_INST|write_spi_inst|always3~0\) # ((!\SPI_IFACE_INST|write_spi_inst|state\(0) & \SPI_IFACE_INST|write_spi_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(0),
	datab => \SPI_IFACE_INST|write_spi_start~regout\,
	datac => \SPI_IFACE_INST|write_spi_inst|always3~1\,
	datad => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\);

-- Location: LC_X6_Y4_N1
\SPI_IFACE_INST|write_spi_inst|shift_reg[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(1) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(1))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg\(0) & 
-- (\SPI_IFACE_INST|write_spi_inst|always3~0\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|shift_reg\(0),
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(1),
	datad => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(1));

-- Location: LC_X6_Y4_N4
\SPI_IFACE_INST|write_spi_inst|shift_reg[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(2) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(2))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|always3~0\ & 
-- ((\SPI_IFACE_INST|write_spi_inst|shift_reg\(1))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(2),
	datad => \SPI_IFACE_INST|write_spi_inst|shift_reg\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(2));

-- Location: LC_X6_Y4_N7
\SPI_IFACE_INST|write_spi_inst|shift_reg[3]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(3) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(3))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg\(2) & 
-- (\SPI_IFACE_INST|write_spi_inst|always3~0\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|shift_reg\(2),
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(3),
	datad => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(3));

-- Location: LC_X6_Y4_N9
\SPI_IFACE_INST|write_spi_inst|shift_reg[4]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(4) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(4))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg\(3) & 
-- (\SPI_IFACE_INST|write_spi_inst|always3~0\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|shift_reg\(3),
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(4),
	datad => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(4));

-- Location: LC_X6_Y4_N3
\SPI_IFACE_INST|write_spi_inst|shift_reg[5]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(5) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(5))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|always3~0\ & 
-- ((\SPI_IFACE_INST|write_spi_inst|shift_reg\(4))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(5),
	datad => \SPI_IFACE_INST|write_spi_inst|shift_reg\(4),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(5));

-- Location: LC_X4_Y4_N0
\transfer_storage_register[6]\ : maxv_lcell
-- Equation(s):
-- transfer_storage_register(6) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRIGGER_INST|trigger_to_device~1\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_storage_register(6));

-- Location: LC_X6_Y4_N2
\SPI_IFACE_INST|write_spi_inst|shift_reg[6]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(6) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(6))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg\(5) & 
-- (\SPI_IFACE_INST|write_spi_inst|always3~0\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|shift_reg\(5),
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(6),
	datad => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(6));

-- Location: LC_X6_Y4_N0
\SPI_IFACE_INST|write_spi_inst|shift_reg[7]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|shift_reg\(7) = DFFEAS((\SPI_IFACE_INST|write_spi_inst|always3~2\ & (((transfer_storage_register(7))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~2\ & (\SPI_IFACE_INST|write_spi_inst|shift_reg\(6) & 
-- (\SPI_IFACE_INST|write_spi_inst|always3~0\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|shift_reg\(6),
	datab => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datac => transfer_storage_register(7),
	datad => \SPI_IFACE_INST|write_spi_inst|always3~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|write_spi_inst|shift_reg[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|shift_reg\(7));

-- Location: LC_X11_Y3_N8
\SPI_IFACE_INST|write_spi_inst|DATA_OUT~2\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|DATA_OUT~2_combout\ = (\SPI_IFACE_INST|write_spi_inst|always3~0\ & (((\SPI_IFACE_INST|write_spi_inst|shift_reg\(7))))) # (!\SPI_IFACE_INST|write_spi_inst|always3~0\ & (!\SPI_IFACE_INST|write_spi_inst|always3~1\ & 
-- ((\SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|write_spi_inst|always3~0\,
	datab => \SPI_IFACE_INST|write_spi_inst|always3~1\,
	datac => \SPI_IFACE_INST|write_spi_inst|shift_reg\(7),
	datad => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~2_combout\);

-- Location: LC_X11_Y3_N9
\SPI_IFACE_INST|write_spi_inst|DATA_OUT\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\ = DFFEAS(((\SPI_IFACE_INST|write_spi_inst|DATA_OUT~2_combout\ & ((\SPI_IFACE_INST|write_spi_inst|state\(0)) # (!\SPI_IFACE_INST|write_spi_start~regout\)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|write_spi_inst|state\(0),
	datac => \SPI_IFACE_INST|write_spi_start~regout\,
	datad => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~2_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\);

-- Location: LC_X8_Y4_N6
\SPI_IFACE_INST|SPI_CLK~0\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|SPI_CLK~0_combout\ = (\SPI_IFACE_INST|state\(4) & (((\SPI_IFACE_INST|read_spi_inst|SCLK~regout\)))) # (!\SPI_IFACE_INST|state\(4) & ((\SPI_IFACE_INST|state\(3) & ((\SPI_IFACE_INST|read_spi_inst|SCLK~regout\))) # (!\SPI_IFACE_INST|state\(3) 
-- & (\SPI_IFACE_INST|write_spi_inst|SCLK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|state\(4),
	datab => \SPI_IFACE_INST|state\(3),
	datac => \SPI_IFACE_INST|write_spi_inst|SCLK~regout\,
	datad => \SPI_IFACE_INST|read_spi_inst|SCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|SPI_CLK~0_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_MISO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_MISO,
	combout => \ADC_MISO~combout\);

-- Location: LC_X7_Y4_N8
\SPI_IFACE_INST|SPI_CS_N\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|SPI_CS_N~regout\ = DFFEAS((((\SPI_IFACE_INST|state\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \SPI_IFACE_INST|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|SPI_CS_N~regout\);

-- Location: LC_X9_Y7_N5
\adc_conv_start~0\ : maxv_lcell
-- Equation(s):
-- \adc_conv_start~0_combout\ = (\adc_cnvst_reg.01~regout\ & (((!\adc_conv_start~regout\)))) # (!\adc_cnvst_reg.01~regout\ & ((\adc_cnvst_reg.10~regout\ & ((!\adc_conv_start~regout\))) # (!\adc_cnvst_reg.10~regout\ & (\adc_cnvst_reg.00~regout\ & 
-- \adc_conv_start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_cnvst_reg.00~regout\,
	datab => \adc_cnvst_reg.01~regout\,
	datac => \adc_cnvst_reg.10~regout\,
	datad => \adc_conv_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adc_conv_start~0_combout\);

-- Location: LC_X9_Y7_N7
adc_conv_start : maxv_lcell
-- Equation(s):
-- \adc_conv_start~regout\ = DFFEAS((\adc_cnvst_reg~16_combout\ & (\adc_conv_start~regout\ $ (((\adc_conv_start~0_combout\ & \adc_convst_cmd_reg~regout\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \adc_conv_start~0_combout\,
	datab => \adc_cnvst_reg~16_combout\,
	datac => \adc_convst_cmd_reg~regout\,
	datad => \adc_conv_start~regout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_conv_start~regout\);

-- Location: LC_X11_Y4_N4
\BLOCK_TRANSFER_INST|Selector15~1_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|Selector15~1\ = ((\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\) # ((\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|Selector15~1\);

-- Location: LC_X1_Y7_N4
\SPI_IFACE_INST|read_spi_inst|DOUT[0]~1\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\ = ((\SPI_IFACE_INST|read_spi_inst|state\(3)) # ((\SPI_IFACE_INST|read_spi_inst|state\(2)))) # (!\SPI_IFACE_INST|read_spi_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdfd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datab => \SPI_IFACE_INST|read_spi_inst|state\(3),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\);

-- Location: LC_X11_Y7_N7
\SPI_IFACE_INST|read_spi_inst|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(0) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(0) & \ADC_MISO~combout\))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datad => \ADC_MISO~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(0));

-- Location: LC_X12_Y3_N0
\always9~3\ : maxv_lcell
-- Equation(s):
-- \always9~3_combout\ = (((\serial_receive_data_reg.01~regout\ & state(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial_receive_data_reg.01~regout\,
	datad => state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always9~3_combout\);

-- Location: LC_X12_Y3_N4
\serial_receive_data_reg.10\ : maxv_lcell
-- Equation(s):
-- \serial_receive_data_reg.10~regout\ = DFFEAS((!\always9~4_combout\ & ((\always9~3_combout\) # ((\serial_receive_data_reg.10~regout\ & !state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \serial_receive_data_reg.10~regout\,
	datab => state(6),
	datac => \always9~3_combout\,
	datad => \always9~4_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_receive_data_reg.10~regout\);

-- Location: LC_X12_Y3_N8
\serial_receive_data_reg~9\ : maxv_lcell
-- Equation(s):
-- \serial_receive_data_reg~9_combout\ = (\serial_receive_data_reg.10~regout\ & (state(6) $ (((\serial_receive_data_reg.01~regout\ & state(5)))))) # (!\serial_receive_data_reg.10~regout\ & (((\serial_receive_data_reg.01~regout\ & state(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial_receive_data_reg.10~regout\,
	datab => state(6),
	datac => \serial_receive_data_reg.01~regout\,
	datad => state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \serial_receive_data_reg~9_combout\);

-- Location: LC_X12_Y3_N7
\serial_receive_data_reg.01\ : maxv_lcell
-- Equation(s):
-- \serial_receive_data_reg.01~regout\ = DFFEAS((\serial_receive_data_reg~9_combout\ & (((!\serial_receive_data_reg.00~regout\ & state(5))))) # (!\serial_receive_data_reg~9_combout\ & ((\serial_receive_data_reg.01~regout\) # 
-- ((!\serial_receive_data_reg.00~regout\ & state(5))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \serial_receive_data_reg~9_combout\,
	datab => \serial_receive_data_reg.01~regout\,
	datac => \serial_receive_data_reg.00~regout\,
	datad => state(5),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_receive_data_reg.01~regout\);

-- Location: LC_X12_Y3_N5
\serial_receive_data_reg.00\ : maxv_lcell
-- Equation(s):
-- \serial_receive_data_reg.00~regout\ = DFFEAS((\serial_receive_data_reg.00~regout\ & (((state(5) & \serial_receive_data_reg.01~regout\)) # (!\serial_receive_data_reg~9_combout\))) # (!\serial_receive_data_reg.00~regout\ & (state(5))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \serial_receive_data_reg.00~regout\,
	datab => state(5),
	datac => \serial_receive_data_reg.01~regout\,
	datad => \serial_receive_data_reg~9_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial_receive_data_reg.00~regout\);

-- Location: LC_X12_Y3_N3
\always9~4\ : maxv_lcell
-- Equation(s):
-- \always9~4_combout\ = (((!\serial_receive_data_reg.00~regout\ & state(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \serial_receive_data_reg.00~regout\,
	datad => state(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always9~4_combout\);

-- Location: LC_X10_Y3_N9
\receive_endterm_select[0]\ : maxv_lcell
-- Equation(s):
-- receive_endterm_select(0) = DFFEAS((adc_channel_select(0) $ ((adc_channels_to_read(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \always9~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => adc_channel_select(0),
	datac => adc_channels_to_read(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \always9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => receive_endterm_select(0));

-- Location: LC_X10_Y3_N6
\receive_endterm_select[1]\ : maxv_lcell
-- Equation(s):
-- receive_endterm_select(1) = DFFEAS(adc_channels_to_read(1) $ (adc_channel_select(1) $ (((!adc_channels_to_read(0) & adc_channel_select(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \always9~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => adc_channels_to_read(0),
	datab => adc_channels_to_read(1),
	datac => adc_channel_select(0),
	datad => adc_channel_select(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \always9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => receive_endterm_select(1));

-- Location: LC_X10_Y3_N5
\receive_endterm_select[2]\ : maxv_lcell
-- Equation(s):
-- receive_endterm_select(2) = DFFEAS((adc_channels_to_read(1) & (!adc_channels_to_read(0) & (adc_channel_select(0) & adc_channel_select(1)))) # (!adc_channels_to_read(1) & ((adc_channel_select(1)) # ((!adc_channels_to_read(0) & adc_channel_select(0))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \always9~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7310",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => adc_channels_to_read(0),
	datab => adc_channels_to_read(1),
	datac => adc_channel_select(0),
	datad => adc_channel_select(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \always9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => receive_endterm_select(2));

-- Location: LC_X12_Y4_N8
\mem_array[3][2]~0\ : maxv_lcell
-- Equation(s):
-- \mem_array[3][2]~0_combout\ = (\always9~3_combout\ & (!receive_endterm_select(2) & (!\always9~4_combout\ & \aa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \always9~3_combout\,
	datab => receive_endterm_select(2),
	datac => \always9~4_combout\,
	datad => \aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[3][2]~0_combout\);

-- Location: LC_X12_Y5_N8
\mem_array[0][0]~3\ : maxv_lcell
-- Equation(s):
-- \mem_array[0][0]~3_combout\ = (\adc_data_rcvd_msb~regout\ & (!receive_endterm_select(0) & (!receive_endterm_select(1) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(0),
	datac => receive_endterm_select(1),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[0][0]~3_combout\);

-- Location: LC_X12_Y5_N9
\mem_array[0][0]\ : maxv_lcell
-- Equation(s):
-- \mem_array[0][0]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[0][0]~3_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(0),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[0][0]~regout\);

-- Location: LC_X12_Y5_N6
\mem_array[4][0]~2\ : maxv_lcell
-- Equation(s):
-- \mem_array[4][0]~2_combout\ = (\adc_data_rcvd_msb~regout\ & (!receive_endterm_select(0) & (receive_endterm_select(1) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(0),
	datac => receive_endterm_select(1),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[4][0]~2_combout\);

-- Location: LC_X12_Y5_N2
\mem_array[4][0]\ : maxv_lcell
-- Equation(s):
-- \Mux7~0\ = (mem_array_index(2) & (((mem_array[4][0]) # (mem_array_index(1))))) # (!mem_array_index(2) & (\mem_array[0][0]~regout\ & ((!mem_array_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(2),
	datab => \mem_array[0][0]~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(0),
	datad => mem_array_index(1),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[4][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0\,
	regout => \mem_array[4][0]~regout\);

-- Location: LC_X12_Y6_N7
\mem_array[6][0]~4\ : maxv_lcell
-- Equation(s):
-- \mem_array[6][0]~4_combout\ = (\adc_data_rcvd_msb~regout\ & (receive_endterm_select(0) & (receive_endterm_select(1) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(0),
	datac => receive_endterm_select(1),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[6][0]~4_combout\);

-- Location: LC_X12_Y6_N9
\mem_array[6][0]\ : maxv_lcell
-- Equation(s):
-- \mem_array[6][0]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[6][0]~4_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(0),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[6][0]~regout\);

-- Location: LC_X12_Y4_N6
\mem_array[2][0]~1\ : maxv_lcell
-- Equation(s):
-- \mem_array[2][0]~1_combout\ = (\adc_data_rcvd_msb~regout\ & (!receive_endterm_select(1) & (receive_endterm_select(0) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(1),
	datac => receive_endterm_select(0),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[2][0]~1_combout\);

-- Location: LC_X12_Y6_N8
\mem_array[2][0]\ : maxv_lcell
-- Equation(s):
-- \Mux7~1\ = (mem_array_index(1) & ((\Mux7~0\ & ((\mem_array[6][0]~regout\))) # (!\Mux7~0\ & (mem_array[2][0])))) # (!mem_array_index(1) & (\Mux7~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => \Mux7~0\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(0),
	datad => \mem_array[6][0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1\,
	regout => \mem_array[2][0]~regout\);

-- Location: LC_X12_Y6_N2
\Mux7~2\ : maxv_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (((!mem_array_index(0) & \Mux7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X11_Y4_N8
\BLOCK_TRANSFER_INST|Selector15~0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|Selector15~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22) & \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN\(22),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|Selector15~0\);

-- Location: LC_X10_Y6_N7
\BLOCK_TRANSFER_INST|uc_out[0]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[0]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|Selector15~1\ & ((\BLOCK_TRANSFER_INST|uc_out[0]~reg0\) # ((\Mux7~2_combout\ & \BLOCK_TRANSFER_INST|Selector15~0\)))) # (!\BLOCK_TRANSFER_INST|Selector15~1\ & (\Mux7~2_combout\ & 
-- ((\BLOCK_TRANSFER_INST|Selector15~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|Selector15~1\,
	datab => \Mux7~2_combout\,
	datac => \BLOCK_TRANSFER_INST|uc_out[0]~reg0\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[0]~reg0\);

-- Location: LC_X7_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0) = DFFEAS((((\BLOCK_TRANSFER_INST|uc_out[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \BLOCK_TRANSFER_INST|uc_out[0]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0));

-- Location: LC_X9_Y4_N3
\ACTIVE_TRANSFER_INST_1|uc_out~8_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|uc_out~8\ = (((\ACTIVE_TRANSFER_INST_1|to_transfer_update\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|uc_out~8\);

-- Location: LC_X7_Y5_N9
\BLOCK_TRANSFER_INST|uc_out~2_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out~2\ = ((\aa~combout\(0) & (\BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\ $ (\BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_TRANSFER_INST|block_transfer_state.TRANSFER_BYTE\,
	datac => \aa~combout\(0),
	datad => \BLOCK_TRANSFER_INST|block_transfer_state.SEND_COMMAND\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BLOCK_TRANSFER_INST|uc_out~2\);

-- Location: LC_X7_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(0) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|uc_out~8\) # (\BLOCK_TRANSFER_INST|uc_out~2\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_INST_1|uc_out~8\,
	datad => \BLOCK_TRANSFER_INST|uc_out~2\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(0));

-- Location: LC_X2_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf9f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\);

-- Location: LC_X7_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(0) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(0))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(0));

-- Location: LC_X11_Y7_N2
\SPI_IFACE_INST|read_spi_inst|DOUT[1]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(1) = DFFEAS(((\SPI_IFACE_INST|read_spi_inst|DOUT\(0) & (\SPI_IFACE_INST|read_spi_inst|state\(0)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datab => \SPI_IFACE_INST|read_spi_inst|DOUT\(0),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(1));

-- Location: LC_X12_Y6_N3
\mem_array[6][1]\ : maxv_lcell
-- Equation(s):
-- \mem_array[6][1]~regout\ = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|DOUT\(1)))), GLOBAL(\aa~combout\(1)), VCC, , \mem_array[6][0]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(1),
	aclr => GND,
	ena => \mem_array[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[6][1]~regout\);

-- Location: LC_X12_Y5_N1
\mem_array[0][1]\ : maxv_lcell
-- Equation(s):
-- \mem_array[0][1]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[0][0]~3_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(1),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[0][1]~regout\);

-- Location: LC_X12_Y6_N5
\mem_array[2][1]\ : maxv_lcell
-- Equation(s):
-- \Mux6~0\ = (mem_array_index(1) & ((mem_array_index(2)) # ((mem_array[2][1])))) # (!mem_array_index(1) & (!mem_array_index(2) & ((\mem_array[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(1),
	datad => \mem_array[0][1]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0\,
	regout => \mem_array[2][1]~regout\);

-- Location: LC_X12_Y5_N3
\mem_array[4][1]\ : maxv_lcell
-- Equation(s):
-- \Mux6~1\ = (mem_array_index(2) & ((\Mux6~0\ & (\mem_array[6][1]~regout\)) # (!\Mux6~0\ & ((mem_array[4][1]))))) # (!mem_array_index(2) & (((\Mux6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(2),
	datab => \mem_array[6][1]~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(1),
	datad => \Mux6~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[4][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1\,
	regout => \mem_array[4][1]~regout\);

-- Location: LC_X9_Y5_N2
\Mux6~2\ : maxv_lcell
-- Equation(s):
-- \Mux6~2_combout\ = (((!mem_array_index(0) & \Mux6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X9_Y5_N5
\BLOCK_TRANSFER_INST|uc_out[1]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[1]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|Selector15~0\ & ((\Mux6~2_combout\) # ((\BLOCK_TRANSFER_INST|Selector15~1\ & \BLOCK_TRANSFER_INST|uc_out[1]~reg0\)))) # (!\BLOCK_TRANSFER_INST|Selector15~0\ & 
-- (\BLOCK_TRANSFER_INST|Selector15~1\ & (\BLOCK_TRANSFER_INST|uc_out[1]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|Selector15~0\,
	datab => \BLOCK_TRANSFER_INST|Selector15~1\,
	datac => \BLOCK_TRANSFER_INST|uc_out[1]~reg0\,
	datad => \Mux6~2_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[1]~reg0\);

-- Location: LC_X9_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out[1]~reg0\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[1]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1));

-- Location: LC_X1_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(1) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1), , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(1));

-- Location: LC_X11_Y7_N5
\SPI_IFACE_INST|read_spi_inst|DOUT[2]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(2) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(0) & \SPI_IFACE_INST|read_spi_inst|DOUT\(1)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(2));

-- Location: LC_X12_Y4_N5
\mem_array[7][2]~6\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][2]~6_combout\ = (!\adc_data_rcvd_msb~regout\ & (receive_endterm_select(1) & (receive_endterm_select(0) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(1),
	datac => receive_endterm_select(0),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[7][2]~6_combout\);

-- Location: LC_X11_Y6_N4
\mem_array[7][2]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][2]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][2]~regout\);

-- Location: LC_X12_Y5_N0
\mem_array[4][2]\ : maxv_lcell
-- Equation(s):
-- \mem_array[4][2]~regout\ = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|DOUT\(2)))), GLOBAL(\aa~combout\(1)), VCC, , \mem_array[4][0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	aclr => GND,
	ena => \mem_array[4][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[4][2]~regout\);

-- Location: LC_X12_Y6_N1
\mem_array[6][2]\ : maxv_lcell
-- Equation(s):
-- \Mux5~0\ = (mem_array_index(1) & ((mem_array_index(0)) # ((mem_array[6][2])))) # (!mem_array_index(1) & (!mem_array_index(0) & ((\mem_array[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	datad => \mem_array[4][2]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0\,
	regout => \mem_array[6][2]~regout\);

-- Location: LC_X12_Y4_N4
\mem_array[5][2]~5\ : maxv_lcell
-- Equation(s):
-- \mem_array[5][2]~5_combout\ = (!\adc_data_rcvd_msb~regout\ & (receive_endterm_select(1) & (!receive_endterm_select(0) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(1),
	datac => receive_endterm_select(0),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[5][2]~5_combout\);

-- Location: LC_X11_Y6_N1
\mem_array[5][2]\ : maxv_lcell
-- Equation(s):
-- \Mux5~1\ = (mem_array_index(0) & ((\Mux5~0\ & (\mem_array[7][2]~regout\)) # (!\Mux5~0\ & ((mem_array[5][2]))))) # (!mem_array_index(0) & (((\Mux5~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \mem_array[7][2]~regout\,
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	datad => \Mux5~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1\,
	regout => \mem_array[5][2]~regout\);

-- Location: LC_X12_Y4_N3
\mem_array[3][2]~8\ : maxv_lcell
-- Equation(s):
-- \mem_array[3][2]~8_combout\ = (!\adc_data_rcvd_msb~regout\ & (!receive_endterm_select(1) & (receive_endterm_select(0) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(1),
	datac => receive_endterm_select(0),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[3][2]~8_combout\);

-- Location: LC_X12_Y4_N2
\mem_array[3][2]\ : maxv_lcell
-- Equation(s):
-- \mem_array[3][2]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[3][2]~8_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[3][2]~regout\);

-- Location: LC_X12_Y5_N5
\mem_array[0][2]\ : maxv_lcell
-- Equation(s):
-- \mem_array[0][2]~regout\ = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|DOUT\(2)))), GLOBAL(\aa~combout\(1)), VCC, , \mem_array[0][0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	aclr => GND,
	ena => \mem_array[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[0][2]~regout\);

-- Location: LC_X12_Y6_N6
\mem_array[2][2]\ : maxv_lcell
-- Equation(s):
-- \Mux5~2\ = (mem_array_index(1) & ((mem_array_index(0)) # ((mem_array[2][2])))) # (!mem_array_index(1) & (!mem_array_index(0) & ((\mem_array[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	datad => \mem_array[0][2]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2\,
	regout => \mem_array[2][2]~regout\);

-- Location: LC_X12_Y4_N1
\mem_array[1][2]~7\ : maxv_lcell
-- Equation(s):
-- \mem_array[1][2]~7_combout\ = (!\adc_data_rcvd_msb~regout\ & (!receive_endterm_select(1) & (!receive_endterm_select(0) & \mem_array[3][2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_rcvd_msb~regout\,
	datab => receive_endterm_select(1),
	datac => receive_endterm_select(0),
	datad => \mem_array[3][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_array[1][2]~7_combout\);

-- Location: LC_X12_Y4_N7
\mem_array[1][2]\ : maxv_lcell
-- Equation(s):
-- \Mux5~3\ = (mem_array_index(0) & ((\Mux5~2\ & (\mem_array[3][2]~regout\)) # (!\Mux5~2\ & ((mem_array[1][2]))))) # (!mem_array_index(0) & (((\Mux5~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(0),
	datab => \mem_array[3][2]~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	datad => \Mux5~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3\,
	regout => \mem_array[1][2]~regout\);

-- Location: LC_X10_Y6_N1
\Mux5~4\ : maxv_lcell
-- Equation(s):
-- \Mux5~4_combout\ = ((mem_array_index(2) & (\Mux5~1\)) # (!mem_array_index(2) & ((\Mux5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1\,
	datac => mem_array_index(2),
	datad => \Mux5~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X10_Y6_N5
\BLOCK_TRANSFER_INST|uc_out[2]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[2]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|Selector15~1\ & ((\BLOCK_TRANSFER_INST|uc_out[2]~reg0\) # ((\Mux5~4_combout\ & \BLOCK_TRANSFER_INST|Selector15~0\)))) # (!\BLOCK_TRANSFER_INST|Selector15~1\ & (\Mux5~4_combout\ & 
-- ((\BLOCK_TRANSFER_INST|Selector15~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|Selector15~1\,
	datab => \Mux5~4_combout\,
	datac => \BLOCK_TRANSFER_INST|uc_out[2]~reg0\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[2]~reg0\);

-- Location: LC_X10_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out[2]~reg0\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[2]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2));

-- Location: LC_X1_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(2) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2), , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(2));

-- Location: LC_X11_Y7_N1
\SPI_IFACE_INST|read_spi_inst|DOUT[3]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(3) = DFFEAS((\SPI_IFACE_INST|read_spi_inst|DOUT\(2) & (((\SPI_IFACE_INST|read_spi_inst|state\(0))))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	dataa => \SPI_IFACE_INST|read_spi_inst|DOUT\(2),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(3));

-- Location: LC_X11_Y6_N6
\mem_array[7][3]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][3]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][3]~regout\);

-- Location: LC_X12_Y5_N7
\mem_array[4][3]\ : maxv_lcell
-- Equation(s):
-- \mem_array[4][3]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[4][0]~2_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[4][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[4][3]~regout\);

-- Location: LC_X12_Y6_N4
\mem_array[6][3]\ : maxv_lcell
-- Equation(s):
-- \Mux4~0\ = (mem_array_index(1) & ((mem_array_index(0)) # ((mem_array[6][3])))) # (!mem_array_index(1) & (!mem_array_index(0) & ((\mem_array[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	datad => \mem_array[4][3]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0\,
	regout => \mem_array[6][3]~regout\);

-- Location: LC_X11_Y6_N0
\mem_array[5][3]\ : maxv_lcell
-- Equation(s):
-- \Mux4~1\ = (mem_array_index(0) & ((\Mux4~0\ & (\mem_array[7][3]~regout\)) # (!\Mux4~0\ & ((mem_array[5][3]))))) # (!mem_array_index(0) & (((\Mux4~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \mem_array[7][3]~regout\,
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	datad => \Mux4~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1\,
	regout => \mem_array[5][3]~regout\);

-- Location: LC_X12_Y4_N9
\mem_array[3][3]\ : maxv_lcell
-- Equation(s):
-- \mem_array[3][3]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[3][2]~8_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[3][3]~regout\);

-- Location: LC_X12_Y5_N4
\mem_array[0][3]\ : maxv_lcell
-- Equation(s):
-- \mem_array[0][3]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[0][0]~3_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[0][3]~regout\);

-- Location: LC_X12_Y6_N0
\mem_array[2][3]\ : maxv_lcell
-- Equation(s):
-- \Mux4~2\ = (mem_array_index(1) & ((mem_array_index(0)) # ((mem_array[2][3])))) # (!mem_array_index(1) & (!mem_array_index(0) & ((\mem_array[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(0),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	datad => \mem_array[0][3]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2\,
	regout => \mem_array[2][3]~regout\);

-- Location: LC_X12_Y4_N0
\mem_array[1][3]\ : maxv_lcell
-- Equation(s):
-- \Mux4~3\ = (mem_array_index(0) & ((\Mux4~2\ & (\mem_array[3][3]~regout\)) # (!\Mux4~2\ & ((mem_array[1][3]))))) # (!mem_array_index(0) & (((\Mux4~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(0),
	datab => \mem_array[3][3]~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	datad => \Mux4~2\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3\,
	regout => \mem_array[1][3]~regout\);

-- Location: LC_X10_Y6_N3
\Mux4~4\ : maxv_lcell
-- Equation(s):
-- \Mux4~4_combout\ = ((mem_array_index(2) & (\Mux4~1\)) # (!mem_array_index(2) & ((\Mux4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1\,
	datac => mem_array_index(2),
	datad => \Mux4~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X10_Y6_N6
\BLOCK_TRANSFER_INST|uc_out[3]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[3]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|Selector15~0\ & ((\Mux4~4_combout\) # ((\BLOCK_TRANSFER_INST|uc_out[3]~reg0\ & \BLOCK_TRANSFER_INST|Selector15~1\)))) # (!\BLOCK_TRANSFER_INST|Selector15~0\ & 
-- (\BLOCK_TRANSFER_INST|uc_out[3]~reg0\ & (\BLOCK_TRANSFER_INST|Selector15~1\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|Selector15~0\,
	datab => \BLOCK_TRANSFER_INST|uc_out[3]~reg0\,
	datac => \BLOCK_TRANSFER_INST|Selector15~1\,
	datad => \Mux4~4_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[3]~reg0\);

-- Location: LC_X10_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out[3]~reg0\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[3]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3));

-- Location: LC_X2_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_from_device\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(3));

-- Location: LC_X11_Y7_N0
\SPI_IFACE_INST|read_spi_inst|DOUT[4]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(4) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(0) & \SPI_IFACE_INST|read_spi_inst|DOUT\(3)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(3),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(4));

-- Location: LC_X9_Y6_N2
\mem_array[1][4]\ : maxv_lcell
-- Equation(s):
-- \mem_array[1][4]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[1][2]~7_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(4),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[1][4]~regout\);

-- Location: LC_X9_Y6_N0
\mem_array[3][4]\ : maxv_lcell
-- Equation(s):
-- \Mux3~0\ = (mem_array_index(1) & ((mem_array_index(2)) # ((mem_array[3][4])))) # (!mem_array_index(1) & (!mem_array_index(2) & ((\mem_array[1][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(4),
	datad => \mem_array[1][4]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0\,
	regout => \mem_array[3][4]~regout\);

-- Location: LC_X12_Y2_N4
\mem_array[7][4]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][4]~regout\ = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|DOUT\(4)))), GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(4),
	aclr => GND,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][4]~regout\);

-- Location: LC_X11_Y7_N8
\mem_array[5][4]\ : maxv_lcell
-- Equation(s):
-- \Mux3~1\ = (\Mux3~0\ & (((\mem_array[7][4]~regout\)) # (!mem_array_index(2)))) # (!\Mux3~0\ & (mem_array_index(2) & (mem_array[5][4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Mux3~0\,
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(4),
	datad => \mem_array[7][4]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1\,
	regout => \mem_array[5][4]~regout\);

-- Location: LC_X11_Y7_N9
\Mux3~2\ : maxv_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (((mem_array_index(0) & \Mux3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux3~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X10_Y6_N4
\BLOCK_TRANSFER_INST|uc_out[4]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[4]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|Selector15~1\ & ((\BLOCK_TRANSFER_INST|uc_out[4]~reg0\) # ((\Mux3~2_combout\ & \BLOCK_TRANSFER_INST|Selector15~0\)))) # (!\BLOCK_TRANSFER_INST|Selector15~1\ & (\Mux3~2_combout\ & 
-- ((\BLOCK_TRANSFER_INST|Selector15~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|Selector15~1\,
	datab => \Mux3~2_combout\,
	datac => \BLOCK_TRANSFER_INST|uc_out[4]~reg0\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[4]~reg0\);

-- Location: LC_X10_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(4) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out[4]~reg0\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[4]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(4));

-- Location: LC_X7_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(4) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(4), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(4));

-- Location: LC_X11_Y7_N6
\SPI_IFACE_INST|read_spi_inst|DOUT[5]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(5) = DFFEAS(((\SPI_IFACE_INST|read_spi_inst|DOUT\(4) & (\SPI_IFACE_INST|read_spi_inst|state\(0)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datab => \SPI_IFACE_INST|read_spi_inst|DOUT\(4),
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(5));

-- Location: LC_X11_Y6_N5
\mem_array[7][5]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][5]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][5]~regout\);

-- Location: LC_X9_Y6_N9
\mem_array[1][5]\ : maxv_lcell
-- Equation(s):
-- \mem_array[1][5]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[1][2]~7_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(5),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[1][5]~regout\);

-- Location: LC_X9_Y6_N3
\mem_array[3][5]\ : maxv_lcell
-- Equation(s):
-- \Mux2~0\ = (mem_array_index(1) & ((mem_array_index(2)) # ((mem_array[3][5])))) # (!mem_array_index(1) & (!mem_array_index(2) & ((\mem_array[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(5),
	datad => \mem_array[1][5]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0\,
	regout => \mem_array[3][5]~regout\);

-- Location: LC_X11_Y6_N3
\mem_array[5][5]\ : maxv_lcell
-- Equation(s):
-- \Mux2~1\ = (mem_array_index(2) & ((\Mux2~0\ & (\mem_array[7][5]~regout\)) # (!\Mux2~0\ & ((mem_array[5][5]))))) # (!mem_array_index(2) & (((\Mux2~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \mem_array[7][5]~regout\,
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(5),
	datad => \Mux2~0\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1\,
	regout => \mem_array[5][5]~regout\);

-- Location: LC_X9_Y5_N6
\Mux2~2\ : maxv_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (((mem_array_index(0) & \Mux2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux2~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X9_Y5_N1
\BLOCK_TRANSFER_INST|uc_out[5]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[5]~reg0\ = DFFEAS((\Mux2~2_combout\ & ((\BLOCK_TRANSFER_INST|Selector15~0\) # ((\BLOCK_TRANSFER_INST|Selector15~1\ & \BLOCK_TRANSFER_INST|uc_out[5]~reg0\)))) # (!\Mux2~2_combout\ & (\BLOCK_TRANSFER_INST|Selector15~1\ & 
-- (\BLOCK_TRANSFER_INST|uc_out[5]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Mux2~2_combout\,
	datab => \BLOCK_TRANSFER_INST|Selector15~1\,
	datac => \BLOCK_TRANSFER_INST|uc_out[5]~reg0\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[5]~reg0\);

-- Location: LC_X7_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(5) = DFFEAS((((\BLOCK_TRANSFER_INST|uc_out[5]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[5]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(5));

-- Location: LC_X7_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(5) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(5), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(5));

-- Location: LC_X11_Y7_N3
\SPI_IFACE_INST|read_spi_inst|DOUT[6]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(6) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(0) & \SPI_IFACE_INST|read_spi_inst|DOUT\(5)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(5),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(6));

-- Location: LC_X11_Y6_N8
\mem_array[7][6]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][6]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][6]~regout\);

-- Location: LC_X9_Y6_N8
\mem_array[1][6]\ : maxv_lcell
-- Equation(s):
-- \mem_array[1][6]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[1][2]~7_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(6),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[1][6]~regout\);

-- Location: LC_X9_Y6_N7
\mem_array[3][6]\ : maxv_lcell
-- Equation(s):
-- \Mux1~0\ = (mem_array_index(1) & ((mem_array_index(2)) # ((mem_array[3][6])))) # (!mem_array_index(1) & (!mem_array_index(2) & ((\mem_array[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(6),
	datad => \mem_array[1][6]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0\,
	regout => \mem_array[3][6]~regout\);

-- Location: LC_X11_Y6_N2
\mem_array[5][6]\ : maxv_lcell
-- Equation(s):
-- \Mux1~1\ = (\Mux1~0\ & ((\mem_array[7][6]~regout\) # ((!mem_array_index(2))))) # (!\Mux1~0\ & (((mem_array[5][6] & mem_array_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \mem_array[7][6]~regout\,
	datab => \Mux1~0\,
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(6),
	datad => mem_array_index(2),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1\,
	regout => \mem_array[5][6]~regout\);

-- Location: LC_X9_Y5_N0
\Mux1~2\ : maxv_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (((mem_array_index(0) & \Mux1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X9_Y5_N3
\BLOCK_TRANSFER_INST|uc_out[6]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[6]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|uc_out[6]~reg0\ & ((\BLOCK_TRANSFER_INST|Selector15~1\) # ((\Mux1~2_combout\ & \BLOCK_TRANSFER_INST|Selector15~0\)))) # (!\BLOCK_TRANSFER_INST|uc_out[6]~reg0\ & (((\Mux1~2_combout\ & 
-- \BLOCK_TRANSFER_INST|Selector15~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|uc_out[6]~reg0\,
	datab => \BLOCK_TRANSFER_INST|Selector15~1\,
	datac => \Mux1~2_combout\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[6]~reg0\);

-- Location: LC_X7_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(6) = DFFEAS((((\BLOCK_TRANSFER_INST|uc_out[6]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => \BLOCK_TRANSFER_INST|uc_out[6]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(6));

-- Location: LC_X7_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(6) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(6))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(6));

-- Location: LC_X11_Y7_N4
\SPI_IFACE_INST|read_spi_inst|DOUT[7]\ : maxv_lcell
-- Equation(s):
-- \SPI_IFACE_INST|read_spi_inst|DOUT\(7) = DFFEAS((((\SPI_IFACE_INST|read_spi_inst|state\(0) & \SPI_IFACE_INST|read_spi_inst|DOUT\(6)))), GLOBAL(\SPI_IFACE_INST|CLK_SPI~regout\), GLOBAL(\aa~combout\(0)), , \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \SPI_IFACE_INST|CLK_SPI~regout\,
	datac => \SPI_IFACE_INST|read_spi_inst|state\(0),
	datad => \SPI_IFACE_INST|read_spi_inst|DOUT\(6),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \SPI_IFACE_INST|read_spi_inst|DOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_IFACE_INST|read_spi_inst|DOUT\(7));

-- Location: LC_X9_Y6_N1
\mem_array[1][7]\ : maxv_lcell
-- Equation(s):
-- \mem_array[1][7]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[1][2]~7_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(7),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[1][7]~regout\);

-- Location: LC_X9_Y6_N5
\mem_array[3][7]\ : maxv_lcell
-- Equation(s):
-- \Mux0~0\ = (mem_array_index(1) & ((mem_array_index(2)) # ((mem_array[3][7])))) # (!mem_array_index(1) & (!mem_array_index(2) & ((\mem_array[1][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => mem_array_index(1),
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(7),
	datad => \mem_array[1][7]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[3][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => \mem_array[3][7]~regout\);

-- Location: LC_X11_Y6_N9
\mem_array[7][7]\ : maxv_lcell
-- Equation(s):
-- \mem_array[7][7]~regout\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \mem_array[7][2]~6_combout\, \SPI_IFACE_INST|read_spi_inst|DOUT\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(7),
	aclr => GND,
	sload => VCC,
	ena => \mem_array[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_array[7][7]~regout\);

-- Location: LC_X11_Y6_N7
\mem_array[5][7]\ : maxv_lcell
-- Equation(s):
-- \Mux0~1\ = (\Mux0~0\ & (((\mem_array[7][7]~regout\)) # (!mem_array_index(2)))) # (!\Mux0~0\ & (mem_array_index(2) & (mem_array[5][7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \Mux0~0\,
	datab => mem_array_index(2),
	datac => \SPI_IFACE_INST|read_spi_inst|DOUT\(7),
	datad => \mem_array[7][7]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \mem_array[5][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1\,
	regout => \mem_array[5][7]~regout\);

-- Location: LC_X9_Y5_N9
\Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (((mem_array_index(0) & \Mux0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mem_array_index(0),
	datad => \Mux0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X9_Y5_N4
\BLOCK_TRANSFER_INST|uc_out[7]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \BLOCK_TRANSFER_INST|uc_out[7]~reg0\ = DFFEAS((\BLOCK_TRANSFER_INST|uc_out[7]~reg0\ & ((\BLOCK_TRANSFER_INST|Selector15~1\) # ((\Mux0~2_combout\ & \BLOCK_TRANSFER_INST|Selector15~0\)))) # (!\BLOCK_TRANSFER_INST|uc_out[7]~reg0\ & (((\Mux0~2_combout\ & 
-- \BLOCK_TRANSFER_INST|Selector15~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \BLOCK_TRANSFER_INST|uc_out[7]~reg0\,
	datab => \BLOCK_TRANSFER_INST|Selector15~1\,
	datac => \Mux0~2_combout\,
	datad => \BLOCK_TRANSFER_INST|Selector15~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLOCK_TRANSFER_INST|uc_out[7]~reg0\);

-- Location: LC_X9_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(7) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \BLOCK_TRANSFER_INST|uc_out[7]~reg0\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => \BLOCK_TRANSFER_INST|uc_out[7]~reg0\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(7));

-- Location: LC_X2_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(7) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(7)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\bc_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_bc_out(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\bc_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_WR\,
	oe => VCC,
	padio => ww_bc_out(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\bc_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N\,
	oe => VCC,
	padio => ww_bc_out(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_SER[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_SER(0));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_SER[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_SER(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\,
	oe => VCC,
	padio => ww_LB_AD(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|SPI_CLK~0_combout\,
	oe => VCC,
	padio => ww_LB_AD(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC_MISO~combout\,
	oe => VCC,
	padio => ww_LB_AD(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|ALT_INV_SPI_CS_N~regout\,
	oe => VCC,
	padio => ww_LB_AD(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_adc_conv_start~regout\,
	oe => VCC,
	padio => ww_LB_AD(4));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_AD[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC_EOC~combout\,
	oe => VCC,
	padio => ww_LB_AD(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(2));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(3));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(4));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(6));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOH[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOH(7));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(0));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(1));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(3));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(4));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(5));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(6));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_IOL[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LB_IOL(7));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ADC_MOSI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|write_spi_inst|DATA_OUT~regout\,
	oe => VCC,
	padio => ww_ADC_MOSI);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ADC_CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|SPI_CLK~0_combout\,
	oe => VCC,
	padio => ww_ADC_CLK);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ADC_CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SPI_IFACE_INST|ALT_INV_SPI_CS_N~regout\,
	oe => VCC,
	padio => ww_ADC_CS);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ADC_CNVST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_adc_conv_start~regout\,
	oe => VCC,
	padio => ww_ADC_CNVST);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_DIR_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_TR_DIR_1);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_OE_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_TR_OE_1);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_DIR_2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_TR_DIR_2);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_OE_2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_TR_OE_2);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_DIR_3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_TR_DIR_3);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_OE_3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_TR_OE_3);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW_USER_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SW_USER_1);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW_USER_2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SW_USER_2);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_LED(3));
END structure;


