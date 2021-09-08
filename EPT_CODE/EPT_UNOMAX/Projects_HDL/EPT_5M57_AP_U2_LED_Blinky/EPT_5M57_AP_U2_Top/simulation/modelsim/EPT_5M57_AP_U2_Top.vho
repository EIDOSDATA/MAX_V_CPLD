-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/04/2021 17:40:33"

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
	LB_SER : INOUT std_logic_vector(1 DOWNTO 0);
	LB_AD : IN std_logic_vector(5 DOWNTO 0);
	LB_IOH : IN std_logic_vector(7 DOWNTO 0);
	LB_IOL : OUT std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_LB_AD : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LB_IOH : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LB_IOL : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TR_DIR_1 : std_logic;
SIGNAL ww_TR_OE_1 : std_logic;
SIGNAL ww_TR_DIR_2 : std_logic;
SIGNAL ww_TR_OE_2 : std_logic;
SIGNAL ww_TR_DIR_3 : std_logic;
SIGNAL ww_TR_OE_3 : std_logic;
SIGNAL ww_SW_USER_1 : std_logic;
SIGNAL ww_SW_USER_2 : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~5\ : std_logic;
SIGNAL \LessThan4~5\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~10\ : std_logic;
SIGNAL \LessThan4~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~15\ : std_logic;
SIGNAL \LessThan4~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~20\ : std_logic;
SIGNAL \LessThan4~20\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_SET\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~25\ : std_logic;
SIGNAL \LessThan4~25\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~30\ : std_logic;
SIGNAL \LessThan4~30\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~35\ : std_logic;
SIGNAL \LessThan4~35\ : std_logic;
SIGNAL \LessThan4~40\ : std_logic;
SIGNAL \LessThan4~45\ : std_logic;
SIGNAL \LessThan4~50\ : std_logic;
SIGNAL \LessThan4~55\ : std_logic;
SIGNAL \LessThan4~60\ : std_logic;
SIGNAL \LessThan4~65\ : std_logic;
SIGNAL \LessThan4~70\ : std_logic;
SIGNAL \LessThan4~75\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~39COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\ : std_logic;
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
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\ : std_logic;
SIGNAL \reset_counter[1]~21\ : std_logic;
SIGNAL \reset_counter[1]~21COUT1_24\ : std_logic;
SIGNAL \reset_counter[2]~19\ : std_logic;
SIGNAL \reset_counter[2]~19COUT1_25\ : std_logic;
SIGNAL \reset_counter[3]~1\ : std_logic;
SIGNAL \reset_counter[3]~1COUT1_26\ : std_logic;
SIGNAL \reset_counter[4]~3\ : std_logic;
SIGNAL \reset_counter[4]~3COUT1_27\ : std_logic;
SIGNAL \reset_counter[5]~5\ : std_logic;
SIGNAL \reset_counter[6]~7\ : std_logic;
SIGNAL \reset_counter[6]~7COUT1_28\ : std_logic;
SIGNAL \reset_counter[7]~9\ : std_logic;
SIGNAL \reset_counter[7]~9COUT1_29\ : std_logic;
SIGNAL \reset_counter[8]~11\ : std_logic;
SIGNAL \reset_counter[8]~11COUT1_30\ : std_logic;
SIGNAL \reset_counter[9]~13\ : std_logic;
SIGNAL \reset_counter[9]~13COUT1_31\ : std_logic;
SIGNAL \reset_counter[10]~15\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \reset_signal_reg~regout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|next_in[2]~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~7\ : std_logic;
SIGNAL \shift_count_value[2]~1_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ : std_logic;
SIGNAL \shift_count_value[2]~0_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\ : std_logic;
SIGNAL \LFSR_INST|F[0]|Q~regout\ : std_logic;
SIGNAL \LFSR_INST|F[1]|Q~regout\ : std_logic;
SIGNAL \LFSR_INST|F[2]|Q~regout\ : std_logic;
SIGNAL \LFSR_INST|F[3]|Q~regout\ : std_logic;
SIGNAL \LFSR_INST|G1~combout\ : std_logic;
SIGNAL \random_number[0]~0\ : std_logic;
SIGNAL \random_number[1]~2_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\ : std_logic;
SIGNAL \shift_count_value[2]~2_combout\ : std_logic;
SIGNAL \Add3~17_cout0\ : std_logic;
SIGNAL \Add3~17COUT1_21\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \shift_count_value~7_combout\ : std_logic;
SIGNAL \shift_count_value~8_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \start_blinky~regout\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~4\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_device~5\ : std_logic;
SIGNAL \timer_value[16]~0_combout\ : std_logic;
SIGNAL \led_delay_counter[9]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \led_delay_counter[0]~48\ : std_logic;
SIGNAL \led_delay_counter[0]~48COUT1_50\ : std_logic;
SIGNAL \led_delay_counter[1]~46\ : std_logic;
SIGNAL \led_delay_counter[2]~44\ : std_logic;
SIGNAL \led_delay_counter[2]~44COUT1_51\ : std_logic;
SIGNAL \led_delay_counter[3]~42\ : std_logic;
SIGNAL \led_delay_counter[3]~42COUT1_52\ : std_logic;
SIGNAL \led_delay_counter[4]~40\ : std_logic;
SIGNAL \led_delay_counter[4]~40COUT1_53\ : std_logic;
SIGNAL \led_delay_counter[5]~38\ : std_logic;
SIGNAL \led_delay_counter[5]~38COUT1_54\ : std_logic;
SIGNAL \led_delay_counter[6]~36\ : std_logic;
SIGNAL \led_delay_counter[7]~34\ : std_logic;
SIGNAL \led_delay_counter[7]~34COUT1_55\ : std_logic;
SIGNAL \led_delay_counter[8]~32\ : std_logic;
SIGNAL \led_delay_counter[8]~32COUT1_56\ : std_logic;
SIGNAL \led_delay_counter[9]~30\ : std_logic;
SIGNAL \led_delay_counter[9]~30COUT1_57\ : std_logic;
SIGNAL \led_delay_counter[10]~28\ : std_logic;
SIGNAL \led_delay_counter[10]~28COUT1_58\ : std_logic;
SIGNAL \led_delay_counter[11]~26\ : std_logic;
SIGNAL \led_delay_counter[12]~24\ : std_logic;
SIGNAL \led_delay_counter[12]~24COUT1_59\ : std_logic;
SIGNAL \led_delay_counter[13]~22\ : std_logic;
SIGNAL \led_delay_counter[13]~22COUT1_60\ : std_logic;
SIGNAL \led_delay_counter[14]~20\ : std_logic;
SIGNAL \led_delay_counter[14]~20COUT1_61\ : std_logic;
SIGNAL \led_delay_counter[15]~18\ : std_logic;
SIGNAL \led_delay_counter[15]~18COUT1_62\ : std_logic;
SIGNAL \led_delay_counter[16]~16\ : std_logic;
SIGNAL \led_delay_counter[17]~14\ : std_logic;
SIGNAL \led_delay_counter[17]~14COUT1_63\ : std_logic;
SIGNAL \led_delay_counter[18]~12\ : std_logic;
SIGNAL \led_delay_counter[18]~12COUT1_64\ : std_logic;
SIGNAL \led_delay_counter[19]~10\ : std_logic;
SIGNAL \led_delay_counter[19]~10COUT1_65\ : std_logic;
SIGNAL \led_delay_counter[20]~8\ : std_logic;
SIGNAL \led_delay_counter[20]~8COUT1_66\ : std_logic;
SIGNAL \led_delay_counter[21]~6\ : std_logic;
SIGNAL \led_delay_counter[22]~4\ : std_logic;
SIGNAL \led_delay_counter[22]~4COUT1_67\ : std_logic;
SIGNAL \LessThan4~77_cout0\ : std_logic;
SIGNAL \LessThan4~77COUT1_81\ : std_logic;
SIGNAL \LessThan4~72_cout0\ : std_logic;
SIGNAL \LessThan4~72COUT1_82\ : std_logic;
SIGNAL \LessThan4~67_cout\ : std_logic;
SIGNAL \LessThan4~62_cout0\ : std_logic;
SIGNAL \LessThan4~62COUT1_83\ : std_logic;
SIGNAL \LessThan4~57_cout0\ : std_logic;
SIGNAL \LessThan4~57COUT1_84\ : std_logic;
SIGNAL \LessThan4~52_cout0\ : std_logic;
SIGNAL \LessThan4~52COUT1_85\ : std_logic;
SIGNAL \LessThan4~47_cout0\ : std_logic;
SIGNAL \LessThan4~47COUT1_86\ : std_logic;
SIGNAL \LessThan4~42_cout\ : std_logic;
SIGNAL \LessThan4~37_cout0\ : std_logic;
SIGNAL \LessThan4~37COUT1_87\ : std_logic;
SIGNAL \LessThan4~32_cout0\ : std_logic;
SIGNAL \LessThan4~32COUT1_88\ : std_logic;
SIGNAL \LessThan4~27_cout0\ : std_logic;
SIGNAL \LessThan4~27COUT1_89\ : std_logic;
SIGNAL \LessThan4~22_cout0\ : std_logic;
SIGNAL \LessThan4~22COUT1_90\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~12_cout0\ : std_logic;
SIGNAL \LessThan4~12COUT1_91\ : std_logic;
SIGNAL \LessThan4~7_cout0\ : std_logic;
SIGNAL \LessThan4~7COUT1_92\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \shift_count_value[2]~6_combout\ : std_logic;
SIGNAL \led_reg[0]~0\ : std_logic;
SIGNAL \led_reg[0]~1_combout\ : std_logic;
SIGNAL \shift_count_value~3_combout\ : std_logic;
SIGNAL \shift_count_value~4_combout\ : std_logic;
SIGNAL \shift_count_value~14\ : std_logic;
SIGNAL \shift_count_value~10_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_22\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \shift_count_value~11_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_23\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \shift_count_value~13_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Equal1~1\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Equal0~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Equal0~1\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Equal1~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_in_received_reg\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|always0~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Selector0~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|Selector0~1\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\ : std_logic;
SIGNAL \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ : std_logic;
SIGNAL \start_transfer~0_combout\ : std_logic;
SIGNAL \start_transfer_reg~regout\ : std_logic;
SIGNAL \start_transfer~regout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_in\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|always0~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_INST_1|to_transfer_update\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\ : std_logic;
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
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|trigger_to_host_flag\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|xint[10]~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Mux0~3\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~3\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~2\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~0\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~1\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|Equal1~4\ : std_logic;
SIGNAL \ACTIVE_TRIGGER_INST|to_trigupdate\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\ : std_logic;
SIGNAL \LED[1]~5\ : std_logic;
SIGNAL \LED[0]~en_regout\ : std_logic;
SIGNAL \LED[1]~en_regout\ : std_logic;
SIGNAL \LED[2]~en_regout\ : std_logic;
SIGNAL \LED[3]~en_regout\ : std_logic;
SIGNAL \transfer_out_byte[0]~1_combout\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ : std_logic;
SIGNAL \aa~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL state : std_logic_vector(6 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\ : std_logic_vector(8 DOWNTO 0);
SIGNAL random_number : std_logic_vector(3 DOWNTO 0);
SIGNAL \bc_in~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL led_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL static_load_value : std_logic_vector(3 DOWNTO 0);
SIGNAL shift_count_value : std_logic_vector(3 DOWNTO 0);
SIGNAL reset_counter : std_logic_vector(11 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\ : std_logic_vector(2 DOWNTO 0);
SIGNAL random_num_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_INST_1|state_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|xint\ : std_logic_vector(10 DOWNTO 8);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\ : std_logic_vector(2 DOWNTO 0);
SIGNAL timer_value : std_logic_vector(23 DOWNTO 0);
SIGNAL led_delay_counter : std_logic_vector(23 DOWNTO 0);
SIGNAL transfer_out_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_INST_1|start_transfer_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|to_trigupdate_counter\ : std_logic_vector(10 DOWNTO 8);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ACTIVE_TRIGGER_INST|previous_to_trigupdate\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_signal_reg~regout\ : std_logic;
SIGNAL \ALT_INV_LED[3]~en_regout\ : std_logic;
SIGNAL \ALT_INV_LED[2]~en_regout\ : std_logic;
SIGNAL \ALT_INV_LED[1]~en_regout\ : std_logic;
SIGNAL \ALT_INV_LED[0]~en_regout\ : std_logic;
SIGNAL \ALT_INV_aa~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_RD_N~1\ : std_logic;
SIGNAL \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_WR\ : std_logic;

BEGIN

ww_aa <= aa;
ww_bc_in <= bc_in;
bc_out <= ww_bc_out;
ww_LB_AD <= LB_AD;
ww_LB_IOH <= LB_IOH;
LB_IOL <= ww_LB_IOL;
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
\ALT_INV_reset_signal_reg~regout\ <= NOT \reset_signal_reg~regout\;
\ALT_INV_LED[3]~en_regout\ <= NOT \LED[3]~en_regout\;
\ALT_INV_LED[2]~en_regout\ <= NOT \LED[2]~en_regout\;
\ALT_INV_LED[1]~en_regout\ <= NOT \LED[1]~en_regout\;
\ALT_INV_LED[0]~en_regout\ <= NOT \LED[0]~en_regout\;
\ALT_INV_aa~combout\(0) <= NOT \aa~combout\(0);
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_RD_N~1\ <= NOT \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\;
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

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aa[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_aa(0),
	combout => \aa~combout\(0));

-- Location: LC_X3_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\ = DFFEAS((((!\bc_in~combout\(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datac => \bc_in~combout\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\);

-- Location: LC_X3_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\);

-- Location: LC_X3_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_rxf_n_reg\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1));

-- Location: LC_X5_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44e4",
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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\);

-- Location: LC_X5_Y5_N5
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

-- Location: LC_X5_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\);

-- Location: LC_X5_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2));

-- Location: LC_X6_Y6_N0
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

-- Location: LC_X6_Y6_N1
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

-- Location: LC_X6_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) $ ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~34COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\);

-- Location: LC_X6_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~29COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~24COUT1_4\);

-- Location: LC_X6_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~22\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3));

-- Location: LC_X6_Y6_N4
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

-- Location: LC_X6_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~17\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4));

-- Location: LC_X6_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5))))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~12\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~14COUT1_5\);

-- Location: LC_X6_Y7_N6
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

-- Location: LC_X6_Y6_N6
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

-- Location: LC_X6_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~7\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6));

-- Location: LC_X6_Y6_N7
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

-- Location: LC_X6_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\ & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7));

-- Location: LC_X5_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\);

-- Location: LC_X6_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7) = (GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\)))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[7]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7));

-- Location: LC_X7_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0) = ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[0]~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0));

-- Location: LC_X7_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2) = ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[2]~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2));

-- Location: LC_X7_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & (H1_control_multiplexor[2] & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2), , , VCC)

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2));

-- Location: LC_X7_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & !H1_control_multiplexor[0]))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) $ (((H1_control_multiplexor[0])))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "015a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0));

-- Location: LC_X6_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1) = ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[1]~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1));

-- Location: LC_X7_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0)) # ((H1_control_multiplexor[1]) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1), , , VCC)

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1));

-- Location: LC_X7_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\ & \aa~combout\(0))))

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\,
	datad => \aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\);

-- Location: LC_X6_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((H1_length_to_device[7])))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7));

-- Location: LC_X5_Y4_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4) = ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[4]~4\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4));

-- Location: LC_X10_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~4\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~4\);

-- Location: LC_X10_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~4\, , , VCC)

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~4\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4));

-- Location: LC_X5_Y4_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3) = (GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\)))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[3]~3\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3));

-- Location: LC_X8_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((H1_length_to_device[3])))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3));

-- Location: LC_X10_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~2\);

-- Location: LC_X10_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~2\, , , VCC)

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~2\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2));

-- Location: LC_X6_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~1\);

-- Location: LC_X6_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~1\, , , VCC)

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~1\,
	aclr => GND,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1));

-- Location: LC_X7_Y5_N4
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

-- Location: LC_X8_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37COUT1_1\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(0))))

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
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37COUT1_1\);

-- Location: LC_X8_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) $ ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32COUT1_2\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37COUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(1),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~37COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32COUT1_2\);

-- Location: LC_X8_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27COUT1_3\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32COUT1_2\)))

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
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~32COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27COUT1_3\);

-- Location: LC_X8_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22COUT1_4\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27COUT1_3\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(3))))

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
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~27COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22COUT1_4\);

-- Location: LC_X8_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22COUT1_4\)))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(4),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~22COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\);

-- Location: LC_X6_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6) = (GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (((\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\)))) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[6]~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6));

-- Location: LC_X9_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_length~6\);

-- Location: LC_X9_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, 
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
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6));

-- Location: LC_X5_Y4_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5) = ((GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & (\ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\)) # 
-- (!GLOBAL(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5)))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|bd_inout[5]~5\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5));

-- Location: LC_X9_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & (((H1_length_to_device[5])))), GLOBAL(\aa~combout\(1)), VCC, , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	aclr => GND,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5));

-- Location: LC_X8_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\ = CARRY(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5))))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\);

-- Location: LC_X8_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) $ ((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7COUT1_6\ = CARRY(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\)))

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
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~12COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7COUT1_6\);

-- Location: LC_X8_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7COUT1_6\) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|length_to_device\(7))))

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
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~7COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\);

-- Location: LC_X7_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\ = CARRY((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~35\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~35\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\);

-- Location: LC_X7_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~30\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~37COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~30\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\);

-- Location: LC_X7_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\)))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~25\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~32COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~25\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\);

-- Location: LC_X7_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~20\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~27COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~20\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\);

-- Location: LC_X7_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\)))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~15\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~22COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~15\,
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\);

-- Location: LC_X7_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\)))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~10\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(5),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~10\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\);

-- Location: LC_X7_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~5\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(6),
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~12COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~5\,
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\);

-- Location: LC_X7_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) & ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7) & ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add4~0\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~17\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~7COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\);

-- Location: LC_X5_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4));

-- Location: LC_X5_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\);

-- Location: LC_X5_Y5_N6
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

-- Location: LC_X5_Y5_N2
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

-- Location: LC_X5_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_counter\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\);

-- Location: LC_X7_Y5_N5
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

-- Location: LC_X8_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_payload[2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(2));

-- Location: LC_X3_Y4_N2
\reset_counter[0]\ : maxv_lcell
-- Equation(s):
-- reset_counter(0) = DFFEAS((reset_counter(0) $ (((\LessThan0~2_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datab => reset_counter(0),
	datad => \LessThan0~2_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(0));

-- Location: LC_X3_Y4_N5
\reset_counter[1]\ : maxv_lcell
-- Equation(s):
-- reset_counter(1) = DFFEAS(reset_counter(1) $ ((reset_counter(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[1]~21\ = CARRY((reset_counter(1) & (reset_counter(0))))
-- \reset_counter[1]~21COUT1_24\ = CARRY((reset_counter(1) & (reset_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(1),
	datab => reset_counter(0),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(1),
	cout0 => \reset_counter[1]~21\,
	cout1 => \reset_counter[1]~21COUT1_24\);

-- Location: LC_X3_Y4_N6
\reset_counter[2]\ : maxv_lcell
-- Equation(s):
-- reset_counter(2) = DFFEAS(reset_counter(2) $ ((((\reset_counter[1]~21\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[2]~19\ = CARRY(((!\reset_counter[1]~21\)) # (!reset_counter(2)))
-- \reset_counter[2]~19COUT1_25\ = CARRY(((!\reset_counter[1]~21COUT1_24\)) # (!reset_counter(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(2),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin0 => \reset_counter[1]~21\,
	cin1 => \reset_counter[1]~21COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(2),
	cout0 => \reset_counter[2]~19\,
	cout1 => \reset_counter[2]~19COUT1_25\);

-- Location: LC_X3_Y4_N7
\reset_counter[3]\ : maxv_lcell
-- Equation(s):
-- reset_counter(3) = DFFEAS((reset_counter(3) $ ((!\reset_counter[2]~19\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[3]~1\ = CARRY(((reset_counter(3) & !\reset_counter[2]~19\)))
-- \reset_counter[3]~1COUT1_26\ = CARRY(((reset_counter(3) & !\reset_counter[2]~19COUT1_25\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => reset_counter(3),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin0 => \reset_counter[2]~19\,
	cin1 => \reset_counter[2]~19COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(3),
	cout0 => \reset_counter[3]~1\,
	cout1 => \reset_counter[3]~1COUT1_26\);

-- Location: LC_X3_Y4_N8
\reset_counter[4]\ : maxv_lcell
-- Equation(s):
-- reset_counter(4) = DFFEAS(reset_counter(4) $ ((((\reset_counter[3]~1\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[4]~3\ = CARRY(((!\reset_counter[3]~1\)) # (!reset_counter(4)))
-- \reset_counter[4]~3COUT1_27\ = CARRY(((!\reset_counter[3]~1COUT1_26\)) # (!reset_counter(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(4),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin0 => \reset_counter[3]~1\,
	cin1 => \reset_counter[3]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(4),
	cout0 => \reset_counter[4]~3\,
	cout1 => \reset_counter[4]~3COUT1_27\);

-- Location: LC_X3_Y4_N9
\reset_counter[5]\ : maxv_lcell
-- Equation(s):
-- reset_counter(5) = DFFEAS((reset_counter(5) $ ((!\reset_counter[4]~3\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[5]~5\ = CARRY(((reset_counter(5) & !\reset_counter[4]~3COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => reset_counter(5),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin0 => \reset_counter[4]~3\,
	cin1 => \reset_counter[4]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(5),
	cout => \reset_counter[5]~5\);

-- Location: LC_X4_Y4_N0
\reset_counter[6]\ : maxv_lcell
-- Equation(s):
-- reset_counter(6) = DFFEAS((reset_counter(6) $ ((\reset_counter[5]~5\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[6]~7\ = CARRY(((!\reset_counter[5]~5\) # (!reset_counter(6))))
-- \reset_counter[6]~7COUT1_28\ = CARRY(((!\reset_counter[5]~5\) # (!reset_counter(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => reset_counter(6),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[5]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(6),
	cout0 => \reset_counter[6]~7\,
	cout1 => \reset_counter[6]~7COUT1_28\);

-- Location: LC_X4_Y4_N1
\reset_counter[7]\ : maxv_lcell
-- Equation(s):
-- reset_counter(7) = DFFEAS((reset_counter(7) $ ((!(!\reset_counter[5]~5\ & \reset_counter[6]~7\) # (\reset_counter[5]~5\ & \reset_counter[6]~7COUT1_28\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[7]~9\ = CARRY(((reset_counter(7) & !\reset_counter[6]~7\)))
-- \reset_counter[7]~9COUT1_29\ = CARRY(((reset_counter(7) & !\reset_counter[6]~7COUT1_28\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => reset_counter(7),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[5]~5\,
	cin0 => \reset_counter[6]~7\,
	cin1 => \reset_counter[6]~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(7),
	cout0 => \reset_counter[7]~9\,
	cout1 => \reset_counter[7]~9COUT1_29\);

-- Location: LC_X4_Y4_N2
\reset_counter[8]\ : maxv_lcell
-- Equation(s):
-- reset_counter(8) = DFFEAS((reset_counter(8) $ (((!\reset_counter[5]~5\ & \reset_counter[7]~9\) # (\reset_counter[5]~5\ & \reset_counter[7]~9COUT1_29\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[8]~11\ = CARRY(((!\reset_counter[7]~9\) # (!reset_counter(8))))
-- \reset_counter[8]~11COUT1_30\ = CARRY(((!\reset_counter[7]~9COUT1_29\) # (!reset_counter(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => reset_counter(8),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[5]~5\,
	cin0 => \reset_counter[7]~9\,
	cin1 => \reset_counter[7]~9COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(8),
	cout0 => \reset_counter[8]~11\,
	cout1 => \reset_counter[8]~11COUT1_30\);

-- Location: LC_X4_Y4_N3
\reset_counter[9]\ : maxv_lcell
-- Equation(s):
-- reset_counter(9) = DFFEAS(reset_counter(9) $ ((((!(!\reset_counter[5]~5\ & \reset_counter[8]~11\) # (\reset_counter[5]~5\ & \reset_counter[8]~11COUT1_30\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[9]~13\ = CARRY((reset_counter(9) & ((!\reset_counter[8]~11\))))
-- \reset_counter[9]~13COUT1_31\ = CARRY((reset_counter(9) & ((!\reset_counter[8]~11COUT1_30\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(9),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[5]~5\,
	cin0 => \reset_counter[8]~11\,
	cin1 => \reset_counter[8]~11COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(9),
	cout0 => \reset_counter[9]~13\,
	cout1 => \reset_counter[9]~13COUT1_31\);

-- Location: LC_X4_Y4_N4
\reset_counter[10]\ : maxv_lcell
-- Equation(s):
-- reset_counter(10) = DFFEAS(reset_counter(10) $ (((((!\reset_counter[5]~5\ & \reset_counter[9]~13\) # (\reset_counter[5]~5\ & \reset_counter[9]~13COUT1_31\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )
-- \reset_counter[10]~15\ = CARRY(((!\reset_counter[9]~13COUT1_31\)) # (!reset_counter(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(10),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[5]~5\,
	cin0 => \reset_counter[9]~13\,
	cin1 => \reset_counter[9]~13COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(10),
	cout => \reset_counter[10]~15\);

-- Location: LC_X4_Y4_N5
\reset_counter[11]\ : maxv_lcell
-- Equation(s):
-- reset_counter(11) = DFFEAS(reset_counter(11) $ ((((!\reset_counter[10]~15\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => reset_counter(11),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \LessThan0~2_combout\,
	cin => \reset_counter[10]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(11));

-- Location: LC_X3_Y4_N4
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (!reset_counter(4) & (((!reset_counter(3) & !reset_counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(4),
	datac => reset_counter(3),
	datad => reset_counter(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X4_Y4_N8
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\) # (((!reset_counter(7)) # (!reset_counter(6))) # (!reset_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => reset_counter(8),
	datac => reset_counter(6),
	datad => reset_counter(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X4_Y4_N7
\LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = ((!reset_counter(9) & (!reset_counter(10) & \LessThan0~1_combout\))) # (!reset_counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(9),
	datab => reset_counter(10),
	datac => reset_counter(11),
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X3_Y4_N3
reset_signal_reg : maxv_lcell
-- Equation(s):
-- \reset_signal_reg~regout\ = DFFEAS((((!\LessThan0~2_combout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datad => \LessThan0~2_combout\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_signal_reg~regout\);

-- Location: LC_X7_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\);

-- Location: LC_X8_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0));

-- Location: LC_X8_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0))))

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\);

-- Location: LC_X8_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1));

-- Location: LC_X8_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\);

-- Location: LC_X7_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1) $ (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\);

-- Location: LC_X5_Y4_N2
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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(4),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(1));

-- Location: LC_X5_Y4_N4
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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(0));

-- Location: LC_X5_Y4_N5
\ACTIVE_TRANSFER_INST_1|next_in~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|next_in~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[9]~9\ & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[8]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
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

-- Location: LC_X5_Y4_N8
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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(5),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[10]~10\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_address\(2));

-- Location: LC_X5_Y4_N3
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

-- Location: LC_X7_Y4_N6
\ACTIVE_TRANSFER_INST_1|state_in[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(3) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|state_in\(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(3));

-- Location: LC_X7_Y4_N7
\ACTIVE_TRANSFER_INST_1|state_in[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(0) = DFFEAS(((!\ACTIVE_TRANSFER_INST_1|state_in\(3) & ((\ACTIVE_TRANSFER_INST_1|next_in~2\) # (\ACTIVE_TRANSFER_INST_1|state_in\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_INST_1|next_in~2\,
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datad => \ACTIVE_TRANSFER_INST_1|state_in\(3),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(0));

-- Location: LC_X8_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_command[2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|control_multiplexor\(2),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_command\(2));

-- Location: LC_X8_Y6_N1
\ACTIVE_TRANSFER_INST_1|next_in[2]~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|next_in[2]~4\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|next_in[2]~4\);

-- Location: LC_X7_Y4_N5
\ACTIVE_TRANSFER_INST_1|state_in[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(1) = DFFEAS((\ACTIVE_TRANSFER_INST_1|state_in\(1) & (((\ACTIVE_TRANSFER_INST_1|next_in~2\ & !\ACTIVE_TRANSFER_INST_1|state_in\(0))) # (!\ACTIVE_TRANSFER_INST_1|next_in[2]~4\))) # (!\ACTIVE_TRANSFER_INST_1|state_in\(1) & 
-- (\ACTIVE_TRANSFER_INST_1|next_in~2\ & (!\ACTIVE_TRANSFER_INST_1|state_in\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|state_in\(1),
	datab => \ACTIVE_TRANSFER_INST_1|next_in~2\,
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datad => \ACTIVE_TRANSFER_INST_1|next_in[2]~4\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(1));

-- Location: LC_X8_Y6_N9
\ACTIVE_TRANSFER_INST_1|state_in[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|state_in\(2) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (\ACTIVE_TRANSFER_INST_1|state_in\(1) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|state_in\(2));

-- Location: LC_X7_Y6_N8
\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[2]~2\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\);

-- Location: LC_X7_Y4_N4
\ACTIVE_TRANSFER_INST_1|transfer_received~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ = DFFEAS(((\ACTIVE_TRANSFER_INST_1|state_in\(2)) # ((\ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ & \ACTIVE_TRANSFER_INST_1|state_in\(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|state_in\(0),
	datad => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\);

-- Location: LC_X8_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_payload[4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(4),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(4));

-- Location: LC_X7_Y4_N3
\ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\);

-- Location: LC_X6_Y5_N1
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

-- Location: LC_X8_Y6_N6
\ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\);

-- Location: LC_X9_Y6_N7
\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\);

-- Location: LC_X6_Y5_N4
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

-- Location: LC_X7_Y6_N6
\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\);

-- Location: LC_X9_Y6_N1
\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\);

-- Location: LC_X8_Y6_N3
\ACTIVE_TRIGGER_INST|trigger_to_device~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~7\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[7]~7\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~7\);

-- Location: LC_X9_Y6_N4
\shift_count_value[2]~1\ : maxv_lcell
-- Equation(s):
-- \shift_count_value[2]~1_combout\ = (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\) # (((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\) # (\ACTIVE_TRIGGER_INST|trigger_to_device~7\)))

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
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value[2]~1_combout\);

-- Location: LC_X8_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_payload[0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(0));

-- Location: LC_X8_Y6_N5
\ACTIVE_TRIGGER_INST|trigger_to_device~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~0\);

-- Location: LC_X9_Y5_N1
\static_load_value[2]\ : maxv_lcell
-- Equation(s):
-- static_load_value(2) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~0\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => static_load_value(2));

-- Location: LC_X9_Y5_N7
\static_load_value[3]\ : maxv_lcell
-- Equation(s):
-- static_load_value(3) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~0\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => static_load_value(3));

-- Location: LC_X9_Y6_N9
\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\);

-- Location: LC_X9_Y6_N2
\shift_count_value[2]~0\ : maxv_lcell
-- Equation(s):
-- \shift_count_value[2]~0_combout\ = (\ACTIVE_TRIGGER_INST|trigger_to_device~7\) # ((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\ & (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & !\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\,
	datab => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datad => \ACTIVE_TRIGGER_INST|trigger_to_device~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value[2]~0_combout\);

-- Location: LC_X8_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_payload[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(3),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(3));

-- Location: LC_X8_Y6_N7
\ACTIVE_TRIGGER_INST|trigger_to_device~6_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~6\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[6]~6\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~6\);

-- Location: LC_X6_Y5_N2
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

-- Location: LC_X7_Y4_N9
\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[1]~1\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\);

-- Location: LC_X8_Y6_N8
\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[0]~0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\);

-- Location: LC_X10_Y3_N1
\LFSR_INST|F[0]|Q\ : maxv_lcell
-- Equation(s):
-- \LFSR_INST|F[0]|Q~regout\ = DFFEAS((\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\)) # (!\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & ((\LFSR_INST|F[3]|Q~regout\ $ (\LFSR_INST|F[2]|Q~regout\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	datab => \ACTIVE_TRIGGER_INST|trigger_to_device~6\,
	datac => \LFSR_INST|F[3]|Q~regout\,
	datad => \LFSR_INST|F[2]|Q~regout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LFSR_INST|F[0]|Q~regout\);

-- Location: LC_X10_Y3_N8
\LFSR_INST|F[1]|Q\ : maxv_lcell
-- Equation(s):
-- \LFSR_INST|F[1]|Q~regout\ = DFFEAS(((\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\)) # (!\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & ((\LFSR_INST|F[0]|Q~regout\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

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
	datab => \ACTIVE_TRIGGER_INST|trigger_to_device~6\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	datad => \LFSR_INST|F[0]|Q~regout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LFSR_INST|F[1]|Q~regout\);

-- Location: LC_X10_Y3_N2
\LFSR_INST|F[2]|Q\ : maxv_lcell
-- Equation(s):
-- \LFSR_INST|F[2]|Q~regout\ = DFFEAS(((\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\)) # (!\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & ((\LFSR_INST|F[1]|Q~regout\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_device~6\,
	datad => \LFSR_INST|F[1]|Q~regout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LFSR_INST|F[2]|Q~regout\);

-- Location: LC_X10_Y3_N4
\LFSR_INST|F[3]|Q\ : maxv_lcell
-- Equation(s):
-- \LFSR_INST|F[3]|Q~regout\ = DFFEAS(((\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\)) # (!\ACTIVE_TRIGGER_INST|trigger_to_device~6\ & ((\LFSR_INST|F[2]|Q~regout\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

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
	datab => \ACTIVE_TRIGGER_INST|trigger_to_device~6\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	datad => \LFSR_INST|F[2]|Q~regout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LFSR_INST|F[3]|Q~regout\);

-- Location: LC_X10_Y3_N6
\LFSR_INST|G1\ : maxv_lcell
-- Equation(s):
-- \LFSR_INST|G1~combout\ = ((\LFSR_INST|F[3]|Q~regout\ $ (\LFSR_INST|F[2]|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LFSR_INST|F[3]|Q~regout\,
	datad => \LFSR_INST|F[2]|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LFSR_INST|G1~combout\);

-- Location: LC_X10_Y3_N7
\random_num_counter[0]\ : maxv_lcell
-- Equation(s):
-- \random_number[0]~0\ = (((!random_num_counter[0] & !random_num_counter(2))))
-- random_num_counter(0) = DFFEAS(\random_number[0]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datad => random_num_counter(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \random_number[0]~0\,
	regout => random_num_counter(0));

-- Location: LC_X10_Y3_N9
\random_num_counter[2]\ : maxv_lcell
-- Equation(s):
-- random_num_counter(2) = DFFEAS(((!random_num_counter(2) & (random_num_counter(0) & random_num_counter(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => random_num_counter(2),
	datac => random_num_counter(0),
	datad => random_num_counter(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_num_counter(2));

-- Location: LC_X10_Y3_N3
\random_num_counter[1]\ : maxv_lcell
-- Equation(s):
-- random_num_counter(1) = DFFEAS(((!random_num_counter(2) & (random_num_counter(0) $ (random_num_counter(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => random_num_counter(2),
	datac => random_num_counter(0),
	datad => random_num_counter(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_num_counter(1));

-- Location: LC_X10_Y4_N7
\random_number[0]\ : maxv_lcell
-- Equation(s):
-- random_number(0) = DFFEAS((random_num_counter(1) & (((random_number(0))))) # (!random_num_counter(1) & ((\random_number[0]~0\ & (\LFSR_INST|G1~combout\)) # (!\random_number[0]~0\ & ((random_number(0)))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \LFSR_INST|G1~combout\,
	datab => random_num_counter(1),
	datac => random_number(0),
	datad => \random_number[0]~0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_number(0));

-- Location: LC_X10_Y3_N0
\random_number[1]~2\ : maxv_lcell
-- Equation(s):
-- \random_number[1]~2_combout\ = (((random_num_counter(0) & !random_num_counter(2))))

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
	datac => random_num_counter(0),
	datad => random_num_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \random_number[1]~2_combout\);

-- Location: LC_X10_Y4_N6
\random_number[1]\ : maxv_lcell
-- Equation(s):
-- random_number(1) = DFFEAS((random_num_counter(1) & (((random_number(1))))) # (!random_num_counter(1) & ((\random_number[1]~2_combout\ & (\LFSR_INST|G1~combout\)) # (!\random_number[1]~2_combout\ & ((random_number(1)))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \LFSR_INST|G1~combout\,
	datab => random_num_counter(1),
	datac => random_number(1),
	datad => \random_number[1]~2_combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_number(1));

-- Location: LC_X8_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\ & (H1_uc_in_payload[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|reset_uc_in\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(5),
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|uc_in_payload\(5));

-- Location: LC_X7_Y6_N1
\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\);

-- Location: LC_X9_Y6_N0
\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \led_reg[0]~0\ = (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\) # ((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (B1L6Q & \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\)) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (!B1L6Q & 
-- !\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\)))
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\ = DFFEAS(\led_reg[0]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaab",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\,
	datab => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_reg[0]~0\,
	regout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\);

-- Location: LC_X9_Y6_N6
\shift_count_value[2]~2\ : maxv_lcell
-- Equation(s):
-- \shift_count_value[2]~2_combout\ = (\shift_count_value[2]~1_combout\ & ((\shift_count_value[2]~0_combout\) # ((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\ & !\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\)))) # 
-- (!\shift_count_value[2]~1_combout\ & (((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc34",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\,
	datab => \shift_count_value[2]~1_combout\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\,
	datad => \shift_count_value[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value[2]~2_combout\);

-- Location: LC_X8_Y4_N0
\Add3~17\ : maxv_lcell
-- Equation(s):
-- \Add3~17_cout0\ = CARRY(((led_reg(0))))
-- \Add3~17COUT1_21\ = CARRY(((led_reg(0))))

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
	datab => led_reg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15\,
	cout0 => \Add3~17_cout0\,
	cout1 => \Add3~17COUT1_21\);

-- Location: LC_X8_Y4_N1
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ $ (led_reg(1) $ ((\Add3~17_cout0\)))
-- \Add3~2\ = CARRY((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & (!led_reg(1) & !\Add3~17_cout0\)) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & ((!\Add3~17_cout0\) # (!led_reg(1)))))
-- \Add3~2COUT1_22\ = CARRY((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & (!led_reg(1) & !\Add3~17COUT1_21\)) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & ((!\Add3~17COUT1_21\) # (!led_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	datab => led_reg(1),
	cin0 => \Add3~17_cout0\,
	cin1 => \Add3~17COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_22\);

-- Location: LC_X8_Y4_N6
\shift_count_value~7\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~7_combout\ = (\shift_count_value[2]~1_combout\ & (((\shift_count_value[2]~0_combout\) # (\Add3~0_combout\)))) # (!\shift_count_value[2]~1_combout\ & (led_reg(0) & (!\shift_count_value[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shift_count_value[2]~1_combout\,
	datab => led_reg(0),
	datac => \shift_count_value[2]~0_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~7_combout\);

-- Location: LC_X9_Y4_N2
\shift_count_value~8\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~8_combout\ = (\shift_count_value[2]~0_combout\ & ((\shift_count_value~7_combout\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\)) # (!\shift_count_value~7_combout\ & ((led_reg(2)))))) # (!\shift_count_value[2]~0_combout\ & 
-- (((\shift_count_value~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	datab => \shift_count_value[2]~0_combout\,
	datac => \shift_count_value~7_combout\,
	datad => led_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~8_combout\);

-- Location: LC_X9_Y6_N5
start_blinky : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\) # ((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\) # ((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\) # (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\)))
-- \start_blinky~regout\ = DFFEAS(\Equal0~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[7]~reg0\,
	datab => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => \start_blinky~regout\);

-- Location: LC_X12_Y5_N8
\state[0]\ : maxv_lcell
-- Equation(s):
-- state(0) = DFFEAS((state(0) & (((\Equal0~0\) # (!state(1))))) # (!state(0) & (\start_blinky~regout\ & ((\Equal0~0\) # (!state(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => state(0),
	datab => \start_blinky~regout\,
	datac => \Equal0~0\,
	datad => state(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LC_X8_Y6_N0
\ACTIVE_TRIGGER_INST|trigger_to_device~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~4\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[4]~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~4\);

-- Location: LC_X8_Y6_N2
\ACTIVE_TRIGGER_INST|trigger_to_device~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_device~5\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[19]~19\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[20]~20\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[5]~5\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|trigger_to_device~5\);

-- Location: LC_X8_Y6_N4
\timer_value[16]~0\ : maxv_lcell
-- Equation(s):
-- \timer_value[16]~0_combout\ = (((!\ACTIVE_TRIGGER_INST|trigger_to_device~4\ & \ACTIVE_TRIGGER_INST|trigger_to_device~5\)))

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
	combout => \timer_value[16]~0_combout\);

-- Location: LC_X10_Y6_N7
\timer_value[23]\ : maxv_lcell
-- Equation(s):
-- timer_value(23) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(23));

-- Location: LC_X12_Y6_N8
\state[3]\ : maxv_lcell
-- Equation(s):
-- \LED[1]~5\ = (((state[3]) # (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\)))
-- state(3) = DFFEAS(\LED[1]~5\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , state(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datac => state(2),
	datad => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED[1]~5\,
	regout => state(3));

-- Location: LC_X12_Y6_N9
\state[6]\ : maxv_lcell
-- Equation(s):
-- state(6) = DFFEAS((state(3)) # (((!\LessThan4~0_combout\ & state(6)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => state(3),
	datac => \LessThan4~0_combout\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(6));

-- Location: LC_X12_Y5_N7
\led_delay_counter[9]~2\ : maxv_lcell
-- Equation(s):
-- \led_delay_counter[9]~2_combout\ = ((state(1)) # ((state(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datad => state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_delay_counter[9]~2_combout\);

-- Location: LC_X10_Y6_N9
\timer_value[21]\ : maxv_lcell
-- Equation(s):
-- timer_value(21) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(21));

-- Location: LC_X10_Y6_N2
\timer_value[16]\ : maxv_lcell
-- Equation(s):
-- timer_value(16) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, , , , )

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(16));

-- Location: LC_X9_Y5_N8
\timer_value[11]\ : maxv_lcell
-- Equation(s):
-- timer_value(11) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(11));

-- Location: LC_X10_Y5_N1
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

-- Location: LC_X10_Y5_N3
\led_delay_counter[0]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(0) = DFFEAS((!led_delay_counter(0)), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[0]~48\ = CARRY((!led_delay_counter(0)))
-- \led_delay_counter[0]~48COUT1_50\ = CARRY((!led_delay_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(0),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(0),
	cout0 => \led_delay_counter[0]~48\,
	cout1 => \led_delay_counter[0]~48COUT1_50\);

-- Location: LC_X10_Y5_N4
\led_delay_counter[1]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(1) = DFFEAS(led_delay_counter(1) $ ((((!\led_delay_counter[0]~48\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[1]~46\ = CARRY((led_delay_counter(1) & ((!\led_delay_counter[0]~48COUT1_50\))))

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
	dataa => led_delay_counter(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin0 => \led_delay_counter[0]~48\,
	cin1 => \led_delay_counter[0]~48COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(1),
	cout => \led_delay_counter[1]~46\);

-- Location: LC_X10_Y5_N5
\led_delay_counter[2]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(2) = DFFEAS(led_delay_counter(2) $ ((((\led_delay_counter[1]~46\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[2]~44\ = CARRY(((!\led_delay_counter[1]~46\)) # (!led_delay_counter(2)))
-- \led_delay_counter[2]~44COUT1_51\ = CARRY(((!\led_delay_counter[1]~46\)) # (!led_delay_counter(2)))

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
	dataa => led_delay_counter(2),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[1]~46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(2),
	cout0 => \led_delay_counter[2]~44\,
	cout1 => \led_delay_counter[2]~44COUT1_51\);

-- Location: LC_X10_Y5_N6
\led_delay_counter[3]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(3) = DFFEAS(led_delay_counter(3) $ ((((!(!\led_delay_counter[1]~46\ & \led_delay_counter[2]~44\) # (\led_delay_counter[1]~46\ & \led_delay_counter[2]~44COUT1_51\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[3]~42\ = CARRY((led_delay_counter(3) & ((!\led_delay_counter[2]~44\))))
-- \led_delay_counter[3]~42COUT1_52\ = CARRY((led_delay_counter(3) & ((!\led_delay_counter[2]~44COUT1_51\))))

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
	dataa => led_delay_counter(3),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[1]~46\,
	cin0 => \led_delay_counter[2]~44\,
	cin1 => \led_delay_counter[2]~44COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(3),
	cout0 => \led_delay_counter[3]~42\,
	cout1 => \led_delay_counter[3]~42COUT1_52\);

-- Location: LC_X10_Y5_N7
\led_delay_counter[4]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(4) = DFFEAS((led_delay_counter(4) $ (((!\led_delay_counter[1]~46\ & \led_delay_counter[3]~42\) # (\led_delay_counter[1]~46\ & \led_delay_counter[3]~42COUT1_52\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[4]~40\ = CARRY(((!\led_delay_counter[3]~42\) # (!led_delay_counter(4))))
-- \led_delay_counter[4]~40COUT1_53\ = CARRY(((!\led_delay_counter[3]~42COUT1_52\) # (!led_delay_counter(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => led_delay_counter(4),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[1]~46\,
	cin0 => \led_delay_counter[3]~42\,
	cin1 => \led_delay_counter[3]~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(4),
	cout0 => \led_delay_counter[4]~40\,
	cout1 => \led_delay_counter[4]~40COUT1_53\);

-- Location: LC_X10_Y5_N8
\led_delay_counter[5]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(5) = DFFEAS(led_delay_counter(5) $ ((((!(!\led_delay_counter[1]~46\ & \led_delay_counter[4]~40\) # (\led_delay_counter[1]~46\ & \led_delay_counter[4]~40COUT1_53\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[5]~38\ = CARRY((led_delay_counter(5) & ((!\led_delay_counter[4]~40\))))
-- \led_delay_counter[5]~38COUT1_54\ = CARRY((led_delay_counter(5) & ((!\led_delay_counter[4]~40COUT1_53\))))

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
	dataa => led_delay_counter(5),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[1]~46\,
	cin0 => \led_delay_counter[4]~40\,
	cin1 => \led_delay_counter[4]~40COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(5),
	cout0 => \led_delay_counter[5]~38\,
	cout1 => \led_delay_counter[5]~38COUT1_54\);

-- Location: LC_X10_Y5_N9
\led_delay_counter[6]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(6) = DFFEAS((led_delay_counter(6) $ (((!\led_delay_counter[1]~46\ & \led_delay_counter[5]~38\) # (\led_delay_counter[1]~46\ & \led_delay_counter[5]~38COUT1_54\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[6]~36\ = CARRY(((!\led_delay_counter[5]~38COUT1_54\) # (!led_delay_counter(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => led_delay_counter(6),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[1]~46\,
	cin0 => \led_delay_counter[5]~38\,
	cin1 => \led_delay_counter[5]~38COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(6),
	cout => \led_delay_counter[6]~36\);

-- Location: LC_X9_Y5_N4
\timer_value[10]\ : maxv_lcell
-- Equation(s):
-- timer_value(10) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(10));

-- Location: LC_X9_Y5_N3
\timer_value[9]\ : maxv_lcell
-- Equation(s):
-- timer_value(9) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

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
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(9));

-- Location: LC_X9_Y5_N9
\timer_value[8]\ : maxv_lcell
-- Equation(s):
-- timer_value(8) = DFFEAS((((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(8));

-- Location: LC_X11_Y5_N0
\led_delay_counter[7]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(7) = DFFEAS((led_delay_counter(7) $ ((!\led_delay_counter[6]~36\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, \~GND~combout\, , , state(1))
-- \led_delay_counter[7]~34\ = CARRY(((led_delay_counter(7) & !\led_delay_counter[6]~36\)))
-- \led_delay_counter[7]~34COUT1_55\ = CARRY(((led_delay_counter(7) & !\led_delay_counter[6]~36\)))

-- pragma translate_off
GENERIC MAP (
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
	datab => led_delay_counter(7),
	datac => \~GND~combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[6]~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(7),
	cout0 => \led_delay_counter[7]~34\,
	cout1 => \led_delay_counter[7]~34COUT1_55\);

-- Location: LC_X11_Y5_N1
\led_delay_counter[8]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(8) = DFFEAS((led_delay_counter(8) $ (((!\led_delay_counter[6]~36\ & \led_delay_counter[7]~34\) # (\led_delay_counter[6]~36\ & \led_delay_counter[7]~34COUT1_55\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(8), , , state(1))
-- \led_delay_counter[8]~32\ = CARRY(((!\led_delay_counter[7]~34\) # (!led_delay_counter(8))))
-- \led_delay_counter[8]~32COUT1_56\ = CARRY(((!\led_delay_counter[7]~34COUT1_55\) # (!led_delay_counter(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => led_delay_counter(8),
	datac => timer_value(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[6]~36\,
	cin0 => \led_delay_counter[7]~34\,
	cin1 => \led_delay_counter[7]~34COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(8),
	cout0 => \led_delay_counter[8]~32\,
	cout1 => \led_delay_counter[8]~32COUT1_56\);

-- Location: LC_X11_Y5_N2
\led_delay_counter[9]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(9) = DFFEAS((led_delay_counter(9) $ ((!(!\led_delay_counter[6]~36\ & \led_delay_counter[8]~32\) # (\led_delay_counter[6]~36\ & \led_delay_counter[8]~32COUT1_56\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(9), , , state(1))
-- \led_delay_counter[9]~30\ = CARRY(((led_delay_counter(9) & !\led_delay_counter[8]~32\)))
-- \led_delay_counter[9]~30COUT1_57\ = CARRY(((led_delay_counter(9) & !\led_delay_counter[8]~32COUT1_56\)))

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
	datab => led_delay_counter(9),
	datac => timer_value(9),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[6]~36\,
	cin0 => \led_delay_counter[8]~32\,
	cin1 => \led_delay_counter[8]~32COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(9),
	cout0 => \led_delay_counter[9]~30\,
	cout1 => \led_delay_counter[9]~30COUT1_57\);

-- Location: LC_X11_Y5_N3
\led_delay_counter[10]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(10) = DFFEAS(led_delay_counter(10) $ (((((!\led_delay_counter[6]~36\ & \led_delay_counter[9]~30\) # (\led_delay_counter[6]~36\ & \led_delay_counter[9]~30COUT1_57\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(10), , , state(1))
-- \led_delay_counter[10]~28\ = CARRY((led_delay_counter(10)) # ((!\led_delay_counter[9]~30\)))
-- \led_delay_counter[10]~28COUT1_58\ = CARRY((led_delay_counter(10)) # ((!\led_delay_counter[9]~30COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(10),
	datac => timer_value(10),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[6]~36\,
	cin0 => \led_delay_counter[9]~30\,
	cin1 => \led_delay_counter[9]~30COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(10),
	cout0 => \led_delay_counter[10]~28\,
	cout1 => \led_delay_counter[10]~28COUT1_58\);

-- Location: LC_X11_Y5_N4
\led_delay_counter[11]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(11) = DFFEAS(led_delay_counter(11) $ ((((!(!\led_delay_counter[6]~36\ & \led_delay_counter[10]~28\) # (\led_delay_counter[6]~36\ & \led_delay_counter[10]~28COUT1_58\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(11), , , state(1))
-- \led_delay_counter[11]~26\ = CARRY((!led_delay_counter(11) & ((!\led_delay_counter[10]~28COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => led_delay_counter(11),
	datac => timer_value(11),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[6]~36\,
	cin0 => \led_delay_counter[10]~28\,
	cin1 => \led_delay_counter[10]~28COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(11),
	cout => \led_delay_counter[11]~26\);

-- Location: LC_X11_Y6_N0
\timer_value[15]\ : maxv_lcell
-- Equation(s):
-- timer_value(15) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(15));

-- Location: LC_X9_Y5_N6
\timer_value[14]\ : maxv_lcell
-- Equation(s):
-- timer_value(14) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(14));

-- Location: LC_X11_Y6_N1
\timer_value[13]\ : maxv_lcell
-- Equation(s):
-- timer_value(13) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(13));

-- Location: LC_X9_Y5_N5
\timer_value[12]\ : maxv_lcell
-- Equation(s):
-- timer_value(12) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~4\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(12));

-- Location: LC_X11_Y5_N5
\led_delay_counter[12]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(12) = DFFEAS(led_delay_counter(12) $ ((((\led_delay_counter[11]~26\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, timer_value(12), , , state(1))
-- \led_delay_counter[12]~24\ = CARRY((led_delay_counter(12)) # ((!\led_delay_counter[11]~26\)))
-- \led_delay_counter[12]~24COUT1_59\ = CARRY((led_delay_counter(12)) # ((!\led_delay_counter[11]~26\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(12),
	datac => timer_value(12),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[11]~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(12),
	cout0 => \led_delay_counter[12]~24\,
	cout1 => \led_delay_counter[12]~24COUT1_59\);

-- Location: LC_X11_Y5_N6
\led_delay_counter[13]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(13) = DFFEAS(led_delay_counter(13) $ ((((!(!\led_delay_counter[11]~26\ & \led_delay_counter[12]~24\) # (\led_delay_counter[11]~26\ & \led_delay_counter[12]~24COUT1_59\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(13), , , state(1))
-- \led_delay_counter[13]~22\ = CARRY((!led_delay_counter(13) & ((!\led_delay_counter[12]~24\))))
-- \led_delay_counter[13]~22COUT1_60\ = CARRY((!led_delay_counter(13) & ((!\led_delay_counter[12]~24COUT1_59\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => led_delay_counter(13),
	datac => timer_value(13),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[11]~26\,
	cin0 => \led_delay_counter[12]~24\,
	cin1 => \led_delay_counter[12]~24COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(13),
	cout0 => \led_delay_counter[13]~22\,
	cout1 => \led_delay_counter[13]~22COUT1_60\);

-- Location: LC_X11_Y5_N7
\led_delay_counter[14]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(14) = DFFEAS((led_delay_counter(14) $ (((!\led_delay_counter[11]~26\ & \led_delay_counter[13]~22\) # (\led_delay_counter[11]~26\ & \led_delay_counter[13]~22COUT1_60\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(14), , , state(1))
-- \led_delay_counter[14]~20\ = CARRY(((led_delay_counter(14)) # (!\led_delay_counter[13]~22\)))
-- \led_delay_counter[14]~20COUT1_61\ = CARRY(((led_delay_counter(14)) # (!\led_delay_counter[13]~22COUT1_60\)))

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
	datab => led_delay_counter(14),
	datac => timer_value(14),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[11]~26\,
	cin0 => \led_delay_counter[13]~22\,
	cin1 => \led_delay_counter[13]~22COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(14),
	cout0 => \led_delay_counter[14]~20\,
	cout1 => \led_delay_counter[14]~20COUT1_61\);

-- Location: LC_X11_Y5_N8
\led_delay_counter[15]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(15) = DFFEAS(led_delay_counter(15) $ ((((!(!\led_delay_counter[11]~26\ & \led_delay_counter[14]~20\) # (\led_delay_counter[11]~26\ & \led_delay_counter[14]~20COUT1_61\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(15), , , state(1))
-- \led_delay_counter[15]~18\ = CARRY((!led_delay_counter(15) & ((!\led_delay_counter[14]~20\))))
-- \led_delay_counter[15]~18COUT1_62\ = CARRY((!led_delay_counter(15) & ((!\led_delay_counter[14]~20COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => led_delay_counter(15),
	datac => timer_value(15),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[11]~26\,
	cin0 => \led_delay_counter[14]~20\,
	cin1 => \led_delay_counter[14]~20COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(15),
	cout0 => \led_delay_counter[15]~18\,
	cout1 => \led_delay_counter[15]~18COUT1_62\);

-- Location: LC_X11_Y5_N9
\led_delay_counter[16]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(16) = DFFEAS((led_delay_counter(16) $ (((!\led_delay_counter[11]~26\ & \led_delay_counter[15]~18\) # (\led_delay_counter[11]~26\ & \led_delay_counter[15]~18COUT1_62\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(16), , , state(1))
-- \led_delay_counter[16]~16\ = CARRY(((led_delay_counter(16)) # (!\led_delay_counter[15]~18COUT1_62\)))

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
	datab => led_delay_counter(16),
	datac => timer_value(16),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[11]~26\,
	cin0 => \led_delay_counter[15]~18\,
	cin1 => \led_delay_counter[15]~18COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(16),
	cout => \led_delay_counter[16]~16\);

-- Location: LC_X10_Y6_N1
\timer_value[20]\ : maxv_lcell
-- Equation(s):
-- timer_value(20) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(20));

-- Location: LC_X10_Y6_N0
\timer_value[19]\ : maxv_lcell
-- Equation(s):
-- timer_value(19) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(19));

-- Location: LC_X10_Y6_N8
\timer_value[18]\ : maxv_lcell
-- Equation(s):
-- timer_value(18) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(18));

-- Location: LC_X10_Y6_N3
\timer_value[17]\ : maxv_lcell
-- Equation(s):
-- timer_value(17) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\, , , VCC)

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
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(17));

-- Location: LC_X12_Y5_N0
\led_delay_counter[17]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(17) = DFFEAS((led_delay_counter(17) $ ((!\led_delay_counter[16]~16\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, timer_value(17), , , state(1))
-- \led_delay_counter[17]~14\ = CARRY(((!led_delay_counter(17) & !\led_delay_counter[16]~16\)))
-- \led_delay_counter[17]~14COUT1_63\ = CARRY(((!led_delay_counter(17) & !\led_delay_counter[16]~16\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => led_delay_counter(17),
	datac => timer_value(17),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[16]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(17),
	cout0 => \led_delay_counter[17]~14\,
	cout1 => \led_delay_counter[17]~14COUT1_63\);

-- Location: LC_X12_Y5_N1
\led_delay_counter[18]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(18) = DFFEAS((led_delay_counter(18) $ (((!\led_delay_counter[16]~16\ & \led_delay_counter[17]~14\) # (\led_delay_counter[16]~16\ & \led_delay_counter[17]~14COUT1_63\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(18), , , state(1))
-- \led_delay_counter[18]~12\ = CARRY(((led_delay_counter(18)) # (!\led_delay_counter[17]~14\)))
-- \led_delay_counter[18]~12COUT1_64\ = CARRY(((led_delay_counter(18)) # (!\led_delay_counter[17]~14COUT1_63\)))

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
	datab => led_delay_counter(18),
	datac => timer_value(18),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[16]~16\,
	cin0 => \led_delay_counter[17]~14\,
	cin1 => \led_delay_counter[17]~14COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(18),
	cout0 => \led_delay_counter[18]~12\,
	cout1 => \led_delay_counter[18]~12COUT1_64\);

-- Location: LC_X12_Y5_N2
\led_delay_counter[19]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(19) = DFFEAS((led_delay_counter(19) $ ((!(!\led_delay_counter[16]~16\ & \led_delay_counter[18]~12\) # (\led_delay_counter[16]~16\ & \led_delay_counter[18]~12COUT1_64\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(19), , , state(1))
-- \led_delay_counter[19]~10\ = CARRY(((!led_delay_counter(19) & !\led_delay_counter[18]~12\)))
-- \led_delay_counter[19]~10COUT1_65\ = CARRY(((!led_delay_counter(19) & !\led_delay_counter[18]~12COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => led_delay_counter(19),
	datac => timer_value(19),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[16]~16\,
	cin0 => \led_delay_counter[18]~12\,
	cin1 => \led_delay_counter[18]~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(19),
	cout0 => \led_delay_counter[19]~10\,
	cout1 => \led_delay_counter[19]~10COUT1_65\);

-- Location: LC_X12_Y5_N3
\led_delay_counter[20]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(20) = DFFEAS(led_delay_counter(20) $ (((((!\led_delay_counter[16]~16\ & \led_delay_counter[19]~10\) # (\led_delay_counter[16]~16\ & \led_delay_counter[19]~10COUT1_65\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(20), , , state(1))
-- \led_delay_counter[20]~8\ = CARRY((led_delay_counter(20)) # ((!\led_delay_counter[19]~10\)))
-- \led_delay_counter[20]~8COUT1_66\ = CARRY((led_delay_counter(20)) # ((!\led_delay_counter[19]~10COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(20),
	datac => timer_value(20),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[16]~16\,
	cin0 => \led_delay_counter[19]~10\,
	cin1 => \led_delay_counter[19]~10COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(20),
	cout0 => \led_delay_counter[20]~8\,
	cout1 => \led_delay_counter[20]~8COUT1_66\);

-- Location: LC_X12_Y5_N4
\led_delay_counter[21]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(21) = DFFEAS(led_delay_counter(21) $ ((((!(!\led_delay_counter[16]~16\ & \led_delay_counter[20]~8\) # (\led_delay_counter[16]~16\ & \led_delay_counter[20]~8COUT1_66\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(21), , , state(1))
-- \led_delay_counter[21]~6\ = CARRY((!led_delay_counter(21) & ((!\led_delay_counter[20]~8COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => led_delay_counter(21),
	datac => timer_value(21),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[16]~16\,
	cin0 => \led_delay_counter[20]~8\,
	cin1 => \led_delay_counter[20]~8COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(21),
	cout => \led_delay_counter[21]~6\);

-- Location: LC_X10_Y6_N5
\timer_value[22]\ : maxv_lcell
-- Equation(s):
-- timer_value(22) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \timer_value[16]~0_combout\, , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \timer_value[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer_value(22));

-- Location: LC_X12_Y5_N5
\led_delay_counter[22]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(22) = DFFEAS(led_delay_counter(22) $ ((((\led_delay_counter[21]~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \led_delay_counter[9]~2_combout\, timer_value(22), , , state(1))
-- \led_delay_counter[22]~4\ = CARRY((led_delay_counter(22)) # ((!\led_delay_counter[21]~6\)))
-- \led_delay_counter[22]~4COUT1_67\ = CARRY((led_delay_counter(22)) # ((!\led_delay_counter[21]~6\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(22),
	datac => timer_value(22),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[21]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(22),
	cout0 => \led_delay_counter[22]~4\,
	cout1 => \led_delay_counter[22]~4COUT1_67\);

-- Location: LC_X12_Y5_N6
\led_delay_counter[23]\ : maxv_lcell
-- Equation(s):
-- led_delay_counter(23) = DFFEAS(led_delay_counter(23) $ ((((!(!\led_delay_counter[21]~6\ & \led_delay_counter[22]~4\) # (\led_delay_counter[21]~6\ & \led_delay_counter[22]~4COUT1_67\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , 
-- \led_delay_counter[9]~2_combout\, timer_value(23), , , state(1))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => led_delay_counter(23),
	datac => timer_value(23),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => state(1),
	ena => \led_delay_counter[9]~2_combout\,
	cin => \led_delay_counter[21]~6\,
	cin0 => \led_delay_counter[22]~4\,
	cin1 => \led_delay_counter[22]~4COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_delay_counter(23));

-- Location: LC_X11_Y6_N2
\LessThan4~77\ : maxv_lcell
-- Equation(s):
-- \LessThan4~77_cout0\ = CARRY((timer_value(8) & (!led_delay_counter(8))))
-- \LessThan4~77COUT1_81\ = CARRY((timer_value(8) & (!led_delay_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timer_value(8),
	datab => led_delay_counter(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~75\,
	cout0 => \LessThan4~77_cout0\,
	cout1 => \LessThan4~77COUT1_81\);

-- Location: LC_X11_Y6_N3
\LessThan4~72\ : maxv_lcell
-- Equation(s):
-- \LessThan4~72_cout0\ = CARRY((led_delay_counter(9) & ((!\LessThan4~77_cout0\) # (!timer_value(9)))) # (!led_delay_counter(9) & (!timer_value(9) & !\LessThan4~77_cout0\)))
-- \LessThan4~72COUT1_82\ = CARRY((led_delay_counter(9) & ((!\LessThan4~77COUT1_81\) # (!timer_value(9)))) # (!led_delay_counter(9) & (!timer_value(9) & !\LessThan4~77COUT1_81\)))

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
	dataa => led_delay_counter(9),
	datab => timer_value(9),
	cin0 => \LessThan4~77_cout0\,
	cin1 => \LessThan4~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~70\,
	cout0 => \LessThan4~72_cout0\,
	cout1 => \LessThan4~72COUT1_82\);

-- Location: LC_X11_Y6_N4
\LessThan4~67\ : maxv_lcell
-- Equation(s):
-- \LessThan4~67_cout\ = CARRY((timer_value(10) & (led_delay_counter(10) & !\LessThan4~72COUT1_82\)) # (!timer_value(10) & ((led_delay_counter(10)) # (!\LessThan4~72COUT1_82\))))

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
	dataa => timer_value(10),
	datab => led_delay_counter(10),
	cin0 => \LessThan4~72_cout0\,
	cin1 => \LessThan4~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~65\,
	cout => \LessThan4~67_cout\);

-- Location: LC_X11_Y6_N5
\LessThan4~62\ : maxv_lcell
-- Equation(s):
-- \LessThan4~62_cout0\ = CARRY((timer_value(11) & ((!\LessThan4~67_cout\) # (!led_delay_counter(11)))) # (!timer_value(11) & (!led_delay_counter(11) & !\LessThan4~67_cout\)))
-- \LessThan4~62COUT1_83\ = CARRY((timer_value(11) & ((!\LessThan4~67_cout\) # (!led_delay_counter(11)))) # (!timer_value(11) & (!led_delay_counter(11) & !\LessThan4~67_cout\)))

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
	dataa => timer_value(11),
	datab => led_delay_counter(11),
	cin => \LessThan4~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~60\,
	cout0 => \LessThan4~62_cout0\,
	cout1 => \LessThan4~62COUT1_83\);

-- Location: LC_X11_Y6_N6
\LessThan4~57\ : maxv_lcell
-- Equation(s):
-- \LessThan4~57_cout0\ = CARRY((timer_value(12) & (led_delay_counter(12) & !\LessThan4~62_cout0\)) # (!timer_value(12) & ((led_delay_counter(12)) # (!\LessThan4~62_cout0\))))
-- \LessThan4~57COUT1_84\ = CARRY((timer_value(12) & (led_delay_counter(12) & !\LessThan4~62COUT1_83\)) # (!timer_value(12) & ((led_delay_counter(12)) # (!\LessThan4~62COUT1_83\))))

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
	dataa => timer_value(12),
	datab => led_delay_counter(12),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~62_cout0\,
	cin1 => \LessThan4~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~55\,
	cout0 => \LessThan4~57_cout0\,
	cout1 => \LessThan4~57COUT1_84\);

-- Location: LC_X11_Y6_N7
\LessThan4~52\ : maxv_lcell
-- Equation(s):
-- \LessThan4~52_cout0\ = CARRY((led_delay_counter(13) & (timer_value(13) & !\LessThan4~57_cout0\)) # (!led_delay_counter(13) & ((timer_value(13)) # (!\LessThan4~57_cout0\))))
-- \LessThan4~52COUT1_85\ = CARRY((led_delay_counter(13) & (timer_value(13) & !\LessThan4~57COUT1_84\)) # (!led_delay_counter(13) & ((timer_value(13)) # (!\LessThan4~57COUT1_84\))))

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
	dataa => led_delay_counter(13),
	datab => timer_value(13),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~57_cout0\,
	cin1 => \LessThan4~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~50\,
	cout0 => \LessThan4~52_cout0\,
	cout1 => \LessThan4~52COUT1_85\);

-- Location: LC_X11_Y6_N8
\LessThan4~47\ : maxv_lcell
-- Equation(s):
-- \LessThan4~47_cout0\ = CARRY((timer_value(14) & (led_delay_counter(14) & !\LessThan4~52_cout0\)) # (!timer_value(14) & ((led_delay_counter(14)) # (!\LessThan4~52_cout0\))))
-- \LessThan4~47COUT1_86\ = CARRY((timer_value(14) & (led_delay_counter(14) & !\LessThan4~52COUT1_85\)) # (!timer_value(14) & ((led_delay_counter(14)) # (!\LessThan4~52COUT1_85\))))

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
	dataa => timer_value(14),
	datab => led_delay_counter(14),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~52_cout0\,
	cin1 => \LessThan4~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~45\,
	cout0 => \LessThan4~47_cout0\,
	cout1 => \LessThan4~47COUT1_86\);

-- Location: LC_X11_Y6_N9
\LessThan4~42\ : maxv_lcell
-- Equation(s):
-- \LessThan4~42_cout\ = CARRY((timer_value(15) & ((!\LessThan4~47COUT1_86\) # (!led_delay_counter(15)))) # (!timer_value(15) & (!led_delay_counter(15) & !\LessThan4~47COUT1_86\)))

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
	dataa => timer_value(15),
	datab => led_delay_counter(15),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~47_cout0\,
	cin1 => \LessThan4~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~40\,
	cout => \LessThan4~42_cout\);

-- Location: LC_X12_Y6_N0
\LessThan4~37\ : maxv_lcell
-- Equation(s):
-- \LessThan4~37_cout0\ = CARRY((timer_value(16) & (led_delay_counter(16) & !\LessThan4~42_cout\)) # (!timer_value(16) & ((led_delay_counter(16)) # (!\LessThan4~42_cout\))))
-- \LessThan4~37COUT1_87\ = CARRY((timer_value(16) & (led_delay_counter(16) & !\LessThan4~42_cout\)) # (!timer_value(16) & ((led_delay_counter(16)) # (!\LessThan4~42_cout\))))

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
	dataa => timer_value(16),
	datab => led_delay_counter(16),
	cin => \LessThan4~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~35\,
	cout0 => \LessThan4~37_cout0\,
	cout1 => \LessThan4~37COUT1_87\);

-- Location: LC_X12_Y6_N1
\LessThan4~32\ : maxv_lcell
-- Equation(s):
-- \LessThan4~32_cout0\ = CARRY((led_delay_counter(17) & (timer_value(17) & !\LessThan4~37_cout0\)) # (!led_delay_counter(17) & ((timer_value(17)) # (!\LessThan4~37_cout0\))))
-- \LessThan4~32COUT1_88\ = CARRY((led_delay_counter(17) & (timer_value(17) & !\LessThan4~37COUT1_87\)) # (!led_delay_counter(17) & ((timer_value(17)) # (!\LessThan4~37COUT1_87\))))

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
	dataa => led_delay_counter(17),
	datab => timer_value(17),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~37_cout0\,
	cin1 => \LessThan4~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~30\,
	cout0 => \LessThan4~32_cout0\,
	cout1 => \LessThan4~32COUT1_88\);

-- Location: LC_X12_Y6_N2
\LessThan4~27\ : maxv_lcell
-- Equation(s):
-- \LessThan4~27_cout0\ = CARRY((timer_value(18) & (led_delay_counter(18) & !\LessThan4~32_cout0\)) # (!timer_value(18) & ((led_delay_counter(18)) # (!\LessThan4~32_cout0\))))
-- \LessThan4~27COUT1_89\ = CARRY((timer_value(18) & (led_delay_counter(18) & !\LessThan4~32COUT1_88\)) # (!timer_value(18) & ((led_delay_counter(18)) # (!\LessThan4~32COUT1_88\))))

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
	dataa => timer_value(18),
	datab => led_delay_counter(18),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~32_cout0\,
	cin1 => \LessThan4~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~25\,
	cout0 => \LessThan4~27_cout0\,
	cout1 => \LessThan4~27COUT1_89\);

-- Location: LC_X12_Y6_N3
\LessThan4~22\ : maxv_lcell
-- Equation(s):
-- \LessThan4~22_cout0\ = CARRY((timer_value(19) & ((!\LessThan4~27_cout0\) # (!led_delay_counter(19)))) # (!timer_value(19) & (!led_delay_counter(19) & !\LessThan4~27_cout0\)))
-- \LessThan4~22COUT1_90\ = CARRY((timer_value(19) & ((!\LessThan4~27COUT1_89\) # (!led_delay_counter(19)))) # (!timer_value(19) & (!led_delay_counter(19) & !\LessThan4~27COUT1_89\)))

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
	dataa => timer_value(19),
	datab => led_delay_counter(19),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~27_cout0\,
	cin1 => \LessThan4~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~20\,
	cout0 => \LessThan4~22_cout0\,
	cout1 => \LessThan4~22COUT1_90\);

-- Location: LC_X12_Y6_N4
\LessThan4~17\ : maxv_lcell
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((timer_value(20) & (led_delay_counter(20) & !\LessThan4~22COUT1_90\)) # (!timer_value(20) & ((led_delay_counter(20)) # (!\LessThan4~22COUT1_90\))))

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
	dataa => timer_value(20),
	datab => led_delay_counter(20),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~22_cout0\,
	cin1 => \LessThan4~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~15\,
	cout => \LessThan4~17_cout\);

-- Location: LC_X12_Y6_N5
\LessThan4~12\ : maxv_lcell
-- Equation(s):
-- \LessThan4~12_cout0\ = CARRY((led_delay_counter(21) & (timer_value(21) & !\LessThan4~17_cout\)) # (!led_delay_counter(21) & ((timer_value(21)) # (!\LessThan4~17_cout\))))
-- \LessThan4~12COUT1_91\ = CARRY((led_delay_counter(21) & (timer_value(21) & !\LessThan4~17_cout\)) # (!led_delay_counter(21) & ((timer_value(21)) # (!\LessThan4~17_cout\))))

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
	dataa => led_delay_counter(21),
	datab => timer_value(21),
	cin => \LessThan4~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10\,
	cout0 => \LessThan4~12_cout0\,
	cout1 => \LessThan4~12COUT1_91\);

-- Location: LC_X12_Y6_N6
\LessThan4~7\ : maxv_lcell
-- Equation(s):
-- \LessThan4~7_cout0\ = CARRY((timer_value(22) & (led_delay_counter(22) & !\LessThan4~12_cout0\)) # (!timer_value(22) & ((led_delay_counter(22)) # (!\LessThan4~12_cout0\))))
-- \LessThan4~7COUT1_92\ = CARRY((timer_value(22) & (led_delay_counter(22) & !\LessThan4~12COUT1_91\)) # (!timer_value(22) & ((led_delay_counter(22)) # (!\LessThan4~12COUT1_91\))))

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
	dataa => timer_value(22),
	datab => led_delay_counter(22),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~12_cout0\,
	cin1 => \LessThan4~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5\,
	cout0 => \LessThan4~7_cout0\,
	cout1 => \LessThan4~7COUT1_92\);

-- Location: LC_X12_Y6_N7
\LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = ((timer_value(23) & ((!\LessThan4~17_cout\ & \LessThan4~7_cout0\) # (\LessThan4~17_cout\ & \LessThan4~7COUT1_92\) & led_delay_counter(23))) # (!timer_value(23) & (((!\LessThan4~17_cout\ & \LessThan4~7_cout0\) # (\LessThan4~17_cout\ 
-- & \LessThan4~7COUT1_92\)) # (led_delay_counter(23)))))

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
	datab => timer_value(23),
	datad => led_delay_counter(23),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~7_cout0\,
	cin1 => \LessThan4~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X12_Y5_N9
\state[1]\ : maxv_lcell
-- Equation(s):
-- state(1) = DFFEAS((state(0) & (((\LessThan4~0_combout\ & state(6))))) # (!state(0) & ((\start_blinky~regout\) # ((\LessThan4~0_combout\ & state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => state(0),
	datab => \start_blinky~regout\,
	datac => \LessThan4~0_combout\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LC_X10_Y5_N0
\state[2]\ : maxv_lcell
-- Equation(s):
-- state(2) = DFFEAS((((\Equal0~0\ & state(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

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
	clk => \aa~combout\(1),
	datac => \Equal0~0\,
	datad => state(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LC_X10_Y6_N4
\shift_count_value[2]~6\ : maxv_lcell
-- Equation(s):
-- \shift_count_value[2]~6_combout\ = ((\ACTIVE_TRIGGER_INST|trigger_to_device~7\) # ((state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|trigger_to_device~7\,
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value[2]~6_combout\);

-- Location: LC_X9_Y4_N9
\shift_count_value[1]\ : maxv_lcell
-- Equation(s):
-- shift_count_value(1) = DFFEAS(((\shift_count_value[2]~2_combout\ & ((\shift_count_value~8_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \shift_count_value[2]~6_combout\, , , , )

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
	datab => \shift_count_value[2]~2_combout\,
	datad => \shift_count_value~8_combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \shift_count_value[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shift_count_value(1));

-- Location: LC_X9_Y5_N2
\static_load_value[1]\ : maxv_lcell
-- Equation(s):
-- static_load_value(1) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\, , , VCC)

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
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => static_load_value(1));

-- Location: LC_X10_Y4_N4
\led_reg[0]~1\ : maxv_lcell
-- Equation(s):
-- \led_reg[0]~1_combout\ = \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ $ ((((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[5]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_reg[0]~1_combout\);

-- Location: LC_X10_Y4_N2
\led_reg[1]\ : maxv_lcell
-- Equation(s):
-- led_reg(1) = DFFEAS((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (((static_load_value(1))))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (random_number(1))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , state(1), 
-- shift_count_value(1), , \led_reg[0]~0\, \led_reg[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => random_number(1),
	datab => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datac => shift_count_value(1),
	datad => static_load_value(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sclr => \led_reg[0]~0\,
	sload => \led_reg[0]~1_combout\,
	ena => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_reg(1));

-- Location: LC_X8_Y4_N9
\shift_count_value~3\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~3_combout\ = (\shift_count_value[2]~1_combout\ & (((\shift_count_value[2]~0_combout\)) # (!led_reg(0)))) # (!\shift_count_value[2]~1_combout\ & (((!\shift_count_value[2]~0_combout\ & led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shift_count_value[2]~1_combout\,
	datab => led_reg(0),
	datac => \shift_count_value[2]~0_combout\,
	datad => led_reg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~3_combout\);

-- Location: LC_X9_Y4_N7
\shift_count_value~4\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~4_combout\ = (\shift_count_value~3_combout\ & (((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\) # (!\shift_count_value[2]~0_combout\)))) # (!\shift_count_value~3_combout\ & (led_reg(1) & ((\shift_count_value[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	datac => \shift_count_value~3_combout\,
	datad => \shift_count_value[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~4_combout\);

-- Location: LC_X9_Y4_N8
\shift_count_value[0]\ : maxv_lcell
-- Equation(s):
-- shift_count_value(0) = DFFEAS((((\shift_count_value~4_combout\ & \shift_count_value[2]~2_combout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \shift_count_value[2]~6_combout\, , , , )

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
	clk => \aa~combout\(1),
	datac => \shift_count_value~4_combout\,
	datad => \shift_count_value[2]~2_combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \shift_count_value[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shift_count_value(0));

-- Location: LC_X9_Y4_N4
\static_load_value[0]\ : maxv_lcell
-- Equation(s):
-- static_load_value(0) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRIGGER_INST|trigger_to_device~0\, , , , )

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_TRIGGER_INST|trigger_to_device~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => static_load_value(0));

-- Location: LC_X10_Y4_N0
\led_reg[0]\ : maxv_lcell
-- Equation(s):
-- led_reg(0) = DFFEAS((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (((static_load_value(0))))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (random_number(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , state(1), 
-- shift_count_value(0), , \led_reg[0]~0\, \led_reg[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datab => random_number(0),
	datac => shift_count_value(0),
	datad => static_load_value(0),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sclr => \led_reg[0]~0\,
	sload => \led_reg[0]~1_combout\,
	ena => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_reg(0));

-- Location: LC_X8_Y4_N7
\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~14\ = (\shift_count_value~13_combout\ & (((C1L40Q)) # (!\shift_count_value[2]~0_combout\))) # (!\shift_count_value~13_combout\ & (\shift_count_value[2]~0_combout\ & ((led_reg(0)))))
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ = DFFEAS(\shift_count_value~14\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_TRANSFER_INST_1|state_in\(2), \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\, , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \shift_count_value~13_combout\,
	datab => \shift_count_value[2]~0_combout\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN[3]~3\,
	datad => led_reg(0),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_TRANSFER_INST_1|state_in\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~14\,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\);

-- Location: LC_X9_Y4_N1
\shift_count_value[3]\ : maxv_lcell
-- Equation(s):
-- shift_count_value(3) = DFFEAS(((\shift_count_value~14\ & ((\shift_count_value[2]~2_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \shift_count_value[2]~6_combout\, , , , )

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
	datab => \shift_count_value~14\,
	datad => \shift_count_value[2]~2_combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \shift_count_value[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shift_count_value(3));

-- Location: LC_X10_Y4_N1
\random_number[3]\ : maxv_lcell
-- Equation(s):
-- random_number(3) = DFFEAS((\random_number[1]~2_combout\ & ((random_num_counter(1) & (\LFSR_INST|G1~combout\)) # (!random_num_counter(1) & ((random_number(3)))))) # (!\random_number[1]~2_combout\ & (((random_number(3))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \random_number[1]~2_combout\,
	datab => random_num_counter(1),
	datac => \LFSR_INST|G1~combout\,
	datad => random_number(3),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_number(3));

-- Location: LC_X10_Y4_N5
\led_reg[3]\ : maxv_lcell
-- Equation(s):
-- led_reg(3) = DFFEAS((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (static_load_value(3))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (((random_number(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , state(1), 
-- shift_count_value(3), , \led_reg[0]~0\, \led_reg[0]~1_combout\)

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
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datab => static_load_value(3),
	datac => shift_count_value(3),
	datad => random_number(3),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sclr => \led_reg[0]~0\,
	sload => \led_reg[0]~1_combout\,
	ena => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_reg(3));

-- Location: LC_X8_Y4_N5
\shift_count_value~10\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~10_combout\ = (\shift_count_value[2]~1_combout\ & (((\shift_count_value[2]~0_combout\)))) # (!\shift_count_value[2]~1_combout\ & ((\shift_count_value[2]~0_combout\ & (led_reg(3))) # (!\shift_count_value[2]~0_combout\ & ((led_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shift_count_value[2]~1_combout\,
	datab => led_reg(3),
	datac => \shift_count_value[2]~0_combout\,
	datad => led_reg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~10_combout\);

-- Location: LC_X8_Y4_N2
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ $ (led_reg(2) $ ((!\Add3~2\)))
-- \Add3~7\ = CARRY((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & ((led_reg(2)) # (!\Add3~2\))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & (led_reg(2) & !\Add3~2\)))
-- \Add3~7COUT1_23\ = CARRY((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & ((led_reg(2)) # (!\Add3~2COUT1_22\))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ & (led_reg(2) & !\Add3~2COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	datab => led_reg(2),
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_23\);

-- Location: LC_X8_Y4_N4
\shift_count_value~11\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~11_combout\ = (\shift_count_value[2]~1_combout\ & ((\shift_count_value~10_combout\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\)) # (!\shift_count_value~10_combout\ & ((\Add3~5_combout\))))) # 
-- (!\shift_count_value[2]~1_combout\ & (\shift_count_value~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shift_count_value[2]~1_combout\,
	datab => \shift_count_value~10_combout\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datad => \Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~11_combout\);

-- Location: LC_X9_Y4_N6
\shift_count_value[2]\ : maxv_lcell
-- Equation(s):
-- shift_count_value(2) = DFFEAS(((\shift_count_value~11_combout\ & ((\shift_count_value[2]~2_combout\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \shift_count_value[2]~6_combout\, , , , )

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
	datab => \shift_count_value~11_combout\,
	datad => \shift_count_value[2]~2_combout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \shift_count_value[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shift_count_value(2));

-- Location: LC_X10_Y4_N9
\random_number[2]\ : maxv_lcell
-- Equation(s):
-- random_number(2) = DFFEAS((\random_number[0]~0\ & ((random_num_counter(1) & (\LFSR_INST|G1~combout\)) # (!random_num_counter(1) & ((random_number(2)))))) # (!\random_number[0]~0\ & (((random_number(2))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \random_number[0]~0\,
	datab => random_num_counter(1),
	datac => \LFSR_INST|G1~combout\,
	datad => random_number(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => random_number(2));

-- Location: LC_X10_Y4_N8
\led_reg[2]\ : maxv_lcell
-- Equation(s):
-- led_reg(2) = DFFEAS((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (static_load_value(2))) # (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\ & (((random_number(2))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , state(1), 
-- shift_count_value(2), , \led_reg[0]~0\, \led_reg[0]~1_combout\)

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
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[6]~reg0\,
	datab => static_load_value(2),
	datac => shift_count_value(2),
	datad => random_number(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sclr => \led_reg[0]~0\,
	sload => \led_reg[0]~1_combout\,
	ena => state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => led_reg(2));

-- Location: LC_X8_Y4_N3
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\ $ (((\Add3~7\ $ (led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[4]~reg0\,
	datad => led_reg(3),
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\);

-- Location: LC_X8_Y4_N8
\shift_count_value~13\ : maxv_lcell
-- Equation(s):
-- \shift_count_value~13_combout\ = (\shift_count_value[2]~1_combout\ & (((\shift_count_value[2]~0_combout\) # (\Add3~10_combout\)))) # (!\shift_count_value[2]~1_combout\ & (led_reg(2) & (!\shift_count_value[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shift_count_value[2]~1_combout\,
	datab => led_reg(2),
	datac => \shift_count_value[2]~0_combout\,
	datad => \Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_count_value~13_combout\);

-- Location: LC_X10_Y6_N6
\ACTIVE_CONTROL_REG_INST|Equal1~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Equal1~1\ = (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ & (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ & 
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\)))

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
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Equal1~1\);

-- Location: LC_X9_Y5_N0
\ACTIVE_CONTROL_REG_INST|Equal0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Equal0~0\ = (\ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\ & 
-- !\ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[3]~reg0\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[0]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Equal0~0\);

-- Location: LC_X9_Y6_N8
\ACTIVE_CONTROL_REG_INST|Equal0~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Equal0~1\ = ((!\ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\ & \ACTIVE_CONTROL_REG_INST|Equal0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[7]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[4]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Equal0~1\);

-- Location: LC_X7_Y6_N2
\ACTIVE_CONTROL_REG_INST|Equal1~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Equal1~0\ = (\ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\ & (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ & (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ & 
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\)))

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
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_to_device[6]~reg0\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[1]~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Equal1~0\);

-- Location: LC_X7_Y4_N8
\ACTIVE_CONTROL_REG_INST|transfer_in_received_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\ = ((\ACTIVE_TRANSFER_INST_1|transfer_received~reg0\ & (!B1_transfer_in_received_reg & \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\)))
-- \ACTIVE_CONTROL_REG_INST|transfer_in_received_reg\ = DFFEAS(\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_in_received_reg\);

-- Location: LC_X7_Y4_N2
\ACTIVE_CONTROL_REG_INST|always0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|always0~0\ = (!\ACTIVE_CONTROL_REG_INST|transfer_in_received_reg\ & (((\ACTIVE_TRANSFER_INST_1|transfer_received~reg0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|transfer_in_received_reg\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|always0~0\);

-- Location: LC_X7_Y6_N5
\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_SET~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Selector0~0\ = (B1_transfer_control_state.TRANSFER_CONTROL_SET) # ((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\ & ((!\ACTIVE_CONTROL_REG_INST|Equal1~0\) # (!\ACTIVE_CONTROL_REG_INST|Equal1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|Equal1~1\,
	datab => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\,
	datac => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\,
	datad => \ACTIVE_CONTROL_REG_INST|Equal1~0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Selector0~0\,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_SET\);

-- Location: LC_X7_Y6_N9
\ACTIVE_CONTROL_REG_INST|Selector0~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|Selector0~1\ = (\ACTIVE_CONTROL_REG_INST|Equal0~1\ & ((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ & 
-- \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\)) # (!\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ & (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ & !\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_CONTROL_REG_INST|Selector0~1\);

-- Location: LC_X7_Y6_N4
\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\ = DFFEAS((!\ACTIVE_CONTROL_REG_INST|Selector0~0\ & ((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ & 
-- (\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\ & \ACTIVE_CONTROL_REG_INST|Selector0~1\)) # (!\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ & 
-- ((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\) # (\ACTIVE_CONTROL_REG_INST|Selector0~1\))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\,
	datab => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\,
	datac => \ACTIVE_CONTROL_REG_INST|Selector0~0\,
	datad => \ACTIVE_CONTROL_REG_INST|Selector0~1\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_CONTROL_REG_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\);

-- Location: LC_X7_Y6_N0
\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\ = DFFEAS((\ACTIVE_CONTROL_REG_INST|Equal0~1\ & (!\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\ & (!\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ & 
-- !\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|Equal0~1\,
	datab => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_IDLE\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_CONTROL_REG_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\);

-- Location: LC_X7_Y6_N3
\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ = DFFEAS((\ACTIVE_CONTROL_REG_INST|Equal1~1\ & (((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\ & \ACTIVE_CONTROL_REG_INST|Equal1~0\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|Equal1~1\,
	datac => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR1\,
	datad => \ACTIVE_CONTROL_REG_INST|Equal1~0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_CONTROL_REG_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\);

-- Location: LC_X7_Y6_N7
\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\ = DFFEAS((\ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\ & (\ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\ & 
-- (\ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\ & \ACTIVE_CONTROL_REG_INST|Equal0~1\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|always0~0\, , , , )

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
	dataa => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_CONTROL_HDR2\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_to_device[5]~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\,
	datad => \ACTIVE_CONTROL_REG_INST|Equal0~1\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \ACTIVE_CONTROL_REG_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|transfer_control_state.TRANSFER_DECODE_BYTE\);

-- Location: LC_X9_Y6_N3
\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\, \ACTIVE_TRANSFER_INST_1|transfer_to_device[2]~reg0\, , , VCC)

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
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	ena => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\);

-- Location: LC_X11_Y4_N5
\start_transfer~0\ : maxv_lcell
-- Equation(s):
-- \start_transfer~0_combout\ = (((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\) # (state(6))))

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
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \start_transfer~0_combout\);

-- Location: LC_X11_Y4_N1
start_transfer_reg : maxv_lcell
-- Equation(s):
-- \start_transfer_reg~regout\ = DFFEAS((\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\) # ((state(6)) # ((!state(1) & \start_transfer_reg~regout\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datab => state(1),
	datac => \start_transfer_reg~regout\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_transfer_reg~regout\);

-- Location: LC_X11_Y4_N6
start_transfer : maxv_lcell
-- Equation(s):
-- \start_transfer~regout\ = DFFEAS((\start_transfer~0_combout\ & (!\start_transfer_reg~regout\)) # (!\start_transfer~0_combout\ & (\start_transfer~regout\ & ((!state(1)) # (!\start_transfer_reg~regout\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3272",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \start_transfer~0_combout\,
	datab => \start_transfer_reg~regout\,
	datac => \start_transfer~regout\,
	datad => state(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_transfer~regout\);

-- Location: LC_X11_Y4_N0
\ACTIVE_TRANSFER_INST_1|start_transfer_in~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_in\ = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , \start_transfer~regout\, , , VCC)

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
	datac => \start_transfer~regout\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_in\);

-- Location: LC_X4_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5)))))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\);

-- Location: LC_X11_Y4_N8
\ACTIVE_TRANSFER_INST_1|start_transfer_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|always0~0\ = (!\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & ((\start_transfer~regout\) # ((\ACTIVE_TRANSFER_INST_1|transfer_received~reg0\) # (C1_start_transfer_reg))))
-- \ACTIVE_TRANSFER_INST_1|start_transfer_reg\ = DFFEAS(\ACTIVE_TRANSFER_INST_1|always0~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRANSFER_INST_1|start_transfer_in\, , , VCC)

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
	dataa => \start_transfer~regout\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_received~reg0\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_INST_1|always0~0\,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\);

-- Location: LC_X11_Y4_N9
\ACTIVE_TRANSFER_INST_1|transfer_busy_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy_reg\ = DFFEAS((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\ & !\ACTIVE_TRANSFER_INST_1|always0~0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_INST_1|always0~0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg\);

-- Location: LC_X11_Y4_N4
\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ = DFFEAS((\ACTIVE_TRANSFER_INST_1|always0~0\) # ((\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\) # 
-- (!\ACTIVE_TRANSFER_INST_1|transfer_busy_reg\))) # (!\ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\ & (!\ACTIVE_TRANSFER_INST_1|transfer_busy_reg\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\,
	datab => \ACTIVE_TRANSFER_INST_1|transfer_busy_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|transfer_busy\,
	datad => \ACTIVE_TRANSFER_INST_1|always0~0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|transfer_busy~reg0\);

-- Location: LC_X11_Y4_N7
\ACTIVE_TRANSFER_INST_1|start_transfer_count[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0) = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0) $ 
-- (!\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1))))) # (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (((\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d058",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datab => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0),
	datad => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0));

-- Location: LC_X11_Y4_N3
\ACTIVE_TRANSFER_INST_1|start_transfer_count[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1) = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & ((\ACTIVE_TRANSFER_INST_1|start_transfer_count\(0)) # 
-- (\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1))))) # (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (((\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datab => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(0),
	datad => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1));

-- Location: LC_X11_Y4_N2
\ACTIVE_TRANSFER_INST_1|to_transfer_update~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_INST_1|to_transfer_update\ = DFFEAS((\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & (\ACTIVE_TRANSFER_INST_1|to_transfer_update\ & (\ACTIVE_TRANSFER_INST_1|start_transfer_in\ & !\ACTIVE_TRANSFER_INST_1|start_transfer_count\(1)))) # 
-- (!\ACTIVE_TRANSFER_INST_1|start_transfer_reg\ & ((\ACTIVE_TRANSFER_INST_1|to_transfer_update\) # ((\ACTIVE_TRANSFER_INST_1|start_transfer_in\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54d4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_INST_1|start_transfer_reg\,
	datab => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	datac => \ACTIVE_TRANSFER_INST_1|start_transfer_in\,
	datad => \ACTIVE_TRANSFER_INST_1|start_transfer_count\(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_INST_1|to_transfer_update\);

-- Location: LC_X4_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\);

-- Location: LC_X4_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\);

-- Location: LC_X4_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\)) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f15",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux_reg\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\);

-- Location: LC_X4_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\);

-- Location: LC_X4_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) $ ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[0]~1COUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\);

-- Location: LC_X4_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2) $ ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[1]~3COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(2),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\);

-- Location: LC_X4_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~5COUT1_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(3),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\);

-- Location: LC_X4_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4) $ ((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[3]~7COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(4),
	cout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\);

-- Location: LC_X4_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5) $ ((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(5),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\);

-- Location: LC_X4_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) $ ((((!(!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\ = CARRY((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	aclr => \ALT_INV_aa~combout\(0),
	sclr => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[5]~11COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	cout0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\,
	cout1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\);

-- Location: LC_X4_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) $ (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always3~0\, )

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
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[2]~16\,
	cin => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[4]~9\,
	cin0 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13\,
	cin1 => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux[6]~13COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7));

-- Location: LC_X4_Y7_N9
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

-- Location: LC_X4_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\);

-- Location: LC_X3_Y5_N6
\ACTIVE_TRIGGER_INST|to_trigupdate_counter[9]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9) = DFFEAS(((\ACTIVE_TRIGGER_INST|to_trigupdate\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8)) # (\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datad => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9));

-- Location: LC_X3_Y5_N3
\ACTIVE_TRIGGER_INST|to_trigupdate_counter[8]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8) = DFFEAS(((\ACTIVE_TRIGGER_INST|to_trigupdate\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9)) # (!\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datad => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8));

-- Location: LC_X3_Y5_N5
\ACTIVE_TRIGGER_INST|trigger_to_host_flag~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|trigger_to_host_flag\ = DFFEAS((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8) & (((\ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9) & \ACTIVE_TRIGGER_INST|to_trigupdate\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(8),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate_counter\(9),
	datad => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\);

-- Location: LC_X3_Y5_N7
\ACTIVE_TRIGGER_INST|xint[10]~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint[10]~0\ = (!\ACTIVE_TRIGGER_INST|trigger_to_host_flag\ & (((\reset_signal_reg~regout\ & !\ACTIVE_TRIGGER_INST|Equal1~4\))))

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
	dataa => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datac => \reset_signal_reg~regout\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|xint[10]~0\);

-- Location: LC_X1_Y6_N4
\ACTIVE_TRIGGER_INST|xint[8]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(8) = DFFEAS(((\ACTIVE_TRIGGER_INST|xint\(8) $ (\ACTIVE_TRIGGER_INST|xint[10]~0\))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

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
	datac => \ACTIVE_TRIGGER_INST|xint\(8),
	datad => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(8));

-- Location: LC_X1_Y6_N8
\ACTIVE_TRIGGER_INST|xint[9]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(9) = DFFEAS(\ACTIVE_TRIGGER_INST|xint\(9) $ ((((\ACTIVE_TRIGGER_INST|xint\(8) & \ACTIVE_TRIGGER_INST|xint[10]~0\)))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|xint\(8),
	datad => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(9));

-- Location: LC_X1_Y6_N2
\ACTIVE_TRIGGER_INST|xint[10]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|xint\(10) = DFFEAS(\ACTIVE_TRIGGER_INST|xint\(10) $ (((\ACTIVE_TRIGGER_INST|xint\(9) & (\ACTIVE_TRIGGER_INST|xint\(8) & \ACTIVE_TRIGGER_INST|xint[10]~0\)))), GLOBAL(\aa~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|xint\(8),
	datad => \ACTIVE_TRIGGER_INST|xint[10]~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|xint\(10));

-- Location: LC_X1_Y6_N3
\ACTIVE_TRIGGER_INST|Mux0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~0\ = (\ACTIVE_TRIGGER_INST|xint\(9) & (((\ACTIVE_TRIGGER_INST|xint\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|xint\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~0\);

-- Location: LC_X1_Y6_N6
\ACTIVE_TRIGGER_INST|Mux0~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~1\ = (!\ACTIVE_TRIGGER_INST|xint\(9) & (((\ACTIVE_TRIGGER_INST|Mux0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datad => \ACTIVE_TRIGGER_INST|Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~1\);

-- Location: LC_X1_Y6_N7
\ACTIVE_TRIGGER_INST|Mux0~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~2\ = (\ACTIVE_TRIGGER_INST|xint\(9) & (((\ACTIVE_TRIGGER_INST|xint\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datac => \ACTIVE_TRIGGER_INST|xint\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~2\);

-- Location: LC_X1_Y6_N9
\ACTIVE_TRIGGER_INST|Mux0~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Mux0~3\ = (((\ACTIVE_TRIGGER_INST|Mux0~2\ & !\ACTIVE_TRIGGER_INST|xint\(9))))

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
	datac => \ACTIVE_TRIGGER_INST|Mux0~2\,
	datad => \ACTIVE_TRIGGER_INST|xint\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Mux0~3\);

-- Location: LC_X1_Y6_N5
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\ = ((\ACTIVE_TRIGGER_INST|xint\(10) & ((!\ACTIVE_TRIGGER_INST|Mux0~3\))) # (!\ACTIVE_TRIGGER_INST|xint\(10) & (!\ACTIVE_TRIGGER_INST|Mux0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|Mux0~1\,
	datad => \ACTIVE_TRIGGER_INST|Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\);

-- Location: LC_X3_Y5_N4
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\ = (\ACTIVE_TRIGGER_INST|Equal1~4\) # (((\ACTIVE_TRIGGER_INST|trigger_to_host_flag\) # (!\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRIGGER_INST|Equal1~4\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datad => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\);

-- Location: LC_X2_Y6_N4
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6) = DFFEAS((E1_previous_to_trigupdate[6] & (((\ACTIVE_TRIGGER_INST|xint\(8)) # (!\ACTIVE_TRIGGER_INST|xint\(10))) # (!\ACTIVE_TRIGGER_INST|xint\(9)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(6));

-- Location: LC_X2_Y6_N6
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7) = DFFEAS((E1_previous_to_trigupdate[7] & (((!\ACTIVE_TRIGGER_INST|xint\(8)) # (!\ACTIVE_TRIGGER_INST|xint\(10))) # (!\ACTIVE_TRIGGER_INST|xint\(9)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(7));

-- Location: LC_X2_Y6_N5
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

-- Location: LC_X2_Y6_N3
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5) = DFFEAS((E1_previous_to_trigupdate[5] & ((\ACTIVE_TRIGGER_INST|xint\(9)) # ((!\ACTIVE_TRIGGER_INST|xint\(8)) # (!\ACTIVE_TRIGGER_INST|xint\(10))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5));

-- Location: LC_X2_Y6_N8
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4) = DFFEAS((E1_previous_to_trigupdate[4] & ((\ACTIVE_TRIGGER_INST|xint\(9)) # ((\ACTIVE_TRIGGER_INST|xint\(8)) # (!\ACTIVE_TRIGGER_INST|xint\(10))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4));

-- Location: LC_X2_Y5_N3
\ACTIVE_TRIGGER_INST|Equal1~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~2\ = (((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5) & !\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4))))

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
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(5),
	datad => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~2\);

-- Location: LC_X2_Y6_N9
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1) = DFFEAS((E1_previous_to_trigupdate[1] & ((\ACTIVE_TRIGGER_INST|xint\(9)) # ((\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(8))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1));

-- Location: LC_X2_Y6_N7
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0) = DFFEAS((E1_previous_to_trigupdate[0] & ((\ACTIVE_TRIGGER_INST|xint\(9)) # ((\ACTIVE_TRIGGER_INST|xint\(10)) # (\ACTIVE_TRIGGER_INST|xint\(8))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), 
-- , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0));

-- Location: LC_X2_Y6_N1
\ACTIVE_TRIGGER_INST|Equal1~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~0\ = ((!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1) & (!\ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(1),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~0\);

-- Location: LC_X2_Y6_N2
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2) = DFFEAS((E1_previous_to_trigupdate[2] & (((\ACTIVE_TRIGGER_INST|xint\(10)) # (\ACTIVE_TRIGGER_INST|xint\(8))) # (!\ACTIVE_TRIGGER_INST|xint\(9)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(2));

-- Location: LC_X2_Y6_N0
\ACTIVE_TRIGGER_INST|previous_to_trigupdate[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3) = DFFEAS((E1_previous_to_trigupdate[3] & (((\ACTIVE_TRIGGER_INST|xint\(10)) # (!\ACTIVE_TRIGGER_INST|xint\(8))) # (!\ACTIVE_TRIGGER_INST|xint\(9)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\reset_signal_reg~regout\), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3), , , \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\)

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
	dataa => \ACTIVE_TRIGGER_INST|xint\(9),
	datab => \ACTIVE_TRIGGER_INST|xint\(10),
	datac => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3),
	datad => \ACTIVE_TRIGGER_INST|xint\(8),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	sload => \ACTIVE_TRIGGER_INST|previous_to_trigupdate[7]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|previous_to_trigupdate\(3));

-- Location: LC_X3_Y5_N2
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

-- Location: LC_X3_Y5_N8
\ACTIVE_TRIGGER_INST|Equal1~4_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|Equal1~4\ = (\ACTIVE_TRIGGER_INST|Equal1~3\ & (\ACTIVE_TRIGGER_INST|Equal1~2\ & (\ACTIVE_TRIGGER_INST|Equal1~0\ & \ACTIVE_TRIGGER_INST|Equal1~1\)))

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
	datab => \ACTIVE_TRIGGER_INST|Equal1~2\,
	datac => \ACTIVE_TRIGGER_INST|Equal1~0\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRIGGER_INST|Equal1~4\);

-- Location: LC_X3_Y5_N9
\ACTIVE_TRIGGER_INST|to_trigupdate~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRIGGER_INST|to_trigupdate\ = DFFEAS(((\ACTIVE_TRIGGER_INST|to_trigupdate\ & (!\ACTIVE_TRIGGER_INST|trigger_to_host_flag\ & !\ACTIVE_TRIGGER_INST|Equal1~4\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datac => \ACTIVE_TRIGGER_INST|trigger_to_host_flag\,
	datad => \ACTIVE_TRIGGER_INST|Equal1~4\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRIGGER_INST|to_trigupdate\);

-- Location: LC_X4_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\ = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\);

-- Location: LC_X4_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\ & ((\ACTIVE_TRIGGER_INST|to_trigupdate\) # (\ACTIVE_TRANSFER_INST_1|to_transfer_update\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\,
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\);

-- Location: LC_X4_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1) $ 
-- ((H1_command_from_device[0]))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \ACTIVE_TRIGGER_INST|to_trigupdate\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1414",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	datac => \ACTIVE_TRIGGER_INST|to_trigupdate\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0));

-- Location: LC_X4_Y5_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\);

-- Location: LC_X4_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\)), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Selector8~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\);

-- Location: LC_X4_Y6_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\);

-- Location: LC_X4_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) & 
-- (H1_command_from_device[1] & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, 
-- \ACTIVE_TRANSFER_INST_1|to_transfer_update\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	datac => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1));

-- Location: LC_X4_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ = \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0) $ (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1)) # 
-- ((H1_command_from_device[2]))))
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) = DFFEAS(\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, \~GND~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5656",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_aa~combout\(0),
	sload => VCC,
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2));

-- Location: LC_X4_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\);

-- Location: LC_X3_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12\);

-- Location: LC_X4_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~13\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next~12\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|UC_IN~22\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5));

-- Location: LC_X3_Y6_N4
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

-- Location: LC_X3_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6));

-- Location: LC_X3_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7) = DFFEAS((((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

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
	clk => \aa~combout\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7));

-- Location: LC_X4_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\);

-- Location: LC_X4_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\);

-- Location: LC_X5_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_to_host\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\);

-- Location: LC_X5_Y6_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\ & !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~8\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\);

-- Location: LC_X5_Y6_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) = DFFEAS(((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\)))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1));

-- Location: LC_X5_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\);

-- Location: LC_X5_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~9\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\);

-- Location: LC_X4_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[0]~10\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_data_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WideOr2~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(7),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0));

-- Location: LC_X5_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\);

-- Location: LC_X5_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~2\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[4]~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\);

-- Location: LC_X5_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg~0\);

-- Location: LC_X5_Y7_N2
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

-- Location: LC_X5_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\);

-- Location: LC_X6_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\);

-- Location: LC_X6_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~27\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2));

-- Location: LC_X7_Y7_N8
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

-- Location: LC_X7_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3) & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(2),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\);

-- Location: LC_X5_Y7_N7
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

-- Location: LC_X5_Y7_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0) & 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan4~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count_reg\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\);

-- Location: LC_X6_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\))))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\);

-- Location: LC_X6_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~5\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\);

-- Location: LC_X6_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~37\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[0]~12\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0));

-- Location: LC_X6_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6) & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7))))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(6),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_REGISTER_DECODE\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\);

-- Location: LC_X5_Y7_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1) & \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)))

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_byte~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\);

-- Location: LC_X6_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\ = (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|block_read_byte\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\);

-- Location: LC_X6_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eef0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count[1]~13\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Add3~6\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1));

-- Location: LC_X5_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(4),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\);

-- Location: LC_X5_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|byte_count\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|next[3]~2\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|Equal6~1\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~0\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3));

-- Location: LC_X5_Y6_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\);

-- Location: LC_X5_Y6_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ = ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2)))))

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
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|comb~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\);

-- Location: LC_X5_Y6_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|DATA_BYTE_READY\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always7~3\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2));

-- Location: LC_X5_Y4_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\ = (((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2) & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))

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
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\);

-- Location: LC_X5_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2))))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\ & 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[3]~7\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|read_complete\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(2),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3));

-- Location: LC_X5_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(2),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(3),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(3),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4));

-- Location: LC_X3_Y6_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\ = (((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\)))

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\);

-- Location: LC_X3_Y6_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0031",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next[0]~1\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0));

-- Location: LC_X3_Y7_N7
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\ = (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\);

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

-- Location: LC_X3_Y7_N6
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (\bc_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \bc_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\);

-- Location: LC_X3_Y7_N1
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\) # ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\) # (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|WRITE_READY~0\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\);

-- Location: LC_X3_Y7_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\) # 
-- ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ & \bc_in~combout\(0))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete~0\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	datac => \bc_in~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\);

-- Location: LC_X3_Y7_N2
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ & (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\ & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7));

-- Location: LC_X3_Y6_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5))))), GLOBAL(\aa~combout\(1)), 
-- GLOBAL(\aa~combout\(0)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3704",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|state\(5),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\);

-- Location: LC_X3_Y6_N5
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\)) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & 
-- (((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\ & \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_EN\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|next~2\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6));

-- Location: LC_X3_Y7_N3
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6)) # ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\ & 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0)) # (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7))))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\);

-- Location: LC_X3_Y7_N0
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ = (\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\ & \bc_in~combout\(0))))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7) & (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(0),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|usb_txe_n_reg\,
	datac => \bc_in~combout\(0),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\);

-- Location: LC_X3_Y7_N9
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\ = DFFEAS((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\) # 
-- ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6) & (((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\ & 
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|write_complete_reg\,
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(6),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\,
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_WR\);

-- Location: LC_X3_Y6_N8
\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1)) # ((!\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4) & 
-- !\ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(4),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|state\(1),
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|USB_RD_N~1\);

-- Location: LC_X6_Y4_N4
\LED[0]~en\ : maxv_lcell
-- Equation(s):
-- \LED[0]~en_regout\ = DFFEAS((((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & led_reg(0)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \LED[1]~5\, , , , )

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
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => led_reg(0),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \LED[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[0]~en_regout\);

-- Location: LC_X6_Y4_N5
\LED[1]~en\ : maxv_lcell
-- Equation(s):
-- \LED[1]~en_regout\ = DFFEAS((((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & led_reg(1)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \LED[1]~5\, , , , )

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
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => led_reg(1),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \LED[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[1]~en_regout\);

-- Location: LC_X6_Y4_N3
\LED[2]~en\ : maxv_lcell
-- Equation(s):
-- \LED[2]~en_regout\ = DFFEAS((((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & led_reg(2)))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \LED[1]~5\, , , , )

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
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => led_reg(2),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \LED[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[2]~en_regout\);

-- Location: LC_X6_Y4_N8
\LED[3]~en\ : maxv_lcell
-- Equation(s):
-- \LED[3]~en_regout\ = DFFEAS(((led_reg(3) & (!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \LED[1]~5\, , , , )

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
	clk => \aa~combout\(1),
	datab => led_reg(3),
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \LED[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[3]~en_regout\);

-- Location: LC_X10_Y4_N3
\transfer_out_byte[0]~1\ : maxv_lcell
-- Equation(s):
-- \transfer_out_byte[0]~1_combout\ = (\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\) # ((state(6)) # ((\start_transfer_reg~regout\ & state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start_transfer_reg~regout\,
	datab => state(1),
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => state(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transfer_out_byte[0]~1_combout\);

-- Location: LC_X6_Y4_N2
\transfer_out_byte[0]\ : maxv_lcell
-- Equation(s):
-- transfer_out_byte(0) = DFFEAS((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & (((\LED[0]~en_regout\ & state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \transfer_out_byte[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datac => \LED[0]~en_regout\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \transfer_out_byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_out_byte(0));

-- Location: LC_X2_Y5_N6
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0) = DFFEAS((((transfer_out_byte(0) & \ACTIVE_TRANSFER_INST_1|to_transfer_update\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

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
	clk => \aa~combout\(1),
	datac => transfer_out_byte(0),
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0));

-- Location: LC_X4_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3_I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ = ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & ((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0)) # 
-- (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\))) # (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0)))) # 
-- (!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~0\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\);

-- Location: LC_X2_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[0]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(0) = DFFEAS(GND, GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0), , , 
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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(0),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(0));

-- Location: LC_X2_Y5_N7
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(1) = DFFEAS((((\ACTIVE_TRANSFER_INST_1|to_transfer_update\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, 
-- , , , )

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
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(1));

-- Location: LC_X6_Y4_N9
\transfer_out_byte[1]\ : maxv_lcell
-- Equation(s):
-- transfer_out_byte(1) = DFFEAS((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & (((\LED[1]~en_regout\ & state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \transfer_out_byte[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datac => \LED[1]~en_regout\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \transfer_out_byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_out_byte(1));

-- Location: LC_X2_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1) = DFFEAS(((transfer_out_byte(1) & ((\ACTIVE_TRANSFER_INST_1|to_transfer_update\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

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
	datab => transfer_out_byte(1),
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1));

-- Location: LC_X2_Y5_N9
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[1]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(1) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(1))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|address_from_device\(1),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(1));

-- Location: LC_X6_Y4_N7
\transfer_out_byte[2]\ : maxv_lcell
-- Equation(s):
-- transfer_out_byte(2) = DFFEAS((\LED[2]~en_regout\ & (((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \transfer_out_byte[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \LED[2]~en_regout\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \transfer_out_byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_out_byte(2));

-- Location: LC_X2_Y5_N0
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[2]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2) = DFFEAS((transfer_out_byte(2) & (((\ACTIVE_TRANSFER_INST_1|to_transfer_update\)))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => transfer_out_byte(2),
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(2));

-- Location: LC_X2_Y5_N1
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

-- Location: LC_X6_Y4_N6
\transfer_out_byte[3]\ : maxv_lcell
-- Equation(s):
-- transfer_out_byte(3) = DFFEAS((\LED[3]~en_regout\ & (((!\ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\ & state(6))))), GLOBAL(\aa~combout\(1)), GLOBAL(\reset_signal_reg~regout\), , \transfer_out_byte[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \LED[3]~en_regout\,
	datac => \ACTIVE_CONTROL_REG_INST|CONTROL_REGISTER[2]~reg0\,
	datad => state(6),
	aclr => \ALT_INV_reset_signal_reg~regout\,
	ena => \transfer_out_byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => transfer_out_byte(3));

-- Location: LC_X2_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3) = DFFEAS((((transfer_out_byte(3) & \ACTIVE_TRANSFER_INST_1|to_transfer_update\))), GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , 
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\, , , , )

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
	clk => \aa~combout\(1),
	datac => transfer_out_byte(3),
	datad => \ACTIVE_TRANSFER_INST_1|to_transfer_update\,
	aclr => \ALT_INV_aa~combout\(0),
	ena => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|always0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3));

-- Location: LC_X2_Y5_N8
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[3]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(3) = DFFEAS((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1) & (\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3), , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	dataa => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(0),
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|payload_from_device\(3),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(3));

-- Location: LC_X1_Y5_N4
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[4]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(4) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \~GND~combout\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(1),
	datac => \~GND~combout\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(4));

-- Location: LC_X1_Y5_N3
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(5) = DFFEAS(((\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2) & ((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1))))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , \~GND~combout\, , , \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \aa~combout\(1),
	datab => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|command_from_device\(2),
	datac => \~GND~combout\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	aclr => \ALT_INV_aa~combout\(0),
	sload => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(5));

-- Location: LC_X1_Y5_N5
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[6]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(6) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
	aclr => \ALT_INV_aa~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(6));

-- Location: LC_X1_Y5_N2
\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[7]~I\ : maxv_lcell
-- Equation(s):
-- \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE\(7) = DFFEAS((((!\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\ & !\ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1)))), 
-- GLOBAL(\aa~combout\(1)), GLOBAL(\aa~combout\(0)), , , , , , )

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
	datac => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|WRITE_BYTE[5]~3\,
	datad => \ACTIVE_TRANSFER_LIBRARY_INST|ENDPOINT_REGISTERS_INST|write_control_mux\(1),
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
	datain => \ACTIVE_TRANSFER_LIBRARY_INST|FT_245_STATE_MACHINE_INST|ALT_INV_USB_RD_N~1\,
	oe => VCC,
	padio => ww_bc_out(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(4));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_AD[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_AD(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(2));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(3));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(4));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LB_IOH(6));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LB_IOH[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TR_DIR_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
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
	datain => VCC,
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

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \ALT_INV_LED[0]~en_regout\,
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
	datain => \ALT_INV_LED[1]~en_regout\,
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
	datain => \ALT_INV_LED[2]~en_regout\,
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
	datain => \ALT_INV_LED[3]~en_regout\,
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_SER[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => LB_SER(0));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LB_SER[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => LB_SER(1));
END structure;


