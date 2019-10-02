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

-- DATE "06/05/2019 07:27:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CoffeeMachine IS
    PORT (
	SW : IN std_logic_vector(5 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0)
	);
END CoffeeMachine;

-- Design Ports Information
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CoffeeMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \product_select|PS~8_combout\ : std_logic;
SIGNAL \product_select|PS~9_combout\ : std_logic;
SIGNAL \product_select|PS.TR~q\ : std_logic;
SIGNAL \product_select|PS~11_combout\ : std_logic;
SIGNAL \product_select|PS~10_combout\ : std_logic;
SIGNAL \product_select|PS~18_combout\ : std_logic;
SIGNAL \product_select|PS~23_combout\ : std_logic;
SIGNAL \product_select|PS~24_combout\ : std_logic;
SIGNAL \product_select|PS.CQ~q\ : std_logic;
SIGNAL \product_select|PS~14_combout\ : std_logic;
SIGNAL \product_select|PS~15_combout\ : std_logic;
SIGNAL \product_select|PS.CL~q\ : std_logic;
SIGNAL \product_select|PS~19_combout\ : std_logic;
SIGNAL \product_select|PS~16_combout\ : std_logic;
SIGNAL \product_select|PS~17_combout\ : std_logic;
SIGNAL \product_select|PS.CP~q\ : std_logic;
SIGNAL \product_select|PS~20_combout\ : std_logic;
SIGNAL \product_select|PS~21_combout\ : std_logic;
SIGNAL \product_select|PS~22_combout\ : std_logic;
SIGNAL \product_select|PS.E0~q\ : std_logic;
SIGNAL \product_select|PS~12_combout\ : std_logic;
SIGNAL \product_select|PS.CC~feeder_combout\ : std_logic;
SIGNAL \product_select|PS.CC~q\ : std_logic;
SIGNAL \product_select|EnableBin~combout\ : std_logic;
SIGNAL \encoder|sel~1_combout\ : std_logic;
SIGNAL \encoder|sel~2_combout\ : std_logic;
SIGNAL \encoder|sel~0_combout\ : std_logic;
SIGNAL \multiplexer|mo[2]~5_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debaunce_KEY1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \debaunce_KEY1|s_previousIn~q\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~1\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~3\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~5\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~7\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~8_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~15\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~16_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~17\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~18_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~19\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~20_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~21\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~22_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~23\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~24_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~25\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~26_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~27\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~28_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~29\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~30_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~31\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~32_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~33\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~34_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~35\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~36_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~37\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~38_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~39\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~40_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[4]~2_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~9\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~11\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~12_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~13\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~14_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[4]~29_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[4]~4_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~41\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~42_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~43\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~44_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt[4]~5_combout\ : std_logic;
SIGNAL \debaunce_KEY1|Add0~10_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debaunce_KEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debaunce_KEY0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debaunce_KEY0|s_previousIn~q\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~1\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~3\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~5\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~7\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~8_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~9\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~10_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~11\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~12_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~13\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~14_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~15\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~16_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~17\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~18_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~19\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~20_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~21\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~22_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~23\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~24_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~25\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~26_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~27\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~28_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~29\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~30_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~31\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~32_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~33\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~34_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~35\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~36_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~37\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~38_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~39\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~40_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~41\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~42_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[18]~5_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[18]~29_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~43\ : std_logic;
SIGNAL \debaunce_KEY0|Add0~44_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debaunce_KEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \debaunce_KEY2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_dirtyIn~q\ : std_logic;
SIGNAL \debaunce_KEY2|s_previousIn~q\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~7\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~8_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[20]~4_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~9\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~10_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~11\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~12_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~23\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~24_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~25\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~26_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~27\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~28_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~29\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~30_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~31\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~32_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~33\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~34_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~35\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~36_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~37\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~38_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~39\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~40_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~41\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~42_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~5_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~1_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~3_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY2|LessThan0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~13\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~14_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~15\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~16_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~17\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~18_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~19\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~20_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~21\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~22_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[20]~29_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~43\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~44_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt[20]~5_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~1\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~3\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~5\ : std_logic;
SIGNAL \debaunce_KEY2|Add0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debaunce_KEY2|s_pulsedOut~q\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \debaunce_KEY3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_dirtyIn~q\ : std_logic;
SIGNAL \debaunce_KEY3|s_previousIn~q\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~11\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~12_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[21]~4_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~25\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~26_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~27\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~28_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~29\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~30_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~31\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~32_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~33\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~34_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~35\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~36_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~37\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~38_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~39\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~40_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~41\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~42_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~5_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~0_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~1_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~3_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY3|LessThan0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[21]~2_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~13\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~14_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~15\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~16_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~17\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~18_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~19\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~20_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~21\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~22_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~23\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~24_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[21]~29_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~43\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~44_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt[21]~5_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~1\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~2_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~3\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~4_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~5\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~6_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~7\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~8_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~9\ : std_logic;
SIGNAL \debaunce_KEY3|Add0~10_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_pulsedOut~q\ : std_logic;
SIGNAL \Cappuccino|PS~13_combout\ : std_logic;
SIGNAL \cafe_curto|PS~13_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E0~q\ : std_logic;
SIGNAL \cafe_curto|PS~9_combout\ : std_logic;
SIGNAL \cafe_curto|PS~10_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E1~q\ : std_logic;
SIGNAL \cafe_curto|PS~11_combout\ : std_logic;
SIGNAL \cafe_curto|PS~12_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E2~q\ : std_logic;
SIGNAL \cafe_curto|PS~24_combout\ : std_logic;
SIGNAL \cafe_curto|PS~25_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E3~q\ : std_logic;
SIGNAL \cafe_curto|PS~21_combout\ : std_logic;
SIGNAL \Cappuccino|NS~0_combout\ : std_logic;
SIGNAL \cafe_curto|PS~22_combout\ : std_logic;
SIGNAL \cafe_curto|PS~23_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E4~q\ : std_logic;
SIGNAL \cafe_curto|PS~14_combout\ : std_logic;
SIGNAL \cafe_curto|PS~15_combout\ : std_logic;
SIGNAL \cafe_curto|PS~16_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E5~q\ : std_logic;
SIGNAL \Cappuccino|NS~1_combout\ : std_logic;
SIGNAL \cafe_curto|PS~18_combout\ : std_logic;
SIGNAL \Cappuccino|NS~3_combout\ : std_logic;
SIGNAL \cafe_curto|PS~19_combout\ : std_logic;
SIGNAL \Cappuccino|NS~2_combout\ : std_logic;
SIGNAL \cafe_curto|PS~17_combout\ : std_logic;
SIGNAL \cafe_curto|PS~20_combout\ : std_logic;
SIGNAL \cafe_curto|PS.E6~q\ : std_logic;
SIGNAL \cafe_curto|WideOr2~0_combout\ : std_logic;
SIGNAL \multiplexer|mo[2]~3_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~14_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E0~q\ : std_logic;
SIGNAL \chocolate_quente|PS~17_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~18_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E1~q\ : std_logic;
SIGNAL \chocolate_quente|PS~19_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~20_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E2~q\ : std_logic;
SIGNAL \chocolate_quente|PS~15_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~16_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E3~q\ : std_logic;
SIGNAL \chocolate_quente|PS~24_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~25_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~26_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E4~q\ : std_logic;
SIGNAL \chocolate_quente|PS~21_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~22_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~23_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E5~q\ : std_logic;
SIGNAL \chocolate_quente|PS~27_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~28_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~29_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E6~q\ : std_logic;
SIGNAL \chocolate_quente|PS~37_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~38_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~39_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E7~q\ : std_logic;
SIGNAL \chocolate_quente|PS~40_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~41_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~42_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E8~q\ : std_logic;
SIGNAL \chocolate_quente|PS~30_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~31_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~32_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E9~q\ : std_logic;
SIGNAL \chocolate_quente|WideOr3~0_combout\ : std_logic;
SIGNAL \chocolate_quente|WideOr3~combout\ : std_logic;
SIGNAL \cafe_longo|PS~13_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E0~q\ : std_logic;
SIGNAL \cafe_longo|PS~9_combout\ : std_logic;
SIGNAL \cafe_longo|PS~10_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E1~q\ : std_logic;
SIGNAL \cafe_longo|PS~11_combout\ : std_logic;
SIGNAL \cafe_longo|PS~12_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E2~q\ : std_logic;
SIGNAL \cafe_longo|PS~24_combout\ : std_logic;
SIGNAL \cafe_longo|PS~25_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E3~q\ : std_logic;
SIGNAL \cafe_longo|PS~21_combout\ : std_logic;
SIGNAL \cafe_longo|PS~22_combout\ : std_logic;
SIGNAL \cafe_longo|PS~23_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E4~q\ : std_logic;
SIGNAL \cafe_longo|PS~14_combout\ : std_logic;
SIGNAL \cafe_longo|PS~15_combout\ : std_logic;
SIGNAL \cafe_longo|PS~16_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E5~q\ : std_logic;
SIGNAL \cafe_longo|PS~17_combout\ : std_logic;
SIGNAL \cafe_longo|PS~18_combout\ : std_logic;
SIGNAL \cafe_longo|PS~19_combout\ : std_logic;
SIGNAL \cafe_longo|PS~20_combout\ : std_logic;
SIGNAL \cafe_longo|PS.E6~q\ : std_logic;
SIGNAL \cafe_longo|WideOr2~0_combout\ : std_logic;
SIGNAL \multiplexer|mo[2]~4_combout\ : std_logic;
SIGNAL \Cappuccino|PS~14_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E0~q\ : std_logic;
SIGNAL \Cappuccino|PS~17_combout\ : std_logic;
SIGNAL \Cappuccino|PS~18_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E1~q\ : std_logic;
SIGNAL \Cappuccino|PS~15_combout\ : std_logic;
SIGNAL \Cappuccino|PS~16_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E2~q\ : std_logic;
SIGNAL \Cappuccino|PS~22_combout\ : std_logic;
SIGNAL \Cappuccino|PS~23_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E3~q\ : std_logic;
SIGNAL \Cappuccino|PS~19_combout\ : std_logic;
SIGNAL \Cappuccino|PS~20_combout\ : std_logic;
SIGNAL \Cappuccino|PS~21_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E4~q\ : std_logic;
SIGNAL \Cappuccino|PS~24_combout\ : std_logic;
SIGNAL \Cappuccino|PS~25_combout\ : std_logic;
SIGNAL \Cappuccino|PS~26_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E5~q\ : std_logic;
SIGNAL \Cappuccino|PS~34_combout\ : std_logic;
SIGNAL \Cappuccino|PS~35_combout\ : std_logic;
SIGNAL \Cappuccino|PS~36_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E6~q\ : std_logic;
SIGNAL \Cappuccino|PS~37_combout\ : std_logic;
SIGNAL \Cappuccino|PS~38_combout\ : std_logic;
SIGNAL \Cappuccino|PS~39_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E7~q\ : std_logic;
SIGNAL \Cappuccino|PS~27_combout\ : std_logic;
SIGNAL \Cappuccino|PS~28_combout\ : std_logic;
SIGNAL \Cappuccino|PS~29_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E8~q\ : std_logic;
SIGNAL \Cappuccino|WideOr3~0_combout\ : std_logic;
SIGNAL \Cappuccino|WideOr3~combout\ : std_logic;
SIGNAL \multiplexer|mo~12_combout\ : std_logic;
SIGNAL \multiplexer|mo~13_combout\ : std_logic;
SIGNAL \multiplexer|mo~14_combout\ : std_logic;
SIGNAL \multiplexer|mo~0_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~13_combout\ : std_logic;
SIGNAL \Cappuccino|PS~12_combout\ : std_logic;
SIGNAL \multiplexer|mo~1_combout\ : std_logic;
SIGNAL \multiplexer|mo~2_combout\ : std_logic;
SIGNAL \chocolate_quente|WideOr1~0_combout\ : std_logic;
SIGNAL \cafe_curto|WideOr7~0_combout\ : std_logic;
SIGNAL \Cappuccino|WideOr1~combout\ : std_logic;
SIGNAL \cafe_longo|WideOr7~0_combout\ : std_logic;
SIGNAL \multiplexer|mo~6_combout\ : std_logic;
SIGNAL \multiplexer|mo~7_combout\ : std_logic;
SIGNAL \multiplexer|mo~8_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \cafe_curto|WideOr1~0_combout\ : std_logic;
SIGNAL \chocolate_quente|WideOr2~0_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~33_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~34_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~35_combout\ : std_logic;
SIGNAL \chocolate_quente|PS~36_combout\ : std_logic;
SIGNAL \chocolate_quente|PS.E10~q\ : std_logic;
SIGNAL \chocolate_quente|WideOr2~combout\ : std_logic;
SIGNAL \Cappuccino|PS~31_combout\ : std_logic;
SIGNAL \Cappuccino|PS~32_combout\ : std_logic;
SIGNAL \Cappuccino|PS~30_combout\ : std_logic;
SIGNAL \Cappuccino|PS~33_combout\ : std_logic;
SIGNAL \Cappuccino|PS.E9~q\ : std_logic;
SIGNAL \Cappuccino|WideOr2~0_combout\ : std_logic;
SIGNAL \cafe_longo|WideOr1~0_combout\ : std_logic;
SIGNAL \multiplexer|mo~9_combout\ : std_logic;
SIGNAL \multiplexer|mo~10_combout\ : std_logic;
SIGNAL \multiplexer|mo~11_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ : std_logic;
SIGNAL \cafe_curto|WideOr3~0_combout\ : std_logic;
SIGNAL \chocolate_quente|WideOr4~combout\ : std_logic;
SIGNAL \cafe_longo|WideOr3~0_combout\ : std_logic;
SIGNAL \Cappuccino|WideOr4~0_combout\ : std_logic;
SIGNAL \multiplexer|mo~15_combout\ : std_logic;
SIGNAL \multiplexer|mo~16_combout\ : std_logic;
SIGNAL \multiplexer|mo~17_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ : std_logic;
SIGNAL \cafe_curto|WideOr4~0_combout\ : std_logic;
SIGNAL \chocolate_quente|WideOr5~combout\ : std_logic;
SIGNAL \cafe_longo|WideOr4~0_combout\ : std_logic;
SIGNAL \Cappuccino|WideOr5~combout\ : std_logic;
SIGNAL \multiplexer|mo~18_combout\ : std_logic;
SIGNAL \multiplexer|mo~19_combout\ : std_logic;
SIGNAL \multiplexer|mo~20_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~3_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~5_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~4_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~6_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~7_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~39_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~2_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~10_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~16_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[1]~18_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~21_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[5]~19_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[2]~20_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[2]~22_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n~23_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[0]~24_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[3]~25_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[3]~26_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[3]~27_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[3]~29_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[4]~31_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[4]~30_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[4]~32_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[4]~33_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[5]~34_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[5]~35_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[5]~36_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[6]~37_combout\ : std_logic;
SIGNAL \bin7seg_money1hex0|decOut_n[6]~38_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~6_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~7_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~56_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~57_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~51_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~18_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~14_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~15_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~16_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~20_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[2]~22_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[2]~23_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~24_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[2]~25_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[2]~52_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~26_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~28_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~27_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n~29_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~30_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~53_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~37_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~38_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~36_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[4]~39_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~35_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~40_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~41_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[4]~42_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[4]~43_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~46_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~32_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[0]~44_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[5]~45_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[5]~47_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[5]~48_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[6]~49_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[6]~50_combout\ : std_logic;
SIGNAL \bin7seg_money1hex1|decOut_n[6]~55_combout\ : std_logic;
SIGNAL \cronometro|Add0~0_combout\ : std_logic;
SIGNAL \cronometro|cont~7_combout\ : std_logic;
SIGNAL \LedSelect|process_0~0_combout\ : std_logic;
SIGNAL \LedSelect|process_0~1_combout\ : std_logic;
SIGNAL \LedSelect|process_0~2_combout\ : std_logic;
SIGNAL \LedSelect|ledOut~q\ : std_logic;
SIGNAL \cronometro|Add0~1\ : std_logic;
SIGNAL \cronometro|Add0~2_combout\ : std_logic;
SIGNAL \cronometro|Add0~3\ : std_logic;
SIGNAL \cronometro|Add0~4_combout\ : std_logic;
SIGNAL \cronometro|Add0~5\ : std_logic;
SIGNAL \cronometro|Add0~6_combout\ : std_logic;
SIGNAL \cronometro|Add0~7\ : std_logic;
SIGNAL \cronometro|Add0~8_combout\ : std_logic;
SIGNAL \cronometro|Add0~9\ : std_logic;
SIGNAL \cronometro|Add0~10_combout\ : std_logic;
SIGNAL \cronometro|cont~6_combout\ : std_logic;
SIGNAL \cronometro|Add0~11\ : std_logic;
SIGNAL \cronometro|Add0~12_combout\ : std_logic;
SIGNAL \cronometro|Add0~13\ : std_logic;
SIGNAL \cronometro|Add0~14_combout\ : std_logic;
SIGNAL \cronometro|Add0~15\ : std_logic;
SIGNAL \cronometro|Add0~16_combout\ : std_logic;
SIGNAL \cronometro|cont~5_combout\ : std_logic;
SIGNAL \cronometro|Add0~17\ : std_logic;
SIGNAL \cronometro|Add0~18_combout\ : std_logic;
SIGNAL \cronometro|Add0~19\ : std_logic;
SIGNAL \cronometro|Add0~20_combout\ : std_logic;
SIGNAL \cronometro|Add0~21\ : std_logic;
SIGNAL \cronometro|Add0~22_combout\ : std_logic;
SIGNAL \cronometro|Equal0~6_combout\ : std_logic;
SIGNAL \cronometro|Add0~23\ : std_logic;
SIGNAL \cronometro|Add0~24_combout\ : std_logic;
SIGNAL \cronometro|Add0~25\ : std_logic;
SIGNAL \cronometro|Add0~26_combout\ : std_logic;
SIGNAL \cronometro|cont~4_combout\ : std_logic;
SIGNAL \cronometro|Add0~27\ : std_logic;
SIGNAL \cronometro|Add0~28_combout\ : std_logic;
SIGNAL \cronometro|Add0~29\ : std_logic;
SIGNAL \cronometro|Add0~30_combout\ : std_logic;
SIGNAL \cronometro|cont~3_combout\ : std_logic;
SIGNAL \cronometro|Equal0~5_combout\ : std_logic;
SIGNAL \cronometro|Add0~31\ : std_logic;
SIGNAL \cronometro|Add0~32_combout\ : std_logic;
SIGNAL \cronometro|cont~2_combout\ : std_logic;
SIGNAL \cronometro|Add0~33\ : std_logic;
SIGNAL \cronometro|Add0~34_combout\ : std_logic;
SIGNAL \cronometro|cont~1_combout\ : std_logic;
SIGNAL \cronometro|Add0~35\ : std_logic;
SIGNAL \cronometro|Add0~36_combout\ : std_logic;
SIGNAL \cronometro|cont~0_combout\ : std_logic;
SIGNAL \cronometro|Add0~37\ : std_logic;
SIGNAL \cronometro|Add0~38_combout\ : std_logic;
SIGNAL \cronometro|Add0~39\ : std_logic;
SIGNAL \cronometro|Add0~40_combout\ : std_logic;
SIGNAL \cronometro|Add0~41\ : std_logic;
SIGNAL \cronometro|Add0~42_combout\ : std_logic;
SIGNAL \cronometro|Add0~43\ : std_logic;
SIGNAL \cronometro|Add0~44_combout\ : std_logic;
SIGNAL \cronometro|Add0~45\ : std_logic;
SIGNAL \cronometro|Add0~46_combout\ : std_logic;
SIGNAL \cronometro|Add0~47\ : std_logic;
SIGNAL \cronometro|Add0~48_combout\ : std_logic;
SIGNAL \cronometro|Add0~49\ : std_logic;
SIGNAL \cronometro|Add0~50_combout\ : std_logic;
SIGNAL \cronometro|Add0~51\ : std_logic;
SIGNAL \cronometro|Add0~52_combout\ : std_logic;
SIGNAL \cronometro|Add0~53\ : std_logic;
SIGNAL \cronometro|Add0~54_combout\ : std_logic;
SIGNAL \cronometro|Equal0~1_combout\ : std_logic;
SIGNAL \cronometro|Add0~55\ : std_logic;
SIGNAL \cronometro|Add0~56_combout\ : std_logic;
SIGNAL \cronometro|Add0~57\ : std_logic;
SIGNAL \cronometro|Add0~58_combout\ : std_logic;
SIGNAL \cronometro|Add0~59\ : std_logic;
SIGNAL \cronometro|Add0~60_combout\ : std_logic;
SIGNAL \cronometro|Add0~61\ : std_logic;
SIGNAL \cronometro|Add0~62_combout\ : std_logic;
SIGNAL \cronometro|Equal0~0_combout\ : std_logic;
SIGNAL \cronometro|Equal0~3_combout\ : std_logic;
SIGNAL \cronometro|Equal0~2_combout\ : std_logic;
SIGNAL \cronometro|Equal0~4_combout\ : std_logic;
SIGNAL \cronometro|Equal0~7_combout\ : std_logic;
SIGNAL \cronometro|Equal0~8_combout\ : std_logic;
SIGNAL \cronometro|Equal0~9_combout\ : std_logic;
SIGNAL \cronometro|Equal0~10_combout\ : std_logic;
SIGNAL \cronometro|Equal3~1_combout\ : std_logic;
SIGNAL \cronometro|var_milseg[6]~0_combout\ : std_logic;
SIGNAL \cronometro|var_seg[6]~0_combout\ : std_logic;
SIGNAL \cronometro|var_seg[0]~1_combout\ : std_logic;
SIGNAL \cronometro|Add2~1_cout\ : std_logic;
SIGNAL \cronometro|Add2~2_combout\ : std_logic;
SIGNAL \cronometro|var_seg[1]~5_combout\ : std_logic;
SIGNAL \cronometro|Add2~3\ : std_logic;
SIGNAL \cronometro|Add2~4_combout\ : std_logic;
SIGNAL \cronometro|Add2~5\ : std_logic;
SIGNAL \cronometro|Add2~6_combout\ : std_logic;
SIGNAL \cronometro|var_seg[3]~4_combout\ : std_logic;
SIGNAL \cronometro|Add2~7\ : std_logic;
SIGNAL \cronometro|Add2~8_combout\ : std_logic;
SIGNAL \cronometro|var_seg[4]~3_combout\ : std_logic;
SIGNAL \cronometro|Add2~9\ : std_logic;
SIGNAL \cronometro|Add2~10_combout\ : std_logic;
SIGNAL \cronometro|var_seg[5]~2_combout\ : std_logic;
SIGNAL \cronometro|Add2~11\ : std_logic;
SIGNAL \cronometro|Add2~12_combout\ : std_logic;
SIGNAL \cronometro|Equal3~0_combout\ : std_logic;
SIGNAL \cronometro|Add1~0_combout\ : std_logic;
SIGNAL \cronometro|Add1~19_combout\ : std_logic;
SIGNAL \cronometro|Add1~1\ : std_logic;
SIGNAL \cronometro|Add1~2_combout\ : std_logic;
SIGNAL \cronometro|Add1~18_combout\ : std_logic;
SIGNAL \cronometro|Add1~3\ : std_logic;
SIGNAL \cronometro|Add1~4_combout\ : std_logic;
SIGNAL \cronometro|Add1~20_combout\ : std_logic;
SIGNAL \cronometro|Add1~5\ : std_logic;
SIGNAL \cronometro|Add1~6_combout\ : std_logic;
SIGNAL \cronometro|Add1~17_combout\ : std_logic;
SIGNAL \cronometro|Add1~7\ : std_logic;
SIGNAL \cronometro|Add1~8_combout\ : std_logic;
SIGNAL \cronometro|Add1~16_combout\ : std_logic;
SIGNAL \cronometro|Add1~9\ : std_logic;
SIGNAL \cronometro|Add1~10_combout\ : std_logic;
SIGNAL \cronometro|Add1~15_combout\ : std_logic;
SIGNAL \cronometro|Add1~11\ : std_logic;
SIGNAL \cronometro|Add1~12_combout\ : std_logic;
SIGNAL \cronometro|Add1~14_combout\ : std_logic;
SIGNAL \cronometro|Equal1~0_combout\ : std_logic;
SIGNAL \cronometro|Equal1~1_combout\ : std_logic;
SIGNAL \cronometro|Add3~0_combout\ : std_logic;
SIGNAL \cronometro|cnt[1]~0_combout\ : std_logic;
SIGNAL \cronometro|Add3~1\ : std_logic;
SIGNAL \cronometro|Add3~2_combout\ : std_logic;
SIGNAL \cronometro|Add3~3\ : std_logic;
SIGNAL \cronometro|Add3~4_combout\ : std_logic;
SIGNAL \cronometro|cnt~1_combout\ : std_logic;
SIGNAL \cronometro|Add3~5\ : std_logic;
SIGNAL \cronometro|Add3~6_combout\ : std_logic;
SIGNAL \cronometro|Equal2~9_combout\ : std_logic;
SIGNAL \cronometro|Add3~7\ : std_logic;
SIGNAL \cronometro|Add3~8_combout\ : std_logic;
SIGNAL \cronometro|Add3~9\ : std_logic;
SIGNAL \cronometro|Add3~10_combout\ : std_logic;
SIGNAL \cronometro|Add3~11\ : std_logic;
SIGNAL \cronometro|Add3~12_combout\ : std_logic;
SIGNAL \cronometro|Add3~13\ : std_logic;
SIGNAL \cronometro|Add3~14_combout\ : std_logic;
SIGNAL \cronometro|Add3~15\ : std_logic;
SIGNAL \cronometro|Add3~16_combout\ : std_logic;
SIGNAL \cronometro|Add3~17\ : std_logic;
SIGNAL \cronometro|Add3~18_combout\ : std_logic;
SIGNAL \cronometro|Add3~19\ : std_logic;
SIGNAL \cronometro|Add3~20_combout\ : std_logic;
SIGNAL \cronometro|Add3~21\ : std_logic;
SIGNAL \cronometro|Add3~22_combout\ : std_logic;
SIGNAL \cronometro|Add3~23\ : std_logic;
SIGNAL \cronometro|Add3~24_combout\ : std_logic;
SIGNAL \cronometro|Add3~25\ : std_logic;
SIGNAL \cronometro|Add3~26_combout\ : std_logic;
SIGNAL \cronometro|Add3~27\ : std_logic;
SIGNAL \cronometro|Add3~28_combout\ : std_logic;
SIGNAL \cronometro|Add3~29\ : std_logic;
SIGNAL \cronometro|Add3~30_combout\ : std_logic;
SIGNAL \cronometro|Equal2~5_combout\ : std_logic;
SIGNAL \cronometro|Equal2~6_combout\ : std_logic;
SIGNAL \cronometro|Equal2~7_combout\ : std_logic;
SIGNAL \cronometro|Equal2~8_combout\ : std_logic;
SIGNAL \cronometro|Add3~31\ : std_logic;
SIGNAL \cronometro|Add3~32_combout\ : std_logic;
SIGNAL \cronometro|Add3~33\ : std_logic;
SIGNAL \cronometro|Add3~34_combout\ : std_logic;
SIGNAL \cronometro|Add3~35\ : std_logic;
SIGNAL \cronometro|Add3~36_combout\ : std_logic;
SIGNAL \cronometro|Add3~37\ : std_logic;
SIGNAL \cronometro|Add3~38_combout\ : std_logic;
SIGNAL \cronometro|Add3~39\ : std_logic;
SIGNAL \cronometro|Add3~40_combout\ : std_logic;
SIGNAL \cronometro|Add3~41\ : std_logic;
SIGNAL \cronometro|Add3~42_combout\ : std_logic;
SIGNAL \cronometro|Add3~43\ : std_logic;
SIGNAL \cronometro|Add3~44_combout\ : std_logic;
SIGNAL \cronometro|Add3~45\ : std_logic;
SIGNAL \cronometro|Add3~46_combout\ : std_logic;
SIGNAL \cronometro|Equal2~2_combout\ : std_logic;
SIGNAL \cronometro|Equal2~3_combout\ : std_logic;
SIGNAL \cronometro|Add3~47\ : std_logic;
SIGNAL \cronometro|Add3~48_combout\ : std_logic;
SIGNAL \cronometro|Add3~49\ : std_logic;
SIGNAL \cronometro|Add3~50_combout\ : std_logic;
SIGNAL \cronometro|Add3~51\ : std_logic;
SIGNAL \cronometro|Add3~52_combout\ : std_logic;
SIGNAL \cronometro|Add3~53\ : std_logic;
SIGNAL \cronometro|Add3~54_combout\ : std_logic;
SIGNAL \cronometro|Equal2~1_combout\ : std_logic;
SIGNAL \cronometro|Add3~55\ : std_logic;
SIGNAL \cronometro|Add3~56_combout\ : std_logic;
SIGNAL \cronometro|Add3~57\ : std_logic;
SIGNAL \cronometro|Add3~58_combout\ : std_logic;
SIGNAL \cronometro|Add3~59\ : std_logic;
SIGNAL \cronometro|Add3~60_combout\ : std_logic;
SIGNAL \cronometro|Add3~61\ : std_logic;
SIGNAL \cronometro|Add3~62_combout\ : std_logic;
SIGNAL \cronometro|Equal2~0_combout\ : std_logic;
SIGNAL \cronometro|Equal2~4_combout\ : std_logic;
SIGNAL \cronometro|Equal2~10_combout\ : std_logic;
SIGNAL \cronometro|s_led~0_combout\ : std_logic;
SIGNAL \cronometro|s_led~q\ : std_logic;
SIGNAL \product_select|PS~13_combout\ : std_logic;
SIGNAL \led|PS~15_combout\ : std_logic;
SIGNAL \led|PS.E0~q\ : std_logic;
SIGNAL \led|PS~13_combout\ : std_logic;
SIGNAL \led|PS~16_combout\ : std_logic;
SIGNAL \led|PS.E1~q\ : std_logic;
SIGNAL \led|PS~14_combout\ : std_logic;
SIGNAL \led|PS~17_combout\ : std_logic;
SIGNAL \led|PS.E2~q\ : std_logic;
SIGNAL \led|Selector4~0_combout\ : std_logic;
SIGNAL \led|led~combout\ : std_logic;
SIGNAL \debaunce_KEY3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debaunce_KEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \encoder|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \multiplexer|mo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cronometro|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debaunce_KEY2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \cronometro|var_milseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cronometro|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debaunce_KEY1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \cronometro|var_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \product_select|ALT_INV_EnableBin~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\product_select|ALT_INV_EnableBin~combout\ <= NOT \product_select|EnableBin~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[0]~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[1]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[2]~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[3]~29_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[4]~33_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[5]~36_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex0|decOut_n[6]~38_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[0]~57_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[1]~21_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[2]~52_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[3]~34_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[4]~43_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[5]~48_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7seg_money1hex1|decOut_n[6]~55_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|ALT_INV_EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_select|EnableBin~combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led|led~combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X77_Y32_N10
\product_select|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~8_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((\SW[0]~input_o\) # (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[2]~input_o\))) # (!\SW[3]~input_o\ & (\SW[0]~input_o\ & 
-- \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \product_select|PS~8_combout\);

-- Location: LCCOMB_X74_Y33_N26
\product_select|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~9_combout\ = (!\SW[4]~input_o\ & \product_select|PS~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => \product_select|PS~8_combout\,
	combout => \product_select|PS~9_combout\);

-- Location: FF_X74_Y33_N3
\product_select|PS.TR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \product_select|PS~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.TR~q\);

-- Location: LCCOMB_X74_Y33_N6
\product_select|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~11_combout\ = (!\SW[3]~input_o\ & (\SW[0]~input_o\ & !\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \product_select|PS~11_combout\);

-- Location: LCCOMB_X77_Y32_N0
\product_select|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~10_combout\ = (!\SW[1]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \product_select|PS~10_combout\);

-- Location: LCCOMB_X77_Y32_N22
\product_select|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~18_combout\ = (\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\product_select|PS.E0~q\ & \product_select|PS~10_combout\))) # (!\SW[0]~input_o\ & ((\SW[3]~input_o\ & (\product_select|PS.E0~q\ & \product_select|PS~10_combout\)) # 
-- (!\SW[3]~input_o\ & ((\product_select|PS.E0~q\) # (\product_select|PS~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \product_select|PS.E0~q\,
	datad => \product_select|PS~10_combout\,
	combout => \product_select|PS~18_combout\);

-- Location: LCCOMB_X77_Y32_N26
\product_select|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~23_combout\ = (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \product_select|PS~23_combout\);

-- Location: LCCOMB_X77_Y32_N6
\product_select|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~24_combout\ = (\product_select|PS~23_combout\ & (\SW[2]~input_o\ & ((\product_select|PS.CQ~q\) # (!\product_select|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS~23_combout\,
	datab => \SW[2]~input_o\,
	datac => \product_select|PS.CQ~q\,
	datad => \product_select|PS.E0~q\,
	combout => \product_select|PS~24_combout\);

-- Location: FF_X77_Y32_N7
\product_select|PS.CQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \product_select|PS~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.CQ~q\);

-- Location: LCCOMB_X77_Y32_N2
\product_select|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~14_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \product_select|PS~14_combout\);

-- Location: LCCOMB_X77_Y32_N30
\product_select|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~15_combout\ = (!\SW[2]~input_o\ & (\product_select|PS~14_combout\ & ((\product_select|PS.CL~q\) # (!\product_select|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \product_select|PS.E0~q\,
	datac => \product_select|PS.CL~q\,
	datad => \product_select|PS~14_combout\,
	combout => \product_select|PS~15_combout\);

-- Location: FF_X77_Y32_N31
\product_select|PS.CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \product_select|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.CL~q\);

-- Location: LCCOMB_X77_Y32_N12
\product_select|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~19_combout\ = (\product_select|PS.CQ~q\ & (!\SW[2]~input_o\ & (!\product_select|PS.CL~q\))) # (!\product_select|PS.CQ~q\ & (((!\SW[2]~input_o\ & !\product_select|PS.CL~q\)) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \SW[2]~input_o\,
	datac => \product_select|PS.CL~q\,
	datad => \SW[1]~input_o\,
	combout => \product_select|PS~19_combout\);

-- Location: LCCOMB_X77_Y32_N28
\product_select|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~16_combout\ = (!\SW[2]~input_o\ & (!\SW[4]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \product_select|PS~16_combout\);

-- Location: LCCOMB_X77_Y32_N4
\product_select|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~17_combout\ = (\product_select|PS~16_combout\ & (\SW[3]~input_o\ & ((\product_select|PS.CP~q\) # (!\product_select|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS~16_combout\,
	datab => \SW[3]~input_o\,
	datac => \product_select|PS.CP~q\,
	datad => \product_select|PS.E0~q\,
	combout => \product_select|PS~17_combout\);

-- Location: FF_X77_Y32_N5
\product_select|PS.CP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \product_select|PS~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.CP~q\);

-- Location: LCCOMB_X77_Y32_N18
\product_select|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~20_combout\ = (\product_select|PS~10_combout\ & (((!\product_select|PS.CP~q\) # (!\SW[3]~input_o\)))) # (!\product_select|PS~10_combout\ & (\product_select|PS~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS~19_combout\,
	datab => \SW[3]~input_o\,
	datac => \product_select|PS.CP~q\,
	datad => \product_select|PS~10_combout\,
	combout => \product_select|PS~20_combout\);

-- Location: LCCOMB_X77_Y32_N20
\product_select|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~21_combout\ = (\product_select|PS~18_combout\ & \product_select|PS~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|PS~18_combout\,
	datad => \product_select|PS~20_combout\,
	combout => \product_select|PS~21_combout\);

-- Location: LCCOMB_X77_Y32_N14
\product_select|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~22_combout\ = (!\SW[4]~input_o\ & (((\SW[0]~input_o\ & \product_select|PS.CC~q\)) # (!\product_select|PS~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \product_select|PS.CC~q\,
	datad => \product_select|PS~21_combout\,
	combout => \product_select|PS~22_combout\);

-- Location: FF_X77_Y32_N15
\product_select|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \product_select|PS~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.E0~q\);

-- Location: LCCOMB_X74_Y33_N14
\product_select|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~12_combout\ = (\product_select|PS~11_combout\ & (\product_select|PS~10_combout\ & ((\product_select|PS.CC~q\) # (!\product_select|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS~11_combout\,
	datab => \product_select|PS~10_combout\,
	datac => \product_select|PS.E0~q\,
	datad => \product_select|PS.CC~q\,
	combout => \product_select|PS~12_combout\);

-- Location: LCCOMB_X74_Y33_N18
\product_select|PS.CC~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS.CC~feeder_combout\ = \product_select|PS~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|PS~12_combout\,
	combout => \product_select|PS.CC~feeder_combout\);

-- Location: FF_X74_Y33_N19
\product_select|PS.CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \product_select|PS.CC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_select|PS.CC~q\);

-- Location: LCCOMB_X74_Y33_N2
\product_select|EnableBin\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|EnableBin~combout\ = (\product_select|PS.CC~q\ & (\product_select|EnableBin~combout\)) # (!\product_select|PS.CC~q\ & ((!\product_select|PS.TR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|EnableBin~combout\,
	datac => \product_select|PS.TR~q\,
	datad => \product_select|PS.CC~q\,
	combout => \product_select|EnableBin~combout\);

-- Location: LCCOMB_X77_Y32_N24
\encoder|sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|sel~1_combout\ = (!\product_select|PS.CC~q\ & (!\product_select|PS.CP~q\ & \product_select|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|PS.CC~q\,
	datac => \product_select|PS.CP~q\,
	datad => \product_select|PS.E0~q\,
	combout => \encoder|sel~1_combout\);

-- Location: FF_X81_Y32_N1
\encoder|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder|sel~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|sel\(1));

-- Location: LCCOMB_X77_Y32_N8
\encoder|sel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|sel~2_combout\ = (!\product_select|PS.CL~q\ & (!\product_select|PS.CC~q\ & (\product_select|PS.E0~q\ & !\product_select|PS.CQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CL~q\,
	datab => \product_select|PS.CC~q\,
	datac => \product_select|PS.E0~q\,
	datad => \product_select|PS.CQ~q\,
	combout => \encoder|sel~2_combout\);

-- Location: FF_X81_Y32_N23
\encoder|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder|sel~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|sel\(2));

-- Location: LCCOMB_X77_Y32_N16
\encoder|sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|sel~0_combout\ = (!\product_select|PS.CP~q\ & (!\product_select|PS.CL~q\ & \product_select|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|PS.CP~q\,
	datac => \product_select|PS.CL~q\,
	datad => \product_select|PS.E0~q\,
	combout => \encoder|sel~0_combout\);

-- Location: FF_X77_Y32_N17
\encoder|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder|sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|sel\(0));

-- Location: LCCOMB_X82_Y32_N18
\multiplexer|mo[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo[2]~5_combout\ = (\encoder|sel\(2)) # ((\encoder|sel\(1) & \encoder|sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|sel\(2),
	datac => \encoder|sel\(1),
	datad => \encoder|sel\(0),
	combout => \multiplexer|mo[2]~5_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X88_Y34_N10
\debaunce_KEY1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debaunce_KEY1|s_dirtyIn~0_combout\);

-- Location: FF_X88_Y34_N11
\debaunce_KEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_dirtyIn~q\);

-- Location: FF_X90_Y34_N27
\debaunce_KEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debaunce_KEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_previousIn~q\);

-- Location: LCCOMB_X91_Y34_N10
\debaunce_KEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~0_combout\ = \debaunce_KEY1|s_debounceCnt\(0) $ (VCC)
-- \debaunce_KEY1|Add0~1\ = CARRY(\debaunce_KEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debaunce_KEY1|Add0~0_combout\,
	cout => \debaunce_KEY1|Add0~1\);

-- Location: LCCOMB_X89_Y34_N30
\debaunce_KEY1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~26_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~0_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~26_combout\);

-- Location: FF_X89_Y34_N31
\debaunce_KEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~26_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X91_Y34_N12
\debaunce_KEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~2_combout\ = (\debaunce_KEY1|s_debounceCnt\(1) & (\debaunce_KEY1|Add0~1\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(1) & (!\debaunce_KEY1|Add0~1\))
-- \debaunce_KEY1|Add0~3\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(1) & !\debaunce_KEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~1\,
	combout => \debaunce_KEY1|Add0~2_combout\,
	cout => \debaunce_KEY1|Add0~3\);

-- Location: LCCOMB_X89_Y34_N0
\debaunce_KEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~21_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~2_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~21_combout\);

-- Location: FF_X89_Y34_N1
\debaunce_KEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~21_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X91_Y34_N14
\debaunce_KEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~4_combout\ = (\debaunce_KEY1|s_debounceCnt\(2) & ((GND) # (!\debaunce_KEY1|Add0~3\))) # (!\debaunce_KEY1|s_debounceCnt\(2) & (\debaunce_KEY1|Add0~3\ $ (GND)))
-- \debaunce_KEY1|Add0~5\ = CARRY((\debaunce_KEY1|s_debounceCnt\(2)) # (!\debaunce_KEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~3\,
	combout => \debaunce_KEY1|Add0~4_combout\,
	cout => \debaunce_KEY1|Add0~5\);

-- Location: LCCOMB_X89_Y34_N14
\debaunce_KEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~22_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~4_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~22_combout\);

-- Location: FF_X89_Y34_N15
\debaunce_KEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~22_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X91_Y34_N16
\debaunce_KEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~6_combout\ = (\debaunce_KEY1|s_debounceCnt\(3) & (\debaunce_KEY1|Add0~5\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(3) & (!\debaunce_KEY1|Add0~5\))
-- \debaunce_KEY1|Add0~7\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(3) & !\debaunce_KEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~5\,
	combout => \debaunce_KEY1|Add0~6_combout\,
	cout => \debaunce_KEY1|Add0~7\);

-- Location: LCCOMB_X89_Y34_N20
\debaunce_KEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~23_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~6_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~23_combout\);

-- Location: FF_X89_Y34_N21
\debaunce_KEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~23_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X91_Y34_N18
\debaunce_KEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~8_combout\ = (\debaunce_KEY1|s_debounceCnt\(4) & ((GND) # (!\debaunce_KEY1|Add0~7\))) # (!\debaunce_KEY1|s_debounceCnt\(4) & (\debaunce_KEY1|Add0~7\ $ (GND)))
-- \debaunce_KEY1|Add0~9\ = CARRY((\debaunce_KEY1|s_debounceCnt\(4)) # (!\debaunce_KEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~7\,
	combout => \debaunce_KEY1|Add0~8_combout\,
	cout => \debaunce_KEY1|Add0~9\);

-- Location: LCCOMB_X89_Y34_N22
\debaunce_KEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~24_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~8_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~24_combout\);

-- Location: FF_X89_Y34_N23
\debaunce_KEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~24_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X89_Y34_N16
\debaunce_KEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~7_combout\ = (!\debaunce_KEY1|s_debounceCnt\(4) & (!\debaunce_KEY1|s_debounceCnt\(3) & (!\debaunce_KEY1|s_debounceCnt\(2) & !\debaunce_KEY1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(4),
	datab => \debaunce_KEY1|s_debounceCnt\(3),
	datac => \debaunce_KEY1|s_debounceCnt\(2),
	datad => \debaunce_KEY1|s_debounceCnt\(1),
	combout => \debaunce_KEY1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X91_Y34_N24
\debaunce_KEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~14_combout\ = (\debaunce_KEY1|s_debounceCnt\(7) & (\debaunce_KEY1|Add0~13\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(7) & (!\debaunce_KEY1|Add0~13\))
-- \debaunce_KEY1|Add0~15\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(7) & !\debaunce_KEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~13\,
	combout => \debaunce_KEY1|Add0~14_combout\,
	cout => \debaunce_KEY1|Add0~15\);

-- Location: LCCOMB_X91_Y34_N26
\debaunce_KEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~16_combout\ = (\debaunce_KEY1|s_debounceCnt\(8) & ((GND) # (!\debaunce_KEY1|Add0~15\))) # (!\debaunce_KEY1|s_debounceCnt\(8) & (\debaunce_KEY1|Add0~15\ $ (GND)))
-- \debaunce_KEY1|Add0~17\ = CARRY((\debaunce_KEY1|s_debounceCnt\(8)) # (!\debaunce_KEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~15\,
	combout => \debaunce_KEY1|Add0~16_combout\,
	cout => \debaunce_KEY1|Add0~17\);

-- Location: LCCOMB_X91_Y34_N4
\debaunce_KEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~14_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~16_combout\) # (!\debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|Add0~16_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~14_combout\);

-- Location: FF_X91_Y34_N5
\debaunce_KEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~14_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X91_Y34_N28
\debaunce_KEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~18_combout\ = (\debaunce_KEY1|s_debounceCnt\(9) & (\debaunce_KEY1|Add0~17\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(9) & (!\debaunce_KEY1|Add0~17\))
-- \debaunce_KEY1|Add0~19\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(9) & !\debaunce_KEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~17\,
	combout => \debaunce_KEY1|Add0~18_combout\,
	cout => \debaunce_KEY1|Add0~19\);

-- Location: LCCOMB_X90_Y34_N12
\debaunce_KEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~15_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~18_combout\) # (!\debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	datad => \debaunce_KEY1|Add0~18_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~15_combout\);

-- Location: FF_X90_Y34_N13
\debaunce_KEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~15_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X91_Y34_N30
\debaunce_KEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~20_combout\ = (\debaunce_KEY1|s_debounceCnt\(10) & ((GND) # (!\debaunce_KEY1|Add0~19\))) # (!\debaunce_KEY1|s_debounceCnt\(10) & (\debaunce_KEY1|Add0~19\ $ (GND)))
-- \debaunce_KEY1|Add0~21\ = CARRY((\debaunce_KEY1|s_debounceCnt\(10)) # (!\debaunce_KEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~19\,
	combout => \debaunce_KEY1|Add0~20_combout\,
	cout => \debaunce_KEY1|Add0~21\);

-- Location: LCCOMB_X90_Y34_N14
\debaunce_KEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~16_combout\ = (\debaunce_KEY1|Add0~20_combout\ & \debaunce_KEY1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|Add0~20_combout\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y34_N15
\debaunce_KEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~16_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X91_Y33_N0
\debaunce_KEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~22_combout\ = (\debaunce_KEY1|s_debounceCnt\(11) & (\debaunce_KEY1|Add0~21\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(11) & (!\debaunce_KEY1|Add0~21\))
-- \debaunce_KEY1|Add0~23\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(11) & !\debaunce_KEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~21\,
	combout => \debaunce_KEY1|Add0~22_combout\,
	cout => \debaunce_KEY1|Add0~23\);

-- Location: LCCOMB_X90_Y34_N16
\debaunce_KEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~17_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~22_combout\) # (!\debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	datad => \debaunce_KEY1|Add0~22_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y34_N17
\debaunce_KEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~17_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X91_Y33_N2
\debaunce_KEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~24_combout\ = (\debaunce_KEY1|s_debounceCnt\(12) & ((GND) # (!\debaunce_KEY1|Add0~23\))) # (!\debaunce_KEY1|s_debounceCnt\(12) & (\debaunce_KEY1|Add0~23\ $ (GND)))
-- \debaunce_KEY1|Add0~25\ = CARRY((\debaunce_KEY1|s_debounceCnt\(12)) # (!\debaunce_KEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~23\,
	combout => \debaunce_KEY1|Add0~24_combout\,
	cout => \debaunce_KEY1|Add0~25\);

-- Location: LCCOMB_X90_Y34_N4
\debaunce_KEY1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~11_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~24_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~11_combout\);

-- Location: FF_X90_Y34_N5
\debaunce_KEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~11_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X91_Y33_N4
\debaunce_KEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~26_combout\ = (\debaunce_KEY1|s_debounceCnt\(13) & (\debaunce_KEY1|Add0~25\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(13) & (!\debaunce_KEY1|Add0~25\))
-- \debaunce_KEY1|Add0~27\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(13) & !\debaunce_KEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~25\,
	combout => \debaunce_KEY1|Add0~26_combout\,
	cout => \debaunce_KEY1|Add0~27\);

-- Location: LCCOMB_X90_Y34_N22
\debaunce_KEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~12_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~26_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~12_combout\);

-- Location: FF_X90_Y34_N23
\debaunce_KEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~12_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X91_Y33_N6
\debaunce_KEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~28_combout\ = (\debaunce_KEY1|s_debounceCnt\(14) & ((GND) # (!\debaunce_KEY1|Add0~27\))) # (!\debaunce_KEY1|s_debounceCnt\(14) & (\debaunce_KEY1|Add0~27\ $ (GND)))
-- \debaunce_KEY1|Add0~29\ = CARRY((\debaunce_KEY1|s_debounceCnt\(14)) # (!\debaunce_KEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~27\,
	combout => \debaunce_KEY1|Add0~28_combout\,
	cout => \debaunce_KEY1|Add0~29\);

-- Location: LCCOMB_X91_Y34_N6
\debaunce_KEY1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~18_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~28_combout\) # (!\debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|Add0~28_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~18_combout\);

-- Location: FF_X91_Y34_N7
\debaunce_KEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~18_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X91_Y33_N8
\debaunce_KEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~30_combout\ = (\debaunce_KEY1|s_debounceCnt\(15) & (\debaunce_KEY1|Add0~29\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(15) & (!\debaunce_KEY1|Add0~29\))
-- \debaunce_KEY1|Add0~31\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(15) & !\debaunce_KEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~29\,
	combout => \debaunce_KEY1|Add0~30_combout\,
	cout => \debaunce_KEY1|Add0~31\);

-- Location: LCCOMB_X91_Y33_N24
\debaunce_KEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~6_combout\ = (\debaunce_KEY1|Add0~30_combout\ & \debaunce_KEY1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|Add0~30_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~6_combout\);

-- Location: FF_X91_Y33_N25
\debaunce_KEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~6_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X91_Y33_N10
\debaunce_KEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~32_combout\ = (\debaunce_KEY1|s_debounceCnt\(16) & ((GND) # (!\debaunce_KEY1|Add0~31\))) # (!\debaunce_KEY1|s_debounceCnt\(16) & (\debaunce_KEY1|Add0~31\ $ (GND)))
-- \debaunce_KEY1|Add0~33\ = CARRY((\debaunce_KEY1|s_debounceCnt\(16)) # (!\debaunce_KEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~31\,
	combout => \debaunce_KEY1|Add0~32_combout\,
	cout => \debaunce_KEY1|Add0~33\);

-- Location: LCCOMB_X90_Y33_N0
\debaunce_KEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~7_combout\ = (\debaunce_KEY1|Add0~32_combout\ & \debaunce_KEY1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|Add0~32_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~7_combout\);

-- Location: FF_X90_Y33_N1
\debaunce_KEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~7_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X91_Y33_N12
\debaunce_KEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~34_combout\ = (\debaunce_KEY1|s_debounceCnt\(17) & (\debaunce_KEY1|Add0~33\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(17) & (!\debaunce_KEY1|Add0~33\))
-- \debaunce_KEY1|Add0~35\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(17) & !\debaunce_KEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~33\,
	combout => \debaunce_KEY1|Add0~34_combout\,
	cout => \debaunce_KEY1|Add0~35\);

-- Location: LCCOMB_X91_Y33_N30
\debaunce_KEY1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~8_combout\ = (\debaunce_KEY1|Add0~34_combout\ & \debaunce_KEY1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|Add0~34_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~8_combout\);

-- Location: FF_X91_Y33_N31
\debaunce_KEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~8_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X91_Y33_N14
\debaunce_KEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~36_combout\ = (\debaunce_KEY1|s_debounceCnt\(18) & ((GND) # (!\debaunce_KEY1|Add0~35\))) # (!\debaunce_KEY1|s_debounceCnt\(18) & (\debaunce_KEY1|Add0~35\ $ (GND)))
-- \debaunce_KEY1|Add0~37\ = CARRY((\debaunce_KEY1|s_debounceCnt\(18)) # (!\debaunce_KEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~35\,
	combout => \debaunce_KEY1|Add0~36_combout\,
	cout => \debaunce_KEY1|Add0~37\);

-- Location: LCCOMB_X91_Y33_N28
\debaunce_KEY1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[18]~19_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~4_combout\ & (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~36_combout\) # (!\debaunce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	datab => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|Add0~36_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X91_Y33_N29
\debaunce_KEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X91_Y33_N16
\debaunce_KEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~38_combout\ = (\debaunce_KEY1|s_debounceCnt\(19) & (\debaunce_KEY1|Add0~37\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(19) & (!\debaunce_KEY1|Add0~37\))
-- \debaunce_KEY1|Add0~39\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(19) & !\debaunce_KEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~37\,
	combout => \debaunce_KEY1|Add0~38_combout\,
	cout => \debaunce_KEY1|Add0~39\);

-- Location: LCCOMB_X91_Y34_N8
\debaunce_KEY1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[19]~20_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~4_combout\ & (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~38_combout\) # (!\debaunce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	datab => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|Add0~38_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X91_Y34_N9
\debaunce_KEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X91_Y33_N18
\debaunce_KEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~40_combout\ = (\debaunce_KEY1|s_debounceCnt\(20) & ((GND) # (!\debaunce_KEY1|Add0~39\))) # (!\debaunce_KEY1|s_debounceCnt\(20) & (\debaunce_KEY1|Add0~39\ $ (GND)))
-- \debaunce_KEY1|Add0~41\ = CARRY((\debaunce_KEY1|s_debounceCnt\(20)) # (!\debaunce_KEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~39\,
	combout => \debaunce_KEY1|Add0~40_combout\,
	cout => \debaunce_KEY1|Add0~41\);

-- Location: LCCOMB_X90_Y34_N0
\debaunce_KEY1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[20]~9_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~4_combout\ & (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~40_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X90_Y34_N1
\debaunce_KEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X91_Y33_N26
\debaunce_KEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~3_combout\ = (\debaunce_KEY1|s_debounceCnt\(17)) # ((\debaunce_KEY1|s_debounceCnt\(16)) # (\debaunce_KEY1|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(17),
	datac => \debaunce_KEY1|s_debounceCnt\(16),
	datad => \debaunce_KEY1|s_debounceCnt\(15),
	combout => \debaunce_KEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X89_Y34_N24
\debaunce_KEY1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~8_combout\ = (!\debaunce_KEY1|s_debounceCnt\(5) & \debaunce_KEY1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(5),
	datad => \debaunce_KEY1|s_pulsedOut~7_combout\,
	combout => \debaunce_KEY1|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X89_Y34_N8
\debaunce_KEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~0_combout\ = (\debaunce_KEY1|s_debounceCnt\(7)) # ((\debaunce_KEY1|s_debounceCnt\(6) & ((\debaunce_KEY1|s_debounceCnt\(0)) # (!\debaunce_KEY1|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(0),
	datab => \debaunce_KEY1|s_debounceCnt\(6),
	datac => \debaunce_KEY1|s_debounceCnt\(7),
	datad => \debaunce_KEY1|s_pulsedOut~8_combout\,
	combout => \debaunce_KEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y34_N6
\debaunce_KEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~1_combout\ = (\debaunce_KEY1|s_debounceCnt\(10)) # ((\debaunce_KEY1|s_debounceCnt\(8) & (\debaunce_KEY1|s_debounceCnt\(9) & \debaunce_KEY1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(8),
	datab => \debaunce_KEY1|s_debounceCnt\(9),
	datac => \debaunce_KEY1|s_debounceCnt\(10),
	datad => \debaunce_KEY1|LessThan0~0_combout\,
	combout => \debaunce_KEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y34_N28
\debaunce_KEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~2_combout\ = (\debaunce_KEY1|s_debounceCnt\(13)) # ((\debaunce_KEY1|s_debounceCnt\(12)) # ((\debaunce_KEY1|s_debounceCnt\(11) & \debaunce_KEY1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(13),
	datab => \debaunce_KEY1|s_debounceCnt\(11),
	datac => \debaunce_KEY1|s_debounceCnt\(12),
	datad => \debaunce_KEY1|LessThan0~1_combout\,
	combout => \debaunce_KEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y34_N18
\debaunce_KEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~4_combout\ = (\debaunce_KEY1|s_debounceCnt\(18) & ((\debaunce_KEY1|LessThan0~3_combout\) # ((\debaunce_KEY1|s_debounceCnt\(14) & \debaunce_KEY1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(14),
	datab => \debaunce_KEY1|s_debounceCnt\(18),
	datac => \debaunce_KEY1|LessThan0~3_combout\,
	datad => \debaunce_KEY1|LessThan0~2_combout\,
	combout => \debaunce_KEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y34_N24
\debaunce_KEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|LessThan0~5_combout\ = (\debaunce_KEY1|s_debounceCnt\(20)) # ((\debaunce_KEY1|s_debounceCnt\(21)) # ((\debaunce_KEY1|s_debounceCnt\(19) & \debaunce_KEY1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(19),
	datab => \debaunce_KEY1|s_debounceCnt\(20),
	datac => \debaunce_KEY1|s_debounceCnt\(21),
	datad => \debaunce_KEY1|LessThan0~4_combout\,
	combout => \debaunce_KEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y34_N30
\debaunce_KEY1|s_debounceCnt[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[4]~2_combout\ = (\debaunce_KEY1|s_dirtyIn~q\ & ((!\debaunce_KEY1|LessThan0~5_combout\) # (!\debaunce_KEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(22),
	datac => \debaunce_KEY1|s_dirtyIn~q\,
	datad => \debaunce_KEY1|LessThan0~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[4]~2_combout\);

-- Location: LCCOMB_X91_Y34_N20
\debaunce_KEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~10_combout\ = (\debaunce_KEY1|s_debounceCnt\(5) & (\debaunce_KEY1|Add0~9\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(5) & (!\debaunce_KEY1|Add0~9\))
-- \debaunce_KEY1|Add0~11\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(5) & !\debaunce_KEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~9\,
	combout => \debaunce_KEY1|Add0~10_combout\,
	cout => \debaunce_KEY1|Add0~11\);

-- Location: LCCOMB_X91_Y34_N22
\debaunce_KEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~12_combout\ = (\debaunce_KEY1|s_debounceCnt\(6) & ((GND) # (!\debaunce_KEY1|Add0~11\))) # (!\debaunce_KEY1|s_debounceCnt\(6) & (\debaunce_KEY1|Add0~11\ $ (GND)))
-- \debaunce_KEY1|Add0~13\ = CARRY((\debaunce_KEY1|s_debounceCnt\(6)) # (!\debaunce_KEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~11\,
	combout => \debaunce_KEY1|Add0~12_combout\,
	cout => \debaunce_KEY1|Add0~13\);

-- Location: LCCOMB_X89_Y34_N28
\debaunce_KEY1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~3_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~2_combout\ & ((\debaunce_KEY1|Add0~12_combout\) # (!\debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_previousIn~q\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~2_combout\,
	datad => \debaunce_KEY1|Add0~12_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~3_combout\);

-- Location: FF_X89_Y34_N29
\debaunce_KEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~3_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X89_Y34_N26
\debaunce_KEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~13_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~14_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~13_combout\);

-- Location: FF_X89_Y34_N27
\debaunce_KEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~13_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X89_Y34_N12
\debaunce_KEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~4_combout\ = (!\debaunce_KEY1|s_debounceCnt\(7) & (!\debaunce_KEY1|s_debounceCnt\(10) & (!\debaunce_KEY1|s_debounceCnt\(9) & !\debaunce_KEY1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(7),
	datab => \debaunce_KEY1|s_debounceCnt\(10),
	datac => \debaunce_KEY1|s_debounceCnt\(9),
	datad => \debaunce_KEY1|s_debounceCnt\(8),
	combout => \debaunce_KEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X89_Y34_N4
\debaunce_KEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~3_combout\ = (!\debaunce_KEY1|s_debounceCnt\(12) & (!\debaunce_KEY1|s_debounceCnt\(21) & (!\debaunce_KEY1|s_debounceCnt\(20) & !\debaunce_KEY1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(12),
	datab => \debaunce_KEY1|s_debounceCnt\(21),
	datac => \debaunce_KEY1|s_debounceCnt\(20),
	datad => \debaunce_KEY1|s_debounceCnt\(13),
	combout => \debaunce_KEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X91_Y34_N2
\debaunce_KEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~5_combout\ = (!\debaunce_KEY1|s_debounceCnt\(14) & (!\debaunce_KEY1|s_debounceCnt\(19) & (!\debaunce_KEY1|s_debounceCnt\(11) & !\debaunce_KEY1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(14),
	datab => \debaunce_KEY1|s_debounceCnt\(19),
	datac => \debaunce_KEY1|s_debounceCnt\(11),
	datad => \debaunce_KEY1|s_debounceCnt\(18),
	combout => \debaunce_KEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X89_Y34_N18
\debaunce_KEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~2_combout\ = (!\debaunce_KEY1|s_debounceCnt\(16) & (!\debaunce_KEY1|s_debounceCnt\(6) & (!\debaunce_KEY1|s_debounceCnt\(15) & !\debaunce_KEY1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(16),
	datab => \debaunce_KEY1|s_debounceCnt\(6),
	datac => \debaunce_KEY1|s_debounceCnt\(15),
	datad => \debaunce_KEY1|s_debounceCnt\(17),
	combout => \debaunce_KEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X89_Y34_N10
\debaunce_KEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~6_combout\ = (\debaunce_KEY1|s_pulsedOut~4_combout\ & (\debaunce_KEY1|s_pulsedOut~3_combout\ & (\debaunce_KEY1|s_pulsedOut~5_combout\ & \debaunce_KEY1|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~4_combout\,
	datab => \debaunce_KEY1|s_pulsedOut~3_combout\,
	datac => \debaunce_KEY1|s_pulsedOut~5_combout\,
	datad => \debaunce_KEY1|s_pulsedOut~2_combout\,
	combout => \debaunce_KEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X89_Y34_N2
\debaunce_KEY1|s_debounceCnt[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[4]~29_combout\ = (\debaunce_KEY1|s_debounceCnt\(5)) # (((\debaunce_KEY1|s_debounceCnt\(0)) # (!\debaunce_KEY1|s_pulsedOut~6_combout\)) # (!\debaunce_KEY1|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(5),
	datab => \debaunce_KEY1|s_pulsedOut~7_combout\,
	datac => \debaunce_KEY1|s_debounceCnt\(0),
	datad => \debaunce_KEY1|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[4]~29_combout\);

-- Location: LCCOMB_X90_Y34_N26
\debaunce_KEY1|s_debounceCnt[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[4]~4_combout\ = (\debaunce_KEY1|s_debounceCnt\(22)) # (((\debaunce_KEY1|s_debounceCnt[4]~29_combout\) # (!\debaunce_KEY1|s_previousIn~q\)) # (!\debaunce_KEY1|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(22),
	datab => \debaunce_KEY1|s_dirtyIn~q\,
	datac => \debaunce_KEY1|s_previousIn~q\,
	datad => \debaunce_KEY1|s_debounceCnt[4]~29_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[4]~4_combout\);

-- Location: LCCOMB_X91_Y33_N20
\debaunce_KEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~42_combout\ = (\debaunce_KEY1|s_debounceCnt\(21) & (\debaunce_KEY1|Add0~41\ & VCC)) # (!\debaunce_KEY1|s_debounceCnt\(21) & (!\debaunce_KEY1|Add0~41\))
-- \debaunce_KEY1|Add0~43\ = CARRY((!\debaunce_KEY1|s_debounceCnt\(21) & !\debaunce_KEY1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debaunce_KEY1|Add0~41\,
	combout => \debaunce_KEY1|Add0~42_combout\,
	cout => \debaunce_KEY1|Add0~43\);

-- Location: LCCOMB_X90_Y34_N10
\debaunce_KEY1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[21]~10_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~4_combout\ & (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~42_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X90_Y34_N11
\debaunce_KEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X91_Y33_N22
\debaunce_KEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|Add0~44_combout\ = \debaunce_KEY1|Add0~43\ $ (\debaunce_KEY1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debaunce_KEY1|s_debounceCnt\(22),
	cin => \debaunce_KEY1|Add0~43\,
	combout => \debaunce_KEY1|Add0~44_combout\);

-- Location: LCCOMB_X90_Y34_N2
\debaunce_KEY1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[22]~27_combout\ = (\debaunce_KEY1|s_debounceCnt\(22) & (((!\debaunce_KEY1|LessThan0~5_combout\)))) # (!\debaunce_KEY1|s_debounceCnt\(22) & ((\debaunce_KEY1|s_debounceCnt[4]~29_combout\) # ((!\debaunce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt[4]~29_combout\,
	datab => \debaunce_KEY1|s_debounceCnt\(22),
	datac => \debaunce_KEY1|s_previousIn~q\,
	datad => \debaunce_KEY1|LessThan0~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X90_Y34_N20
\debaunce_KEY1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[22]~28_combout\ = (\debaunce_KEY1|s_dirtyIn~q\ & (\debaunce_KEY1|s_debounceCnt[22]~27_combout\ & ((\debaunce_KEY1|Add0~44_combout\) # (!\debaunce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_previousIn~q\,
	datab => \debaunce_KEY1|s_dirtyIn~q\,
	datac => \debaunce_KEY1|Add0~44_combout\,
	datad => \debaunce_KEY1|s_debounceCnt[22]~27_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X90_Y34_N21
\debaunce_KEY1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(22));

-- Location: LCCOMB_X90_Y34_N8
\debaunce_KEY1|s_debounceCnt[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt[4]~5_combout\ = (\debaunce_KEY1|s_previousIn~q\ & (\debaunce_KEY1|s_dirtyIn~q\ & ((!\debaunce_KEY1|LessThan0~5_combout\) # (!\debaunce_KEY1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_previousIn~q\,
	datab => \debaunce_KEY1|s_debounceCnt\(22),
	datac => \debaunce_KEY1|s_dirtyIn~q\,
	datad => \debaunce_KEY1|LessThan0~5_combout\,
	combout => \debaunce_KEY1|s_debounceCnt[4]~5_combout\);

-- Location: LCCOMB_X89_Y34_N6
\debaunce_KEY1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_debounceCnt~25_combout\ = (\debaunce_KEY1|s_debounceCnt[4]~5_combout\ & \debaunce_KEY1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY1|s_debounceCnt[4]~5_combout\,
	datad => \debaunce_KEY1|Add0~10_combout\,
	combout => \debaunce_KEY1|s_debounceCnt~25_combout\);

-- Location: FF_X89_Y34_N7
\debaunce_KEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_debounceCnt~25_combout\,
	ena => \debaunce_KEY1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X88_Y34_N8
\debaunce_KEY1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~9_combout\ = (\debaunce_KEY1|s_dirtyIn~q\ & (!\debaunce_KEY1|s_debounceCnt\(22) & (\debaunce_KEY1|s_debounceCnt\(0) & \debaunce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_dirtyIn~q\,
	datab => \debaunce_KEY1|s_debounceCnt\(22),
	datac => \debaunce_KEY1|s_debounceCnt\(0),
	datad => \debaunce_KEY1|s_previousIn~q\,
	combout => \debaunce_KEY1|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X88_Y34_N12
\debaunce_KEY1|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY1|s_pulsedOut~10_combout\ = (!\debaunce_KEY1|s_debounceCnt\(5) & (\debaunce_KEY1|s_pulsedOut~9_combout\ & (\debaunce_KEY1|s_pulsedOut~6_combout\ & \debaunce_KEY1|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_debounceCnt\(5),
	datab => \debaunce_KEY1|s_pulsedOut~9_combout\,
	datac => \debaunce_KEY1|s_pulsedOut~6_combout\,
	datad => \debaunce_KEY1|s_pulsedOut~7_combout\,
	combout => \debaunce_KEY1|s_pulsedOut~10_combout\);

-- Location: FF_X88_Y34_N13
\debaunce_KEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY1|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY1|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X86_Y25_N0
\debaunce_KEY0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debaunce_KEY0|s_dirtyIn~0_combout\);

-- Location: FF_X86_Y25_N1
\debaunce_KEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_dirtyIn~q\);

-- Location: FF_X87_Y25_N9
\debaunce_KEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debaunce_KEY0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_previousIn~q\);

-- Location: LCCOMB_X89_Y26_N10
\debaunce_KEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~0_combout\ = \debaunce_KEY0|s_debounceCnt\(0) $ (VCC)
-- \debaunce_KEY0|Add0~1\ = CARRY(\debaunce_KEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debaunce_KEY0|Add0~0_combout\,
	cout => \debaunce_KEY0|Add0~1\);

-- Location: LCCOMB_X87_Y25_N26
\debaunce_KEY0|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~26_combout\ = (\debaunce_KEY0|Add0~0_combout\ & \debaunce_KEY0|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|Add0~0_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~26_combout\);

-- Location: LCCOMB_X88_Y25_N22
\debaunce_KEY0|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[18]~4_combout\ = ((\debaunce_KEY0|s_debounceCnt\(22)) # ((\debaunce_KEY0|s_debounceCnt[18]~29_combout\) # (!\debaunce_KEY0|s_dirtyIn~q\))) # (!\debaunce_KEY0|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datab => \debaunce_KEY0|s_debounceCnt\(22),
	datac => \debaunce_KEY0|s_debounceCnt[18]~29_combout\,
	datad => \debaunce_KEY0|s_dirtyIn~q\,
	combout => \debaunce_KEY0|s_debounceCnt[18]~4_combout\);

-- Location: FF_X87_Y25_N27
\debaunce_KEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~26_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X89_Y26_N12
\debaunce_KEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~2_combout\ = (\debaunce_KEY0|s_debounceCnt\(1) & (\debaunce_KEY0|Add0~1\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(1) & (!\debaunce_KEY0|Add0~1\))
-- \debaunce_KEY0|Add0~3\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(1) & !\debaunce_KEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~1\,
	combout => \debaunce_KEY0|Add0~2_combout\,
	cout => \debaunce_KEY0|Add0~3\);

-- Location: LCCOMB_X88_Y25_N2
\debaunce_KEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~21_combout\ = (\debaunce_KEY0|Add0~2_combout\ & \debaunce_KEY0|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|Add0~2_combout\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~21_combout\);

-- Location: FF_X88_Y25_N3
\debaunce_KEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~21_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X89_Y26_N14
\debaunce_KEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~4_combout\ = (\debaunce_KEY0|s_debounceCnt\(2) & ((GND) # (!\debaunce_KEY0|Add0~3\))) # (!\debaunce_KEY0|s_debounceCnt\(2) & (\debaunce_KEY0|Add0~3\ $ (GND)))
-- \debaunce_KEY0|Add0~5\ = CARRY((\debaunce_KEY0|s_debounceCnt\(2)) # (!\debaunce_KEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~3\,
	combout => \debaunce_KEY0|Add0~4_combout\,
	cout => \debaunce_KEY0|Add0~5\);

-- Location: LCCOMB_X89_Y26_N16
\debaunce_KEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~6_combout\ = (\debaunce_KEY0|s_debounceCnt\(3) & (\debaunce_KEY0|Add0~5\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(3) & (!\debaunce_KEY0|Add0~5\))
-- \debaunce_KEY0|Add0~7\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(3) & !\debaunce_KEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~5\,
	combout => \debaunce_KEY0|Add0~6_combout\,
	cout => \debaunce_KEY0|Add0~7\);

-- Location: LCCOMB_X88_Y25_N30
\debaunce_KEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~23_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~6_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~23_combout\);

-- Location: FF_X88_Y25_N31
\debaunce_KEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~23_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X89_Y26_N18
\debaunce_KEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~8_combout\ = (\debaunce_KEY0|s_debounceCnt\(4) & ((GND) # (!\debaunce_KEY0|Add0~7\))) # (!\debaunce_KEY0|s_debounceCnt\(4) & (\debaunce_KEY0|Add0~7\ $ (GND)))
-- \debaunce_KEY0|Add0~9\ = CARRY((\debaunce_KEY0|s_debounceCnt\(4)) # (!\debaunce_KEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~7\,
	combout => \debaunce_KEY0|Add0~8_combout\,
	cout => \debaunce_KEY0|Add0~9\);

-- Location: LCCOMB_X88_Y25_N16
\debaunce_KEY0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~24_combout\ = (\debaunce_KEY0|Add0~8_combout\ & \debaunce_KEY0|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|Add0~8_combout\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~24_combout\);

-- Location: FF_X88_Y25_N17
\debaunce_KEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~24_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X89_Y26_N20
\debaunce_KEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~10_combout\ = (\debaunce_KEY0|s_debounceCnt\(5) & (\debaunce_KEY0|Add0~9\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(5) & (!\debaunce_KEY0|Add0~9\))
-- \debaunce_KEY0|Add0~11\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(5) & !\debaunce_KEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~9\,
	combout => \debaunce_KEY0|Add0~10_combout\,
	cout => \debaunce_KEY0|Add0~11\);

-- Location: LCCOMB_X88_Y25_N0
\debaunce_KEY0|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~25_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~10_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~25_combout\);

-- Location: FF_X88_Y25_N1
\debaunce_KEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~25_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X89_Y26_N22
\debaunce_KEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~12_combout\ = (\debaunce_KEY0|s_debounceCnt\(6) & ((GND) # (!\debaunce_KEY0|Add0~11\))) # (!\debaunce_KEY0|s_debounceCnt\(6) & (\debaunce_KEY0|Add0~11\ $ (GND)))
-- \debaunce_KEY0|Add0~13\ = CARRY((\debaunce_KEY0|s_debounceCnt\(6)) # (!\debaunce_KEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~11\,
	combout => \debaunce_KEY0|Add0~12_combout\,
	cout => \debaunce_KEY0|Add0~13\);

-- Location: LCCOMB_X87_Y25_N24
\debaunce_KEY0|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[18]~2_combout\ = (\debaunce_KEY0|s_dirtyIn~q\ & ((!\debaunce_KEY0|LessThan0~6_combout\) # (!\debaunce_KEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_dirtyIn~q\,
	datab => \debaunce_KEY0|s_debounceCnt\(22),
	datad => \debaunce_KEY0|LessThan0~6_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X87_Y25_N28
\debaunce_KEY0|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~3_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~12_combout\) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|Add0~12_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~3_combout\);

-- Location: FF_X87_Y25_N29
\debaunce_KEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~3_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X89_Y26_N24
\debaunce_KEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~14_combout\ = (\debaunce_KEY0|s_debounceCnt\(7) & (\debaunce_KEY0|Add0~13\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(7) & (!\debaunce_KEY0|Add0~13\))
-- \debaunce_KEY0|Add0~15\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(7) & !\debaunce_KEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~13\,
	combout => \debaunce_KEY0|Add0~14_combout\,
	cout => \debaunce_KEY0|Add0~15\);

-- Location: LCCOMB_X87_Y25_N0
\debaunce_KEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~13_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~14_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~13_combout\);

-- Location: FF_X87_Y25_N1
\debaunce_KEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~13_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X89_Y26_N26
\debaunce_KEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~16_combout\ = (\debaunce_KEY0|s_debounceCnt\(8) & ((GND) # (!\debaunce_KEY0|Add0~15\))) # (!\debaunce_KEY0|s_debounceCnt\(8) & (\debaunce_KEY0|Add0~15\ $ (GND)))
-- \debaunce_KEY0|Add0~17\ = CARRY((\debaunce_KEY0|s_debounceCnt\(8)) # (!\debaunce_KEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~15\,
	combout => \debaunce_KEY0|Add0~16_combout\,
	cout => \debaunce_KEY0|Add0~17\);

-- Location: LCCOMB_X86_Y25_N30
\debaunce_KEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~14_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~16_combout\) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|Add0~16_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~14_combout\);

-- Location: FF_X86_Y25_N31
\debaunce_KEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~14_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X89_Y26_N28
\debaunce_KEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~18_combout\ = (\debaunce_KEY0|s_debounceCnt\(9) & (\debaunce_KEY0|Add0~17\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(9) & (!\debaunce_KEY0|Add0~17\))
-- \debaunce_KEY0|Add0~19\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(9) & !\debaunce_KEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~17\,
	combout => \debaunce_KEY0|Add0~18_combout\,
	cout => \debaunce_KEY0|Add0~19\);

-- Location: LCCOMB_X87_Y25_N30
\debaunce_KEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~15_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~18_combout\) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|Add0~18_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~15_combout\);

-- Location: FF_X87_Y25_N31
\debaunce_KEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~15_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X89_Y26_N30
\debaunce_KEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~20_combout\ = (\debaunce_KEY0|s_debounceCnt\(10) & ((GND) # (!\debaunce_KEY0|Add0~19\))) # (!\debaunce_KEY0|s_debounceCnt\(10) & (\debaunce_KEY0|Add0~19\ $ (GND)))
-- \debaunce_KEY0|Add0~21\ = CARRY((\debaunce_KEY0|s_debounceCnt\(10)) # (!\debaunce_KEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~19\,
	combout => \debaunce_KEY0|Add0~20_combout\,
	cout => \debaunce_KEY0|Add0~21\);

-- Location: LCCOMB_X87_Y25_N4
\debaunce_KEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~16_combout\ = (\debaunce_KEY0|Add0~20_combout\ & \debaunce_KEY0|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|Add0~20_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~16_combout\);

-- Location: FF_X87_Y25_N5
\debaunce_KEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~16_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X89_Y25_N0
\debaunce_KEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~22_combout\ = (\debaunce_KEY0|s_debounceCnt\(11) & (\debaunce_KEY0|Add0~21\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(11) & (!\debaunce_KEY0|Add0~21\))
-- \debaunce_KEY0|Add0~23\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(11) & !\debaunce_KEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~21\,
	combout => \debaunce_KEY0|Add0~22_combout\,
	cout => \debaunce_KEY0|Add0~23\);

-- Location: LCCOMB_X90_Y25_N12
\debaunce_KEY0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~17_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~22_combout\) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|Add0~22_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y25_N13
\debaunce_KEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~17_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X89_Y25_N2
\debaunce_KEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~24_combout\ = (\debaunce_KEY0|s_debounceCnt\(12) & ((GND) # (!\debaunce_KEY0|Add0~23\))) # (!\debaunce_KEY0|s_debounceCnt\(12) & (\debaunce_KEY0|Add0~23\ $ (GND)))
-- \debaunce_KEY0|Add0~25\ = CARRY((\debaunce_KEY0|s_debounceCnt\(12)) # (!\debaunce_KEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~23\,
	combout => \debaunce_KEY0|Add0~24_combout\,
	cout => \debaunce_KEY0|Add0~25\);

-- Location: LCCOMB_X87_Y25_N20
\debaunce_KEY0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~11_combout\ = (\debaunce_KEY0|Add0~24_combout\ & \debaunce_KEY0|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|Add0~24_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~11_combout\);

-- Location: FF_X87_Y25_N21
\debaunce_KEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~11_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X89_Y25_N4
\debaunce_KEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~26_combout\ = (\debaunce_KEY0|s_debounceCnt\(13) & (\debaunce_KEY0|Add0~25\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(13) & (!\debaunce_KEY0|Add0~25\))
-- \debaunce_KEY0|Add0~27\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(13) & !\debaunce_KEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~25\,
	combout => \debaunce_KEY0|Add0~26_combout\,
	cout => \debaunce_KEY0|Add0~27\);

-- Location: LCCOMB_X87_Y25_N14
\debaunce_KEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~12_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~26_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~12_combout\);

-- Location: FF_X87_Y25_N15
\debaunce_KEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~12_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X89_Y25_N6
\debaunce_KEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~28_combout\ = (\debaunce_KEY0|s_debounceCnt\(14) & ((GND) # (!\debaunce_KEY0|Add0~27\))) # (!\debaunce_KEY0|s_debounceCnt\(14) & (\debaunce_KEY0|Add0~27\ $ (GND)))
-- \debaunce_KEY0|Add0~29\ = CARRY((\debaunce_KEY0|s_debounceCnt\(14)) # (!\debaunce_KEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~27\,
	combout => \debaunce_KEY0|Add0~28_combout\,
	cout => \debaunce_KEY0|Add0~29\);

-- Location: LCCOMB_X90_Y25_N6
\debaunce_KEY0|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~18_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~28_combout\) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|Add0~28_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~18_combout\);

-- Location: FF_X90_Y25_N7
\debaunce_KEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~18_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X89_Y25_N8
\debaunce_KEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~30_combout\ = (\debaunce_KEY0|s_debounceCnt\(15) & (\debaunce_KEY0|Add0~29\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(15) & (!\debaunce_KEY0|Add0~29\))
-- \debaunce_KEY0|Add0~31\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(15) & !\debaunce_KEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~29\,
	combout => \debaunce_KEY0|Add0~30_combout\,
	cout => \debaunce_KEY0|Add0~31\);

-- Location: LCCOMB_X88_Y25_N4
\debaunce_KEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~6_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datac => \debaunce_KEY0|Add0~30_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~6_combout\);

-- Location: FF_X88_Y25_N5
\debaunce_KEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~6_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X89_Y25_N10
\debaunce_KEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~32_combout\ = (\debaunce_KEY0|s_debounceCnt\(16) & ((GND) # (!\debaunce_KEY0|Add0~31\))) # (!\debaunce_KEY0|s_debounceCnt\(16) & (\debaunce_KEY0|Add0~31\ $ (GND)))
-- \debaunce_KEY0|Add0~33\ = CARRY((\debaunce_KEY0|s_debounceCnt\(16)) # (!\debaunce_KEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~31\,
	combout => \debaunce_KEY0|Add0~32_combout\,
	cout => \debaunce_KEY0|Add0~33\);

-- Location: LCCOMB_X88_Y25_N26
\debaunce_KEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~7_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~32_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~7_combout\);

-- Location: FF_X88_Y25_N27
\debaunce_KEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~7_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X89_Y25_N12
\debaunce_KEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~34_combout\ = (\debaunce_KEY0|s_debounceCnt\(17) & (\debaunce_KEY0|Add0~33\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(17) & (!\debaunce_KEY0|Add0~33\))
-- \debaunce_KEY0|Add0~35\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(17) & !\debaunce_KEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~33\,
	combout => \debaunce_KEY0|Add0~34_combout\,
	cout => \debaunce_KEY0|Add0~35\);

-- Location: LCCOMB_X89_Y25_N28
\debaunce_KEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~8_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~34_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~8_combout\);

-- Location: FF_X89_Y25_N29
\debaunce_KEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~8_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X89_Y25_N14
\debaunce_KEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~36_combout\ = (\debaunce_KEY0|s_debounceCnt\(18) & ((GND) # (!\debaunce_KEY0|Add0~35\))) # (!\debaunce_KEY0|s_debounceCnt\(18) & (\debaunce_KEY0|Add0~35\ $ (GND)))
-- \debaunce_KEY0|Add0~37\ = CARRY((\debaunce_KEY0|s_debounceCnt\(18)) # (!\debaunce_KEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~35\,
	combout => \debaunce_KEY0|Add0~36_combout\,
	cout => \debaunce_KEY0|Add0~37\);

-- Location: LCCOMB_X90_Y25_N28
\debaunce_KEY0|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[18]~19_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~4_combout\ & (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~36_combout\) # (!\debaunce_KEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|Add0~36_combout\,
	datab => \debaunce_KEY0|s_previousIn~q\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[18]~19_combout\);

-- Location: FF_X90_Y25_N29
\debaunce_KEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X89_Y25_N16
\debaunce_KEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~38_combout\ = (\debaunce_KEY0|s_debounceCnt\(19) & (\debaunce_KEY0|Add0~37\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(19) & (!\debaunce_KEY0|Add0~37\))
-- \debaunce_KEY0|Add0~39\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(19) & !\debaunce_KEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~37\,
	combout => \debaunce_KEY0|Add0~38_combout\,
	cout => \debaunce_KEY0|Add0~39\);

-- Location: LCCOMB_X89_Y25_N26
\debaunce_KEY0|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[19]~20_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~4_combout\ & (\debaunce_KEY0|s_debounceCnt[18]~2_combout\ & ((\debaunce_KEY0|Add0~38_combout\) # (!\debaunce_KEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datab => \debaunce_KEY0|Add0~38_combout\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	datad => \debaunce_KEY0|s_debounceCnt[18]~2_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[19]~20_combout\);

-- Location: FF_X89_Y25_N27
\debaunce_KEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X89_Y25_N18
\debaunce_KEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~40_combout\ = (\debaunce_KEY0|s_debounceCnt\(20) & ((GND) # (!\debaunce_KEY0|Add0~39\))) # (!\debaunce_KEY0|s_debounceCnt\(20) & (\debaunce_KEY0|Add0~39\ $ (GND)))
-- \debaunce_KEY0|Add0~41\ = CARRY((\debaunce_KEY0|s_debounceCnt\(20)) # (!\debaunce_KEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~39\,
	combout => \debaunce_KEY0|Add0~40_combout\,
	cout => \debaunce_KEY0|Add0~41\);

-- Location: LCCOMB_X89_Y25_N30
\debaunce_KEY0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[20]~9_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~4_combout\ & (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~40_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X89_Y25_N31
\debaunce_KEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X89_Y25_N20
\debaunce_KEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~42_combout\ = (\debaunce_KEY0|s_debounceCnt\(21) & (\debaunce_KEY0|Add0~41\ & VCC)) # (!\debaunce_KEY0|s_debounceCnt\(21) & (!\debaunce_KEY0|Add0~41\))
-- \debaunce_KEY0|Add0~43\ = CARRY((!\debaunce_KEY0|s_debounceCnt\(21) & !\debaunce_KEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debaunce_KEY0|Add0~41\,
	combout => \debaunce_KEY0|Add0~42_combout\,
	cout => \debaunce_KEY0|Add0~43\);

-- Location: LCCOMB_X87_Y25_N22
\debaunce_KEY0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[21]~10_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & (\debaunce_KEY0|s_debounceCnt[18]~4_combout\ & \debaunce_KEY0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datac => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	datad => \debaunce_KEY0|Add0~42_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X87_Y25_N23
\debaunce_KEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X90_Y25_N8
\debaunce_KEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~5_combout\ = (!\debaunce_KEY0|s_debounceCnt\(21) & !\debaunce_KEY0|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt\(21),
	datad => \debaunce_KEY0|s_debounceCnt\(20),
	combout => \debaunce_KEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y25_N8
\debaunce_KEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~2_combout\ = (!\debaunce_KEY0|s_debounceCnt\(13) & !\debaunce_KEY0|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(13),
	datad => \debaunce_KEY0|s_debounceCnt\(12),
	combout => \debaunce_KEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X88_Y25_N18
\debaunce_KEY0|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~8_combout\ = (!\debaunce_KEY0|s_debounceCnt\(5) & \debaunce_KEY0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY0|s_debounceCnt\(5),
	datad => \debaunce_KEY0|s_pulsedOut~7_combout\,
	combout => \debaunce_KEY0|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X87_Y25_N10
\debaunce_KEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~0_combout\ = (\debaunce_KEY0|s_debounceCnt\(7)) # ((\debaunce_KEY0|s_debounceCnt\(6) & ((\debaunce_KEY0|s_debounceCnt\(0)) # (!\debaunce_KEY0|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(0),
	datab => \debaunce_KEY0|s_debounceCnt\(7),
	datac => \debaunce_KEY0|s_debounceCnt\(6),
	datad => \debaunce_KEY0|s_pulsedOut~8_combout\,
	combout => \debaunce_KEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y25_N12
\debaunce_KEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~1_combout\ = (\debaunce_KEY0|s_debounceCnt\(10)) # ((\debaunce_KEY0|s_debounceCnt\(9) & (\debaunce_KEY0|s_debounceCnt\(8) & \debaunce_KEY0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(9),
	datab => \debaunce_KEY0|s_debounceCnt\(8),
	datac => \debaunce_KEY0|s_debounceCnt\(10),
	datad => \debaunce_KEY0|LessThan0~0_combout\,
	combout => \debaunce_KEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y25_N2
\debaunce_KEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~3_combout\ = (\debaunce_KEY0|s_debounceCnt\(14) & (((\debaunce_KEY0|s_debounceCnt\(11) & \debaunce_KEY0|LessThan0~1_combout\)) # (!\debaunce_KEY0|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(14),
	datab => \debaunce_KEY0|LessThan0~2_combout\,
	datac => \debaunce_KEY0|s_debounceCnt\(11),
	datad => \debaunce_KEY0|LessThan0~1_combout\,
	combout => \debaunce_KEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y25_N16
\debaunce_KEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~4_combout\ = (\debaunce_KEY0|s_debounceCnt\(17)) # ((\debaunce_KEY0|s_debounceCnt\(16)) # ((\debaunce_KEY0|s_debounceCnt\(15)) # (\debaunce_KEY0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(17),
	datab => \debaunce_KEY0|s_debounceCnt\(16),
	datac => \debaunce_KEY0|s_debounceCnt\(15),
	datad => \debaunce_KEY0|LessThan0~3_combout\,
	combout => \debaunce_KEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y25_N18
\debaunce_KEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|LessThan0~6_combout\ = ((\debaunce_KEY0|s_debounceCnt\(18) & (\debaunce_KEY0|s_debounceCnt\(19) & \debaunce_KEY0|LessThan0~4_combout\))) # (!\debaunce_KEY0|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(18),
	datab => \debaunce_KEY0|s_debounceCnt\(19),
	datac => \debaunce_KEY0|LessThan0~5_combout\,
	datad => \debaunce_KEY0|LessThan0~4_combout\,
	combout => \debaunce_KEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X87_Y25_N6
\debaunce_KEY0|s_debounceCnt[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[18]~5_combout\ = (\debaunce_KEY0|s_dirtyIn~q\ & (\debaunce_KEY0|s_previousIn~q\ & ((!\debaunce_KEY0|LessThan0~6_combout\) # (!\debaunce_KEY0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_dirtyIn~q\,
	datab => \debaunce_KEY0|s_debounceCnt\(22),
	datac => \debaunce_KEY0|s_previousIn~q\,
	datad => \debaunce_KEY0|LessThan0~6_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[18]~5_combout\);

-- Location: LCCOMB_X88_Y25_N12
\debaunce_KEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt~22_combout\ = (\debaunce_KEY0|s_debounceCnt[18]~5_combout\ & \debaunce_KEY0|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_debounceCnt[18]~5_combout\,
	datad => \debaunce_KEY0|Add0~4_combout\,
	combout => \debaunce_KEY0|s_debounceCnt~22_combout\);

-- Location: FF_X88_Y25_N13
\debaunce_KEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt~22_combout\,
	ena => \debaunce_KEY0|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X88_Y25_N10
\debaunce_KEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~7_combout\ = (!\debaunce_KEY0|s_debounceCnt\(2) & (!\debaunce_KEY0|s_debounceCnt\(1) & (!\debaunce_KEY0|s_debounceCnt\(3) & !\debaunce_KEY0|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(2),
	datab => \debaunce_KEY0|s_debounceCnt\(1),
	datac => \debaunce_KEY0|s_debounceCnt\(3),
	datad => \debaunce_KEY0|s_debounceCnt\(4),
	combout => \debaunce_KEY0|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X88_Y25_N6
\debaunce_KEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~4_combout\ = (!\debaunce_KEY0|s_debounceCnt\(8) & (!\debaunce_KEY0|s_debounceCnt\(10) & (!\debaunce_KEY0|s_debounceCnt\(7) & !\debaunce_KEY0|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(8),
	datab => \debaunce_KEY0|s_debounceCnt\(10),
	datac => \debaunce_KEY0|s_debounceCnt\(7),
	datad => \debaunce_KEY0|s_debounceCnt\(9),
	combout => \debaunce_KEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X88_Y25_N20
\debaunce_KEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~2_combout\ = (!\debaunce_KEY0|s_debounceCnt\(6) & (!\debaunce_KEY0|s_debounceCnt\(15) & (!\debaunce_KEY0|s_debounceCnt\(16) & !\debaunce_KEY0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(6),
	datab => \debaunce_KEY0|s_debounceCnt\(15),
	datac => \debaunce_KEY0|s_debounceCnt\(16),
	datad => \debaunce_KEY0|s_debounceCnt\(17),
	combout => \debaunce_KEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X90_Y25_N22
\debaunce_KEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~5_combout\ = (!\debaunce_KEY0|s_debounceCnt\(14) & (!\debaunce_KEY0|s_debounceCnt\(18) & (!\debaunce_KEY0|s_debounceCnt\(19) & !\debaunce_KEY0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(14),
	datab => \debaunce_KEY0|s_debounceCnt\(18),
	datac => \debaunce_KEY0|s_debounceCnt\(19),
	datad => \debaunce_KEY0|s_debounceCnt\(11),
	combout => \debaunce_KEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X89_Y25_N24
\debaunce_KEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~3_combout\ = (!\debaunce_KEY0|s_debounceCnt\(20) & (!\debaunce_KEY0|s_debounceCnt\(21) & (!\debaunce_KEY0|s_debounceCnt\(12) & !\debaunce_KEY0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_debounceCnt\(20),
	datab => \debaunce_KEY0|s_debounceCnt\(21),
	datac => \debaunce_KEY0|s_debounceCnt\(12),
	datad => \debaunce_KEY0|s_debounceCnt\(13),
	combout => \debaunce_KEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X88_Y25_N28
\debaunce_KEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~6_combout\ = (\debaunce_KEY0|s_pulsedOut~4_combout\ & (\debaunce_KEY0|s_pulsedOut~2_combout\ & (\debaunce_KEY0|s_pulsedOut~5_combout\ & \debaunce_KEY0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~4_combout\,
	datab => \debaunce_KEY0|s_pulsedOut~2_combout\,
	datac => \debaunce_KEY0|s_pulsedOut~5_combout\,
	datad => \debaunce_KEY0|s_pulsedOut~3_combout\,
	combout => \debaunce_KEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X88_Y25_N14
\debaunce_KEY0|s_debounceCnt[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[18]~29_combout\ = ((\debaunce_KEY0|s_debounceCnt\(5)) # ((\debaunce_KEY0|s_debounceCnt\(0)) # (!\debaunce_KEY0|s_pulsedOut~6_combout\))) # (!\debaunce_KEY0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~7_combout\,
	datab => \debaunce_KEY0|s_debounceCnt\(5),
	datac => \debaunce_KEY0|s_debounceCnt\(0),
	datad => \debaunce_KEY0|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[18]~29_combout\);

-- Location: LCCOMB_X88_Y25_N8
\debaunce_KEY0|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[22]~27_combout\ = (\debaunce_KEY0|s_debounceCnt\(22) & (((!\debaunce_KEY0|LessThan0~6_combout\)))) # (!\debaunce_KEY0|s_debounceCnt\(22) & (((\debaunce_KEY0|s_debounceCnt[18]~29_combout\)) # (!\debaunce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datab => \debaunce_KEY0|s_debounceCnt\(22),
	datac => \debaunce_KEY0|s_debounceCnt[18]~29_combout\,
	datad => \debaunce_KEY0|LessThan0~6_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X89_Y25_N22
\debaunce_KEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|Add0~44_combout\ = \debaunce_KEY0|Add0~43\ $ (\debaunce_KEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debaunce_KEY0|s_debounceCnt\(22),
	cin => \debaunce_KEY0|Add0~43\,
	combout => \debaunce_KEY0|Add0~44_combout\);

-- Location: LCCOMB_X88_Y25_N24
\debaunce_KEY0|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_debounceCnt[22]~28_combout\ = (\debaunce_KEY0|s_dirtyIn~q\ & (\debaunce_KEY0|s_debounceCnt[22]~27_combout\ & ((\debaunce_KEY0|Add0~44_combout\) # (!\debaunce_KEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datab => \debaunce_KEY0|s_dirtyIn~q\,
	datac => \debaunce_KEY0|s_debounceCnt[22]~27_combout\,
	datad => \debaunce_KEY0|Add0~44_combout\,
	combout => \debaunce_KEY0|s_debounceCnt[22]~28_combout\);

-- Location: FF_X88_Y25_N25
\debaunce_KEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X86_Y25_N10
\debaunce_KEY0|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~9_combout\ = (\debaunce_KEY0|s_previousIn~q\ & (\debaunce_KEY0|s_dirtyIn~q\ & (!\debaunce_KEY0|s_debounceCnt\(22) & \debaunce_KEY0|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_previousIn~q\,
	datab => \debaunce_KEY0|s_dirtyIn~q\,
	datac => \debaunce_KEY0|s_debounceCnt\(22),
	datad => \debaunce_KEY0|s_debounceCnt\(0),
	combout => \debaunce_KEY0|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X86_Y25_N16
\debaunce_KEY0|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY0|s_pulsedOut~10_combout\ = (\debaunce_KEY0|s_pulsedOut~9_combout\ & (!\debaunce_KEY0|s_debounceCnt\(5) & (\debaunce_KEY0|s_pulsedOut~7_combout\ & \debaunce_KEY0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~9_combout\,
	datab => \debaunce_KEY0|s_debounceCnt\(5),
	datac => \debaunce_KEY0|s_pulsedOut~7_combout\,
	datad => \debaunce_KEY0|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY0|s_pulsedOut~10_combout\);

-- Location: FF_X86_Y25_N17
\debaunce_KEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY0|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X61_Y38_N10
\debaunce_KEY2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~0_combout\ = \debaunce_KEY2|s_debounceCnt\(0) $ (VCC)
-- \debaunce_KEY2|Add0~1\ = CARRY(\debaunce_KEY2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(0),
	datad => VCC,
	combout => \debaunce_KEY2|Add0~0_combout\,
	cout => \debaunce_KEY2|Add0~1\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X60_Y37_N30
\debaunce_KEY2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \debaunce_KEY2|s_dirtyIn~0_combout\);

-- Location: FF_X60_Y37_N31
\debaunce_KEY2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_dirtyIn~q\);

-- Location: FF_X60_Y37_N15
\debaunce_KEY2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debaunce_KEY2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_previousIn~q\);

-- Location: LCCOMB_X61_Y38_N16
\debaunce_KEY2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~6_combout\ = (\debaunce_KEY2|s_debounceCnt\(3) & (\debaunce_KEY2|Add0~5\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(3) & (!\debaunce_KEY2|Add0~5\))
-- \debaunce_KEY2|Add0~7\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(3) & !\debaunce_KEY2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(3),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~5\,
	combout => \debaunce_KEY2|Add0~6_combout\,
	cout => \debaunce_KEY2|Add0~7\);

-- Location: LCCOMB_X61_Y38_N18
\debaunce_KEY2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~8_combout\ = (\debaunce_KEY2|s_debounceCnt\(4) & ((GND) # (!\debaunce_KEY2|Add0~7\))) # (!\debaunce_KEY2|s_debounceCnt\(4) & (\debaunce_KEY2|Add0~7\ $ (GND)))
-- \debaunce_KEY2|Add0~9\ = CARRY((\debaunce_KEY2|s_debounceCnt\(4)) # (!\debaunce_KEY2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(4),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~7\,
	combout => \debaunce_KEY2|Add0~8_combout\,
	cout => \debaunce_KEY2|Add0~9\);

-- Location: LCCOMB_X63_Y37_N24
\debaunce_KEY2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~24_combout\ = (\debaunce_KEY2|Add0~8_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~8_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~24_combout\);

-- Location: LCCOMB_X60_Y37_N14
\debaunce_KEY2|s_debounceCnt[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[20]~4_combout\ = ((\debaunce_KEY2|s_debounceCnt\(22)) # ((\debaunce_KEY2|s_debounceCnt[20]~29_combout\) # (!\debaunce_KEY2|s_previousIn~q\))) # (!\debaunce_KEY2|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_dirtyIn~q\,
	datab => \debaunce_KEY2|s_debounceCnt\(22),
	datac => \debaunce_KEY2|s_previousIn~q\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~29_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[20]~4_combout\);

-- Location: FF_X63_Y37_N25
\debaunce_KEY2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~24_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(4));

-- Location: LCCOMB_X61_Y38_N20
\debaunce_KEY2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~10_combout\ = (\debaunce_KEY2|s_debounceCnt\(5) & (\debaunce_KEY2|Add0~9\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(5) & (!\debaunce_KEY2|Add0~9\))
-- \debaunce_KEY2|Add0~11\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(5) & !\debaunce_KEY2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(5),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~9\,
	combout => \debaunce_KEY2|Add0~10_combout\,
	cout => \debaunce_KEY2|Add0~11\);

-- Location: LCCOMB_X63_Y37_N0
\debaunce_KEY2|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~25_combout\ = (\debaunce_KEY2|Add0~10_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~10_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~25_combout\);

-- Location: FF_X63_Y37_N1
\debaunce_KEY2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~25_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(5));

-- Location: LCCOMB_X61_Y38_N22
\debaunce_KEY2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~12_combout\ = (\debaunce_KEY2|s_debounceCnt\(6) & ((GND) # (!\debaunce_KEY2|Add0~11\))) # (!\debaunce_KEY2|s_debounceCnt\(6) & (\debaunce_KEY2|Add0~11\ $ (GND)))
-- \debaunce_KEY2|Add0~13\ = CARRY((\debaunce_KEY2|s_debounceCnt\(6)) # (!\debaunce_KEY2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(6),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~11\,
	combout => \debaunce_KEY2|Add0~12_combout\,
	cout => \debaunce_KEY2|Add0~13\);

-- Location: LCCOMB_X61_Y37_N0
\debaunce_KEY2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~22_combout\ = (\debaunce_KEY2|s_debounceCnt\(11) & (\debaunce_KEY2|Add0~21\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(11) & (!\debaunce_KEY2|Add0~21\))
-- \debaunce_KEY2|Add0~23\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(11) & !\debaunce_KEY2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(11),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~21\,
	combout => \debaunce_KEY2|Add0~22_combout\,
	cout => \debaunce_KEY2|Add0~23\);

-- Location: LCCOMB_X61_Y37_N2
\debaunce_KEY2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~24_combout\ = (\debaunce_KEY2|s_debounceCnt\(12) & ((GND) # (!\debaunce_KEY2|Add0~23\))) # (!\debaunce_KEY2|s_debounceCnt\(12) & (\debaunce_KEY2|Add0~23\ $ (GND)))
-- \debaunce_KEY2|Add0~25\ = CARRY((\debaunce_KEY2|s_debounceCnt\(12)) # (!\debaunce_KEY2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(12),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~23\,
	combout => \debaunce_KEY2|Add0~24_combout\,
	cout => \debaunce_KEY2|Add0~25\);

-- Location: LCCOMB_X61_Y37_N26
\debaunce_KEY2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~11_combout\ = (\debaunce_KEY2|Add0~24_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|Add0~24_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~11_combout\);

-- Location: FF_X61_Y37_N27
\debaunce_KEY2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~11_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(12));

-- Location: LCCOMB_X61_Y37_N4
\debaunce_KEY2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~26_combout\ = (\debaunce_KEY2|s_debounceCnt\(13) & (\debaunce_KEY2|Add0~25\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(13) & (!\debaunce_KEY2|Add0~25\))
-- \debaunce_KEY2|Add0~27\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(13) & !\debaunce_KEY2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(13),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~25\,
	combout => \debaunce_KEY2|Add0~26_combout\,
	cout => \debaunce_KEY2|Add0~27\);

-- Location: LCCOMB_X62_Y37_N16
\debaunce_KEY2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~12_combout\ = (\debaunce_KEY2|Add0~26_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~26_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~12_combout\);

-- Location: FF_X62_Y37_N17
\debaunce_KEY2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~12_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(13));

-- Location: LCCOMB_X61_Y37_N6
\debaunce_KEY2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~28_combout\ = (\debaunce_KEY2|s_debounceCnt\(14) & ((GND) # (!\debaunce_KEY2|Add0~27\))) # (!\debaunce_KEY2|s_debounceCnt\(14) & (\debaunce_KEY2|Add0~27\ $ (GND)))
-- \debaunce_KEY2|Add0~29\ = CARRY((\debaunce_KEY2|s_debounceCnt\(14)) # (!\debaunce_KEY2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(14),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~27\,
	combout => \debaunce_KEY2|Add0~28_combout\,
	cout => \debaunce_KEY2|Add0~29\);

-- Location: LCCOMB_X60_Y37_N28
\debaunce_KEY2|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~18_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~28_combout\) # (!\debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datac => \debaunce_KEY2|Add0~28_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~18_combout\);

-- Location: FF_X60_Y37_N29
\debaunce_KEY2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~18_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(14));

-- Location: LCCOMB_X61_Y37_N8
\debaunce_KEY2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~30_combout\ = (\debaunce_KEY2|s_debounceCnt\(15) & (\debaunce_KEY2|Add0~29\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(15) & (!\debaunce_KEY2|Add0~29\))
-- \debaunce_KEY2|Add0~31\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(15) & !\debaunce_KEY2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(15),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~29\,
	combout => \debaunce_KEY2|Add0~30_combout\,
	cout => \debaunce_KEY2|Add0~31\);

-- Location: LCCOMB_X62_Y37_N0
\debaunce_KEY2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~6_combout\ = (\debaunce_KEY2|Add0~30_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|Add0~30_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~6_combout\);

-- Location: FF_X62_Y37_N1
\debaunce_KEY2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~6_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(15));

-- Location: LCCOMB_X61_Y37_N10
\debaunce_KEY2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~32_combout\ = (\debaunce_KEY2|s_debounceCnt\(16) & ((GND) # (!\debaunce_KEY2|Add0~31\))) # (!\debaunce_KEY2|s_debounceCnt\(16) & (\debaunce_KEY2|Add0~31\ $ (GND)))
-- \debaunce_KEY2|Add0~33\ = CARRY((\debaunce_KEY2|s_debounceCnt\(16)) # (!\debaunce_KEY2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(16),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~31\,
	combout => \debaunce_KEY2|Add0~32_combout\,
	cout => \debaunce_KEY2|Add0~33\);

-- Location: LCCOMB_X62_Y37_N30
\debaunce_KEY2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~7_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~5_combout\ & \debaunce_KEY2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	datad => \debaunce_KEY2|Add0~32_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~7_combout\);

-- Location: FF_X62_Y37_N31
\debaunce_KEY2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~7_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(16));

-- Location: LCCOMB_X61_Y37_N12
\debaunce_KEY2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~34_combout\ = (\debaunce_KEY2|s_debounceCnt\(17) & (\debaunce_KEY2|Add0~33\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(17) & (!\debaunce_KEY2|Add0~33\))
-- \debaunce_KEY2|Add0~35\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(17) & !\debaunce_KEY2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(17),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~33\,
	combout => \debaunce_KEY2|Add0~34_combout\,
	cout => \debaunce_KEY2|Add0~35\);

-- Location: LCCOMB_X61_Y37_N28
\debaunce_KEY2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~8_combout\ = (\debaunce_KEY2|Add0~34_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|Add0~34_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~8_combout\);

-- Location: FF_X61_Y37_N29
\debaunce_KEY2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~8_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(17));

-- Location: LCCOMB_X61_Y37_N14
\debaunce_KEY2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~36_combout\ = (\debaunce_KEY2|s_debounceCnt\(18) & ((GND) # (!\debaunce_KEY2|Add0~35\))) # (!\debaunce_KEY2|s_debounceCnt\(18) & (\debaunce_KEY2|Add0~35\ $ (GND)))
-- \debaunce_KEY2|Add0~37\ = CARRY((\debaunce_KEY2|s_debounceCnt\(18)) # (!\debaunce_KEY2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(18),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~35\,
	combout => \debaunce_KEY2|Add0~36_combout\,
	cout => \debaunce_KEY2|Add0~37\);

-- Location: LCCOMB_X60_Y37_N8
\debaunce_KEY2|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[18]~19_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~4_combout\ & (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~36_combout\) # (!\debaunce_KEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datab => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	datac => \debaunce_KEY2|Add0~36_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[18]~19_combout\);

-- Location: FF_X60_Y37_N9
\debaunce_KEY2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(18));

-- Location: LCCOMB_X61_Y37_N16
\debaunce_KEY2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~38_combout\ = (\debaunce_KEY2|s_debounceCnt\(19) & (\debaunce_KEY2|Add0~37\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(19) & (!\debaunce_KEY2|Add0~37\))
-- \debaunce_KEY2|Add0~39\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(19) & !\debaunce_KEY2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(19),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~37\,
	combout => \debaunce_KEY2|Add0~38_combout\,
	cout => \debaunce_KEY2|Add0~39\);

-- Location: LCCOMB_X60_Y37_N20
\debaunce_KEY2|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[19]~20_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~4_combout\ & (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~38_combout\) # (!\debaunce_KEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datab => \debaunce_KEY2|Add0~38_combout\,
	datac => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[19]~20_combout\);

-- Location: FF_X60_Y37_N21
\debaunce_KEY2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(19));

-- Location: LCCOMB_X61_Y37_N18
\debaunce_KEY2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~40_combout\ = (\debaunce_KEY2|s_debounceCnt\(20) & ((GND) # (!\debaunce_KEY2|Add0~39\))) # (!\debaunce_KEY2|s_debounceCnt\(20) & (\debaunce_KEY2|Add0~39\ $ (GND)))
-- \debaunce_KEY2|Add0~41\ = CARRY((\debaunce_KEY2|s_debounceCnt\(20)) # (!\debaunce_KEY2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(20),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~39\,
	combout => \debaunce_KEY2|Add0~40_combout\,
	cout => \debaunce_KEY2|Add0~41\);

-- Location: LCCOMB_X62_Y37_N4
\debaunce_KEY2|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[20]~9_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~5_combout\ & (\debaunce_KEY2|s_debounceCnt[20]~4_combout\ & \debaunce_KEY2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	datac => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	datad => \debaunce_KEY2|Add0~40_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[20]~9_combout\);

-- Location: FF_X62_Y37_N5
\debaunce_KEY2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(20));

-- Location: LCCOMB_X61_Y37_N20
\debaunce_KEY2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~42_combout\ = (\debaunce_KEY2|s_debounceCnt\(21) & (\debaunce_KEY2|Add0~41\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(21) & (!\debaunce_KEY2|Add0~41\))
-- \debaunce_KEY2|Add0~43\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(21) & !\debaunce_KEY2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(21),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~41\,
	combout => \debaunce_KEY2|Add0~42_combout\,
	cout => \debaunce_KEY2|Add0~43\);

-- Location: LCCOMB_X62_Y37_N14
\debaunce_KEY2|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[21]~10_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~5_combout\ & (\debaunce_KEY2|s_debounceCnt[20]~4_combout\ & \debaunce_KEY2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	datac => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	datad => \debaunce_KEY2|Add0~42_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[21]~10_combout\);

-- Location: FF_X62_Y37_N15
\debaunce_KEY2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(21));

-- Location: LCCOMB_X63_Y37_N28
\debaunce_KEY2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~5_combout\ = (!\debaunce_KEY2|s_debounceCnt\(20) & !\debaunce_KEY2|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|s_debounceCnt\(20),
	datad => \debaunce_KEY2|s_debounceCnt\(21),
	combout => \debaunce_KEY2|LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y37_N30
\debaunce_KEY2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~2_combout\ = (!\debaunce_KEY2|s_debounceCnt\(12) & !\debaunce_KEY2|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|s_debounceCnt\(12),
	datad => \debaunce_KEY2|s_debounceCnt\(13),
	combout => \debaunce_KEY2|LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y37_N18
\debaunce_KEY2|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~8_combout\ = (!\debaunce_KEY2|s_debounceCnt\(5) & \debaunce_KEY2|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(5),
	datad => \debaunce_KEY2|s_pulsedOut~7_combout\,
	combout => \debaunce_KEY2|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X62_Y37_N6
\debaunce_KEY2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~0_combout\ = (\debaunce_KEY2|s_debounceCnt\(7)) # ((\debaunce_KEY2|s_debounceCnt\(6) & ((\debaunce_KEY2|s_debounceCnt\(0)) # (!\debaunce_KEY2|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(0),
	datab => \debaunce_KEY2|s_debounceCnt\(7),
	datac => \debaunce_KEY2|s_debounceCnt\(6),
	datad => \debaunce_KEY2|s_pulsedOut~8_combout\,
	combout => \debaunce_KEY2|LessThan0~0_combout\);

-- Location: LCCOMB_X62_Y37_N12
\debaunce_KEY2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~1_combout\ = (\debaunce_KEY2|s_debounceCnt\(10)) # ((\debaunce_KEY2|s_debounceCnt\(8) & (\debaunce_KEY2|s_debounceCnt\(9) & \debaunce_KEY2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(8),
	datab => \debaunce_KEY2|s_debounceCnt\(9),
	datac => \debaunce_KEY2|s_debounceCnt\(10),
	datad => \debaunce_KEY2|LessThan0~0_combout\,
	combout => \debaunce_KEY2|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y37_N10
\debaunce_KEY2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~3_combout\ = (\debaunce_KEY2|s_debounceCnt\(14) & (((\debaunce_KEY2|s_debounceCnt\(11) & \debaunce_KEY2|LessThan0~1_combout\)) # (!\debaunce_KEY2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(14),
	datab => \debaunce_KEY2|LessThan0~2_combout\,
	datac => \debaunce_KEY2|s_debounceCnt\(11),
	datad => \debaunce_KEY2|LessThan0~1_combout\,
	combout => \debaunce_KEY2|LessThan0~3_combout\);

-- Location: LCCOMB_X62_Y37_N24
\debaunce_KEY2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~4_combout\ = (\debaunce_KEY2|s_debounceCnt\(16)) # ((\debaunce_KEY2|s_debounceCnt\(15)) # ((\debaunce_KEY2|s_debounceCnt\(17)) # (\debaunce_KEY2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(16),
	datab => \debaunce_KEY2|s_debounceCnt\(15),
	datac => \debaunce_KEY2|s_debounceCnt\(17),
	datad => \debaunce_KEY2|LessThan0~3_combout\,
	combout => \debaunce_KEY2|LessThan0~4_combout\);

-- Location: LCCOMB_X62_Y37_N18
\debaunce_KEY2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|LessThan0~6_combout\ = ((\debaunce_KEY2|s_debounceCnt\(19) & (\debaunce_KEY2|s_debounceCnt\(18) & \debaunce_KEY2|LessThan0~4_combout\))) # (!\debaunce_KEY2|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(19),
	datab => \debaunce_KEY2|LessThan0~5_combout\,
	datac => \debaunce_KEY2|s_debounceCnt\(18),
	datad => \debaunce_KEY2|LessThan0~4_combout\,
	combout => \debaunce_KEY2|LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y37_N16
\debaunce_KEY2|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[20]~2_combout\ = (\debaunce_KEY2|s_dirtyIn~q\ & ((!\debaunce_KEY2|LessThan0~6_combout\) # (!\debaunce_KEY2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(22),
	datac => \debaunce_KEY2|s_dirtyIn~q\,
	datad => \debaunce_KEY2|LessThan0~6_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X60_Y37_N10
\debaunce_KEY2|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~3_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~12_combout\) # (!\debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datac => \debaunce_KEY2|Add0~12_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~3_combout\);

-- Location: FF_X60_Y37_N11
\debaunce_KEY2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~3_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(6));

-- Location: LCCOMB_X61_Y38_N24
\debaunce_KEY2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~14_combout\ = (\debaunce_KEY2|s_debounceCnt\(7) & (\debaunce_KEY2|Add0~13\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(7) & (!\debaunce_KEY2|Add0~13\))
-- \debaunce_KEY2|Add0~15\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(7) & !\debaunce_KEY2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(7),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~13\,
	combout => \debaunce_KEY2|Add0~14_combout\,
	cout => \debaunce_KEY2|Add0~15\);

-- Location: LCCOMB_X62_Y37_N2
\debaunce_KEY2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~13_combout\ = (\debaunce_KEY2|Add0~14_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~14_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~13_combout\);

-- Location: FF_X62_Y37_N3
\debaunce_KEY2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~13_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(7));

-- Location: LCCOMB_X61_Y38_N26
\debaunce_KEY2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~16_combout\ = (\debaunce_KEY2|s_debounceCnt\(8) & ((GND) # (!\debaunce_KEY2|Add0~15\))) # (!\debaunce_KEY2|s_debounceCnt\(8) & (\debaunce_KEY2|Add0~15\ $ (GND)))
-- \debaunce_KEY2|Add0~17\ = CARRY((\debaunce_KEY2|s_debounceCnt\(8)) # (!\debaunce_KEY2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(8),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~15\,
	combout => \debaunce_KEY2|Add0~16_combout\,
	cout => \debaunce_KEY2|Add0~17\);

-- Location: LCCOMB_X60_Y37_N22
\debaunce_KEY2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~14_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~16_combout\) # (!\debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datab => \debaunce_KEY2|Add0~16_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~14_combout\);

-- Location: FF_X60_Y37_N23
\debaunce_KEY2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~14_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(8));

-- Location: LCCOMB_X61_Y38_N28
\debaunce_KEY2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~18_combout\ = (\debaunce_KEY2|s_debounceCnt\(9) & (\debaunce_KEY2|Add0~17\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(9) & (!\debaunce_KEY2|Add0~17\))
-- \debaunce_KEY2|Add0~19\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(9) & !\debaunce_KEY2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(9),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~17\,
	combout => \debaunce_KEY2|Add0~18_combout\,
	cout => \debaunce_KEY2|Add0~19\);

-- Location: LCCOMB_X60_Y37_N0
\debaunce_KEY2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~15_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~18_combout\) # (!\debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datac => \debaunce_KEY2|Add0~18_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~15_combout\);

-- Location: FF_X60_Y37_N1
\debaunce_KEY2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~15_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(9));

-- Location: LCCOMB_X61_Y38_N30
\debaunce_KEY2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~20_combout\ = (\debaunce_KEY2|s_debounceCnt\(10) & ((GND) # (!\debaunce_KEY2|Add0~19\))) # (!\debaunce_KEY2|s_debounceCnt\(10) & (\debaunce_KEY2|Add0~19\ $ (GND)))
-- \debaunce_KEY2|Add0~21\ = CARRY((\debaunce_KEY2|s_debounceCnt\(10)) # (!\debaunce_KEY2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(10),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~19\,
	combout => \debaunce_KEY2|Add0~20_combout\,
	cout => \debaunce_KEY2|Add0~21\);

-- Location: LCCOMB_X62_Y37_N8
\debaunce_KEY2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~16_combout\ = (\debaunce_KEY2|Add0~20_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|Add0~20_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~16_combout\);

-- Location: FF_X62_Y37_N9
\debaunce_KEY2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~16_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(10));

-- Location: LCCOMB_X60_Y37_N6
\debaunce_KEY2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~17_combout\ = (\debaunce_KEY2|s_debounceCnt[20]~2_combout\ & ((\debaunce_KEY2|Add0~22_combout\) # (!\debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_previousIn~q\,
	datac => \debaunce_KEY2|Add0~22_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~2_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~17_combout\);

-- Location: FF_X60_Y37_N7
\debaunce_KEY2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~17_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(11));

-- Location: LCCOMB_X60_Y37_N12
\debaunce_KEY2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~5_combout\ = (!\debaunce_KEY2|s_debounceCnt\(11) & (!\debaunce_KEY2|s_debounceCnt\(14) & (!\debaunce_KEY2|s_debounceCnt\(18) & !\debaunce_KEY2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(11),
	datab => \debaunce_KEY2|s_debounceCnt\(14),
	datac => \debaunce_KEY2|s_debounceCnt\(18),
	datad => \debaunce_KEY2|s_debounceCnt\(19),
	combout => \debaunce_KEY2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X60_Y37_N4
\debaunce_KEY2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~2_combout\ = (!\debaunce_KEY2|s_debounceCnt\(6) & (!\debaunce_KEY2|s_debounceCnt\(17) & (!\debaunce_KEY2|s_debounceCnt\(15) & !\debaunce_KEY2|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(6),
	datab => \debaunce_KEY2|s_debounceCnt\(17),
	datac => \debaunce_KEY2|s_debounceCnt\(15),
	datad => \debaunce_KEY2|s_debounceCnt\(16),
	combout => \debaunce_KEY2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X61_Y37_N24
\debaunce_KEY2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~3_combout\ = (!\debaunce_KEY2|s_debounceCnt\(12) & (!\debaunce_KEY2|s_debounceCnt\(13) & (!\debaunce_KEY2|s_debounceCnt\(21) & !\debaunce_KEY2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(12),
	datab => \debaunce_KEY2|s_debounceCnt\(13),
	datac => \debaunce_KEY2|s_debounceCnt\(21),
	datad => \debaunce_KEY2|s_debounceCnt\(20),
	combout => \debaunce_KEY2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X60_Y37_N18
\debaunce_KEY2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~4_combout\ = (!\debaunce_KEY2|s_debounceCnt\(8) & (!\debaunce_KEY2|s_debounceCnt\(9) & (!\debaunce_KEY2|s_debounceCnt\(7) & !\debaunce_KEY2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(8),
	datab => \debaunce_KEY2|s_debounceCnt\(9),
	datac => \debaunce_KEY2|s_debounceCnt\(7),
	datad => \debaunce_KEY2|s_debounceCnt\(10),
	combout => \debaunce_KEY2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X60_Y37_N2
\debaunce_KEY2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~6_combout\ = (\debaunce_KEY2|s_pulsedOut~5_combout\ & (\debaunce_KEY2|s_pulsedOut~2_combout\ & (\debaunce_KEY2|s_pulsedOut~3_combout\ & \debaunce_KEY2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_pulsedOut~5_combout\,
	datab => \debaunce_KEY2|s_pulsedOut~2_combout\,
	datac => \debaunce_KEY2|s_pulsedOut~3_combout\,
	datad => \debaunce_KEY2|s_pulsedOut~4_combout\,
	combout => \debaunce_KEY2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X60_Y37_N24
\debaunce_KEY2|s_debounceCnt[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[20]~29_combout\ = (\debaunce_KEY2|s_debounceCnt\(5)) # (((\debaunce_KEY2|s_debounceCnt\(0)) # (!\debaunce_KEY2|s_pulsedOut~6_combout\)) # (!\debaunce_KEY2|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(5),
	datab => \debaunce_KEY2|s_pulsedOut~7_combout\,
	datac => \debaunce_KEY2|s_debounceCnt\(0),
	datad => \debaunce_KEY2|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[20]~29_combout\);

-- Location: LCCOMB_X62_Y37_N22
\debaunce_KEY2|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[22]~27_combout\ = (\debaunce_KEY2|s_debounceCnt\(22) & (((!\debaunce_KEY2|LessThan0~6_combout\)))) # (!\debaunce_KEY2|s_debounceCnt\(22) & ((\debaunce_KEY2|s_debounceCnt[20]~29_combout\) # ((!\debaunce_KEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt[20]~29_combout\,
	datab => \debaunce_KEY2|s_debounceCnt\(22),
	datac => \debaunce_KEY2|s_previousIn~q\,
	datad => \debaunce_KEY2|LessThan0~6_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X61_Y37_N22
\debaunce_KEY2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~44_combout\ = \debaunce_KEY2|Add0~43\ $ (\debaunce_KEY2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debaunce_KEY2|s_debounceCnt\(22),
	cin => \debaunce_KEY2|Add0~43\,
	combout => \debaunce_KEY2|Add0~44_combout\);

-- Location: LCCOMB_X62_Y37_N20
\debaunce_KEY2|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[22]~28_combout\ = (\debaunce_KEY2|s_dirtyIn~q\ & (\debaunce_KEY2|s_debounceCnt[22]~27_combout\ & ((\debaunce_KEY2|Add0~44_combout\) # (!\debaunce_KEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_dirtyIn~q\,
	datab => \debaunce_KEY2|s_previousIn~q\,
	datac => \debaunce_KEY2|s_debounceCnt[22]~27_combout\,
	datad => \debaunce_KEY2|Add0~44_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[22]~28_combout\);

-- Location: FF_X62_Y37_N21
\debaunce_KEY2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(22));

-- Location: LCCOMB_X62_Y37_N28
\debaunce_KEY2|s_debounceCnt[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt[20]~5_combout\ = (\debaunce_KEY2|s_dirtyIn~q\ & (\debaunce_KEY2|s_previousIn~q\ & ((!\debaunce_KEY2|LessThan0~6_combout\) # (!\debaunce_KEY2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_dirtyIn~q\,
	datab => \debaunce_KEY2|s_debounceCnt\(22),
	datac => \debaunce_KEY2|s_previousIn~q\,
	datad => \debaunce_KEY2|LessThan0~6_combout\,
	combout => \debaunce_KEY2|s_debounceCnt[20]~5_combout\);

-- Location: LCCOMB_X62_Y37_N26
\debaunce_KEY2|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~26_combout\ = (\debaunce_KEY2|Add0~0_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~0_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~26_combout\);

-- Location: FF_X62_Y37_N27
\debaunce_KEY2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~26_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(0));

-- Location: LCCOMB_X61_Y38_N12
\debaunce_KEY2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~2_combout\ = (\debaunce_KEY2|s_debounceCnt\(1) & (\debaunce_KEY2|Add0~1\ & VCC)) # (!\debaunce_KEY2|s_debounceCnt\(1) & (!\debaunce_KEY2|Add0~1\))
-- \debaunce_KEY2|Add0~3\ = CARRY((!\debaunce_KEY2|s_debounceCnt\(1) & !\debaunce_KEY2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(1),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~1\,
	combout => \debaunce_KEY2|Add0~2_combout\,
	cout => \debaunce_KEY2|Add0~3\);

-- Location: LCCOMB_X63_Y37_N22
\debaunce_KEY2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~21_combout\ = (\debaunce_KEY2|Add0~2_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~2_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~21_combout\);

-- Location: FF_X63_Y37_N23
\debaunce_KEY2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~21_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(1));

-- Location: LCCOMB_X61_Y38_N14
\debaunce_KEY2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|Add0~4_combout\ = (\debaunce_KEY2|s_debounceCnt\(2) & ((GND) # (!\debaunce_KEY2|Add0~3\))) # (!\debaunce_KEY2|s_debounceCnt\(2) & (\debaunce_KEY2|Add0~3\ $ (GND)))
-- \debaunce_KEY2|Add0~5\ = CARRY((\debaunce_KEY2|s_debounceCnt\(2)) # (!\debaunce_KEY2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY2|s_debounceCnt\(2),
	datad => VCC,
	cin => \debaunce_KEY2|Add0~3\,
	combout => \debaunce_KEY2|Add0~4_combout\,
	cout => \debaunce_KEY2|Add0~5\);

-- Location: LCCOMB_X63_Y37_N12
\debaunce_KEY2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~22_combout\ = (\debaunce_KEY2|Add0~4_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~4_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~22_combout\);

-- Location: FF_X63_Y37_N13
\debaunce_KEY2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~22_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(2));

-- Location: LCCOMB_X63_Y37_N26
\debaunce_KEY2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_debounceCnt~23_combout\ = (\debaunce_KEY2|Add0~6_combout\ & \debaunce_KEY2|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY2|Add0~6_combout\,
	datad => \debaunce_KEY2|s_debounceCnt[20]~5_combout\,
	combout => \debaunce_KEY2|s_debounceCnt~23_combout\);

-- Location: FF_X63_Y37_N27
\debaunce_KEY2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_debounceCnt~23_combout\,
	ena => \debaunce_KEY2|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_debounceCnt\(3));

-- Location: LCCOMB_X63_Y37_N10
\debaunce_KEY2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~7_combout\ = (!\debaunce_KEY2|s_debounceCnt\(3) & (!\debaunce_KEY2|s_debounceCnt\(4) & (!\debaunce_KEY2|s_debounceCnt\(1) & !\debaunce_KEY2|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(3),
	datab => \debaunce_KEY2|s_debounceCnt\(4),
	datac => \debaunce_KEY2|s_debounceCnt\(1),
	datad => \debaunce_KEY2|s_debounceCnt\(2),
	combout => \debaunce_KEY2|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X60_Y37_N26
\debaunce_KEY2|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~9_combout\ = (\debaunce_KEY2|s_debounceCnt\(0) & (!\debaunce_KEY2|s_debounceCnt\(22) & (\debaunce_KEY2|s_dirtyIn~q\ & \debaunce_KEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_debounceCnt\(0),
	datab => \debaunce_KEY2|s_debounceCnt\(22),
	datac => \debaunce_KEY2|s_dirtyIn~q\,
	datad => \debaunce_KEY2|s_previousIn~q\,
	combout => \debaunce_KEY2|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X63_Y37_N20
\debaunce_KEY2|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY2|s_pulsedOut~10_combout\ = (\debaunce_KEY2|s_pulsedOut~7_combout\ & (!\debaunce_KEY2|s_debounceCnt\(5) & (\debaunce_KEY2|s_pulsedOut~6_combout\ & \debaunce_KEY2|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_pulsedOut~7_combout\,
	datab => \debaunce_KEY2|s_debounceCnt\(5),
	datac => \debaunce_KEY2|s_pulsedOut~6_combout\,
	datad => \debaunce_KEY2|s_pulsedOut~9_combout\,
	combout => \debaunce_KEY2|s_pulsedOut~10_combout\);

-- Location: FF_X63_Y37_N21
\debaunce_KEY2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY2|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY2|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y28_N10
\debaunce_KEY3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~0_combout\ = \debaunce_KEY3|s_debounceCnt\(0) $ (VCC)
-- \debaunce_KEY3|Add0~1\ = CARRY(\debaunce_KEY3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(0),
	datad => VCC,
	combout => \debaunce_KEY3|Add0~0_combout\,
	cout => \debaunce_KEY3|Add0~1\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X96_Y28_N10
\debaunce_KEY3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \debaunce_KEY3|s_dirtyIn~0_combout\);

-- Location: FF_X96_Y28_N11
\debaunce_KEY3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_dirtyIn~q\);

-- Location: FF_X94_Y28_N25
\debaunce_KEY3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debaunce_KEY3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_previousIn~q\);

-- Location: LCCOMB_X95_Y28_N18
\debaunce_KEY3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~7_combout\ = (!\debaunce_KEY3|s_debounceCnt\(3) & (!\debaunce_KEY3|s_debounceCnt\(4) & (!\debaunce_KEY3|s_debounceCnt\(1) & !\debaunce_KEY3|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(3),
	datab => \debaunce_KEY3|s_debounceCnt\(4),
	datac => \debaunce_KEY3|s_debounceCnt\(1),
	datad => \debaunce_KEY3|s_debounceCnt\(2),
	combout => \debaunce_KEY3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X97_Y28_N20
\debaunce_KEY3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~10_combout\ = (\debaunce_KEY3|s_debounceCnt\(5) & (\debaunce_KEY3|Add0~9\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(5) & (!\debaunce_KEY3|Add0~9\))
-- \debaunce_KEY3|Add0~11\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(5) & !\debaunce_KEY3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(5),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~9\,
	combout => \debaunce_KEY3|Add0~10_combout\,
	cout => \debaunce_KEY3|Add0~11\);

-- Location: LCCOMB_X97_Y28_N22
\debaunce_KEY3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~12_combout\ = (\debaunce_KEY3|s_debounceCnt\(6) & ((GND) # (!\debaunce_KEY3|Add0~11\))) # (!\debaunce_KEY3|s_debounceCnt\(6) & (\debaunce_KEY3|Add0~11\ $ (GND)))
-- \debaunce_KEY3|Add0~13\ = CARRY((\debaunce_KEY3|s_debounceCnt\(6)) # (!\debaunce_KEY3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(6),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~11\,
	combout => \debaunce_KEY3|Add0~12_combout\,
	cout => \debaunce_KEY3|Add0~13\);

-- Location: LCCOMB_X96_Y28_N4
\debaunce_KEY3|s_debounceCnt[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[21]~4_combout\ = (((\debaunce_KEY3|s_debounceCnt\(22)) # (\debaunce_KEY3|s_debounceCnt[21]~29_combout\)) # (!\debaunce_KEY3|s_previousIn~q\)) # (!\debaunce_KEY3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_dirtyIn~q\,
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt\(22),
	datad => \debaunce_KEY3|s_debounceCnt[21]~29_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[21]~4_combout\);

-- Location: LCCOMB_X97_Y27_N2
\debaunce_KEY3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~24_combout\ = (\debaunce_KEY3|s_debounceCnt\(12) & ((GND) # (!\debaunce_KEY3|Add0~23\))) # (!\debaunce_KEY3|s_debounceCnt\(12) & (\debaunce_KEY3|Add0~23\ $ (GND)))
-- \debaunce_KEY3|Add0~25\ = CARRY((\debaunce_KEY3|s_debounceCnt\(12)) # (!\debaunce_KEY3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(12),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~23\,
	combout => \debaunce_KEY3|Add0~24_combout\,
	cout => \debaunce_KEY3|Add0~25\);

-- Location: LCCOMB_X97_Y27_N4
\debaunce_KEY3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~26_combout\ = (\debaunce_KEY3|s_debounceCnt\(13) & (\debaunce_KEY3|Add0~25\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(13) & (!\debaunce_KEY3|Add0~25\))
-- \debaunce_KEY3|Add0~27\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(13) & !\debaunce_KEY3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(13),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~25\,
	combout => \debaunce_KEY3|Add0~26_combout\,
	cout => \debaunce_KEY3|Add0~27\);

-- Location: LCCOMB_X94_Y28_N10
\debaunce_KEY3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~12_combout\ = (\debaunce_KEY3|Add0~26_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~26_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~12_combout\);

-- Location: FF_X94_Y28_N11
\debaunce_KEY3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~12_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y27_N6
\debaunce_KEY3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~28_combout\ = (\debaunce_KEY3|s_debounceCnt\(14) & ((GND) # (!\debaunce_KEY3|Add0~27\))) # (!\debaunce_KEY3|s_debounceCnt\(14) & (\debaunce_KEY3|Add0~27\ $ (GND)))
-- \debaunce_KEY3|Add0~29\ = CARRY((\debaunce_KEY3|s_debounceCnt\(14)) # (!\debaunce_KEY3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(14),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~27\,
	combout => \debaunce_KEY3|Add0~28_combout\,
	cout => \debaunce_KEY3|Add0~29\);

-- Location: LCCOMB_X94_Y28_N30
\debaunce_KEY3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~18_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~28_combout\) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	datac => \debaunce_KEY3|s_previousIn~q\,
	datad => \debaunce_KEY3|Add0~28_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~18_combout\);

-- Location: FF_X94_Y28_N31
\debaunce_KEY3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~18_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y27_N8
\debaunce_KEY3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~30_combout\ = (\debaunce_KEY3|s_debounceCnt\(15) & (\debaunce_KEY3|Add0~29\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(15) & (!\debaunce_KEY3|Add0~29\))
-- \debaunce_KEY3|Add0~31\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(15) & !\debaunce_KEY3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(15),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~29\,
	combout => \debaunce_KEY3|Add0~30_combout\,
	cout => \debaunce_KEY3|Add0~31\);

-- Location: LCCOMB_X97_Y27_N24
\debaunce_KEY3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~6_combout\ = (\debaunce_KEY3|Add0~30_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~30_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y27_N25
\debaunce_KEY3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~6_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y27_N10
\debaunce_KEY3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~32_combout\ = (\debaunce_KEY3|s_debounceCnt\(16) & ((GND) # (!\debaunce_KEY3|Add0~31\))) # (!\debaunce_KEY3|s_debounceCnt\(16) & (\debaunce_KEY3|Add0~31\ $ (GND)))
-- \debaunce_KEY3|Add0~33\ = CARRY((\debaunce_KEY3|s_debounceCnt\(16)) # (!\debaunce_KEY3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(16),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~31\,
	combout => \debaunce_KEY3|Add0~32_combout\,
	cout => \debaunce_KEY3|Add0~33\);

-- Location: LCCOMB_X94_Y28_N0
\debaunce_KEY3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~7_combout\ = (\debaunce_KEY3|Add0~32_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~32_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~7_combout\);

-- Location: FF_X94_Y28_N1
\debaunce_KEY3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~7_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y27_N12
\debaunce_KEY3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~34_combout\ = (\debaunce_KEY3|s_debounceCnt\(17) & (\debaunce_KEY3|Add0~33\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(17) & (!\debaunce_KEY3|Add0~33\))
-- \debaunce_KEY3|Add0~35\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(17) & !\debaunce_KEY3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(17),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~33\,
	combout => \debaunce_KEY3|Add0~34_combout\,
	cout => \debaunce_KEY3|Add0~35\);

-- Location: LCCOMB_X97_Y27_N30
\debaunce_KEY3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~8_combout\ = (\debaunce_KEY3|Add0~34_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|Add0~34_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~8_combout\);

-- Location: FF_X97_Y27_N31
\debaunce_KEY3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~8_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y27_N14
\debaunce_KEY3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~36_combout\ = (\debaunce_KEY3|s_debounceCnt\(18) & ((GND) # (!\debaunce_KEY3|Add0~35\))) # (!\debaunce_KEY3|s_debounceCnt\(18) & (\debaunce_KEY3|Add0~35\ $ (GND)))
-- \debaunce_KEY3|Add0~37\ = CARRY((\debaunce_KEY3|s_debounceCnt\(18)) # (!\debaunce_KEY3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(18),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~35\,
	combout => \debaunce_KEY3|Add0~36_combout\,
	cout => \debaunce_KEY3|Add0~37\);

-- Location: LCCOMB_X94_Y28_N28
\debaunce_KEY3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[18]~19_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~4_combout\ & (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~36_combout\) # (!\debaunce_KEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	datad => \debaunce_KEY3|Add0~36_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X94_Y28_N29
\debaunce_KEY3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y27_N16
\debaunce_KEY3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~38_combout\ = (\debaunce_KEY3|s_debounceCnt\(19) & (\debaunce_KEY3|Add0~37\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(19) & (!\debaunce_KEY3|Add0~37\))
-- \debaunce_KEY3|Add0~39\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(19) & !\debaunce_KEY3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(19),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~37\,
	combout => \debaunce_KEY3|Add0~38_combout\,
	cout => \debaunce_KEY3|Add0~39\);

-- Location: LCCOMB_X94_Y28_N6
\debaunce_KEY3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[19]~20_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~4_combout\ & (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~38_combout\) # (!\debaunce_KEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|Add0~38_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X94_Y28_N7
\debaunce_KEY3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y27_N18
\debaunce_KEY3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~40_combout\ = (\debaunce_KEY3|s_debounceCnt\(20) & ((GND) # (!\debaunce_KEY3|Add0~39\))) # (!\debaunce_KEY3|s_debounceCnt\(20) & (\debaunce_KEY3|Add0~39\ $ (GND)))
-- \debaunce_KEY3|Add0~41\ = CARRY((\debaunce_KEY3|s_debounceCnt\(20)) # (!\debaunce_KEY3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(20),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~39\,
	combout => \debaunce_KEY3|Add0~40_combout\,
	cout => \debaunce_KEY3|Add0~41\);

-- Location: LCCOMB_X96_Y28_N8
\debaunce_KEY3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[20]~9_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~4_combout\ & (\debaunce_KEY3|Add0~40_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	datac => \debaunce_KEY3|Add0~40_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X96_Y28_N9
\debaunce_KEY3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y27_N20
\debaunce_KEY3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~42_combout\ = (\debaunce_KEY3|s_debounceCnt\(21) & (\debaunce_KEY3|Add0~41\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(21) & (!\debaunce_KEY3|Add0~41\))
-- \debaunce_KEY3|Add0~43\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(21) & !\debaunce_KEY3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(21),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~41\,
	combout => \debaunce_KEY3|Add0~42_combout\,
	cout => \debaunce_KEY3|Add0~43\);

-- Location: LCCOMB_X94_Y28_N22
\debaunce_KEY3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[21]~10_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~4_combout\ & (\debaunce_KEY3|s_debounceCnt[21]~5_combout\ & \debaunce_KEY3|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	datab => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	datad => \debaunce_KEY3|Add0~42_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X94_Y28_N23
\debaunce_KEY3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(21));

-- Location: LCCOMB_X96_Y28_N22
\debaunce_KEY3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~5_combout\ = (!\debaunce_KEY3|s_debounceCnt\(20) & !\debaunce_KEY3|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|s_debounceCnt\(20),
	datad => \debaunce_KEY3|s_debounceCnt\(21),
	combout => \debaunce_KEY3|LessThan0~5_combout\);

-- Location: LCCOMB_X94_Y28_N4
\debaunce_KEY3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~2_combout\ = (!\debaunce_KEY3|s_debounceCnt\(12) & !\debaunce_KEY3|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|s_debounceCnt\(12),
	datad => \debaunce_KEY3|s_debounceCnt\(13),
	combout => \debaunce_KEY3|LessThan0~2_combout\);

-- Location: LCCOMB_X95_Y28_N6
\debaunce_KEY3|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~8_combout\ = (!\debaunce_KEY3|s_debounceCnt\(5) & \debaunce_KEY3|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(5),
	datad => \debaunce_KEY3|s_pulsedOut~7_combout\,
	combout => \debaunce_KEY3|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X95_Y28_N2
\debaunce_KEY3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~0_combout\ = (\debaunce_KEY3|s_debounceCnt\(7)) # ((\debaunce_KEY3|s_debounceCnt\(6) & ((\debaunce_KEY3|s_debounceCnt\(0)) # (!\debaunce_KEY3|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(7),
	datab => \debaunce_KEY3|s_debounceCnt\(6),
	datac => \debaunce_KEY3|s_debounceCnt\(0),
	datad => \debaunce_KEY3|s_pulsedOut~8_combout\,
	combout => \debaunce_KEY3|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y28_N4
\debaunce_KEY3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~1_combout\ = (\debaunce_KEY3|s_debounceCnt\(10)) # ((\debaunce_KEY3|s_debounceCnt\(8) & (\debaunce_KEY3|s_debounceCnt\(9) & \debaunce_KEY3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(8),
	datab => \debaunce_KEY3|s_debounceCnt\(9),
	datac => \debaunce_KEY3|s_debounceCnt\(10),
	datad => \debaunce_KEY3|LessThan0~0_combout\,
	combout => \debaunce_KEY3|LessThan0~1_combout\);

-- Location: LCCOMB_X94_Y28_N18
\debaunce_KEY3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~3_combout\ = (\debaunce_KEY3|s_debounceCnt\(14) & (((\debaunce_KEY3|s_debounceCnt\(11) & \debaunce_KEY3|LessThan0~1_combout\)) # (!\debaunce_KEY3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(14),
	datab => \debaunce_KEY3|s_debounceCnt\(11),
	datac => \debaunce_KEY3|LessThan0~2_combout\,
	datad => \debaunce_KEY3|LessThan0~1_combout\,
	combout => \debaunce_KEY3|LessThan0~3_combout\);

-- Location: LCCOMB_X94_Y28_N16
\debaunce_KEY3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~4_combout\ = (\debaunce_KEY3|s_debounceCnt\(16)) # ((\debaunce_KEY3|s_debounceCnt\(15)) # ((\debaunce_KEY3|s_debounceCnt\(17)) # (\debaunce_KEY3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(16),
	datab => \debaunce_KEY3|s_debounceCnt\(15),
	datac => \debaunce_KEY3|s_debounceCnt\(17),
	datad => \debaunce_KEY3|LessThan0~3_combout\,
	combout => \debaunce_KEY3|LessThan0~4_combout\);

-- Location: LCCOMB_X94_Y28_N2
\debaunce_KEY3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|LessThan0~6_combout\ = ((\debaunce_KEY3|s_debounceCnt\(19) & (\debaunce_KEY3|s_debounceCnt\(18) & \debaunce_KEY3|LessThan0~4_combout\))) # (!\debaunce_KEY3|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(19),
	datab => \debaunce_KEY3|s_debounceCnt\(18),
	datac => \debaunce_KEY3|LessThan0~5_combout\,
	datad => \debaunce_KEY3|LessThan0~4_combout\,
	combout => \debaunce_KEY3|LessThan0~6_combout\);

-- Location: LCCOMB_X94_Y28_N20
\debaunce_KEY3|s_debounceCnt[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[21]~2_combout\ = (\debaunce_KEY3|s_dirtyIn~q\ & ((!\debaunce_KEY3|LessThan0~6_combout\) # (!\debaunce_KEY3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_dirtyIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt\(22),
	datad => \debaunce_KEY3|LessThan0~6_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[21]~2_combout\);

-- Location: LCCOMB_X95_Y28_N20
\debaunce_KEY3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~3_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~12_combout\) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|Add0~12_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~3_combout\);

-- Location: FF_X95_Y28_N21
\debaunce_KEY3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~3_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y28_N24
\debaunce_KEY3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~14_combout\ = (\debaunce_KEY3|s_debounceCnt\(7) & (\debaunce_KEY3|Add0~13\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(7) & (!\debaunce_KEY3|Add0~13\))
-- \debaunce_KEY3|Add0~15\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(7) & !\debaunce_KEY3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(7),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~13\,
	combout => \debaunce_KEY3|Add0~14_combout\,
	cout => \debaunce_KEY3|Add0~15\);

-- Location: LCCOMB_X95_Y28_N26
\debaunce_KEY3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~13_combout\ = (\debaunce_KEY3|Add0~14_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~14_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~13_combout\);

-- Location: FF_X95_Y28_N27
\debaunce_KEY3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~13_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y28_N26
\debaunce_KEY3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~16_combout\ = (\debaunce_KEY3|s_debounceCnt\(8) & ((GND) # (!\debaunce_KEY3|Add0~15\))) # (!\debaunce_KEY3|s_debounceCnt\(8) & (\debaunce_KEY3|Add0~15\ $ (GND)))
-- \debaunce_KEY3|Add0~17\ = CARRY((\debaunce_KEY3|s_debounceCnt\(8)) # (!\debaunce_KEY3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(8),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~15\,
	combout => \debaunce_KEY3|Add0~16_combout\,
	cout => \debaunce_KEY3|Add0~17\);

-- Location: LCCOMB_X94_Y28_N8
\debaunce_KEY3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~14_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~16_combout\) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|Add0~16_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~14_combout\);

-- Location: FF_X94_Y28_N9
\debaunce_KEY3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~14_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y28_N28
\debaunce_KEY3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~18_combout\ = (\debaunce_KEY3|s_debounceCnt\(9) & (\debaunce_KEY3|Add0~17\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(9) & (!\debaunce_KEY3|Add0~17\))
-- \debaunce_KEY3|Add0~19\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(9) & !\debaunce_KEY3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(9),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~17\,
	combout => \debaunce_KEY3|Add0~18_combout\,
	cout => \debaunce_KEY3|Add0~19\);

-- Location: LCCOMB_X95_Y28_N8
\debaunce_KEY3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~15_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~18_combout\) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|Add0~18_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y28_N9
\debaunce_KEY3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~15_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(9));

-- Location: LCCOMB_X97_Y28_N30
\debaunce_KEY3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~20_combout\ = (\debaunce_KEY3|s_debounceCnt\(10) & ((GND) # (!\debaunce_KEY3|Add0~19\))) # (!\debaunce_KEY3|s_debounceCnt\(10) & (\debaunce_KEY3|Add0~19\ $ (GND)))
-- \debaunce_KEY3|Add0~21\ = CARRY((\debaunce_KEY3|s_debounceCnt\(10)) # (!\debaunce_KEY3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(10),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~19\,
	combout => \debaunce_KEY3|Add0~20_combout\,
	cout => \debaunce_KEY3|Add0~21\);

-- Location: LCCOMB_X95_Y28_N10
\debaunce_KEY3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~16_combout\ = (\debaunce_KEY3|Add0~20_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|Add0~20_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~16_combout\);

-- Location: FF_X95_Y28_N11
\debaunce_KEY3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~16_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y27_N0
\debaunce_KEY3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~22_combout\ = (\debaunce_KEY3|s_debounceCnt\(11) & (\debaunce_KEY3|Add0~21\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(11) & (!\debaunce_KEY3|Add0~21\))
-- \debaunce_KEY3|Add0~23\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(11) & !\debaunce_KEY3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(11),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~21\,
	combout => \debaunce_KEY3|Add0~22_combout\,
	cout => \debaunce_KEY3|Add0~23\);

-- Location: LCCOMB_X96_Y28_N12
\debaunce_KEY3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~17_combout\ = (\debaunce_KEY3|s_debounceCnt[21]~2_combout\ & ((\debaunce_KEY3|Add0~22_combout\) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|Add0~22_combout\,
	datab => \debaunce_KEY3|s_previousIn~q\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~2_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~17_combout\);

-- Location: FF_X96_Y28_N13
\debaunce_KEY3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~17_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(11));

-- Location: LCCOMB_X94_Y28_N12
\debaunce_KEY3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~11_combout\ = (\debaunce_KEY3|Add0~24_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~24_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~11_combout\);

-- Location: FF_X94_Y28_N13
\debaunce_KEY3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~11_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y28_N6
\debaunce_KEY3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~3_combout\ = (!\debaunce_KEY3|s_debounceCnt\(12) & (!\debaunce_KEY3|s_debounceCnt\(20) & (!\debaunce_KEY3|s_debounceCnt\(13) & !\debaunce_KEY3|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(12),
	datab => \debaunce_KEY3|s_debounceCnt\(20),
	datac => \debaunce_KEY3|s_debounceCnt\(13),
	datad => \debaunce_KEY3|s_debounceCnt\(21),
	combout => \debaunce_KEY3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X96_Y28_N14
\debaunce_KEY3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~5_combout\ = (!\debaunce_KEY3|s_debounceCnt\(11) & (!\debaunce_KEY3|s_debounceCnt\(18) & (!\debaunce_KEY3|s_debounceCnt\(14) & !\debaunce_KEY3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(11),
	datab => \debaunce_KEY3|s_debounceCnt\(18),
	datac => \debaunce_KEY3|s_debounceCnt\(14),
	datad => \debaunce_KEY3|s_debounceCnt\(19),
	combout => \debaunce_KEY3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X95_Y28_N12
\debaunce_KEY3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~4_combout\ = (!\debaunce_KEY3|s_debounceCnt\(7) & (!\debaunce_KEY3|s_debounceCnt\(9) & (!\debaunce_KEY3|s_debounceCnt\(10) & !\debaunce_KEY3|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(7),
	datab => \debaunce_KEY3|s_debounceCnt\(9),
	datac => \debaunce_KEY3|s_debounceCnt\(10),
	datad => \debaunce_KEY3|s_debounceCnt\(8),
	combout => \debaunce_KEY3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X96_Y28_N18
\debaunce_KEY3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~2_combout\ = (!\debaunce_KEY3|s_debounceCnt\(16) & (!\debaunce_KEY3|s_debounceCnt\(6) & (!\debaunce_KEY3|s_debounceCnt\(17) & !\debaunce_KEY3|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(16),
	datab => \debaunce_KEY3|s_debounceCnt\(6),
	datac => \debaunce_KEY3|s_debounceCnt\(17),
	datad => \debaunce_KEY3|s_debounceCnt\(15),
	combout => \debaunce_KEY3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X96_Y28_N16
\debaunce_KEY3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~6_combout\ = (\debaunce_KEY3|s_pulsedOut~3_combout\ & (\debaunce_KEY3|s_pulsedOut~5_combout\ & (\debaunce_KEY3|s_pulsedOut~4_combout\ & \debaunce_KEY3|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_pulsedOut~3_combout\,
	datab => \debaunce_KEY3|s_pulsedOut~5_combout\,
	datac => \debaunce_KEY3|s_pulsedOut~4_combout\,
	datad => \debaunce_KEY3|s_pulsedOut~2_combout\,
	combout => \debaunce_KEY3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X96_Y28_N2
\debaunce_KEY3|s_debounceCnt[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[21]~29_combout\ = (\debaunce_KEY3|s_debounceCnt\(5)) # (((\debaunce_KEY3|s_debounceCnt\(0)) # (!\debaunce_KEY3|s_pulsedOut~6_combout\)) # (!\debaunce_KEY3|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(5),
	datab => \debaunce_KEY3|s_pulsedOut~7_combout\,
	datac => \debaunce_KEY3|s_debounceCnt\(0),
	datad => \debaunce_KEY3|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[21]~29_combout\);

-- Location: LCCOMB_X94_Y28_N14
\debaunce_KEY3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[22]~27_combout\ = (\debaunce_KEY3|s_debounceCnt\(22) & (((!\debaunce_KEY3|LessThan0~6_combout\)))) # (!\debaunce_KEY3|s_debounceCnt\(22) & (((\debaunce_KEY3|s_debounceCnt[21]~29_combout\)) # (!\debaunce_KEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(22),
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt[21]~29_combout\,
	datad => \debaunce_KEY3|LessThan0~6_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X97_Y27_N22
\debaunce_KEY3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~44_combout\ = \debaunce_KEY3|Add0~43\ $ (\debaunce_KEY3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debaunce_KEY3|s_debounceCnt\(22),
	cin => \debaunce_KEY3|Add0~43\,
	combout => \debaunce_KEY3|Add0~44_combout\);

-- Location: LCCOMB_X94_Y28_N26
\debaunce_KEY3|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[22]~28_combout\ = (\debaunce_KEY3|s_dirtyIn~q\ & (\debaunce_KEY3|s_debounceCnt[22]~27_combout\ & ((\debaunce_KEY3|Add0~44_combout\) # (!\debaunce_KEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_previousIn~q\,
	datab => \debaunce_KEY3|s_dirtyIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt[22]~27_combout\,
	datad => \debaunce_KEY3|Add0~44_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[22]~28_combout\);

-- Location: FF_X94_Y28_N27
\debaunce_KEY3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(22));

-- Location: LCCOMB_X94_Y28_N24
\debaunce_KEY3|s_debounceCnt[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt[21]~5_combout\ = (\debaunce_KEY3|s_dirtyIn~q\ & (\debaunce_KEY3|s_previousIn~q\ & ((!\debaunce_KEY3|LessThan0~6_combout\) # (!\debaunce_KEY3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(22),
	datab => \debaunce_KEY3|s_dirtyIn~q\,
	datac => \debaunce_KEY3|s_previousIn~q\,
	datad => \debaunce_KEY3|LessThan0~6_combout\,
	combout => \debaunce_KEY3|s_debounceCnt[21]~5_combout\);

-- Location: LCCOMB_X95_Y28_N28
\debaunce_KEY3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~26_combout\ = (\debaunce_KEY3|Add0~0_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~0_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~26_combout\);

-- Location: FF_X95_Y28_N29
\debaunce_KEY3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~26_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y28_N12
\debaunce_KEY3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~2_combout\ = (\debaunce_KEY3|s_debounceCnt\(1) & (\debaunce_KEY3|Add0~1\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(1) & (!\debaunce_KEY3|Add0~1\))
-- \debaunce_KEY3|Add0~3\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(1) & !\debaunce_KEY3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(1),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~1\,
	combout => \debaunce_KEY3|Add0~2_combout\,
	cout => \debaunce_KEY3|Add0~3\);

-- Location: LCCOMB_X95_Y28_N22
\debaunce_KEY3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~21_combout\ = (\debaunce_KEY3|Add0~2_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~2_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~21_combout\);

-- Location: FF_X95_Y28_N23
\debaunce_KEY3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~21_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y28_N14
\debaunce_KEY3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~4_combout\ = (\debaunce_KEY3|s_debounceCnt\(2) & ((GND) # (!\debaunce_KEY3|Add0~3\))) # (!\debaunce_KEY3|s_debounceCnt\(2) & (\debaunce_KEY3|Add0~3\ $ (GND)))
-- \debaunce_KEY3|Add0~5\ = CARRY((\debaunce_KEY3|s_debounceCnt\(2)) # (!\debaunce_KEY3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(2),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~3\,
	combout => \debaunce_KEY3|Add0~4_combout\,
	cout => \debaunce_KEY3|Add0~5\);

-- Location: LCCOMB_X95_Y28_N16
\debaunce_KEY3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~22_combout\ = (\debaunce_KEY3|Add0~4_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~4_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~22_combout\);

-- Location: FF_X95_Y28_N17
\debaunce_KEY3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~22_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y28_N16
\debaunce_KEY3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~6_combout\ = (\debaunce_KEY3|s_debounceCnt\(3) & (\debaunce_KEY3|Add0~5\ & VCC)) # (!\debaunce_KEY3|s_debounceCnt\(3) & (!\debaunce_KEY3|Add0~5\))
-- \debaunce_KEY3|Add0~7\ = CARRY((!\debaunce_KEY3|s_debounceCnt\(3) & !\debaunce_KEY3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(3),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~5\,
	combout => \debaunce_KEY3|Add0~6_combout\,
	cout => \debaunce_KEY3|Add0~7\);

-- Location: LCCOMB_X95_Y28_N30
\debaunce_KEY3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~23_combout\ = (\debaunce_KEY3|Add0~6_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|Add0~6_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~23_combout\);

-- Location: FF_X95_Y28_N31
\debaunce_KEY3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~23_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y28_N18
\debaunce_KEY3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|Add0~8_combout\ = (\debaunce_KEY3|s_debounceCnt\(4) & ((GND) # (!\debaunce_KEY3|Add0~7\))) # (!\debaunce_KEY3|s_debounceCnt\(4) & (\debaunce_KEY3|Add0~7\ $ (GND)))
-- \debaunce_KEY3|Add0~9\ = CARRY((\debaunce_KEY3|s_debounceCnt\(4)) # (!\debaunce_KEY3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debaunce_KEY3|s_debounceCnt\(4),
	datad => VCC,
	cin => \debaunce_KEY3|Add0~7\,
	combout => \debaunce_KEY3|Add0~8_combout\,
	cout => \debaunce_KEY3|Add0~9\);

-- Location: LCCOMB_X95_Y28_N0
\debaunce_KEY3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~24_combout\ = (\debaunce_KEY3|Add0~8_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~8_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~24_combout\);

-- Location: FF_X95_Y28_N1
\debaunce_KEY3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~24_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(4));

-- Location: LCCOMB_X95_Y28_N24
\debaunce_KEY3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_debounceCnt~25_combout\ = (\debaunce_KEY3|Add0~10_combout\ & \debaunce_KEY3|s_debounceCnt[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY3|Add0~10_combout\,
	datad => \debaunce_KEY3|s_debounceCnt[21]~5_combout\,
	combout => \debaunce_KEY3|s_debounceCnt~25_combout\);

-- Location: FF_X95_Y28_N25
\debaunce_KEY3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_debounceCnt~25_combout\,
	ena => \debaunce_KEY3|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y28_N28
\debaunce_KEY3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~9_combout\ = (!\debaunce_KEY3|s_debounceCnt\(22) & (\debaunce_KEY3|s_previousIn~q\ & (\debaunce_KEY3|s_debounceCnt\(0) & \debaunce_KEY3|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(22),
	datab => \debaunce_KEY3|s_previousIn~q\,
	datac => \debaunce_KEY3|s_debounceCnt\(0),
	datad => \debaunce_KEY3|s_dirtyIn~q\,
	combout => \debaunce_KEY3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X96_Y28_N20
\debaunce_KEY3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debaunce_KEY3|s_pulsedOut~10_combout\ = (!\debaunce_KEY3|s_debounceCnt\(5) & (\debaunce_KEY3|s_pulsedOut~7_combout\ & (\debaunce_KEY3|s_pulsedOut~9_combout\ & \debaunce_KEY3|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_debounceCnt\(5),
	datab => \debaunce_KEY3|s_pulsedOut~7_combout\,
	datac => \debaunce_KEY3|s_pulsedOut~9_combout\,
	datad => \debaunce_KEY3|s_pulsedOut~6_combout\,
	combout => \debaunce_KEY3|s_pulsedOut~10_combout\);

-- Location: FF_X96_Y28_N21
\debaunce_KEY3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debaunce_KEY3|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debaunce_KEY3|s_pulsedOut~q\);

-- Location: LCCOMB_X80_Y32_N2
\Cappuccino|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~13_combout\ = (\debaunce_KEY1|s_pulsedOut~q\) # ((\debaunce_KEY0|s_pulsedOut~q\) # ((\debaunce_KEY2|s_pulsedOut~q\) # (\debaunce_KEY3|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \debaunce_KEY0|s_pulsedOut~q\,
	datac => \debaunce_KEY2|s_pulsedOut~q\,
	datad => \debaunce_KEY3|s_pulsedOut~q\,
	combout => \Cappuccino|PS~13_combout\);

-- Location: LCCOMB_X79_Y31_N12
\cafe_curto|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~13_combout\ = (\product_select|PS.CC~q\ & ((\Cappuccino|PS~13_combout\) # (\cafe_curto|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS~13_combout\,
	datac => \cafe_curto|PS.E0~q\,
	datad => \product_select|PS.CC~q\,
	combout => \cafe_curto|PS~13_combout\);

-- Location: FF_X79_Y31_N13
\cafe_curto|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E0~q\);

-- Location: LCCOMB_X79_Y31_N18
\cafe_curto|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~9_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & !\cafe_curto|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \cafe_curto|PS.E0~q\,
	combout => \cafe_curto|PS~9_combout\);

-- Location: LCCOMB_X79_Y31_N16
\cafe_curto|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~10_combout\ = (\product_select|PS.CC~q\ & ((\cafe_curto|PS~9_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_curto|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \cafe_curto|PS~9_combout\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \product_select|PS.CC~q\,
	combout => \cafe_curto|PS~10_combout\);

-- Location: FF_X79_Y31_N17
\cafe_curto|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E1~q\);

-- Location: LCCOMB_X79_Y31_N28
\cafe_curto|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~11_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_curto|PS.E1~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (!\cafe_curto|PS.E0~q\ & (\debaunce_KEY1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E0~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \cafe_curto|PS.E1~q\,
	combout => \cafe_curto|PS~11_combout\);

-- Location: LCCOMB_X79_Y31_N6
\cafe_curto|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~12_combout\ = (\product_select|PS.CC~q\ & ((\cafe_curto|PS~11_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_curto|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \cafe_curto|PS~11_combout\,
	datac => \cafe_curto|PS.E2~q\,
	datad => \product_select|PS.CC~q\,
	combout => \cafe_curto|PS~12_combout\);

-- Location: FF_X79_Y31_N7
\cafe_curto|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E2~q\);

-- Location: LCCOMB_X79_Y31_N2
\cafe_curto|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~24_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_curto|PS.E2~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\debaunce_KEY1|s_pulsedOut~q\ & \cafe_curto|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E2~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \cafe_curto|PS.E1~q\,
	combout => \cafe_curto|PS~24_combout\);

-- Location: LCCOMB_X79_Y31_N14
\cafe_curto|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~25_combout\ = (\product_select|PS.CC~q\ & ((\cafe_curto|PS~24_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_curto|PS.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \cafe_curto|PS~24_combout\,
	datac => \cafe_curto|PS.E3~q\,
	datad => \product_select|PS.CC~q\,
	combout => \cafe_curto|PS~25_combout\);

-- Location: FF_X79_Y31_N15
\cafe_curto|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E3~q\);

-- Location: LCCOMB_X80_Y31_N8
\cafe_curto|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~21_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_curto|PS.E3~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_curto|PS.E2~q\ & \debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E3~q\,
	datab => \cafe_curto|PS.E2~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY1|s_pulsedOut~q\,
	combout => \cafe_curto|PS~21_combout\);

-- Location: LCCOMB_X80_Y32_N12
\Cappuccino|NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|NS~0_combout\ = (!\debaunce_KEY1|s_pulsedOut~q\ & (\debaunce_KEY2|s_pulsedOut~q\ & !\debaunce_KEY0|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY2|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \Cappuccino|NS~0_combout\);

-- Location: LCCOMB_X80_Y31_N2
\cafe_curto|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~22_combout\ = (\cafe_curto|PS~21_combout\) # ((!\cafe_curto|PS.E0~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E0~q\,
	datac => \cafe_curto|PS~21_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \cafe_curto|PS~22_combout\);

-- Location: LCCOMB_X80_Y31_N4
\cafe_curto|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~23_combout\ = (\product_select|PS.CC~q\ & ((\cafe_curto|PS~22_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_curto|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CC~q\,
	datab => \Cappuccino|PS~13_combout\,
	datac => \cafe_curto|PS.E4~q\,
	datad => \cafe_curto|PS~22_combout\,
	combout => \cafe_curto|PS~23_combout\);

-- Location: FF_X80_Y31_N5
\cafe_curto|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E4~q\);

-- Location: LCCOMB_X80_Y31_N6
\cafe_curto|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~14_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_curto|PS.E4~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_curto|PS.E3~q\ & ((\debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E3~q\,
	datab => \cafe_curto|PS.E4~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \cafe_curto|PS~14_combout\);

-- Location: LCCOMB_X80_Y31_N28
\cafe_curto|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~15_combout\ = (\cafe_curto|PS~14_combout\) # ((\cafe_curto|PS.E1~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS~14_combout\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \cafe_curto|PS~15_combout\);

-- Location: LCCOMB_X80_Y31_N26
\cafe_curto|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~16_combout\ = (\product_select|PS.CC~q\ & ((\cafe_curto|PS~15_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_curto|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CC~q\,
	datab => \Cappuccino|PS~13_combout\,
	datac => \cafe_curto|PS.E5~q\,
	datad => \cafe_curto|PS~15_combout\,
	combout => \cafe_curto|PS~16_combout\);

-- Location: FF_X80_Y31_N27
\cafe_curto|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E5~q\);

-- Location: LCCOMB_X80_Y31_N30
\Cappuccino|NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|NS~1_combout\ = (!\debaunce_KEY1|s_pulsedOut~q\ & (!\debaunce_KEY0|s_pulsedOut~q\ & ((\debaunce_KEY3|s_pulsedOut~q\) # (\debaunce_KEY2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_pulsedOut~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY2|s_pulsedOut~q\,
	combout => \Cappuccino|NS~1_combout\);

-- Location: LCCOMB_X80_Y31_N16
\cafe_curto|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~18_combout\ = (\Cappuccino|NS~1_combout\) # ((!\cafe_curto|PS.E2~q\ & !\cafe_curto|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_curto|PS.E2~q\,
	datac => \Cappuccino|NS~1_combout\,
	datad => \cafe_curto|PS.E3~q\,
	combout => \cafe_curto|PS~18_combout\);

-- Location: LCCOMB_X80_Y32_N30
\Cappuccino|NS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|NS~3_combout\ = (!\debaunce_KEY0|s_pulsedOut~q\ & ((\debaunce_KEY3|s_pulsedOut~q\) # ((\debaunce_KEY1|s_pulsedOut~q\) # (\debaunce_KEY2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY3|s_pulsedOut~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY2|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \Cappuccino|NS~3_combout\);

-- Location: LCCOMB_X80_Y31_N22
\cafe_curto|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~19_combout\ = (\cafe_curto|PS~18_combout\ & (\product_select|PS.CC~q\ & ((\Cappuccino|NS~3_combout\) # (!\cafe_curto|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E4~q\,
	datab => \cafe_curto|PS~18_combout\,
	datac => \Cappuccino|NS~3_combout\,
	datad => \product_select|PS.CC~q\,
	combout => \cafe_curto|PS~19_combout\);

-- Location: LCCOMB_X80_Y31_N0
\Cappuccino|NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|NS~2_combout\ = (!\debaunce_KEY2|s_pulsedOut~q\ & (!\debaunce_KEY1|s_pulsedOut~q\ & (!\debaunce_KEY0|s_pulsedOut~q\ & \debaunce_KEY3|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY2|s_pulsedOut~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY3|s_pulsedOut~q\,
	combout => \Cappuccino|NS~2_combout\);

-- Location: LCCOMB_X80_Y31_N18
\cafe_curto|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~17_combout\ = (\Cappuccino|NS~2_combout\) # ((\cafe_curto|PS.E0~q\ & !\cafe_curto|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E0~q\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \Cappuccino|NS~2_combout\,
	combout => \cafe_curto|PS~17_combout\);

-- Location: LCCOMB_X80_Y31_N12
\cafe_curto|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|PS~20_combout\ = (\cafe_curto|PS~19_combout\ & (\cafe_curto|PS~17_combout\ & ((\Cappuccino|PS~13_combout\) # (!\cafe_curto|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E5~q\,
	datab => \cafe_curto|PS~19_combout\,
	datac => \Cappuccino|PS~13_combout\,
	datad => \cafe_curto|PS~17_combout\,
	combout => \cafe_curto|PS~20_combout\);

-- Location: FF_X80_Y31_N13
\cafe_curto|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_curto|PS~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_curto|PS.E6~q\);

-- Location: LCCOMB_X80_Y31_N10
\cafe_curto|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|WideOr2~0_combout\ = (\cafe_curto|PS.E4~q\) # ((\cafe_curto|PS.E1~q\) # (\cafe_curto|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_curto|PS.E4~q\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \cafe_curto|PS.E6~q\,
	combout => \cafe_curto|WideOr2~0_combout\);

-- Location: LCCOMB_X82_Y32_N24
\multiplexer|mo[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo[2]~3_combout\ = (\encoder|sel\(0) & !\encoder|sel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|sel\(0),
	datad => \encoder|sel\(2),
	combout => \multiplexer|mo[2]~3_combout\);

-- Location: LCCOMB_X80_Y34_N24
\chocolate_quente|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~14_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS.E0~q\) # (\Cappuccino|PS~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E0~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \chocolate_quente|PS~14_combout\);

-- Location: FF_X80_Y34_N25
\chocolate_quente|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E0~q\);

-- Location: LCCOMB_X79_Y34_N14
\chocolate_quente|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~17_combout\ = (!\chocolate_quente|PS.E0~q\ & \debaunce_KEY0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E0~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~17_combout\);

-- Location: LCCOMB_X79_Y34_N4
\chocolate_quente|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~18_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~17_combout\) # ((\chocolate_quente|PS.E1~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \chocolate_quente|PS~17_combout\,
	datac => \chocolate_quente|PS.E1~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \chocolate_quente|PS~18_combout\);

-- Location: FF_X79_Y34_N5
\chocolate_quente|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E1~q\);

-- Location: LCCOMB_X79_Y34_N24
\chocolate_quente|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~19_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E1~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (!\chocolate_quente|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \chocolate_quente|PS.E0~q\,
	datac => \chocolate_quente|PS.E1~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~19_combout\);

-- Location: LCCOMB_X79_Y34_N6
\chocolate_quente|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~20_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~19_combout\) # ((\chocolate_quente|PS.E2~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \chocolate_quente|PS~19_combout\,
	datac => \chocolate_quente|PS.E2~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \chocolate_quente|PS~20_combout\);

-- Location: FF_X79_Y34_N7
\chocolate_quente|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E2~q\);

-- Location: LCCOMB_X79_Y34_N8
\chocolate_quente|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~15_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\chocolate_quente|PS.E2~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E1~q\ & \debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E2~q\,
	datab => \chocolate_quente|PS.E1~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~15_combout\);

-- Location: LCCOMB_X80_Y34_N18
\chocolate_quente|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~16_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~15_combout\) # ((\chocolate_quente|PS.E3~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS~15_combout\,
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E3~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \chocolate_quente|PS~16_combout\);

-- Location: FF_X80_Y34_N19
\chocolate_quente|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E3~q\);

-- Location: LCCOMB_X79_Y34_N26
\chocolate_quente|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~24_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\chocolate_quente|PS.E3~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\debaunce_KEY1|s_pulsedOut~q\ & \chocolate_quente|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E3~q\,
	datab => \debaunce_KEY0|s_pulsedOut~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \chocolate_quente|PS.E2~q\,
	combout => \chocolate_quente|PS~24_combout\);

-- Location: LCCOMB_X79_Y34_N20
\chocolate_quente|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~25_combout\ = (\chocolate_quente|PS~24_combout\) # ((!\chocolate_quente|PS.E0~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E0~q\,
	datac => \chocolate_quente|PS~24_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~25_combout\);

-- Location: LCCOMB_X79_Y34_N18
\chocolate_quente|PS~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~26_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~25_combout\) # ((!\Cappuccino|PS~13_combout\ & \chocolate_quente|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \Cappuccino|PS~13_combout\,
	datac => \chocolate_quente|PS.E4~q\,
	datad => \chocolate_quente|PS~25_combout\,
	combout => \chocolate_quente|PS~26_combout\);

-- Location: FF_X79_Y34_N19
\chocolate_quente|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E4~q\);

-- Location: LCCOMB_X79_Y34_N22
\chocolate_quente|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~21_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E4~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\chocolate_quente|PS.E3~q\ & ((\debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E3~q\,
	datab => \chocolate_quente|PS.E4~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~21_combout\);

-- Location: LCCOMB_X79_Y34_N16
\chocolate_quente|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~22_combout\ = (\chocolate_quente|PS~21_combout\) # ((\chocolate_quente|PS.E1~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E1~q\,
	datac => \chocolate_quente|PS~21_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~22_combout\);

-- Location: LCCOMB_X79_Y34_N12
\chocolate_quente|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~23_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~22_combout\) # ((!\Cappuccino|PS~13_combout\ & \chocolate_quente|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \Cappuccino|PS~13_combout\,
	datac => \chocolate_quente|PS.E5~q\,
	datad => \chocolate_quente|PS~22_combout\,
	combout => \chocolate_quente|PS~23_combout\);

-- Location: FF_X79_Y34_N13
\chocolate_quente|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E5~q\);

-- Location: LCCOMB_X81_Y34_N0
\chocolate_quente|PS~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~27_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E5~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\chocolate_quente|PS.E4~q\ & ((\debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E4~q\,
	datab => \chocolate_quente|PS.E5~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~27_combout\);

-- Location: LCCOMB_X80_Y34_N10
\chocolate_quente|PS~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~28_combout\ = (\chocolate_quente|PS~27_combout\) # ((\chocolate_quente|PS.E2~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E2~q\,
	datac => \chocolate_quente|PS~27_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~28_combout\);

-- Location: LCCOMB_X80_Y34_N26
\chocolate_quente|PS~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~29_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~28_combout\) # ((\chocolate_quente|PS.E6~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS~28_combout\,
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E6~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \chocolate_quente|PS~29_combout\);

-- Location: FF_X80_Y34_N27
\chocolate_quente|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E6~q\);

-- Location: LCCOMB_X81_Y34_N8
\chocolate_quente|PS~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~37_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E6~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (\chocolate_quente|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \chocolate_quente|PS.E5~q\,
	datac => \chocolate_quente|PS.E6~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \chocolate_quente|PS~37_combout\);

-- Location: LCCOMB_X81_Y34_N6
\chocolate_quente|PS~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~38_combout\ = (\chocolate_quente|PS~37_combout\) # ((\chocolate_quente|PS.E3~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E3~q\,
	datac => \chocolate_quente|PS~37_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~38_combout\);

-- Location: LCCOMB_X81_Y34_N18
\chocolate_quente|PS~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~39_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~38_combout\) # ((!\Cappuccino|PS~13_combout\ & \chocolate_quente|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E7~q\,
	datad => \chocolate_quente|PS~38_combout\,
	combout => \chocolate_quente|PS~39_combout\);

-- Location: FF_X81_Y34_N19
\chocolate_quente|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E7~q\);

-- Location: LCCOMB_X81_Y34_N16
\chocolate_quente|PS~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~40_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E7~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (\chocolate_quente|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \debaunce_KEY0|s_pulsedOut~q\,
	datac => \chocolate_quente|PS.E6~q\,
	datad => \chocolate_quente|PS.E7~q\,
	combout => \chocolate_quente|PS~40_combout\);

-- Location: LCCOMB_X81_Y34_N2
\chocolate_quente|PS~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~41_combout\ = (\chocolate_quente|PS~40_combout\) # ((\chocolate_quente|PS.E4~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS~40_combout\,
	datac => \chocolate_quente|PS.E4~q\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~41_combout\);

-- Location: LCCOMB_X81_Y34_N12
\chocolate_quente|PS~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~42_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~41_combout\) # ((!\Cappuccino|PS~13_combout\ & \chocolate_quente|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E8~q\,
	datad => \chocolate_quente|PS~41_combout\,
	combout => \chocolate_quente|PS~42_combout\);

-- Location: FF_X81_Y34_N13
\chocolate_quente|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E8~q\);

-- Location: LCCOMB_X81_Y34_N14
\chocolate_quente|PS~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~30_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\chocolate_quente|PS.E8~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (\chocolate_quente|PS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \chocolate_quente|PS.E7~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \chocolate_quente|PS.E8~q\,
	combout => \chocolate_quente|PS~30_combout\);

-- Location: LCCOMB_X81_Y34_N20
\chocolate_quente|PS~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~31_combout\ = (\chocolate_quente|PS~30_combout\) # ((\chocolate_quente|PS.E5~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E5~q\,
	datac => \chocolate_quente|PS~30_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \chocolate_quente|PS~31_combout\);

-- Location: LCCOMB_X81_Y34_N4
\chocolate_quente|PS~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~32_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS~31_combout\) # ((!\Cappuccino|PS~13_combout\ & \chocolate_quente|PS.E9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CQ~q\,
	datac => \chocolate_quente|PS.E9~q\,
	datad => \chocolate_quente|PS~31_combout\,
	combout => \chocolate_quente|PS~32_combout\);

-- Location: FF_X81_Y34_N5
\chocolate_quente|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E9~q\);

-- Location: LCCOMB_X80_Y34_N8
\chocolate_quente|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr3~0_combout\ = (!\chocolate_quente|PS.E9~q\ & (!\chocolate_quente|PS.E1~q\ & !\chocolate_quente|PS.E7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E9~q\,
	datac => \chocolate_quente|PS.E1~q\,
	datad => \chocolate_quente|PS.E7~q\,
	combout => \chocolate_quente|WideOr3~0_combout\);

-- Location: LCCOMB_X80_Y34_N30
\chocolate_quente|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr3~combout\ = (\chocolate_quente|PS.E6~q\) # ((\chocolate_quente|PS.E4~q\) # (!\chocolate_quente|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E6~q\,
	datab => \chocolate_quente|WideOr3~0_combout\,
	datac => \chocolate_quente|PS.E4~q\,
	combout => \chocolate_quente|WideOr3~combout\);

-- Location: LCCOMB_X81_Y31_N4
\cafe_longo|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~13_combout\ = (\product_select|PS.CL~q\ & ((\Cappuccino|PS~13_combout\) # (\cafe_longo|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E0~q\,
	combout => \cafe_longo|PS~13_combout\);

-- Location: FF_X81_Y31_N5
\cafe_longo|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E0~q\);

-- Location: LCCOMB_X82_Y31_N22
\cafe_longo|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~9_combout\ = (!\cafe_longo|PS.E0~q\ & \debaunce_KEY0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E0~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \cafe_longo|PS~9_combout\);

-- Location: LCCOMB_X81_Y31_N24
\cafe_longo|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~10_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS~9_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_longo|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E1~q\,
	datad => \cafe_longo|PS~9_combout\,
	combout => \cafe_longo|PS~10_combout\);

-- Location: FF_X81_Y31_N25
\cafe_longo|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E1~q\);

-- Location: LCCOMB_X82_Y31_N4
\cafe_longo|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~11_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_longo|PS.E1~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (!\cafe_longo|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \cafe_longo|PS.E0~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \cafe_longo|PS.E1~q\,
	combout => \cafe_longo|PS~11_combout\);

-- Location: LCCOMB_X81_Y31_N14
\cafe_longo|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~12_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS~11_combout\) # ((\cafe_longo|PS.E2~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS~11_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E2~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \cafe_longo|PS~12_combout\);

-- Location: FF_X81_Y31_N15
\cafe_longo|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E2~q\);

-- Location: LCCOMB_X82_Y31_N6
\cafe_longo|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~24_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_longo|PS.E2~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_longo|PS.E1~q\ & \debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E2~q\,
	datab => \cafe_longo|PS.E1~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY1|s_pulsedOut~q\,
	combout => \cafe_longo|PS~24_combout\);

-- Location: LCCOMB_X81_Y31_N8
\cafe_longo|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~25_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS~24_combout\) # ((\cafe_longo|PS.E3~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS~24_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E3~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \cafe_longo|PS~25_combout\);

-- Location: FF_X81_Y31_N9
\cafe_longo|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E3~q\);

-- Location: LCCOMB_X82_Y31_N24
\cafe_longo|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~21_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_longo|PS.E3~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_longo|PS.E2~q\ & ((\debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E2~q\,
	datab => \cafe_longo|PS.E3~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY1|s_pulsedOut~q\,
	combout => \cafe_longo|PS~21_combout\);

-- Location: LCCOMB_X81_Y31_N6
\cafe_longo|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~22_combout\ = (\cafe_longo|PS~21_combout\) # ((!\cafe_longo|PS.E0~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS~21_combout\,
	datac => \cafe_longo|PS.E0~q\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \cafe_longo|PS~22_combout\);

-- Location: LCCOMB_X81_Y31_N28
\cafe_longo|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~23_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS~22_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_longo|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E4~q\,
	datad => \cafe_longo|PS~22_combout\,
	combout => \cafe_longo|PS~23_combout\);

-- Location: FF_X81_Y31_N29
\cafe_longo|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E4~q\);

-- Location: LCCOMB_X82_Y31_N10
\cafe_longo|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~14_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\cafe_longo|PS.E4~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\cafe_longo|PS.E3~q\ & ((\debaunce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E3~q\,
	datab => \cafe_longo|PS.E4~q\,
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \debaunce_KEY1|s_pulsedOut~q\,
	combout => \cafe_longo|PS~14_combout\);

-- Location: LCCOMB_X81_Y31_N18
\cafe_longo|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~15_combout\ = (\cafe_longo|PS~14_combout\) # ((\cafe_longo|PS.E1~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E1~q\,
	datac => \cafe_longo|PS~14_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \cafe_longo|PS~15_combout\);

-- Location: LCCOMB_X81_Y31_N26
\cafe_longo|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~16_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS~15_combout\) # ((!\Cappuccino|PS~13_combout\ & \cafe_longo|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CL~q\,
	datac => \cafe_longo|PS.E5~q\,
	datad => \cafe_longo|PS~15_combout\,
	combout => \cafe_longo|PS~16_combout\);

-- Location: FF_X81_Y31_N27
\cafe_longo|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E5~q\);

-- Location: LCCOMB_X81_Y31_N20
\cafe_longo|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~17_combout\ = (\Cappuccino|NS~1_combout\) # ((!\cafe_longo|PS.E2~q\ & !\cafe_longo|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E2~q\,
	datac => \cafe_longo|PS.E3~q\,
	datad => \Cappuccino|NS~1_combout\,
	combout => \cafe_longo|PS~17_combout\);

-- Location: LCCOMB_X81_Y31_N22
\cafe_longo|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~18_combout\ = (\Cappuccino|NS~2_combout\) # ((\cafe_longo|PS.E0~q\ & !\cafe_longo|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E0~q\,
	datac => \Cappuccino|NS~2_combout\,
	datad => \cafe_longo|PS.E1~q\,
	combout => \cafe_longo|PS~18_combout\);

-- Location: LCCOMB_X81_Y31_N16
\cafe_longo|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~19_combout\ = (\cafe_longo|PS~18_combout\ & (\product_select|PS.CL~q\ & ((\Cappuccino|NS~3_combout\) # (!\cafe_longo|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS~18_combout\,
	datab => \cafe_longo|PS.E4~q\,
	datac => \product_select|PS.CL~q\,
	datad => \Cappuccino|NS~3_combout\,
	combout => \cafe_longo|PS~19_combout\);

-- Location: LCCOMB_X81_Y31_N12
\cafe_longo|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|PS~20_combout\ = (\cafe_longo|PS~17_combout\ & (\cafe_longo|PS~19_combout\ & ((\Cappuccino|PS~13_combout\) # (!\cafe_longo|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E5~q\,
	datab => \cafe_longo|PS~17_combout\,
	datac => \Cappuccino|PS~13_combout\,
	datad => \cafe_longo|PS~19_combout\,
	combout => \cafe_longo|PS~20_combout\);

-- Location: FF_X81_Y31_N13
\cafe_longo|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cafe_longo|PS~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cafe_longo|PS.E6~q\);

-- Location: LCCOMB_X81_Y31_N2
\cafe_longo|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|WideOr2~0_combout\ = (\cafe_longo|PS.E6~q\) # ((\cafe_longo|PS.E4~q\) # (\cafe_longo|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E6~q\,
	datab => \cafe_longo|PS.E4~q\,
	datad => \cafe_longo|PS.E1~q\,
	combout => \cafe_longo|WideOr2~0_combout\);

-- Location: LCCOMB_X81_Y32_N0
\multiplexer|mo[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo[2]~4_combout\ = (!\encoder|sel\(0) & ((!\encoder|sel\(2)) # (!\encoder|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|sel\(0),
	datac => \encoder|sel\(1),
	datad => \encoder|sel\(2),
	combout => \multiplexer|mo[2]~4_combout\);

-- Location: LCCOMB_X79_Y32_N24
\Cappuccino|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~14_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS.E0~q\) # (\Cappuccino|PS~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E0~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~14_combout\);

-- Location: FF_X79_Y32_N25
\Cappuccino|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E0~q\);

-- Location: LCCOMB_X79_Y32_N12
\Cappuccino|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~17_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & !\Cappuccino|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debaunce_KEY0|s_pulsedOut~q\,
	datad => \Cappuccino|PS.E0~q\,
	combout => \Cappuccino|PS~17_combout\);

-- Location: LCCOMB_X79_Y32_N8
\Cappuccino|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~18_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~17_combout\) # ((\Cappuccino|PS.E1~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~17_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E1~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~18_combout\);

-- Location: FF_X79_Y32_N9
\Cappuccino|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E1~q\);

-- Location: LCCOMB_X79_Y32_N22
\Cappuccino|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~15_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E1~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & ((!\Cappuccino|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \Cappuccino|PS.E1~q\,
	datad => \Cappuccino|PS.E0~q\,
	combout => \Cappuccino|PS~15_combout\);

-- Location: LCCOMB_X79_Y32_N18
\Cappuccino|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~16_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~15_combout\) # ((\Cappuccino|PS.E2~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~15_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E2~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~16_combout\);

-- Location: FF_X79_Y32_N19
\Cappuccino|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E2~q\);

-- Location: LCCOMB_X79_Y32_N10
\Cappuccino|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~22_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E2~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (\Cappuccino|PS.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~q\,
	datab => \debaunce_KEY1|s_pulsedOut~q\,
	datac => \Cappuccino|PS.E1~q\,
	datad => \Cappuccino|PS.E2~q\,
	combout => \Cappuccino|PS~22_combout\);

-- Location: LCCOMB_X79_Y32_N2
\Cappuccino|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~23_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~22_combout\) # ((\Cappuccino|PS.E3~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~22_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E3~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~23_combout\);

-- Location: FF_X79_Y32_N3
\Cappuccino|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E3~q\);

-- Location: LCCOMB_X79_Y32_N30
\Cappuccino|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~19_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E3~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\Cappuccino|PS.E2~q\ & (\debaunce_KEY1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~q\,
	datab => \Cappuccino|PS.E2~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \Cappuccino|PS.E3~q\,
	combout => \Cappuccino|PS~19_combout\);

-- Location: LCCOMB_X79_Y32_N28
\Cappuccino|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~20_combout\ = (\Cappuccino|PS~19_combout\) # ((\Cappuccino|NS~0_combout\ & !\Cappuccino|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~19_combout\,
	datac => \Cappuccino|NS~0_combout\,
	datad => \Cappuccino|PS.E0~q\,
	combout => \Cappuccino|PS~20_combout\);

-- Location: LCCOMB_X79_Y32_N16
\Cappuccino|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~21_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~20_combout\) # ((!\Cappuccino|PS~13_combout\ & \Cappuccino|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E4~q\,
	datad => \Cappuccino|PS~20_combout\,
	combout => \Cappuccino|PS~21_combout\);

-- Location: FF_X79_Y32_N17
\Cappuccino|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E4~q\);

-- Location: LCCOMB_X79_Y32_N20
\Cappuccino|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~24_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E4~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\Cappuccino|PS.E3~q\ & (\debaunce_KEY1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~q\,
	datab => \Cappuccino|PS.E3~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \Cappuccino|PS.E4~q\,
	combout => \Cappuccino|PS~24_combout\);

-- Location: LCCOMB_X79_Y32_N26
\Cappuccino|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~25_combout\ = (\Cappuccino|PS~24_combout\) # ((\Cappuccino|PS.E1~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E1~q\,
	datac => \Cappuccino|NS~0_combout\,
	datad => \Cappuccino|PS~24_combout\,
	combout => \Cappuccino|PS~25_combout\);

-- Location: LCCOMB_X79_Y32_N0
\Cappuccino|PS~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~26_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~25_combout\) # ((\Cappuccino|PS.E5~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~25_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E5~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~26_combout\);

-- Location: FF_X79_Y32_N1
\Cappuccino|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E5~q\);

-- Location: LCCOMB_X79_Y32_N4
\Cappuccino|PS~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~34_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (\Cappuccino|PS.E5~q\)) # (!\debaunce_KEY0|s_pulsedOut~q\ & (((\debaunce_KEY1|s_pulsedOut~q\ & \Cappuccino|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY0|s_pulsedOut~q\,
	datab => \Cappuccino|PS.E5~q\,
	datac => \debaunce_KEY1|s_pulsedOut~q\,
	datad => \Cappuccino|PS.E4~q\,
	combout => \Cappuccino|PS~34_combout\);

-- Location: LCCOMB_X79_Y32_N14
\Cappuccino|PS~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~35_combout\ = (\Cappuccino|PS~34_combout\) # ((\Cappuccino|PS.E2~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E2~q\,
	datac => \Cappuccino|NS~0_combout\,
	datad => \Cappuccino|PS~34_combout\,
	combout => \Cappuccino|PS~35_combout\);

-- Location: LCCOMB_X80_Y32_N20
\Cappuccino|PS~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~36_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~35_combout\) # ((!\Cappuccino|PS~13_combout\ & \Cappuccino|PS.E6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E6~q\,
	datad => \Cappuccino|PS~35_combout\,
	combout => \Cappuccino|PS~36_combout\);

-- Location: FF_X80_Y32_N21
\Cappuccino|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E6~q\);

-- Location: LCCOMB_X80_Y32_N10
\Cappuccino|PS~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~37_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E6~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & ((\Cappuccino|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \Cappuccino|PS.E6~q\,
	datac => \Cappuccino|PS.E5~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \Cappuccino|PS~37_combout\);

-- Location: LCCOMB_X80_Y32_N16
\Cappuccino|PS~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~38_combout\ = (\Cappuccino|PS~37_combout\) # ((\Cappuccino|PS.E3~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E3~q\,
	datac => \Cappuccino|PS~37_combout\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \Cappuccino|PS~38_combout\);

-- Location: LCCOMB_X80_Y32_N28
\Cappuccino|PS~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~39_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~38_combout\) # ((!\Cappuccino|PS~13_combout\ & \Cappuccino|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E7~q\,
	datad => \Cappuccino|PS~38_combout\,
	combout => \Cappuccino|PS~39_combout\);

-- Location: FF_X80_Y32_N29
\Cappuccino|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E7~q\);

-- Location: LCCOMB_X80_Y32_N0
\Cappuccino|PS~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~27_combout\ = (\debaunce_KEY0|s_pulsedOut~q\ & (((\Cappuccino|PS.E7~q\)))) # (!\debaunce_KEY0|s_pulsedOut~q\ & (\debaunce_KEY1|s_pulsedOut~q\ & (\Cappuccino|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debaunce_KEY1|s_pulsedOut~q\,
	datab => \Cappuccino|PS.E6~q\,
	datac => \Cappuccino|PS.E7~q\,
	datad => \debaunce_KEY0|s_pulsedOut~q\,
	combout => \Cappuccino|PS~27_combout\);

-- Location: LCCOMB_X80_Y32_N6
\Cappuccino|PS~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~28_combout\ = (\Cappuccino|PS~27_combout\) # ((\Cappuccino|PS.E4~q\ & \Cappuccino|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS~27_combout\,
	datac => \Cappuccino|PS.E4~q\,
	datad => \Cappuccino|NS~0_combout\,
	combout => \Cappuccino|PS~28_combout\);

-- Location: LCCOMB_X80_Y32_N4
\Cappuccino|PS~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~29_combout\ = (\product_select|PS.CP~q\ & ((\Cappuccino|PS~28_combout\) # ((\Cappuccino|PS.E8~q\ & !\Cappuccino|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~28_combout\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|PS.E8~q\,
	datad => \Cappuccino|PS~13_combout\,
	combout => \Cappuccino|PS~29_combout\);

-- Location: FF_X80_Y32_N5
\Cappuccino|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E8~q\);

-- Location: LCCOMB_X80_Y32_N18
\Cappuccino|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr3~0_combout\ = (!\Cappuccino|PS.E6~q\ & (!\Cappuccino|PS.E8~q\ & \Cappuccino|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E6~q\,
	datac => \Cappuccino|PS.E8~q\,
	datad => \Cappuccino|PS.E0~q\,
	combout => \Cappuccino|WideOr3~0_combout\);

-- Location: LCCOMB_X81_Y32_N26
\Cappuccino|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr3~combout\ = (\Cappuccino|PS.E5~q\) # ((\Cappuccino|PS.E3~q\) # (!\Cappuccino|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E5~q\,
	datac => \Cappuccino|PS.E3~q\,
	datad => \Cappuccino|WideOr3~0_combout\,
	combout => \Cappuccino|WideOr3~combout\);

-- Location: LCCOMB_X81_Y32_N28
\multiplexer|mo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~12_combout\ = (\multiplexer|mo[2]~4_combout\ & ((\multiplexer|mo[2]~5_combout\ & ((\Cappuccino|WideOr3~combout\))) # (!\multiplexer|mo[2]~5_combout\ & (!\cafe_longo|WideOr2~0_combout\)))) # (!\multiplexer|mo[2]~4_combout\ & 
-- (((\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|WideOr2~0_combout\,
	datab => \multiplexer|mo[2]~4_combout\,
	datac => \Cappuccino|WideOr3~combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~12_combout\);

-- Location: LCCOMB_X81_Y32_N6
\multiplexer|mo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~13_combout\ = (\multiplexer|mo[2]~3_combout\ & ((\multiplexer|mo~12_combout\ & ((\chocolate_quente|WideOr3~combout\))) # (!\multiplexer|mo~12_combout\ & (!\cafe_curto|WideOr2~0_combout\)))) # (!\multiplexer|mo[2]~3_combout\ & 
-- (((\multiplexer|mo~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|WideOr2~0_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \chocolate_quente|WideOr3~combout\,
	datad => \multiplexer|mo~12_combout\,
	combout => \multiplexer|mo~13_combout\);

-- Location: LCCOMB_X82_Y32_N8
\multiplexer|mo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~14_combout\ = (\multiplexer|mo~13_combout\ & ((\encoder|sel\(1)) # ((\multiplexer|mo[2]~5_combout\) # (\multiplexer|mo[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|sel\(1),
	datab => \multiplexer|mo[2]~5_combout\,
	datac => \multiplexer|mo~13_combout\,
	datad => \multiplexer|mo[2]~3_combout\,
	combout => \multiplexer|mo~14_combout\);

-- Location: FF_X82_Y32_N9
\multiplexer|mo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(2));

-- Location: LCCOMB_X82_Y32_N28
\multiplexer|mo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~0_combout\ = (\encoder|sel\(2) & ((\encoder|sel\(0)) # (\encoder|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|sel\(0),
	datac => \encoder|sel\(1),
	datad => \encoder|sel\(2),
	combout => \multiplexer|mo~0_combout\);

-- Location: FF_X82_Y32_N29
\multiplexer|mo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(6));

-- Location: LCCOMB_X80_Y34_N16
\chocolate_quente|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~13_combout\ = (\chocolate_quente|PS.E0~q\ & (!\chocolate_quente|PS.E1~q\ & (!\chocolate_quente|PS.E2~q\ & !\chocolate_quente|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E0~q\,
	datab => \chocolate_quente|PS.E1~q\,
	datac => \chocolate_quente|PS.E2~q\,
	datad => \chocolate_quente|PS.E3~q\,
	combout => \chocolate_quente|PS~13_combout\);

-- Location: LCCOMB_X79_Y32_N6
\Cappuccino|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~12_combout\ = (!\Cappuccino|PS.E2~q\ & (!\Cappuccino|PS.E1~q\ & \Cappuccino|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E2~q\,
	datac => \Cappuccino|PS.E1~q\,
	datad => \Cappuccino|PS.E0~q\,
	combout => \Cappuccino|PS~12_combout\);

-- Location: LCCOMB_X82_Y32_N10
\multiplexer|mo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~1_combout\ = (\encoder|sel\(2) & ((\encoder|sel\(1)) # ((\encoder|sel\(0)) # (!\Cappuccino|PS~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|sel\(1),
	datab => \encoder|sel\(0),
	datac => \Cappuccino|PS~12_combout\,
	datad => \encoder|sel\(2),
	combout => \multiplexer|mo~1_combout\);

-- Location: LCCOMB_X82_Y32_N2
\multiplexer|mo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~2_combout\ = (\multiplexer|mo~1_combout\) # ((!\chocolate_quente|PS~13_combout\ & (\encoder|sel\(0) & \encoder|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS~13_combout\,
	datab => \encoder|sel\(0),
	datac => \encoder|sel\(1),
	datad => \multiplexer|mo~1_combout\,
	combout => \multiplexer|mo~2_combout\);

-- Location: FF_X82_Y32_N3
\multiplexer|mo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(5));

-- Location: LCCOMB_X80_Y34_N0
\chocolate_quente|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr1~0_combout\ = (\chocolate_quente|PS.E6~q\) # (((\chocolate_quente|PS.E4~q\) # (\chocolate_quente|PS.E5~q\)) # (!\chocolate_quente|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E6~q\,
	datab => \chocolate_quente|PS.E0~q\,
	datac => \chocolate_quente|PS.E4~q\,
	datad => \chocolate_quente|PS.E5~q\,
	combout => \chocolate_quente|WideOr1~0_combout\);

-- Location: LCCOMB_X80_Y31_N24
\cafe_curto|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|WideOr7~0_combout\ = (\cafe_curto|PS.E2~q\) # ((\cafe_curto|PS.E1~q\) # (!\cafe_curto|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_curto|PS.E2~q\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \cafe_curto|PS.E0~q\,
	combout => \cafe_curto|WideOr7~0_combout\);

-- Location: LCCOMB_X81_Y32_N22
\Cappuccino|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr1~combout\ = (\Cappuccino|PS.E3~q\) # ((\Cappuccino|PS.E5~q\) # (\Cappuccino|PS.E4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E3~q\,
	datab => \Cappuccino|PS.E5~q\,
	datad => \Cappuccino|PS.E4~q\,
	combout => \Cappuccino|WideOr1~combout\);

-- Location: LCCOMB_X82_Y31_N20
\cafe_longo|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|WideOr7~0_combout\ = (\cafe_longo|PS.E2~q\) # ((\cafe_longo|PS.E1~q\) # (!\cafe_longo|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E2~q\,
	datac => \cafe_longo|PS.E0~q\,
	datad => \cafe_longo|PS.E1~q\,
	combout => \cafe_longo|WideOr7~0_combout\);

-- Location: LCCOMB_X81_Y32_N20
\multiplexer|mo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~6_combout\ = (\multiplexer|mo[2]~4_combout\ & ((\multiplexer|mo[2]~5_combout\ & (\Cappuccino|WideOr1~combout\)) # (!\multiplexer|mo[2]~5_combout\ & ((\cafe_longo|WideOr7~0_combout\))))) # (!\multiplexer|mo[2]~4_combout\ & 
-- (((\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|WideOr1~combout\,
	datab => \multiplexer|mo[2]~4_combout\,
	datac => \cafe_longo|WideOr7~0_combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~6_combout\);

-- Location: LCCOMB_X81_Y32_N14
\multiplexer|mo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~7_combout\ = (\multiplexer|mo[2]~3_combout\ & ((\multiplexer|mo~6_combout\ & (\chocolate_quente|WideOr1~0_combout\)) # (!\multiplexer|mo~6_combout\ & ((\cafe_curto|WideOr7~0_combout\))))) # (!\multiplexer|mo[2]~3_combout\ & 
-- (((\multiplexer|mo~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|WideOr1~0_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \cafe_curto|WideOr7~0_combout\,
	datad => \multiplexer|mo~6_combout\,
	combout => \multiplexer|mo~7_combout\);

-- Location: LCCOMB_X82_Y32_N12
\multiplexer|mo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~8_combout\ = (\multiplexer|mo~7_combout\ & ((\multiplexer|mo[2]~3_combout\) # ((\encoder|sel\(1)) # (\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo~7_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \encoder|sel\(1),
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~8_combout\);

-- Location: FF_X82_Y32_N13
\multiplexer|mo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(4));

-- Location: LCCOMB_X84_Y31_N4
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \multiplexer|mo\(4) $ (VCC)
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\multiplexer|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(4),
	datad => VCC,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X84_Y31_N6
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\multiplexer|mo\(5) & (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\multiplexer|mo\(5) & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\multiplexer|mo\(5) & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X84_Y31_N8
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\multiplexer|mo\(6) & (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\multiplexer|mo\(6) & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\multiplexer|mo\(6) & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X84_Y31_N10
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X84_Y31_N12
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\multiplexer|mo\(6) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X84_Y31_N14
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X84_Y31_N20
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\multiplexer|mo\(5) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(5),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X84_Y31_N18
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X84_Y31_N16
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\multiplexer|mo\(4) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(4),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X84_Y31_N2
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X80_Y31_N14
\cafe_curto|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|WideOr1~0_combout\ = (\cafe_curto|PS.E5~q\) # ((\cafe_curto|PS.E2~q\) # (\cafe_curto|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E5~q\,
	datac => \cafe_curto|PS.E2~q\,
	datad => \cafe_curto|PS.E6~q\,
	combout => \cafe_curto|WideOr1~0_combout\);

-- Location: LCCOMB_X80_Y34_N6
\chocolate_quente|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr2~0_combout\ = (!\chocolate_quente|PS.E3~q\ & \chocolate_quente|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chocolate_quente|PS.E3~q\,
	datad => \chocolate_quente|PS.E0~q\,
	combout => \chocolate_quente|WideOr2~0_combout\);

-- Location: LCCOMB_X81_Y34_N22
\chocolate_quente|PS~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~33_combout\ = (\Cappuccino|NS~1_combout\) # ((!\chocolate_quente|PS.E6~q\ & !\chocolate_quente|PS.E7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E6~q\,
	datac => \Cappuccino|NS~1_combout\,
	datad => \chocolate_quente|PS.E7~q\,
	combout => \chocolate_quente|PS~33_combout\);

-- Location: LCCOMB_X81_Y34_N28
\chocolate_quente|PS~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~34_combout\ = (\Cappuccino|NS~2_combout\) # ((!\chocolate_quente|PS.E4~q\ & (!\chocolate_quente|PS.E5~q\ & \chocolate_quente|PS~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E4~q\,
	datab => \chocolate_quente|PS.E5~q\,
	datac => \Cappuccino|NS~2_combout\,
	datad => \chocolate_quente|PS~13_combout\,
	combout => \chocolate_quente|PS~34_combout\);

-- Location: LCCOMB_X81_Y34_N10
\chocolate_quente|PS~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~35_combout\ = (\product_select|PS.CQ~q\ & (\chocolate_quente|PS~34_combout\ & ((\Cappuccino|NS~3_combout\) # (!\chocolate_quente|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E8~q\,
	datab => \Cappuccino|NS~3_combout\,
	datac => \product_select|PS.CQ~q\,
	datad => \chocolate_quente|PS~34_combout\,
	combout => \chocolate_quente|PS~35_combout\);

-- Location: LCCOMB_X81_Y34_N30
\chocolate_quente|PS~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|PS~36_combout\ = (\chocolate_quente|PS~33_combout\ & (\chocolate_quente|PS~35_combout\ & ((\Cappuccino|PS~13_combout\) # (!\chocolate_quente|PS.E9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \chocolate_quente|PS.E9~q\,
	datac => \chocolate_quente|PS~33_combout\,
	datad => \chocolate_quente|PS~35_combout\,
	combout => \chocolate_quente|PS~36_combout\);

-- Location: FF_X81_Y34_N31
\chocolate_quente|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \chocolate_quente|PS~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chocolate_quente|PS.E10~q\);

-- Location: LCCOMB_X81_Y34_N24
\chocolate_quente|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr2~combout\ = (\chocolate_quente|PS.E6~q\) # ((\chocolate_quente|PS.E9~q\) # ((\chocolate_quente|PS.E10~q\) # (!\chocolate_quente|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E6~q\,
	datab => \chocolate_quente|PS.E9~q\,
	datac => \chocolate_quente|WideOr2~0_combout\,
	datad => \chocolate_quente|PS.E10~q\,
	combout => \chocolate_quente|WideOr2~combout\);

-- Location: LCCOMB_X80_Y32_N22
\Cappuccino|PS~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~31_combout\ = (\Cappuccino|NS~2_combout\) # ((!\Cappuccino|PS.E3~q\ & (\Cappuccino|PS~12_combout\ & !\Cappuccino|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E3~q\,
	datab => \Cappuccino|PS~12_combout\,
	datac => \Cappuccino|PS.E4~q\,
	datad => \Cappuccino|NS~2_combout\,
	combout => \Cappuccino|PS~31_combout\);

-- Location: LCCOMB_X80_Y32_N8
\Cappuccino|PS~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~32_combout\ = (\product_select|PS.CP~q\ & (\Cappuccino|PS~31_combout\ & ((\Cappuccino|NS~3_combout\) # (!\Cappuccino|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E7~q\,
	datab => \product_select|PS.CP~q\,
	datac => \Cappuccino|NS~3_combout\,
	datad => \Cappuccino|PS~31_combout\,
	combout => \Cappuccino|PS~32_combout\);

-- Location: LCCOMB_X80_Y32_N24
\Cappuccino|PS~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~30_combout\ = (\Cappuccino|NS~1_combout\) # ((!\Cappuccino|PS.E5~q\ & !\Cappuccino|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cappuccino|PS.E5~q\,
	datac => \Cappuccino|NS~1_combout\,
	datad => \Cappuccino|PS.E6~q\,
	combout => \Cappuccino|PS~30_combout\);

-- Location: LCCOMB_X80_Y32_N14
\Cappuccino|PS~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|PS~33_combout\ = (\Cappuccino|PS~32_combout\ & (\Cappuccino|PS~30_combout\ & ((\Cappuccino|PS~13_combout\) # (!\Cappuccino|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS~13_combout\,
	datab => \Cappuccino|PS.E8~q\,
	datac => \Cappuccino|PS~32_combout\,
	datad => \Cappuccino|PS~30_combout\,
	combout => \Cappuccino|PS~33_combout\);

-- Location: FF_X80_Y32_N15
\Cappuccino|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Cappuccino|PS~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cappuccino|PS.E9~q\);

-- Location: LCCOMB_X81_Y32_N12
\Cappuccino|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr2~0_combout\ = (\Cappuccino|PS.E2~q\) # ((\Cappuccino|PS.E8~q\) # ((\Cappuccino|PS.E5~q\) # (\Cappuccino|PS.E9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E2~q\,
	datab => \Cappuccino|PS.E8~q\,
	datac => \Cappuccino|PS.E5~q\,
	datad => \Cappuccino|PS.E9~q\,
	combout => \Cappuccino|WideOr2~0_combout\);

-- Location: LCCOMB_X81_Y31_N10
\cafe_longo|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|WideOr1~0_combout\ = (\cafe_longo|PS.E5~q\) # ((\cafe_longo|PS.E2~q\) # (\cafe_longo|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|PS.E5~q\,
	datac => \cafe_longo|PS.E2~q\,
	datad => \cafe_longo|PS.E6~q\,
	combout => \cafe_longo|WideOr1~0_combout\);

-- Location: LCCOMB_X81_Y32_N18
\multiplexer|mo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~9_combout\ = (\multiplexer|mo[2]~4_combout\ & ((\multiplexer|mo[2]~5_combout\ & (!\Cappuccino|WideOr2~0_combout\)) # (!\multiplexer|mo[2]~5_combout\ & ((!\cafe_longo|WideOr1~0_combout\))))) # (!\multiplexer|mo[2]~4_combout\ & 
-- (((\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|WideOr2~0_combout\,
	datab => \multiplexer|mo[2]~4_combout\,
	datac => \cafe_longo|WideOr1~0_combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~9_combout\);

-- Location: LCCOMB_X81_Y32_N4
\multiplexer|mo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~10_combout\ = (\multiplexer|mo[2]~3_combout\ & ((\multiplexer|mo~9_combout\ & ((!\chocolate_quente|WideOr2~combout\))) # (!\multiplexer|mo~9_combout\ & (!\cafe_curto|WideOr1~0_combout\)))) # (!\multiplexer|mo[2]~3_combout\ & 
-- (((\multiplexer|mo~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|WideOr1~0_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \chocolate_quente|WideOr2~combout\,
	datad => \multiplexer|mo~9_combout\,
	combout => \multiplexer|mo~10_combout\);

-- Location: LCCOMB_X82_Y32_N14
\multiplexer|mo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~11_combout\ = (\multiplexer|mo~10_combout\ & ((\encoder|sel\(1)) # ((\multiplexer|mo[2]~3_combout\) # (\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|sel\(1),
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \multiplexer|mo~10_combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~11_combout\);

-- Location: FF_X82_Y32_N15
\multiplexer|mo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(3));

-- Location: LCCOMB_X85_Y31_N20
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\multiplexer|mo\(3) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(3),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X85_Y31_N26
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\multiplexer|mo\(3) & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(3),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X84_Y31_N22
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datad => VCC,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X84_Y31_N24
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X84_Y31_N26
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X84_Y31_N28
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X84_Y31_N30
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y31_N12
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\multiplexer|mo\(2) & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(2),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X86_Y31_N2
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\multiplexer|mo\(2) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(2),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X86_Y31_N14
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X85_Y31_N16
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\multiplexer|mo\(6))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \multiplexer|mo\(6),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X86_Y31_N8
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X85_Y31_N0
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X85_Y31_N18
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\multiplexer|mo\(5))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X85_Y31_N8
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\multiplexer|mo\(4))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \multiplexer|mo\(4),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X85_Y31_N30
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X85_Y31_N12
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \multiplexer|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \multiplexer|mo\(3),
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X85_Y31_N6
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X86_Y31_N16
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X86_Y31_N18
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X86_Y31_N20
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X86_Y31_N22
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X86_Y31_N24
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X86_Y31_N0
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X86_Y31_N10
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X86_Y31_N30
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X85_Y31_N28
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X86_Y31_N4
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\);

-- Location: LCCOMB_X85_Y31_N14
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X86_Y31_N6
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\);

-- Location: LCCOMB_X85_Y31_N10
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\multiplexer|mo\(3)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \multiplexer|mo\(3),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X86_Y31_N28
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\);

-- Location: LCCOMB_X86_Y31_N26
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ = (\multiplexer|mo\(2) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(2),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\);

-- Location: LCCOMB_X79_Y31_N0
\cafe_curto|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|WideOr3~0_combout\ = ((\cafe_curto|PS.E3~q\) # (\cafe_curto|PS.E4~q\)) # (!\cafe_curto|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E0~q\,
	datac => \cafe_curto|PS.E3~q\,
	datad => \cafe_curto|PS.E4~q\,
	combout => \cafe_curto|WideOr3~0_combout\);

-- Location: LCCOMB_X81_Y34_N26
\chocolate_quente|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr4~combout\ = (\chocolate_quente|PS.E4~q\) # ((\chocolate_quente|PS.E7~q\) # ((\chocolate_quente|PS.E8~q\) # (!\chocolate_quente|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E4~q\,
	datab => \chocolate_quente|PS.E7~q\,
	datac => \chocolate_quente|WideOr2~0_combout\,
	datad => \chocolate_quente|PS.E8~q\,
	combout => \chocolate_quente|WideOr4~combout\);

-- Location: LCCOMB_X81_Y31_N30
\cafe_longo|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|WideOr3~0_combout\ = (\cafe_longo|PS.E3~q\) # ((\cafe_longo|PS.E4~q\) # (!\cafe_longo|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E3~q\,
	datac => \cafe_longo|PS.E0~q\,
	datad => \cafe_longo|PS.E4~q\,
	combout => \cafe_longo|WideOr3~0_combout\);

-- Location: LCCOMB_X81_Y32_N8
\Cappuccino|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr4~0_combout\ = (\Cappuccino|PS.E2~q\) # ((\Cappuccino|PS.E7~q\) # ((\Cappuccino|PS.E3~q\) # (\Cappuccino|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E2~q\,
	datab => \Cappuccino|PS.E7~q\,
	datac => \Cappuccino|PS.E3~q\,
	datad => \Cappuccino|PS.E6~q\,
	combout => \Cappuccino|WideOr4~0_combout\);

-- Location: LCCOMB_X81_Y32_N2
\multiplexer|mo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~15_combout\ = (\multiplexer|mo[2]~4_combout\ & ((\multiplexer|mo[2]~5_combout\ & ((\Cappuccino|WideOr4~0_combout\))) # (!\multiplexer|mo[2]~5_combout\ & (\cafe_longo|WideOr3~0_combout\)))) # (!\multiplexer|mo[2]~4_combout\ & 
-- (((\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|WideOr3~0_combout\,
	datab => \multiplexer|mo[2]~4_combout\,
	datac => \Cappuccino|WideOr4~0_combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~15_combout\);

-- Location: LCCOMB_X81_Y32_N16
\multiplexer|mo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~16_combout\ = (\multiplexer|mo[2]~3_combout\ & ((\multiplexer|mo~15_combout\ & ((\chocolate_quente|WideOr4~combout\))) # (!\multiplexer|mo~15_combout\ & (\cafe_curto|WideOr3~0_combout\)))) # (!\multiplexer|mo[2]~3_combout\ & 
-- (((\multiplexer|mo~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|WideOr3~0_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \chocolate_quente|WideOr4~combout\,
	datad => \multiplexer|mo~15_combout\,
	combout => \multiplexer|mo~16_combout\);

-- Location: LCCOMB_X82_Y32_N22
\multiplexer|mo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~17_combout\ = (\multiplexer|mo~16_combout\ & ((\encoder|sel\(1)) # ((\multiplexer|mo[2]~3_combout\) # (\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|sel\(1),
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \multiplexer|mo~16_combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~17_combout\);

-- Location: FF_X82_Y32_N23
\multiplexer|mo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(1));

-- Location: LCCOMB_X85_Y31_N4
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ = (\multiplexer|mo\(1) & \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(1),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\);

-- Location: LCCOMB_X85_Y31_N22
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ = (\multiplexer|mo\(1) & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(1),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X87_Y31_N8
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => VCC,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X87_Y31_N10
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X87_Y31_N12
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\)))))
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X87_Y31_N14
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X87_Y31_N16
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X87_Y31_N18
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X87_Y31_N20
\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X87_Y31_N30
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\) # 
-- ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\);

-- Location: LCCOMB_X87_Y31_N2
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\);

-- Location: LCCOMB_X80_Y31_N20
\cafe_curto|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_curto|WideOr4~0_combout\ = (\cafe_curto|PS.E5~q\) # ((\cafe_curto|PS.E1~q\) # (\cafe_curto|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|PS.E5~q\,
	datac => \cafe_curto|PS.E1~q\,
	datad => \cafe_curto|PS.E3~q\,
	combout => \cafe_curto|WideOr4~0_combout\);

-- Location: LCCOMB_X80_Y34_N12
\chocolate_quente|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \chocolate_quente|WideOr5~combout\ = (\chocolate_quente|PS.E5~q\) # ((\chocolate_quente|PS.E3~q\) # (!\chocolate_quente|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chocolate_quente|PS.E5~q\,
	datac => \chocolate_quente|WideOr3~0_combout\,
	datad => \chocolate_quente|PS.E3~q\,
	combout => \chocolate_quente|WideOr5~combout\);

-- Location: LCCOMB_X81_Y31_N0
\cafe_longo|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cafe_longo|WideOr4~0_combout\ = (\cafe_longo|PS.E3~q\) # ((\cafe_longo|PS.E5~q\) # (\cafe_longo|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cafe_longo|PS.E3~q\,
	datac => \cafe_longo|PS.E5~q\,
	datad => \cafe_longo|PS.E1~q\,
	combout => \cafe_longo|WideOr4~0_combout\);

-- Location: LCCOMB_X81_Y32_N30
\Cappuccino|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cappuccino|WideOr5~combout\ = (\Cappuccino|PS.E2~q\) # ((\Cappuccino|PS.E4~q\) # (!\Cappuccino|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cappuccino|PS.E2~q\,
	datab => \Cappuccino|PS.E4~q\,
	datad => \Cappuccino|WideOr3~0_combout\,
	combout => \Cappuccino|WideOr5~combout\);

-- Location: LCCOMB_X81_Y32_N24
\multiplexer|mo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~18_combout\ = (\multiplexer|mo[2]~4_combout\ & ((\multiplexer|mo[2]~5_combout\ & ((\Cappuccino|WideOr5~combout\))) # (!\multiplexer|mo[2]~5_combout\ & (\cafe_longo|WideOr4~0_combout\)))) # (!\multiplexer|mo[2]~4_combout\ & 
-- (((\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_longo|WideOr4~0_combout\,
	datab => \multiplexer|mo[2]~4_combout\,
	datac => \Cappuccino|WideOr5~combout\,
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~18_combout\);

-- Location: LCCOMB_X81_Y32_N10
\multiplexer|mo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~19_combout\ = (\multiplexer|mo[2]~3_combout\ & ((\multiplexer|mo~18_combout\ & ((\chocolate_quente|WideOr5~combout\))) # (!\multiplexer|mo~18_combout\ & (\cafe_curto|WideOr4~0_combout\)))) # (!\multiplexer|mo[2]~3_combout\ & 
-- (((\multiplexer|mo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cafe_curto|WideOr4~0_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \chocolate_quente|WideOr5~combout\,
	datad => \multiplexer|mo~18_combout\,
	combout => \multiplexer|mo~19_combout\);

-- Location: LCCOMB_X82_Y32_N0
\multiplexer|mo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer|mo~20_combout\ = (\multiplexer|mo~19_combout\ & ((\multiplexer|mo[2]~3_combout\) # ((\encoder|sel\(1)) # (\multiplexer|mo[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo~19_combout\,
	datab => \multiplexer|mo[2]~3_combout\,
	datac => \encoder|sel\(1),
	datad => \multiplexer|mo[2]~5_combout\,
	combout => \multiplexer|mo~20_combout\);

-- Location: FF_X82_Y32_N1
\multiplexer|mo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \multiplexer|mo~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplexer|mo\(0));

-- Location: LCCOMB_X87_Y31_N4
\bin7seg_money1hex0|decOut_n[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~3_combout\ = (\multiplexer|mo\(0) & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\multiplexer|mo\(1))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datab => \multiplexer|mo\(0),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~3_combout\);

-- Location: LCCOMB_X87_Y31_N24
\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\multiplexer|mo\(1))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\);

-- Location: LCCOMB_X88_Y35_N20
\bin7seg_money1hex0|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~5_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (\product_select|EnableBin~combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datac => \product_select|EnableBin~combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	combout => \bin7seg_money1hex0|decOut_n~5_combout\);

-- Location: LCCOMB_X87_Y31_N22
\bin7seg_money1hex0|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~4_combout\ = (\multiplexer|mo\(0)) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\multiplexer|mo\(1))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datab => \multiplexer|mo\(0),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin7seg_money1hex0|decOut_n~4_combout\);

-- Location: LCCOMB_X88_Y35_N18
\bin7seg_money1hex0|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~6_combout\ = (!\multiplexer|mo\(0) & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	combout => \bin7seg_money1hex0|decOut_n~6_combout\);

-- Location: LCCOMB_X87_Y35_N20
\bin7seg_money1hex0|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~7_combout\ = (\product_select|EnableBin~combout\ & (!\bin7seg_money1hex0|decOut_n~6_combout\ & ((\bin7seg_money1hex0|decOut_n~4_combout\) # (!\bin7seg_money1hex0|decOut_n~5_combout\)))) # (!\product_select|EnableBin~combout\ & 
-- ((\bin7seg_money1hex0|decOut_n~4_combout\) # ((!\bin7seg_money1hex0|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|EnableBin~combout\,
	datab => \bin7seg_money1hex0|decOut_n~4_combout\,
	datac => \bin7seg_money1hex0|decOut_n~5_combout\,
	datad => \bin7seg_money1hex0|decOut_n~6_combout\,
	combout => \bin7seg_money1hex0|decOut_n~7_combout\);

-- Location: LCCOMB_X87_Y35_N6
\bin7seg_money1hex0|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~8_combout\ = (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & (\bin7seg_money1hex0|decOut_n~7_combout\ & ((\multiplexer|mo\(0)) # (!\bin7seg_money1hex0|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datac => \bin7seg_money1hex0|decOut_n~5_combout\,
	datad => \bin7seg_money1hex0|decOut_n~7_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X87_Y35_N16
\bin7seg_money1hex0|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~9_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & ((\bin7seg_money1hex0|decOut_n[0]~3_combout\) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & \bin7seg_money1hex0|decOut_n[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datab => \bin7seg_money1hex0|decOut_n[0]~3_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datad => \bin7seg_money1hex0|decOut_n[0]~8_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X87_Y35_N26
\bin7seg_money1hex0|decOut_n[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~39_combout\ = (\multiplexer|mo\(0) & (((!\product_select|EnableBin~combout\)) # (!\bin7seg_money1hex0|decOut_n~6_combout\))) # (!\multiplexer|mo\(0) & (!\bin7seg_money1hex0|decOut_n~5_combout\ & 
-- ((!\product_select|EnableBin~combout\) # (!\bin7seg_money1hex0|decOut_n~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \bin7seg_money1hex0|decOut_n~6_combout\,
	datac => \bin7seg_money1hex0|decOut_n~5_combout\,
	datad => \product_select|EnableBin~combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~39_combout\);

-- Location: LCCOMB_X87_Y31_N0
\bin7seg_money1hex0|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~2_combout\ = (!\multiplexer|mo\(0) & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\multiplexer|mo\(1))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datab => \multiplexer|mo\(0),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin7seg_money1hex0|decOut_n~2_combout\);

-- Location: LCCOMB_X87_Y35_N18
\bin7seg_money1hex0|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~11_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & ((\bin7seg_money1hex0|decOut_n[0]~9_combout\ & (\bin7seg_money1hex0|decOut_n[0]~39_combout\)) # 
-- (!\bin7seg_money1hex0|decOut_n[0]~9_combout\ & ((\bin7seg_money1hex0|decOut_n~2_combout\))))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (\bin7seg_money1hex0|decOut_n[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datab => \bin7seg_money1hex0|decOut_n[0]~9_combout\,
	datac => \bin7seg_money1hex0|decOut_n[0]~39_combout\,
	datad => \bin7seg_money1hex0|decOut_n~2_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X87_Y35_N8
\bin7seg_money1hex0|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~12_combout\ = (\bin7seg_money1hex0|decOut_n[0]~11_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex0|decOut_n[0]~11_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X87_Y31_N6
\bin7seg_money1hex0|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~13_combout\ = \multiplexer|mo\(0) $ (((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\multiplexer|mo\(1))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datab => \multiplexer|mo\(0),
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X88_Y35_N24
\bin7seg_money1hex0|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~10_combout\ = (!\bin7seg_money1hex0|decOut_n~6_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex0|decOut_n~6_combout\,
	combout => \bin7seg_money1hex0|decOut_n~10_combout\);

-- Location: LCCOMB_X87_Y35_N2
\bin7seg_money1hex0|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~16_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & (((\bin7seg_money1hex0|decOut_n~10_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & 
-- ((\bin7seg_money1hex0|decOut_n~5_combout\ & (!\multiplexer|mo\(0))) # (!\bin7seg_money1hex0|decOut_n~5_combout\ & ((\bin7seg_money1hex0|decOut_n~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datac => \bin7seg_money1hex0|decOut_n~5_combout\,
	datad => \bin7seg_money1hex0|decOut_n~10_combout\,
	combout => \bin7seg_money1hex0|decOut_n~16_combout\);

-- Location: LCCOMB_X87_Y35_N10
\bin7seg_money1hex0|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~14_combout\ = (!\multiplexer|mo\(0) & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & ((\bin7seg_money1hex0|decOut_n~5_combout\) # (\bin7seg_money1hex0|decOut_n~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datac => \bin7seg_money1hex0|decOut_n~5_combout\,
	datad => \bin7seg_money1hex0|decOut_n~10_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X87_Y35_N0
\bin7seg_money1hex0|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[1]~15_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & ((\bin7seg_money1hex0|decOut_n[0]~3_combout\) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & \bin7seg_money1hex0|decOut_n[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datab => \bin7seg_money1hex0|decOut_n[0]~3_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datad => \bin7seg_money1hex0|decOut_n[0]~14_combout\,
	combout => \bin7seg_money1hex0|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X87_Y35_N24
\bin7seg_money1hex0|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[1]~17_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & ((\bin7seg_money1hex0|decOut_n[1]~15_combout\ & ((\bin7seg_money1hex0|decOut_n~16_combout\))) # 
-- (!\bin7seg_money1hex0|decOut_n[1]~15_combout\ & (\bin7seg_money1hex0|decOut_n[0]~13_combout\)))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (((\bin7seg_money1hex0|decOut_n[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex0|decOut_n[0]~13_combout\,
	datab => \bin7seg_money1hex0|decOut_n~16_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datad => \bin7seg_money1hex0|decOut_n[1]~15_combout\,
	combout => \bin7seg_money1hex0|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X88_Y35_N14
\bin7seg_money1hex0|decOut_n[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[1]~18_combout\ = (\bin7seg_money1hex0|decOut_n[1]~17_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex0|decOut_n[1]~17_combout\,
	combout => \bin7seg_money1hex0|decOut_n[1]~18_combout\);

-- Location: LCCOMB_X87_Y35_N30
\bin7seg_money1hex0|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~21_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	combout => \bin7seg_money1hex0|decOut_n~21_combout\);

-- Location: LCCOMB_X87_Y35_N14
\bin7seg_money1hex0|decOut_n[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[5]~19_combout\ = (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	combout => \bin7seg_money1hex0|decOut_n[5]~19_combout\);

-- Location: LCCOMB_X87_Y35_N12
\bin7seg_money1hex0|decOut_n[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[2]~20_combout\ = (!\multiplexer|mo\(0) & (\bin7seg_money1hex0|decOut_n[5]~19_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\) # (\bin7seg_money1hex0|decOut_n~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datac => \bin7seg_money1hex0|decOut_n[5]~19_combout\,
	datad => \bin7seg_money1hex0|decOut_n~16_combout\,
	combout => \bin7seg_money1hex0|decOut_n[2]~20_combout\);

-- Location: LCCOMB_X87_Y35_N4
\bin7seg_money1hex0|decOut_n[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[2]~22_combout\ = ((\bin7seg_money1hex0|decOut_n[2]~20_combout\) # ((\bin7seg_money1hex0|decOut_n~16_combout\ & \bin7seg_money1hex0|decOut_n~21_combout\))) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|EnableBin~combout\,
	datab => \bin7seg_money1hex0|decOut_n~16_combout\,
	datac => \bin7seg_money1hex0|decOut_n~21_combout\,
	datad => \bin7seg_money1hex0|decOut_n[2]~20_combout\,
	combout => \bin7seg_money1hex0|decOut_n[2]~22_combout\);

-- Location: LCCOMB_X88_Y35_N22
\bin7seg_money1hex0|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[3]~28_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (\multiplexer|mo\(0))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\))))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ & 
-- (\multiplexer|mo\(0) & (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ $ (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	combout => \bin7seg_money1hex0|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X88_Y35_N28
\bin7seg_money1hex0|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n~23_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ $ (((\multiplexer|mo\(0) & 
-- \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\))))) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (!\multiplexer|mo\(0) & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & !\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	combout => \bin7seg_money1hex0|decOut_n~23_combout\);

-- Location: LCCOMB_X88_Y35_N26
\bin7seg_money1hex0|decOut_n[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[0]~24_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (((!\bin7seg_money1hex0|decOut_n~23_combout\)) # (!\product_select|EnableBin~combout\))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (((!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datab => \product_select|EnableBin~combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => \bin7seg_money1hex0|decOut_n~23_combout\,
	combout => \bin7seg_money1hex0|decOut_n[0]~24_combout\);

-- Location: LCCOMB_X88_Y35_N4
\bin7seg_money1hex0|decOut_n[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[3]~25_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (\bin7seg_money1hex0|decOut_n[0]~24_combout\)) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & 
-- ((\bin7seg_money1hex0|decOut_n~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \bin7seg_money1hex0|decOut_n[0]~24_combout\,
	datad => \bin7seg_money1hex0|decOut_n~7_combout\,
	combout => \bin7seg_money1hex0|decOut_n[3]~25_combout\);

-- Location: LCCOMB_X88_Y35_N30
\bin7seg_money1hex0|decOut_n[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[3]~26_combout\ = (\multiplexer|mo\(0) & ((\bin7seg_money1hex0|decOut_n~23_combout\))) # (!\multiplexer|mo\(0) & (\bin7seg_money1hex0|decOut_n[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7seg_money1hex0|decOut_n[3]~25_combout\,
	datac => \multiplexer|mo\(0),
	datad => \bin7seg_money1hex0|decOut_n~23_combout\,
	combout => \bin7seg_money1hex0|decOut_n[3]~26_combout\);

-- Location: LCCOMB_X88_Y35_N16
\bin7seg_money1hex0|decOut_n[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[3]~27_combout\ = (\multiplexer|mo\(0) & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\) # ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & 
-- !\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\)))) # (!\multiplexer|mo\(0) & (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ $ (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(0),
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	combout => \bin7seg_money1hex0|decOut_n[3]~27_combout\);

-- Location: LCCOMB_X88_Y35_N0
\bin7seg_money1hex0|decOut_n[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[3]~29_combout\ = ((\bin7seg_money1hex0|decOut_n[3]~26_combout\ & ((!\bin7seg_money1hex0|decOut_n[3]~27_combout\))) # (!\bin7seg_money1hex0|decOut_n[3]~26_combout\ & (\bin7seg_money1hex0|decOut_n[3]~28_combout\))) # 
-- (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex0|decOut_n[3]~28_combout\,
	datab => \product_select|EnableBin~combout\,
	datac => \bin7seg_money1hex0|decOut_n[3]~26_combout\,
	datad => \bin7seg_money1hex0|decOut_n[3]~27_combout\,
	combout => \bin7seg_money1hex0|decOut_n[3]~29_combout\);

-- Location: LCCOMB_X88_Y35_N12
\bin7seg_money1hex0|decOut_n[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[4]~31_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & (\bin7seg_money1hex0|decOut_n[0]~24_combout\)) # (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & 
-- ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex0|decOut_n[0]~24_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	combout => \bin7seg_money1hex0|decOut_n[4]~31_combout\);

-- Location: LCCOMB_X88_Y35_N6
\bin7seg_money1hex0|decOut_n[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[4]~30_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (((\multiplexer|mo\(0) & \bin7seg_money1hex0|decOut_n~23_combout\)))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (\bin7seg_money1hex0|decOut_n~7_combout\ & (!\multiplexer|mo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datab => \bin7seg_money1hex0|decOut_n~7_combout\,
	datac => \multiplexer|mo\(0),
	datad => \bin7seg_money1hex0|decOut_n~23_combout\,
	combout => \bin7seg_money1hex0|decOut_n[4]~30_combout\);

-- Location: LCCOMB_X88_Y35_N2
\bin7seg_money1hex0|decOut_n[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[4]~32_combout\ = (\bin7seg_money1hex0|decOut_n[4]~31_combout\ & ((\multiplexer|mo\(0) & ((!\bin7seg_money1hex0|decOut_n[4]~30_combout\))) # (!\multiplexer|mo\(0) & 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)))) # (!\bin7seg_money1hex0|decOut_n[4]~31_combout\ & ((\bin7seg_money1hex0|decOut_n[4]~30_combout\ & 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\)) # (!\bin7seg_money1hex0|decOut_n[4]~30_combout\ & ((\multiplexer|mo\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex0|decOut_n[4]~31_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datac => \multiplexer|mo\(0),
	datad => \bin7seg_money1hex0|decOut_n[4]~30_combout\,
	combout => \bin7seg_money1hex0|decOut_n[4]~32_combout\);

-- Location: LCCOMB_X88_Y35_N8
\bin7seg_money1hex0|decOut_n[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[4]~33_combout\ = (\bin7seg_money1hex0|decOut_n[4]~32_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex0|decOut_n[4]~32_combout\,
	combout => \bin7seg_money1hex0|decOut_n[4]~33_combout\);

-- Location: LCCOMB_X87_Y35_N22
\bin7seg_money1hex0|decOut_n[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[5]~34_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & ((\bin7seg_money1hex0|decOut_n[0]~39_combout\))) # 
-- (!\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\ & (\bin7seg_money1hex0|decOut_n[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datab => \bin7seg_money1hex0|decOut_n[0]~3_combout\,
	datac => \bin7seg_money1hex0|decOut_n[0]~39_combout\,
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	combout => \bin7seg_money1hex0|decOut_n[5]~34_combout\);

-- Location: LCCOMB_X88_Y35_N10
\bin7seg_money1hex0|decOut_n[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[5]~35_combout\ = (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\) # ((\bin7seg_money1hex0|decOut_n~10_combout\ & ((\multiplexer|mo\(0)) # (!\bin7seg_money1hex0|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datab => \bin7seg_money1hex0|decOut_n~5_combout\,
	datac => \multiplexer|mo\(0),
	datad => \bin7seg_money1hex0|decOut_n~10_combout\,
	combout => \bin7seg_money1hex0|decOut_n[5]~35_combout\);

-- Location: LCCOMB_X87_Y35_N28
\bin7seg_money1hex0|decOut_n[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[5]~36_combout\ = (\bin7seg_money1hex0|decOut_n[5]~34_combout\) # (((\bin7seg_money1hex0|decOut_n[5]~19_combout\ & \bin7seg_money1hex0|decOut_n[5]~35_combout\)) # (!\product_select|EnableBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex0|decOut_n[5]~34_combout\,
	datab => \bin7seg_money1hex0|decOut_n[5]~19_combout\,
	datac => \bin7seg_money1hex0|decOut_n[5]~35_combout\,
	datad => \product_select|EnableBin~combout\,
	combout => \bin7seg_money1hex0|decOut_n[5]~36_combout\);

-- Location: LCCOMB_X87_Y31_N28
\bin7seg_money1hex0|decOut_n[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[6]~37_combout\ = (\multiplexer|mo\(0) & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\) # (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ $ 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\)))) # (!\multiplexer|mo\(0) & ((\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\) # 
-- (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\ $ (\BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[44]~61_combout\,
	datab => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datac => \multiplexer|mo\(0),
	datad => \BinarytoBCD1|Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	combout => \bin7seg_money1hex0|decOut_n[6]~37_combout\);

-- Location: LCCOMB_X87_Y31_N26
\bin7seg_money1hex0|decOut_n[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex0|decOut_n[6]~38_combout\ = (\product_select|EnableBin~combout\ & !\bin7seg_money1hex0|decOut_n[6]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex0|decOut_n[6]~37_combout\,
	combout => \bin7seg_money1hex0|decOut_n[6]~38_combout\);

-- Location: LCCOMB_X86_Y32_N12
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \multiplexer|mo\(4) $ (VCC)
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\multiplexer|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(4),
	datad => VCC,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X86_Y32_N14
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\multiplexer|mo\(5) & (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\multiplexer|mo\(5) & 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\multiplexer|mo\(5) & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(5),
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X86_Y32_N16
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\multiplexer|mo\(6) & (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\multiplexer|mo\(6) & 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\multiplexer|mo\(6) & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X86_Y32_N18
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X87_Y30_N0
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\multiplexer|mo\(6) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(6),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X86_Y32_N24
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X86_Y32_N22
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X86_Y32_N0
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\multiplexer|mo\(5) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(5),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X86_Y32_N30
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X86_Y32_N20
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\multiplexer|mo\(4) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(4),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X85_Y32_N0
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\multiplexer|mo\(3) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(3),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X85_Y30_N16
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\multiplexer|mo\(3) & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(3),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X86_Y32_N2
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X86_Y32_N4
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X86_Y32_N6
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X86_Y32_N8
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y32_N10
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y32_N26
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\multiplexer|mo\(5)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \multiplexer|mo\(5),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X85_Y32_N2
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X85_Y32_N12
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X86_Y32_N26
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\multiplexer|mo\(4))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(4),
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X85_Y32_N30
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\multiplexer|mo\(3) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(3),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X86_Y32_N28
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X85_Y32_N10
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\multiplexer|mo\(2) & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(2),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X85_Y32_N28
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\multiplexer|mo\(2) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(2),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X85_Y32_N14
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X85_Y32_N16
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X85_Y32_N18
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))))
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X85_Y32_N20
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y32_N22
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y32_N24
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X85_Y30_N14
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X85_Y30_N4
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X85_Y30_N20
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\multiplexer|mo\(3)))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \multiplexer|mo\(3),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X85_Y30_N10
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\multiplexer|mo\(2) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(2),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X85_Y30_N0
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X85_Y30_N12
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\multiplexer|mo\(1) & !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(1),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X85_Y30_N18
\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\multiplexer|mo\(1) & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(1),
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X85_Y30_N22
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datad => VCC,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X85_Y30_N24
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X85_Y30_N26
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X85_Y30_N28
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y30_N30
\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y32_N4
\bin7seg_money1hex1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~6_combout\ = ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \product_select|EnableBin~combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin7seg_money1hex1|decOut_n~6_combout\);

-- Location: LCCOMB_X88_Y30_N16
\bin7seg_money1hex1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~7_combout\ = (\bin7seg_money1hex1|decOut_n~6_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin7seg_money1hex1|decOut_n~6_combout\,
	combout => \bin7seg_money1hex1|decOut_n~7_combout\);

-- Location: LCCOMB_X88_Y32_N16
\bin7seg_money1hex1|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~8_combout\ = (\multiplexer|mo\(1) & \multiplexer|mo\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(2),
	combout => \bin7seg_money1hex1|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X88_Y32_N10
\bin7seg_money1hex1|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~9_combout\ = (\multiplexer|mo\(3) & ((\multiplexer|mo\(4) & (\bin7seg_money1hex1|decOut_n~7_combout\)) # (!\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n[0]~8_combout\))))) # (!\multiplexer|mo\(3) & 
-- (((\multiplexer|mo\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~7_combout\,
	datab => \multiplexer|mo\(3),
	datac => \multiplexer|mo\(4),
	datad => \bin7seg_money1hex1|decOut_n[0]~8_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X88_Y32_N12
\bin7seg_money1hex1|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~10_combout\ = (\multiplexer|mo\(4) & (!\multiplexer|mo\(1) & (!\multiplexer|mo\(2) & !\multiplexer|mo\(3)))) # (!\multiplexer|mo\(4) & (((\multiplexer|mo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datab => \multiplexer|mo\(2),
	datac => \multiplexer|mo\(4),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X88_Y32_N14
\bin7seg_money1hex1|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~11_combout\ = (!\multiplexer|mo\(2) & !\multiplexer|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X88_Y30_N2
\bin7seg_money1hex1|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[2]~12_combout\ = ((!\multiplexer|mo\(2) & !\multiplexer|mo\(1))) # (!\multiplexer|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(2),
	datab => \multiplexer|mo\(1),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X88_Y32_N20
\bin7seg_money1hex1|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~13_combout\ = (\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n[0]~11_combout\)))) # (!\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n~7_combout\) # ((!\bin7seg_money1hex1|decOut_n[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~7_combout\,
	datab => \bin7seg_money1hex1|decOut_n[0]~11_combout\,
	datac => \multiplexer|mo\(4),
	datad => \bin7seg_money1hex1|decOut_n[2]~12_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X88_Y32_N4
\bin7seg_money1hex1|decOut_n[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~56_combout\ = (\multiplexer|mo\(6) & (((\multiplexer|mo\(5))))) # (!\multiplexer|mo\(6) & ((\multiplexer|mo\(5) & (\bin7seg_money1hex1|decOut_n[0]~10_combout\)) # (!\multiplexer|mo\(5) & 
-- ((\bin7seg_money1hex1|decOut_n[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~10_combout\,
	datab => \multiplexer|mo\(6),
	datac => \multiplexer|mo\(5),
	datad => \bin7seg_money1hex1|decOut_n[0]~13_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~56_combout\);

-- Location: LCCOMB_X88_Y32_N18
\bin7seg_money1hex1|decOut_n[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~57_combout\ = ((\bin7seg_money1hex1|decOut_n[0]~56_combout\ & ((\bin7seg_money1hex1|decOut_n[0]~9_combout\) # (!\multiplexer|mo\(6))))) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~9_combout\,
	datab => \multiplexer|mo\(6),
	datac => \bin7seg_money1hex1|decOut_n[0]~56_combout\,
	datad => \product_select|EnableBin~combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~57_combout\);

-- Location: LCCOMB_X87_Y30_N30
\bin7seg_money1hex1|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~17_combout\ = (\multiplexer|mo\(1) & ((\multiplexer|mo\(2)) # (!\multiplexer|mo\(6)))) # (!\multiplexer|mo\(1) & (\multiplexer|mo\(2) & !\multiplexer|mo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(6),
	combout => \bin7seg_money1hex1|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X87_Y30_N16
\bin7seg_money1hex1|decOut_n[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~51_combout\ = (\multiplexer|mo\(5) & ((\multiplexer|mo\(4)) # ((\multiplexer|mo\(2) & \multiplexer|mo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datab => \multiplexer|mo\(4),
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(1),
	combout => \bin7seg_money1hex1|decOut_n[1]~51_combout\);

-- Location: LCCOMB_X87_Y30_N26
\bin7seg_money1hex1|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~19_combout\ = (\multiplexer|mo\(6) & ((\multiplexer|mo\(3)) # ((\bin7seg_money1hex1|decOut_n[1]~17_combout\ & !\bin7seg_money1hex1|decOut_n[1]~51_combout\)))) # (!\multiplexer|mo\(6) & 
-- ((\bin7seg_money1hex1|decOut_n[1]~17_combout\ & (\multiplexer|mo\(3) & !\bin7seg_money1hex1|decOut_n[1]~51_combout\)) # (!\bin7seg_money1hex1|decOut_n[1]~17_combout\ & (!\multiplexer|mo\(3) & \bin7seg_money1hex1|decOut_n[1]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[1]~17_combout\,
	datab => \multiplexer|mo\(6),
	datac => \multiplexer|mo\(3),
	datad => \bin7seg_money1hex1|decOut_n[1]~51_combout\,
	combout => \bin7seg_money1hex1|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X87_Y30_N4
\bin7seg_money1hex1|decOut_n[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~18_combout\ = (\bin7seg_money1hex1|decOut_n[1]~17_combout\ & (((\bin7seg_money1hex1|decOut_n[1]~51_combout\)))) # (!\bin7seg_money1hex1|decOut_n[1]~17_combout\ & ((\multiplexer|mo\(3) & 
-- ((\bin7seg_money1hex1|decOut_n[1]~51_combout\))) # (!\multiplexer|mo\(3) & (\multiplexer|mo\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[1]~17_combout\,
	datab => \multiplexer|mo\(6),
	datac => \multiplexer|mo\(3),
	datad => \bin7seg_money1hex1|decOut_n[1]~51_combout\,
	combout => \bin7seg_money1hex1|decOut_n[1]~18_combout\);

-- Location: LCCOMB_X85_Y32_N8
\bin7seg_money1hex1|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~14_combout\ = ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|EnableBin~combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin7seg_money1hex1|decOut_n~14_combout\);

-- Location: LCCOMB_X87_Y30_N14
\bin7seg_money1hex1|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~15_combout\ = (\bin7seg_money1hex1|decOut_n~14_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin7seg_money1hex1|decOut_n~14_combout\,
	combout => \bin7seg_money1hex1|decOut_n~15_combout\);

-- Location: LCCOMB_X87_Y30_N28
\bin7seg_money1hex1|decOut_n[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~16_combout\ = \multiplexer|mo\(5) $ (\multiplexer|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(5),
	datad => \multiplexer|mo\(4),
	combout => \bin7seg_money1hex1|decOut_n[1]~16_combout\);

-- Location: LCCOMB_X87_Y30_N8
\bin7seg_money1hex1|decOut_n[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~20_combout\ = (\bin7seg_money1hex1|decOut_n[1]~19_combout\ & (\bin7seg_money1hex1|decOut_n[1]~18_combout\ & ((\bin7seg_money1hex1|decOut_n~15_combout\) # (\bin7seg_money1hex1|decOut_n[1]~16_combout\)))) # 
-- (!\bin7seg_money1hex1|decOut_n[1]~19_combout\ & (!\bin7seg_money1hex1|decOut_n[1]~16_combout\ & ((\bin7seg_money1hex1|decOut_n[1]~18_combout\) # (\bin7seg_money1hex1|decOut_n~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[1]~19_combout\,
	datab => \bin7seg_money1hex1|decOut_n[1]~18_combout\,
	datac => \bin7seg_money1hex1|decOut_n~15_combout\,
	datad => \bin7seg_money1hex1|decOut_n[1]~16_combout\,
	combout => \bin7seg_money1hex1|decOut_n[1]~20_combout\);

-- Location: LCCOMB_X114_Y30_N4
\bin7seg_money1hex1|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[1]~21_combout\ = (\bin7seg_money1hex1|decOut_n[1]~20_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex1|decOut_n[1]~20_combout\,
	combout => \bin7seg_money1hex1|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X87_Y30_N18
\bin7seg_money1hex1|decOut_n[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[2]~22_combout\ = (\multiplexer|mo\(3) & (\multiplexer|mo\(4) & (\multiplexer|mo\(5) & \multiplexer|mo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(3),
	datab => \multiplexer|mo\(4),
	datac => \multiplexer|mo\(5),
	datad => \multiplexer|mo\(6),
	combout => \bin7seg_money1hex1|decOut_n[2]~22_combout\);

-- Location: LCCOMB_X87_Y30_N24
\bin7seg_money1hex1|decOut_n[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[2]~23_combout\ = ((\bin7seg_money1hex1|decOut_n[2]~22_combout\ & ((\bin7seg_money1hex1|decOut_n~14_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \product_select|EnableBin~combout\,
	datac => \bin7seg_money1hex1|decOut_n~14_combout\,
	datad => \bin7seg_money1hex1|decOut_n[2]~22_combout\,
	combout => \bin7seg_money1hex1|decOut_n[2]~23_combout\);

-- Location: LCCOMB_X88_Y32_N30
\bin7seg_money1hex1|decOut_n[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~24_combout\ = (\multiplexer|mo\(2) & ((!\multiplexer|mo\(3)) # (!\multiplexer|mo\(1)))) # (!\multiplexer|mo\(2) & ((\multiplexer|mo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~24_combout\);

-- Location: LCCOMB_X88_Y30_N12
\bin7seg_money1hex1|decOut_n[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[2]~25_combout\ = (\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n[0]~24_combout\)))) # (!\multiplexer|mo\(4) & (\bin7seg_money1hex1|decOut_n~15_combout\ & (\bin7seg_money1hex1|decOut_n[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~15_combout\,
	datab => \bin7seg_money1hex1|decOut_n[2]~12_combout\,
	datac => \bin7seg_money1hex1|decOut_n[0]~24_combout\,
	datad => \multiplexer|mo\(4),
	combout => \bin7seg_money1hex1|decOut_n[2]~25_combout\);

-- Location: LCCOMB_X87_Y30_N10
\bin7seg_money1hex1|decOut_n[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[2]~52_combout\ = (\bin7seg_money1hex1|decOut_n[2]~23_combout\) # ((!\multiplexer|mo\(5) & (\bin7seg_money1hex1|decOut_n[2]~25_combout\ & !\multiplexer|mo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datab => \bin7seg_money1hex1|decOut_n[2]~23_combout\,
	datac => \bin7seg_money1hex1|decOut_n[2]~25_combout\,
	datad => \multiplexer|mo\(6),
	combout => \bin7seg_money1hex1|decOut_n[2]~52_combout\);

-- Location: LCCOMB_X88_Y30_N30
\bin7seg_money1hex1|decOut_n[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~26_combout\ = (!\multiplexer|mo\(4) & ((\multiplexer|mo\(3)) # ((\multiplexer|mo\(2) & \multiplexer|mo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(2),
	datab => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(4),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~26_combout\);

-- Location: LCCOMB_X85_Y30_N6
\bin7seg_money1hex1|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~28_combout\ = (((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin7seg_money1hex1|decOut_n~28_combout\);

-- Location: LCCOMB_X85_Y32_N6
\bin7seg_money1hex1|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~27_combout\ = (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin7seg_money1hex1|decOut_n~27_combout\);

-- Location: LCCOMB_X88_Y32_N24
\bin7seg_money1hex1|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n~29_combout\ = (\bin7seg_money1hex1|decOut_n~27_combout\) # (((\bin7seg_money1hex1|decOut_n~28_combout\ & \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\product_select|EnableBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~28_combout\,
	datab => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin7seg_money1hex1|decOut_n~27_combout\,
	datad => \product_select|EnableBin~combout\,
	combout => \bin7seg_money1hex1|decOut_n~29_combout\);

-- Location: LCCOMB_X88_Y32_N2
\bin7seg_money1hex1|decOut_n[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~30_combout\ = (\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n[0]~11_combout\)))) # (!\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n~29_combout\)) # (!\bin7seg_money1hex1|decOut_n[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[2]~12_combout\,
	datab => \bin7seg_money1hex1|decOut_n[0]~11_combout\,
	datac => \multiplexer|mo\(4),
	datad => \bin7seg_money1hex1|decOut_n~29_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~30_combout\);

-- Location: LCCOMB_X88_Y32_N8
\bin7seg_money1hex1|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[3]~31_combout\ = (\multiplexer|mo\(6) & (((\multiplexer|mo\(5))))) # (!\multiplexer|mo\(6) & ((\multiplexer|mo\(5) & (\bin7seg_money1hex1|decOut_n[0]~10_combout\)) # (!\multiplexer|mo\(5) & 
-- ((\bin7seg_money1hex1|decOut_n[0]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~10_combout\,
	datab => \multiplexer|mo\(6),
	datac => \multiplexer|mo\(5),
	datad => \bin7seg_money1hex1|decOut_n[0]~30_combout\,
	combout => \bin7seg_money1hex1|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X88_Y32_N22
\bin7seg_money1hex1|decOut_n[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~53_combout\ = (\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n~29_combout\)))) # (!\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n[0]~24_combout\) # ((\bin7seg_money1hex1|decOut_n~29_combout\ & 
-- \multiplexer|mo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~24_combout\,
	datab => \bin7seg_money1hex1|decOut_n~29_combout\,
	datac => \multiplexer|mo\(4),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~53_combout\);

-- Location: LCCOMB_X88_Y32_N26
\bin7seg_money1hex1|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[3]~33_combout\ = (\bin7seg_money1hex1|decOut_n[3]~31_combout\ & (((\bin7seg_money1hex1|decOut_n[0]~53_combout\) # (!\multiplexer|mo\(6))))) # (!\bin7seg_money1hex1|decOut_n[3]~31_combout\ & 
-- (\bin7seg_money1hex1|decOut_n[0]~26_combout\ & ((\multiplexer|mo\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~26_combout\,
	datab => \bin7seg_money1hex1|decOut_n[3]~31_combout\,
	datac => \bin7seg_money1hex1|decOut_n[0]~53_combout\,
	datad => \multiplexer|mo\(6),
	combout => \bin7seg_money1hex1|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X88_Y32_N0
\bin7seg_money1hex1|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[3]~34_combout\ = (\bin7seg_money1hex1|decOut_n[3]~33_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[3]~33_combout\,
	datad => \product_select|EnableBin~combout\,
	combout => \bin7seg_money1hex1|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X88_Y30_N8
\bin7seg_money1hex1|decOut_n[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~37_combout\ = (\multiplexer|mo\(4) & ((\multiplexer|mo\(2) & (\multiplexer|mo\(1) & \multiplexer|mo\(3))) # (!\multiplexer|mo\(2) & ((!\multiplexer|mo\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(2),
	datab => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(4),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~37_combout\);

-- Location: LCCOMB_X88_Y30_N14
\bin7seg_money1hex1|decOut_n[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~38_combout\ = (\bin7seg_money1hex1|decOut_n[0]~37_combout\) # ((!\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n~29_combout\) # (!\bin7seg_money1hex1|decOut_n[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~29_combout\,
	datab => \multiplexer|mo\(4),
	datac => \bin7seg_money1hex1|decOut_n[0]~37_combout\,
	datad => \bin7seg_money1hex1|decOut_n[2]~12_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~38_combout\);

-- Location: LCCOMB_X88_Y30_N10
\bin7seg_money1hex1|decOut_n[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~36_combout\ = ((!\multiplexer|mo\(4)) # (!\multiplexer|mo\(2))) # (!\multiplexer|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplexer|mo\(3),
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(4),
	combout => \bin7seg_money1hex1|decOut_n[0]~36_combout\);

-- Location: LCCOMB_X88_Y30_N24
\bin7seg_money1hex1|decOut_n[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[4]~39_combout\ = (\multiplexer|mo\(6) & (((\multiplexer|mo\(5))))) # (!\multiplexer|mo\(6) & ((\multiplexer|mo\(5) & ((\bin7seg_money1hex1|decOut_n[0]~36_combout\))) # (!\multiplexer|mo\(5) & 
-- (\bin7seg_money1hex1|decOut_n[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datab => \bin7seg_money1hex1|decOut_n[0]~38_combout\,
	datac => \multiplexer|mo\(5),
	datad => \bin7seg_money1hex1|decOut_n[0]~36_combout\,
	combout => \bin7seg_money1hex1|decOut_n[4]~39_combout\);

-- Location: LCCOMB_X88_Y30_N4
\bin7seg_money1hex1|decOut_n[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~35_combout\ = (\multiplexer|mo\(2) & ((\multiplexer|mo\(3)) # ((\multiplexer|mo\(1) & !\multiplexer|mo\(4))))) # (!\multiplexer|mo\(2) & (\multiplexer|mo\(3) & ((\multiplexer|mo\(1)) # (!\multiplexer|mo\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(2),
	datab => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(4),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~35_combout\);

-- Location: LCCOMB_X88_Y32_N6
\bin7seg_money1hex1|decOut_n[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~40_combout\ = (\multiplexer|mo\(1) & (\multiplexer|mo\(2) & \multiplexer|mo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(1),
	datac => \multiplexer|mo\(2),
	datad => \multiplexer|mo\(3),
	combout => \bin7seg_money1hex1|decOut_n[0]~40_combout\);

-- Location: LCCOMB_X88_Y32_N28
\bin7seg_money1hex1|decOut_n[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~41_combout\ = (\multiplexer|mo\(4) & (((\bin7seg_money1hex1|decOut_n~29_combout\)))) # (!\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n[0]~11_combout\) # ((\bin7seg_money1hex1|decOut_n[0]~40_combout\ & 
-- \bin7seg_money1hex1|decOut_n~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~40_combout\,
	datab => \bin7seg_money1hex1|decOut_n[0]~11_combout\,
	datac => \multiplexer|mo\(4),
	datad => \bin7seg_money1hex1|decOut_n~29_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~41_combout\);

-- Location: LCCOMB_X88_Y30_N18
\bin7seg_money1hex1|decOut_n[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[4]~42_combout\ = (\multiplexer|mo\(6) & ((\bin7seg_money1hex1|decOut_n[4]~39_combout\ & ((\bin7seg_money1hex1|decOut_n[0]~41_combout\))) # (!\bin7seg_money1hex1|decOut_n[4]~39_combout\ & 
-- (\bin7seg_money1hex1|decOut_n[0]~35_combout\)))) # (!\multiplexer|mo\(6) & (\bin7seg_money1hex1|decOut_n[4]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datab => \bin7seg_money1hex1|decOut_n[4]~39_combout\,
	datac => \bin7seg_money1hex1|decOut_n[0]~35_combout\,
	datad => \bin7seg_money1hex1|decOut_n[0]~41_combout\,
	combout => \bin7seg_money1hex1|decOut_n[4]~42_combout\);

-- Location: LCCOMB_X88_Y30_N28
\bin7seg_money1hex1|decOut_n[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[4]~43_combout\ = (\bin7seg_money1hex1|decOut_n[4]~42_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex1|decOut_n[4]~42_combout\,
	combout => \bin7seg_money1hex1|decOut_n[4]~43_combout\);

-- Location: LCCOMB_X88_Y30_N6
\bin7seg_money1hex1|decOut_n[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~46_combout\ = (\multiplexer|mo\(3) & (\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n~6_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \multiplexer|mo\(3),
	datac => \multiplexer|mo\(4),
	datad => \bin7seg_money1hex1|decOut_n~6_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~46_combout\);

-- Location: LCCOMB_X87_Y30_N6
\bin7seg_money1hex1|decOut_n[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~32_combout\ = (\multiplexer|mo\(3)) # (\multiplexer|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplexer|mo\(3),
	datad => \multiplexer|mo\(4),
	combout => \bin7seg_money1hex1|decOut_n[0]~32_combout\);

-- Location: LCCOMB_X88_Y30_N22
\bin7seg_money1hex1|decOut_n[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[0]~44_combout\ = (\bin7seg_money1hex1|decOut_n~6_combout\) # ((\multiplexer|mo\(4)) # ((!\bin7seg_money1hex1|decOut_n[2]~12_combout\) # (!\BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n~6_combout\,
	datab => \multiplexer|mo\(4),
	datac => \BinarytoBCD1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin7seg_money1hex1|decOut_n[2]~12_combout\,
	combout => \bin7seg_money1hex1|decOut_n[0]~44_combout\);

-- Location: LCCOMB_X88_Y30_N20
\bin7seg_money1hex1|decOut_n[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[5]~45_combout\ = (\multiplexer|mo\(6) & (((\multiplexer|mo\(5))))) # (!\multiplexer|mo\(6) & ((\multiplexer|mo\(5) & (!\bin7seg_money1hex1|decOut_n[0]~32_combout\)) # (!\multiplexer|mo\(5) & 
-- ((\bin7seg_money1hex1|decOut_n[0]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(6),
	datab => \bin7seg_money1hex1|decOut_n[0]~32_combout\,
	datac => \multiplexer|mo\(5),
	datad => \bin7seg_money1hex1|decOut_n[0]~44_combout\,
	combout => \bin7seg_money1hex1|decOut_n[5]~45_combout\);

-- Location: LCCOMB_X88_Y30_N0
\bin7seg_money1hex1|decOut_n[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[5]~47_combout\ = (\bin7seg_money1hex1|decOut_n[5]~45_combout\ & ((\bin7seg_money1hex1|decOut_n[0]~46_combout\) # ((!\multiplexer|mo\(6))))) # (!\bin7seg_money1hex1|decOut_n[5]~45_combout\ & (((\multiplexer|mo\(6) & 
-- \bin7seg_money1hex1|decOut_n[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[0]~46_combout\,
	datab => \bin7seg_money1hex1|decOut_n[5]~45_combout\,
	datac => \multiplexer|mo\(6),
	datad => \bin7seg_money1hex1|decOut_n[0]~26_combout\,
	combout => \bin7seg_money1hex1|decOut_n[5]~47_combout\);

-- Location: LCCOMB_X88_Y30_N26
\bin7seg_money1hex1|decOut_n[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[5]~48_combout\ = (\bin7seg_money1hex1|decOut_n[5]~47_combout\) # (!\product_select|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex1|decOut_n[5]~47_combout\,
	combout => \bin7seg_money1hex1|decOut_n[5]~48_combout\);

-- Location: LCCOMB_X87_Y30_N20
\bin7seg_money1hex1|decOut_n[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[6]~49_combout\ = (\multiplexer|mo\(2) & ((\multiplexer|mo\(3)) # ((\multiplexer|mo\(6) & \multiplexer|mo\(1))))) # (!\multiplexer|mo\(2) & (\multiplexer|mo\(3) & ((\multiplexer|mo\(6)) # (\multiplexer|mo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(2),
	datab => \multiplexer|mo\(6),
	datac => \multiplexer|mo\(3),
	datad => \multiplexer|mo\(1),
	combout => \bin7seg_money1hex1|decOut_n[6]~49_combout\);

-- Location: LCCOMB_X87_Y30_N12
\bin7seg_money1hex1|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[6]~54_combout\ = (!\multiplexer|mo\(5) & ((\bin7seg_money1hex1|decOut_n[6]~49_combout\) # ((!\multiplexer|mo\(6) & !\bin7seg_money1hex1|decOut_n~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datab => \multiplexer|mo\(6),
	datac => \bin7seg_money1hex1|decOut_n~28_combout\,
	datad => \bin7seg_money1hex1|decOut_n[6]~49_combout\,
	combout => \bin7seg_money1hex1|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X87_Y30_N2
\bin7seg_money1hex1|decOut_n[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[6]~50_combout\ = (\multiplexer|mo\(5) & (((\multiplexer|mo\(3) & \multiplexer|mo\(6))))) # (!\multiplexer|mo\(5) & (!\multiplexer|mo\(2) & (!\multiplexer|mo\(3) & !\multiplexer|mo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer|mo\(5),
	datab => \multiplexer|mo\(2),
	datac => \multiplexer|mo\(3),
	datad => \multiplexer|mo\(6),
	combout => \bin7seg_money1hex1|decOut_n[6]~50_combout\);

-- Location: LCCOMB_X87_Y30_N22
\bin7seg_money1hex1|decOut_n[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7seg_money1hex1|decOut_n[6]~55_combout\ = (\product_select|EnableBin~combout\ & ((\multiplexer|mo\(4) & ((\bin7seg_money1hex1|decOut_n[6]~50_combout\))) # (!\multiplexer|mo\(4) & (\bin7seg_money1hex1|decOut_n[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7seg_money1hex1|decOut_n[6]~54_combout\,
	datab => \multiplexer|mo\(4),
	datac => \product_select|EnableBin~combout\,
	datad => \bin7seg_money1hex1|decOut_n[6]~50_combout\,
	combout => \bin7seg_money1hex1|decOut_n[6]~55_combout\);

-- Location: LCCOMB_X72_Y37_N0
\cronometro|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~0_combout\ = \cronometro|cont\(0) $ (VCC)
-- \cronometro|Add0~1\ = CARRY(\cronometro|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(0),
	datad => VCC,
	combout => \cronometro|Add0~0_combout\,
	cout => \cronometro|Add0~1\);

-- Location: LCCOMB_X73_Y36_N8
\cronometro|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~7_combout\ = (\cronometro|Add0~0_combout\ & !\cronometro|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Add0~0_combout\,
	datad => \cronometro|Equal0~10_combout\,
	combout => \cronometro|cont~7_combout\);

-- Location: LCCOMB_X77_Y31_N4
\LedSelect|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedSelect|process_0~0_combout\ = (\product_select|PS.CL~q\ & ((\cafe_longo|PS.E6~q\) # ((\product_select|PS.CC~q\ & \cafe_curto|PS.E6~q\)))) # (!\product_select|PS.CL~q\ & (\product_select|PS.CC~q\ & (\cafe_curto|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CL~q\,
	datab => \product_select|PS.CC~q\,
	datac => \cafe_curto|PS.E6~q\,
	datad => \cafe_longo|PS.E6~q\,
	combout => \LedSelect|process_0~0_combout\);

-- Location: LCCOMB_X80_Y32_N26
\LedSelect|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedSelect|process_0~1_combout\ = (\product_select|PS.CQ~q\ & ((\chocolate_quente|PS.E10~q\) # ((\Cappuccino|PS.E9~q\ & \product_select|PS.CP~q\)))) # (!\product_select|PS.CQ~q\ & (\Cappuccino|PS.E9~q\ & (\product_select|PS.CP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS.CQ~q\,
	datab => \Cappuccino|PS.E9~q\,
	datac => \product_select|PS.CP~q\,
	datad => \chocolate_quente|PS.E10~q\,
	combout => \LedSelect|process_0~1_combout\);

-- Location: LCCOMB_X74_Y33_N0
\LedSelect|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedSelect|process_0~2_combout\ = (\LedSelect|process_0~0_combout\) # (\LedSelect|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LedSelect|process_0~0_combout\,
	datad => \LedSelect|process_0~1_combout\,
	combout => \LedSelect|process_0~2_combout\);

-- Location: FF_X74_Y33_N1
\LedSelect|ledOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \LedSelect|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LedSelect|ledOut~q\);

-- Location: FF_X73_Y36_N9
\cronometro|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~7_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(0));

-- Location: LCCOMB_X72_Y37_N2
\cronometro|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~2_combout\ = (\cronometro|cont\(1) & (!\cronometro|Add0~1\)) # (!\cronometro|cont\(1) & ((\cronometro|Add0~1\) # (GND)))
-- \cronometro|Add0~3\ = CARRY((!\cronometro|Add0~1\) # (!\cronometro|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(1),
	datad => VCC,
	cin => \cronometro|Add0~1\,
	combout => \cronometro|Add0~2_combout\,
	cout => \cronometro|Add0~3\);

-- Location: FF_X72_Y37_N3
\cronometro|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~2_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(1));

-- Location: LCCOMB_X72_Y37_N4
\cronometro|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~4_combout\ = (\cronometro|cont\(2) & (\cronometro|Add0~3\ $ (GND))) # (!\cronometro|cont\(2) & (!\cronometro|Add0~3\ & VCC))
-- \cronometro|Add0~5\ = CARRY((\cronometro|cont\(2) & !\cronometro|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(2),
	datad => VCC,
	cin => \cronometro|Add0~3\,
	combout => \cronometro|Add0~4_combout\,
	cout => \cronometro|Add0~5\);

-- Location: FF_X72_Y37_N5
\cronometro|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~4_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(2));

-- Location: LCCOMB_X72_Y37_N6
\cronometro|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~6_combout\ = (\cronometro|cont\(3) & (!\cronometro|Add0~5\)) # (!\cronometro|cont\(3) & ((\cronometro|Add0~5\) # (GND)))
-- \cronometro|Add0~7\ = CARRY((!\cronometro|Add0~5\) # (!\cronometro|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(3),
	datad => VCC,
	cin => \cronometro|Add0~5\,
	combout => \cronometro|Add0~6_combout\,
	cout => \cronometro|Add0~7\);

-- Location: FF_X72_Y37_N7
\cronometro|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~6_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(3));

-- Location: LCCOMB_X72_Y37_N8
\cronometro|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~8_combout\ = (\cronometro|cont\(4) & (\cronometro|Add0~7\ $ (GND))) # (!\cronometro|cont\(4) & (!\cronometro|Add0~7\ & VCC))
-- \cronometro|Add0~9\ = CARRY((\cronometro|cont\(4) & !\cronometro|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(4),
	datad => VCC,
	cin => \cronometro|Add0~7\,
	combout => \cronometro|Add0~8_combout\,
	cout => \cronometro|Add0~9\);

-- Location: FF_X73_Y36_N7
\cronometro|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cronometro|Add0~8_combout\,
	sload => VCC,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(4));

-- Location: LCCOMB_X72_Y37_N10
\cronometro|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~10_combout\ = (\cronometro|cont\(5) & (!\cronometro|Add0~9\)) # (!\cronometro|cont\(5) & ((\cronometro|Add0~9\) # (GND)))
-- \cronometro|Add0~11\ = CARRY((!\cronometro|Add0~9\) # (!\cronometro|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(5),
	datad => VCC,
	cin => \cronometro|Add0~9\,
	combout => \cronometro|Add0~10_combout\,
	cout => \cronometro|Add0~11\);

-- Location: LCCOMB_X73_Y36_N16
\cronometro|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~6_combout\ = (!\cronometro|Equal0~10_combout\ & \cronometro|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~10_combout\,
	datad => \cronometro|Add0~10_combout\,
	combout => \cronometro|cont~6_combout\);

-- Location: FF_X73_Y36_N17
\cronometro|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~6_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(5));

-- Location: LCCOMB_X72_Y37_N12
\cronometro|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~12_combout\ = (\cronometro|cont\(6) & (\cronometro|Add0~11\ $ (GND))) # (!\cronometro|cont\(6) & (!\cronometro|Add0~11\ & VCC))
-- \cronometro|Add0~13\ = CARRY((\cronometro|cont\(6) & !\cronometro|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(6),
	datad => VCC,
	cin => \cronometro|Add0~11\,
	combout => \cronometro|Add0~12_combout\,
	cout => \cronometro|Add0~13\);

-- Location: FF_X72_Y37_N13
\cronometro|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~12_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(6));

-- Location: LCCOMB_X72_Y37_N14
\cronometro|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~14_combout\ = (\cronometro|cont\(7) & (!\cronometro|Add0~13\)) # (!\cronometro|cont\(7) & ((\cronometro|Add0~13\) # (GND)))
-- \cronometro|Add0~15\ = CARRY((!\cronometro|Add0~13\) # (!\cronometro|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(7),
	datad => VCC,
	cin => \cronometro|Add0~13\,
	combout => \cronometro|Add0~14_combout\,
	cout => \cronometro|Add0~15\);

-- Location: FF_X72_Y37_N15
\cronometro|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~14_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(7));

-- Location: LCCOMB_X72_Y37_N16
\cronometro|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~16_combout\ = (\cronometro|cont\(8) & (\cronometro|Add0~15\ $ (GND))) # (!\cronometro|cont\(8) & (!\cronometro|Add0~15\ & VCC))
-- \cronometro|Add0~17\ = CARRY((\cronometro|cont\(8) & !\cronometro|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(8),
	datad => VCC,
	cin => \cronometro|Add0~15\,
	combout => \cronometro|Add0~16_combout\,
	cout => \cronometro|Add0~17\);

-- Location: LCCOMB_X73_Y37_N22
\cronometro|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~5_combout\ = (\cronometro|Add0~16_combout\ & !\cronometro|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Add0~16_combout\,
	datad => \cronometro|Equal0~10_combout\,
	combout => \cronometro|cont~5_combout\);

-- Location: FF_X73_Y37_N23
\cronometro|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~5_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(8));

-- Location: LCCOMB_X72_Y37_N18
\cronometro|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~18_combout\ = (\cronometro|cont\(9) & (!\cronometro|Add0~17\)) # (!\cronometro|cont\(9) & ((\cronometro|Add0~17\) # (GND)))
-- \cronometro|Add0~19\ = CARRY((!\cronometro|Add0~17\) # (!\cronometro|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(9),
	datad => VCC,
	cin => \cronometro|Add0~17\,
	combout => \cronometro|Add0~18_combout\,
	cout => \cronometro|Add0~19\);

-- Location: FF_X72_Y37_N19
\cronometro|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~18_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(9));

-- Location: LCCOMB_X72_Y37_N20
\cronometro|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~20_combout\ = (\cronometro|cont\(10) & (\cronometro|Add0~19\ $ (GND))) # (!\cronometro|cont\(10) & (!\cronometro|Add0~19\ & VCC))
-- \cronometro|Add0~21\ = CARRY((\cronometro|cont\(10) & !\cronometro|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(10),
	datad => VCC,
	cin => \cronometro|Add0~19\,
	combout => \cronometro|Add0~20_combout\,
	cout => \cronometro|Add0~21\);

-- Location: FF_X72_Y37_N21
\cronometro|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~20_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(10));

-- Location: LCCOMB_X72_Y37_N22
\cronometro|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~22_combout\ = (\cronometro|cont\(11) & (!\cronometro|Add0~21\)) # (!\cronometro|cont\(11) & ((\cronometro|Add0~21\) # (GND)))
-- \cronometro|Add0~23\ = CARRY((!\cronometro|Add0~21\) # (!\cronometro|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(11),
	datad => VCC,
	cin => \cronometro|Add0~21\,
	combout => \cronometro|Add0~22_combout\,
	cout => \cronometro|Add0~23\);

-- Location: FF_X72_Y37_N23
\cronometro|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~22_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(11));

-- Location: LCCOMB_X73_Y36_N30
\cronometro|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~6_combout\ = (\cronometro|cont\(8) & (!\cronometro|cont\(10) & (!\cronometro|cont\(11) & !\cronometro|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(8),
	datab => \cronometro|cont\(10),
	datac => \cronometro|cont\(11),
	datad => \cronometro|cont\(9),
	combout => \cronometro|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y37_N24
\cronometro|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~24_combout\ = (\cronometro|cont\(12) & (\cronometro|Add0~23\ $ (GND))) # (!\cronometro|cont\(12) & (!\cronometro|Add0~23\ & VCC))
-- \cronometro|Add0~25\ = CARRY((\cronometro|cont\(12) & !\cronometro|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(12),
	datad => VCC,
	cin => \cronometro|Add0~23\,
	combout => \cronometro|Add0~24_combout\,
	cout => \cronometro|Add0~25\);

-- Location: FF_X72_Y37_N25
\cronometro|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~24_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(12));

-- Location: LCCOMB_X72_Y37_N26
\cronometro|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~26_combout\ = (\cronometro|cont\(13) & (!\cronometro|Add0~25\)) # (!\cronometro|cont\(13) & ((\cronometro|Add0~25\) # (GND)))
-- \cronometro|Add0~27\ = CARRY((!\cronometro|Add0~25\) # (!\cronometro|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(13),
	datad => VCC,
	cin => \cronometro|Add0~25\,
	combout => \cronometro|Add0~26_combout\,
	cout => \cronometro|Add0~27\);

-- Location: LCCOMB_X73_Y37_N28
\cronometro|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~4_combout\ = (\cronometro|Add0~26_combout\ & !\cronometro|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Add0~26_combout\,
	datad => \cronometro|Equal0~10_combout\,
	combout => \cronometro|cont~4_combout\);

-- Location: FF_X73_Y37_N29
\cronometro|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~4_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(13));

-- Location: LCCOMB_X72_Y37_N28
\cronometro|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~28_combout\ = (\cronometro|cont\(14) & (\cronometro|Add0~27\ $ (GND))) # (!\cronometro|cont\(14) & (!\cronometro|Add0~27\ & VCC))
-- \cronometro|Add0~29\ = CARRY((\cronometro|cont\(14) & !\cronometro|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(14),
	datad => VCC,
	cin => \cronometro|Add0~27\,
	combout => \cronometro|Add0~28_combout\,
	cout => \cronometro|Add0~29\);

-- Location: FF_X72_Y37_N29
\cronometro|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~28_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(14));

-- Location: LCCOMB_X72_Y37_N30
\cronometro|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~30_combout\ = (\cronometro|cont\(15) & (!\cronometro|Add0~29\)) # (!\cronometro|cont\(15) & ((\cronometro|Add0~29\) # (GND)))
-- \cronometro|Add0~31\ = CARRY((!\cronometro|Add0~29\) # (!\cronometro|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(15),
	datad => VCC,
	cin => \cronometro|Add0~29\,
	combout => \cronometro|Add0~30_combout\,
	cout => \cronometro|Add0~31\);

-- Location: LCCOMB_X73_Y36_N18
\cronometro|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~3_combout\ = (!\cronometro|Equal0~10_combout\ & \cronometro|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~10_combout\,
	datad => \cronometro|Add0~30_combout\,
	combout => \cronometro|cont~3_combout\);

-- Location: FF_X73_Y36_N19
\cronometro|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~3_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(15));

-- Location: LCCOMB_X73_Y36_N24
\cronometro|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~5_combout\ = (\cronometro|cont\(13) & (\cronometro|cont\(15) & (!\cronometro|cont\(14) & !\cronometro|cont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(13),
	datab => \cronometro|cont\(15),
	datac => \cronometro|cont\(14),
	datad => \cronometro|cont\(12),
	combout => \cronometro|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y36_N0
\cronometro|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~32_combout\ = (\cronometro|cont\(16) & (\cronometro|Add0~31\ $ (GND))) # (!\cronometro|cont\(16) & (!\cronometro|Add0~31\ & VCC))
-- \cronometro|Add0~33\ = CARRY((\cronometro|cont\(16) & !\cronometro|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(16),
	datad => VCC,
	cin => \cronometro|Add0~31\,
	combout => \cronometro|Add0~32_combout\,
	cout => \cronometro|Add0~33\);

-- Location: LCCOMB_X73_Y36_N0
\cronometro|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~2_combout\ = (!\cronometro|Equal0~10_combout\ & \cronometro|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~10_combout\,
	datac => \cronometro|Add0~32_combout\,
	combout => \cronometro|cont~2_combout\);

-- Location: FF_X73_Y36_N1
\cronometro|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~2_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(16));

-- Location: LCCOMB_X72_Y36_N2
\cronometro|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~34_combout\ = (\cronometro|cont\(17) & (!\cronometro|Add0~33\)) # (!\cronometro|cont\(17) & ((\cronometro|Add0~33\) # (GND)))
-- \cronometro|Add0~35\ = CARRY((!\cronometro|Add0~33\) # (!\cronometro|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(17),
	datad => VCC,
	cin => \cronometro|Add0~33\,
	combout => \cronometro|Add0~34_combout\,
	cout => \cronometro|Add0~35\);

-- Location: LCCOMB_X73_Y36_N22
\cronometro|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~1_combout\ = (!\cronometro|Equal0~10_combout\ & \cronometro|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~10_combout\,
	datad => \cronometro|Add0~34_combout\,
	combout => \cronometro|cont~1_combout\);

-- Location: FF_X73_Y36_N23
\cronometro|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~1_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(17));

-- Location: LCCOMB_X72_Y36_N4
\cronometro|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~36_combout\ = (\cronometro|cont\(18) & (\cronometro|Add0~35\ $ (GND))) # (!\cronometro|cont\(18) & (!\cronometro|Add0~35\ & VCC))
-- \cronometro|Add0~37\ = CARRY((\cronometro|cont\(18) & !\cronometro|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(18),
	datad => VCC,
	cin => \cronometro|Add0~35\,
	combout => \cronometro|Add0~36_combout\,
	cout => \cronometro|Add0~37\);

-- Location: LCCOMB_X70_Y36_N24
\cronometro|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cont~0_combout\ = (!\cronometro|Equal0~10_combout\ & \cronometro|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Equal0~10_combout\,
	datad => \cronometro|Add0~36_combout\,
	combout => \cronometro|cont~0_combout\);

-- Location: FF_X70_Y36_N25
\cronometro|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cont~0_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(18));

-- Location: LCCOMB_X72_Y36_N6
\cronometro|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~38_combout\ = (\cronometro|cont\(19) & (!\cronometro|Add0~37\)) # (!\cronometro|cont\(19) & ((\cronometro|Add0~37\) # (GND)))
-- \cronometro|Add0~39\ = CARRY((!\cronometro|Add0~37\) # (!\cronometro|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(19),
	datad => VCC,
	cin => \cronometro|Add0~37\,
	combout => \cronometro|Add0~38_combout\,
	cout => \cronometro|Add0~39\);

-- Location: FF_X72_Y36_N7
\cronometro|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~38_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(19));

-- Location: LCCOMB_X72_Y36_N8
\cronometro|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~40_combout\ = (\cronometro|cont\(20) & (\cronometro|Add0~39\ $ (GND))) # (!\cronometro|cont\(20) & (!\cronometro|Add0~39\ & VCC))
-- \cronometro|Add0~41\ = CARRY((\cronometro|cont\(20) & !\cronometro|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(20),
	datad => VCC,
	cin => \cronometro|Add0~39\,
	combout => \cronometro|Add0~40_combout\,
	cout => \cronometro|Add0~41\);

-- Location: FF_X72_Y36_N9
\cronometro|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~40_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(20));

-- Location: LCCOMB_X72_Y36_N10
\cronometro|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~42_combout\ = (\cronometro|cont\(21) & (!\cronometro|Add0~41\)) # (!\cronometro|cont\(21) & ((\cronometro|Add0~41\) # (GND)))
-- \cronometro|Add0~43\ = CARRY((!\cronometro|Add0~41\) # (!\cronometro|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(21),
	datad => VCC,
	cin => \cronometro|Add0~41\,
	combout => \cronometro|Add0~42_combout\,
	cout => \cronometro|Add0~43\);

-- Location: FF_X72_Y36_N11
\cronometro|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~42_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(21));

-- Location: LCCOMB_X72_Y36_N12
\cronometro|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~44_combout\ = (\cronometro|cont\(22) & (\cronometro|Add0~43\ $ (GND))) # (!\cronometro|cont\(22) & (!\cronometro|Add0~43\ & VCC))
-- \cronometro|Add0~45\ = CARRY((\cronometro|cont\(22) & !\cronometro|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(22),
	datad => VCC,
	cin => \cronometro|Add0~43\,
	combout => \cronometro|Add0~44_combout\,
	cout => \cronometro|Add0~45\);

-- Location: FF_X72_Y36_N13
\cronometro|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~44_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(22));

-- Location: LCCOMB_X72_Y36_N14
\cronometro|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~46_combout\ = (\cronometro|cont\(23) & (!\cronometro|Add0~45\)) # (!\cronometro|cont\(23) & ((\cronometro|Add0~45\) # (GND)))
-- \cronometro|Add0~47\ = CARRY((!\cronometro|Add0~45\) # (!\cronometro|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(23),
	datad => VCC,
	cin => \cronometro|Add0~45\,
	combout => \cronometro|Add0~46_combout\,
	cout => \cronometro|Add0~47\);

-- Location: FF_X72_Y36_N15
\cronometro|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~46_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(23));

-- Location: LCCOMB_X72_Y36_N16
\cronometro|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~48_combout\ = (\cronometro|cont\(24) & (\cronometro|Add0~47\ $ (GND))) # (!\cronometro|cont\(24) & (!\cronometro|Add0~47\ & VCC))
-- \cronometro|Add0~49\ = CARRY((\cronometro|cont\(24) & !\cronometro|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(24),
	datad => VCC,
	cin => \cronometro|Add0~47\,
	combout => \cronometro|Add0~48_combout\,
	cout => \cronometro|Add0~49\);

-- Location: FF_X72_Y36_N17
\cronometro|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~48_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(24));

-- Location: LCCOMB_X72_Y36_N18
\cronometro|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~50_combout\ = (\cronometro|cont\(25) & (!\cronometro|Add0~49\)) # (!\cronometro|cont\(25) & ((\cronometro|Add0~49\) # (GND)))
-- \cronometro|Add0~51\ = CARRY((!\cronometro|Add0~49\) # (!\cronometro|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(25),
	datad => VCC,
	cin => \cronometro|Add0~49\,
	combout => \cronometro|Add0~50_combout\,
	cout => \cronometro|Add0~51\);

-- Location: FF_X72_Y36_N19
\cronometro|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~50_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(25));

-- Location: LCCOMB_X72_Y36_N20
\cronometro|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~52_combout\ = (\cronometro|cont\(26) & (\cronometro|Add0~51\ $ (GND))) # (!\cronometro|cont\(26) & (!\cronometro|Add0~51\ & VCC))
-- \cronometro|Add0~53\ = CARRY((\cronometro|cont\(26) & !\cronometro|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(26),
	datad => VCC,
	cin => \cronometro|Add0~51\,
	combout => \cronometro|Add0~52_combout\,
	cout => \cronometro|Add0~53\);

-- Location: FF_X72_Y36_N21
\cronometro|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~52_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(26));

-- Location: LCCOMB_X72_Y36_N22
\cronometro|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~54_combout\ = (\cronometro|cont\(27) & (!\cronometro|Add0~53\)) # (!\cronometro|cont\(27) & ((\cronometro|Add0~53\) # (GND)))
-- \cronometro|Add0~55\ = CARRY((!\cronometro|Add0~53\) # (!\cronometro|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(27),
	datad => VCC,
	cin => \cronometro|Add0~53\,
	combout => \cronometro|Add0~54_combout\,
	cout => \cronometro|Add0~55\);

-- Location: FF_X72_Y36_N23
\cronometro|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~54_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(27));

-- Location: LCCOMB_X73_Y36_N26
\cronometro|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~1_combout\ = (!\cronometro|cont\(24) & (!\cronometro|cont\(25) & (!\cronometro|cont\(27) & !\cronometro|cont\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(24),
	datab => \cronometro|cont\(25),
	datac => \cronometro|cont\(27),
	datad => \cronometro|cont\(26),
	combout => \cronometro|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y36_N24
\cronometro|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~56_combout\ = (\cronometro|cont\(28) & (\cronometro|Add0~55\ $ (GND))) # (!\cronometro|cont\(28) & (!\cronometro|Add0~55\ & VCC))
-- \cronometro|Add0~57\ = CARRY((\cronometro|cont\(28) & !\cronometro|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(28),
	datad => VCC,
	cin => \cronometro|Add0~55\,
	combout => \cronometro|Add0~56_combout\,
	cout => \cronometro|Add0~57\);

-- Location: FF_X72_Y36_N25
\cronometro|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~56_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(28));

-- Location: LCCOMB_X72_Y36_N26
\cronometro|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~58_combout\ = (\cronometro|cont\(29) & (!\cronometro|Add0~57\)) # (!\cronometro|cont\(29) & ((\cronometro|Add0~57\) # (GND)))
-- \cronometro|Add0~59\ = CARRY((!\cronometro|Add0~57\) # (!\cronometro|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(29),
	datad => VCC,
	cin => \cronometro|Add0~57\,
	combout => \cronometro|Add0~58_combout\,
	cout => \cronometro|Add0~59\);

-- Location: FF_X72_Y36_N27
\cronometro|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~58_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(29));

-- Location: LCCOMB_X72_Y36_N28
\cronometro|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~60_combout\ = (\cronometro|cont\(30) & (\cronometro|Add0~59\ $ (GND))) # (!\cronometro|cont\(30) & (!\cronometro|Add0~59\ & VCC))
-- \cronometro|Add0~61\ = CARRY((\cronometro|cont\(30) & !\cronometro|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cont\(30),
	datad => VCC,
	cin => \cronometro|Add0~59\,
	combout => \cronometro|Add0~60_combout\,
	cout => \cronometro|Add0~61\);

-- Location: FF_X72_Y36_N29
\cronometro|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~60_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(30));

-- Location: LCCOMB_X72_Y36_N30
\cronometro|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add0~62_combout\ = \cronometro|cont\(31) $ (\cronometro|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(31),
	cin => \cronometro|Add0~61\,
	combout => \cronometro|Add0~62_combout\);

-- Location: FF_X72_Y36_N31
\cronometro|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add0~62_combout\,
	ena => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cont\(31));

-- Location: LCCOMB_X73_Y36_N28
\cronometro|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~0_combout\ = (!\cronometro|cont\(29) & (!\cronometro|cont\(28) & (!\cronometro|cont\(31) & !\cronometro|cont\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(29),
	datab => \cronometro|cont\(28),
	datac => \cronometro|cont\(31),
	datad => \cronometro|cont\(30),
	combout => \cronometro|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y36_N14
\cronometro|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~3_combout\ = (\cronometro|cont\(17) & (\cronometro|cont\(16) & (!\cronometro|cont\(19) & \cronometro|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(17),
	datab => \cronometro|cont\(16),
	datac => \cronometro|cont\(19),
	datad => \cronometro|cont\(18),
	combout => \cronometro|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y36_N12
\cronometro|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~2_combout\ = (!\cronometro|cont\(20) & (!\cronometro|cont\(22) & (!\cronometro|cont\(23) & !\cronometro|cont\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(20),
	datab => \cronometro|cont\(22),
	datac => \cronometro|cont\(23),
	datad => \cronometro|cont\(21),
	combout => \cronometro|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y36_N4
\cronometro|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~4_combout\ = (\cronometro|Equal0~1_combout\ & (\cronometro|Equal0~0_combout\ & (\cronometro|Equal0~3_combout\ & \cronometro|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~1_combout\,
	datab => \cronometro|Equal0~0_combout\,
	datac => \cronometro|Equal0~3_combout\,
	datad => \cronometro|Equal0~2_combout\,
	combout => \cronometro|Equal0~4_combout\);

-- Location: LCCOMB_X73_Y36_N6
\cronometro|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~7_combout\ = (!\cronometro|cont\(4) & \cronometro|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|cont\(4),
	datad => \cronometro|cont\(5),
	combout => \cronometro|Equal0~7_combout\);

-- Location: LCCOMB_X73_Y36_N2
\cronometro|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~8_combout\ = (!\cronometro|cont\(1) & (!\cronometro|cont\(0) & (!\cronometro|cont\(3) & !\cronometro|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cont\(1),
	datab => \cronometro|cont\(0),
	datac => \cronometro|cont\(3),
	datad => \cronometro|cont\(2),
	combout => \cronometro|Equal0~8_combout\);

-- Location: LCCOMB_X73_Y36_N20
\cronometro|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~9_combout\ = (\cronometro|Equal0~7_combout\ & (!\cronometro|cont\(7) & (!\cronometro|cont\(6) & \cronometro|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~7_combout\,
	datab => \cronometro|cont\(7),
	datac => \cronometro|cont\(6),
	datad => \cronometro|Equal0~8_combout\,
	combout => \cronometro|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y36_N10
\cronometro|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal0~10_combout\ = (\cronometro|Equal0~6_combout\ & (\cronometro|Equal0~5_combout\ & (\cronometro|Equal0~4_combout\ & \cronometro|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~6_combout\,
	datab => \cronometro|Equal0~5_combout\,
	datac => \cronometro|Equal0~4_combout\,
	datad => \cronometro|Equal0~9_combout\,
	combout => \cronometro|Equal0~10_combout\);

-- Location: LCCOMB_X74_Y36_N26
\cronometro|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal3~1_combout\ = ((\cronometro|var_seg\(2)) # (!\cronometro|var_seg\(1))) # (!\cronometro|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(0),
	datac => \cronometro|var_seg\(2),
	datad => \cronometro|var_seg\(1),
	combout => \cronometro|Equal3~1_combout\);

-- Location: LCCOMB_X74_Y36_N28
\cronometro|var_milseg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_milseg[6]~0_combout\ = (\LedSelect|ledOut~q\ & \cronometro|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LedSelect|ledOut~q\,
	datad => \cronometro|Equal0~10_combout\,
	combout => \cronometro|var_milseg[6]~0_combout\);

-- Location: LCCOMB_X74_Y36_N2
\cronometro|var_seg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[6]~0_combout\ = (\cronometro|Equal1~1_combout\ & (\cronometro|var_milseg[6]~0_combout\ & ((\cronometro|Equal3~0_combout\) # (\cronometro|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal3~0_combout\,
	datab => \cronometro|Equal1~1_combout\,
	datac => \cronometro|Equal3~1_combout\,
	datad => \cronometro|var_milseg[6]~0_combout\,
	combout => \cronometro|var_seg[6]~0_combout\);

-- Location: LCCOMB_X74_Y36_N4
\cronometro|var_seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[0]~1_combout\ = \cronometro|var_seg\(0) $ (\cronometro|var_seg[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|var_seg\(0),
	datad => \cronometro|var_seg[6]~0_combout\,
	combout => \cronometro|var_seg[0]~1_combout\);

-- Location: FF_X74_Y36_N5
\cronometro|var_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|var_seg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(0));

-- Location: LCCOMB_X74_Y36_N10
\cronometro|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~1_cout\ = CARRY(!\cronometro|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(0),
	datad => VCC,
	cout => \cronometro|Add2~1_cout\);

-- Location: LCCOMB_X74_Y36_N12
\cronometro|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~2_combout\ = (\cronometro|var_seg\(1) & (!\cronometro|Add2~1_cout\)) # (!\cronometro|var_seg\(1) & (\cronometro|Add2~1_cout\ & VCC))
-- \cronometro|Add2~3\ = CARRY((\cronometro|var_seg\(1) & !\cronometro|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(1),
	datad => VCC,
	cin => \cronometro|Add2~1_cout\,
	combout => \cronometro|Add2~2_combout\,
	cout => \cronometro|Add2~3\);

-- Location: LCCOMB_X74_Y36_N0
\cronometro|var_seg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[1]~5_combout\ = !\cronometro|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cronometro|Add2~2_combout\,
	combout => \cronometro|var_seg[1]~5_combout\);

-- Location: FF_X74_Y36_N1
\cronometro|var_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|var_seg[1]~5_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(1));

-- Location: LCCOMB_X74_Y36_N14
\cronometro|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~4_combout\ = (\cronometro|var_seg\(2) & ((GND) # (!\cronometro|Add2~3\))) # (!\cronometro|var_seg\(2) & (\cronometro|Add2~3\ $ (GND)))
-- \cronometro|Add2~5\ = CARRY((\cronometro|var_seg\(2)) # (!\cronometro|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(2),
	datad => VCC,
	cin => \cronometro|Add2~3\,
	combout => \cronometro|Add2~4_combout\,
	cout => \cronometro|Add2~5\);

-- Location: FF_X74_Y36_N15
\cronometro|var_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add2~4_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(2));

-- Location: LCCOMB_X74_Y36_N16
\cronometro|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~6_combout\ = (\cronometro|var_seg\(3) & (!\cronometro|Add2~5\)) # (!\cronometro|var_seg\(3) & (\cronometro|Add2~5\ & VCC))
-- \cronometro|Add2~7\ = CARRY((\cronometro|var_seg\(3) & !\cronometro|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(3),
	datad => VCC,
	cin => \cronometro|Add2~5\,
	combout => \cronometro|Add2~6_combout\,
	cout => \cronometro|Add2~7\);

-- Location: LCCOMB_X74_Y36_N24
\cronometro|var_seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[3]~4_combout\ = !\cronometro|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cronometro|Add2~6_combout\,
	combout => \cronometro|var_seg[3]~4_combout\);

-- Location: FF_X74_Y36_N25
\cronometro|var_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|var_seg[3]~4_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(3));

-- Location: LCCOMB_X74_Y36_N18
\cronometro|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~8_combout\ = (\cronometro|var_seg\(4) & (\cronometro|Add2~7\ $ (GND))) # (!\cronometro|var_seg\(4) & ((GND) # (!\cronometro|Add2~7\)))
-- \cronometro|Add2~9\ = CARRY((!\cronometro|Add2~7\) # (!\cronometro|var_seg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_seg\(4),
	datad => VCC,
	cin => \cronometro|Add2~7\,
	combout => \cronometro|Add2~8_combout\,
	cout => \cronometro|Add2~9\);

-- Location: LCCOMB_X74_Y36_N30
\cronometro|var_seg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[4]~3_combout\ = !\cronometro|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cronometro|Add2~8_combout\,
	combout => \cronometro|var_seg[4]~3_combout\);

-- Location: FF_X74_Y36_N31
\cronometro|var_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|var_seg[4]~3_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(4));

-- Location: LCCOMB_X74_Y36_N20
\cronometro|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~10_combout\ = (\cronometro|var_seg\(5) & (!\cronometro|Add2~9\)) # (!\cronometro|var_seg\(5) & (\cronometro|Add2~9\ & VCC))
-- \cronometro|Add2~11\ = CARRY((\cronometro|var_seg\(5) & !\cronometro|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_seg\(5),
	datad => VCC,
	cin => \cronometro|Add2~9\,
	combout => \cronometro|Add2~10_combout\,
	cout => \cronometro|Add2~11\);

-- Location: LCCOMB_X74_Y36_N8
\cronometro|var_seg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|var_seg[5]~2_combout\ = !\cronometro|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cronometro|Add2~10_combout\,
	combout => \cronometro|var_seg[5]~2_combout\);

-- Location: FF_X74_Y36_N9
\cronometro|var_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|var_seg[5]~2_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(5));

-- Location: LCCOMB_X74_Y36_N22
\cronometro|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add2~12_combout\ = \cronometro|var_seg\(6) $ (\cronometro|Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_seg\(6),
	cin => \cronometro|Add2~11\,
	combout => \cronometro|Add2~12_combout\);

-- Location: FF_X74_Y36_N23
\cronometro|var_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add2~12_combout\,
	ena => \cronometro|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_seg\(6));

-- Location: LCCOMB_X74_Y36_N6
\cronometro|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal3~0_combout\ = (\cronometro|var_seg\(6)) # (((!\cronometro|var_seg\(3)) # (!\cronometro|var_seg\(4))) # (!\cronometro|var_seg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_seg\(6),
	datab => \cronometro|var_seg\(5),
	datac => \cronometro|var_seg\(4),
	datad => \cronometro|var_seg\(3),
	combout => \cronometro|Equal3~0_combout\);

-- Location: LCCOMB_X75_Y36_N8
\cronometro|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~0_combout\ = \cronometro|var_milseg\(0) $ (GND)
-- \cronometro|Add1~1\ = CARRY(!\cronometro|var_milseg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_milseg\(0),
	datad => VCC,
	combout => \cronometro|Add1~0_combout\,
	cout => \cronometro|Add1~1\);

-- Location: LCCOMB_X75_Y36_N2
\cronometro|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~19_combout\ = (\cronometro|Equal1~1_combout\ & (!\cronometro|Equal3~0_combout\ & (!\cronometro|Equal3~1_combout\))) # (!\cronometro|Equal1~1_combout\ & (((!\cronometro|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~1_combout\,
	datab => \cronometro|Equal3~0_combout\,
	datac => \cronometro|Equal3~1_combout\,
	datad => \cronometro|Add1~0_combout\,
	combout => \cronometro|Add1~19_combout\);

-- Location: FF_X75_Y36_N3
\cronometro|var_milseg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~19_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(0));

-- Location: LCCOMB_X75_Y36_N10
\cronometro|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~2_combout\ = (\cronometro|var_milseg\(1) & (!\cronometro|Add1~1\)) # (!\cronometro|var_milseg\(1) & (\cronometro|Add1~1\ & VCC))
-- \cronometro|Add1~3\ = CARRY((\cronometro|var_milseg\(1) & !\cronometro|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_milseg\(1),
	datad => VCC,
	cin => \cronometro|Add1~1\,
	combout => \cronometro|Add1~2_combout\,
	cout => \cronometro|Add1~3\);

-- Location: LCCOMB_X75_Y36_N0
\cronometro|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~18_combout\ = (\cronometro|Equal1~1_combout\ & (!\cronometro|Equal3~0_combout\ & (!\cronometro|Equal3~1_combout\))) # (!\cronometro|Equal1~1_combout\ & (((!\cronometro|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~1_combout\,
	datab => \cronometro|Equal3~0_combout\,
	datac => \cronometro|Equal3~1_combout\,
	datad => \cronometro|Add1~2_combout\,
	combout => \cronometro|Add1~18_combout\);

-- Location: FF_X75_Y36_N1
\cronometro|var_milseg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~18_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(1));

-- Location: LCCOMB_X75_Y36_N12
\cronometro|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~4_combout\ = (\cronometro|var_milseg\(2) & ((GND) # (!\cronometro|Add1~3\))) # (!\cronometro|var_milseg\(2) & (\cronometro|Add1~3\ $ (GND)))
-- \cronometro|Add1~5\ = CARRY((\cronometro|var_milseg\(2)) # (!\cronometro|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_milseg\(2),
	datad => VCC,
	cin => \cronometro|Add1~3\,
	combout => \cronometro|Add1~4_combout\,
	cout => \cronometro|Add1~5\);

-- Location: LCCOMB_X75_Y36_N4
\cronometro|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~20_combout\ = (!\cronometro|Equal1~1_combout\ & \cronometro|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Equal1~1_combout\,
	datad => \cronometro|Add1~4_combout\,
	combout => \cronometro|Add1~20_combout\);

-- Location: FF_X75_Y36_N5
\cronometro|var_milseg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~20_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(2));

-- Location: LCCOMB_X75_Y36_N14
\cronometro|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~6_combout\ = (\cronometro|var_milseg\(3) & (\cronometro|Add1~5\ & VCC)) # (!\cronometro|var_milseg\(3) & (!\cronometro|Add1~5\))
-- \cronometro|Add1~7\ = CARRY((!\cronometro|var_milseg\(3) & !\cronometro|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_milseg\(3),
	datad => VCC,
	cin => \cronometro|Add1~5\,
	combout => \cronometro|Add1~6_combout\,
	cout => \cronometro|Add1~7\);

-- Location: LCCOMB_X75_Y36_N22
\cronometro|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~17_combout\ = (!\cronometro|Equal1~1_combout\ & \cronometro|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~1_combout\,
	datac => \cronometro|Add1~6_combout\,
	combout => \cronometro|Add1~17_combout\);

-- Location: FF_X75_Y36_N23
\cronometro|var_milseg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~17_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(3));

-- Location: LCCOMB_X75_Y36_N16
\cronometro|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~8_combout\ = (\cronometro|var_milseg\(4) & ((GND) # (!\cronometro|Add1~7\))) # (!\cronometro|var_milseg\(4) & (\cronometro|Add1~7\ $ (GND)))
-- \cronometro|Add1~9\ = CARRY((\cronometro|var_milseg\(4)) # (!\cronometro|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|var_milseg\(4),
	datad => VCC,
	cin => \cronometro|Add1~7\,
	combout => \cronometro|Add1~8_combout\,
	cout => \cronometro|Add1~9\);

-- Location: LCCOMB_X75_Y36_N24
\cronometro|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~16_combout\ = (!\cronometro|Equal1~1_combout\ & \cronometro|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|Equal1~1_combout\,
	datad => \cronometro|Add1~8_combout\,
	combout => \cronometro|Add1~16_combout\);

-- Location: FF_X75_Y36_N25
\cronometro|var_milseg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~16_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(4));

-- Location: LCCOMB_X75_Y36_N18
\cronometro|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~10_combout\ = (\cronometro|var_milseg\(5) & (!\cronometro|Add1~9\)) # (!\cronometro|var_milseg\(5) & (\cronometro|Add1~9\ & VCC))
-- \cronometro|Add1~11\ = CARRY((\cronometro|var_milseg\(5) & !\cronometro|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_milseg\(5),
	datad => VCC,
	cin => \cronometro|Add1~9\,
	combout => \cronometro|Add1~10_combout\,
	cout => \cronometro|Add1~11\);

-- Location: LCCOMB_X75_Y36_N6
\cronometro|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~15_combout\ = (\cronometro|Equal1~1_combout\ & (!\cronometro|Equal3~0_combout\ & (!\cronometro|Equal3~1_combout\))) # (!\cronometro|Equal1~1_combout\ & (((!\cronometro|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~1_combout\,
	datab => \cronometro|Equal3~0_combout\,
	datac => \cronometro|Equal3~1_combout\,
	datad => \cronometro|Add1~10_combout\,
	combout => \cronometro|Add1~15_combout\);

-- Location: FF_X75_Y36_N7
\cronometro|var_milseg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~15_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(5));

-- Location: LCCOMB_X75_Y36_N20
\cronometro|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~12_combout\ = \cronometro|Add1~11\ $ (!\cronometro|var_milseg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cronometro|var_milseg\(6),
	cin => \cronometro|Add1~11\,
	combout => \cronometro|Add1~12_combout\);

-- Location: LCCOMB_X75_Y36_N28
\cronometro|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add1~14_combout\ = (\cronometro|Equal1~1_combout\ & (!\cronometro|Equal3~0_combout\ & (!\cronometro|Equal3~1_combout\))) # (!\cronometro|Equal1~1_combout\ & (((!\cronometro|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~1_combout\,
	datab => \cronometro|Equal3~0_combout\,
	datac => \cronometro|Equal3~1_combout\,
	datad => \cronometro|Add1~12_combout\,
	combout => \cronometro|Add1~14_combout\);

-- Location: FF_X75_Y36_N29
\cronometro|var_milseg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add1~14_combout\,
	ena => \cronometro|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|var_milseg\(6));

-- Location: LCCOMB_X75_Y36_N30
\cronometro|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal1~0_combout\ = (\cronometro|var_milseg\(5) & (\cronometro|var_milseg\(6) & (!\cronometro|var_milseg\(3) & !\cronometro|var_milseg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|var_milseg\(5),
	datab => \cronometro|var_milseg\(6),
	datac => \cronometro|var_milseg\(3),
	datad => \cronometro|var_milseg\(4),
	combout => \cronometro|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y36_N26
\cronometro|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal1~1_combout\ = (\cronometro|Equal1~0_combout\ & (\cronometro|var_milseg\(0) & (!\cronometro|var_milseg\(2) & \cronometro|var_milseg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal1~0_combout\,
	datab => \cronometro|var_milseg\(0),
	datac => \cronometro|var_milseg\(2),
	datad => \cronometro|var_milseg\(1),
	combout => \cronometro|Equal1~1_combout\);

-- Location: LCCOMB_X75_Y34_N0
\cronometro|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~0_combout\ = \cronometro|cnt\(0) $ (VCC)
-- \cronometro|Add3~1\ = CARRY(\cronometro|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(0),
	datad => VCC,
	combout => \cronometro|Add3~0_combout\,
	cout => \cronometro|Add3~1\);

-- Location: LCCOMB_X74_Y34_N30
\cronometro|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cnt[1]~0_combout\ = (\cronometro|Equal1~1_combout\ & \cronometro|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|Equal1~1_combout\,
	datad => \cronometro|Equal0~10_combout\,
	combout => \cronometro|cnt[1]~0_combout\);

-- Location: FF_X75_Y34_N1
\cronometro|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~0_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(0));

-- Location: LCCOMB_X75_Y34_N2
\cronometro|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~2_combout\ = (\cronometro|cnt\(1) & (!\cronometro|Add3~1\)) # (!\cronometro|cnt\(1) & ((\cronometro|Add3~1\) # (GND)))
-- \cronometro|Add3~3\ = CARRY((!\cronometro|Add3~1\) # (!\cronometro|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(1),
	datad => VCC,
	cin => \cronometro|Add3~1\,
	combout => \cronometro|Add3~2_combout\,
	cout => \cronometro|Add3~3\);

-- Location: FF_X75_Y34_N3
\cronometro|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~2_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(1));

-- Location: LCCOMB_X75_Y34_N4
\cronometro|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~4_combout\ = (\cronometro|cnt\(2) & (\cronometro|Add3~3\ $ (GND))) # (!\cronometro|cnt\(2) & (!\cronometro|Add3~3\ & VCC))
-- \cronometro|Add3~5\ = CARRY((\cronometro|cnt\(2) & !\cronometro|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(2),
	datad => VCC,
	cin => \cronometro|Add3~3\,
	combout => \cronometro|Add3~4_combout\,
	cout => \cronometro|Add3~5\);

-- Location: LCCOMB_X74_Y34_N12
\cronometro|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|cnt~1_combout\ = (!\cronometro|Equal2~10_combout\ & \cronometro|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|Equal2~10_combout\,
	datad => \cronometro|Add3~4_combout\,
	combout => \cronometro|cnt~1_combout\);

-- Location: FF_X74_Y34_N13
\cronometro|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|cnt~1_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(2));

-- Location: LCCOMB_X75_Y34_N6
\cronometro|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~6_combout\ = (\cronometro|cnt\(3) & (!\cronometro|Add3~5\)) # (!\cronometro|cnt\(3) & ((\cronometro|Add3~5\) # (GND)))
-- \cronometro|Add3~7\ = CARRY((!\cronometro|Add3~5\) # (!\cronometro|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(3),
	datad => VCC,
	cin => \cronometro|Add3~5\,
	combout => \cronometro|Add3~6_combout\,
	cout => \cronometro|Add3~7\);

-- Location: FF_X75_Y34_N7
\cronometro|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~6_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(3));

-- Location: LCCOMB_X74_Y34_N26
\cronometro|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~9_combout\ = (!\cronometro|cnt\(2) & (!\cronometro|cnt\(3) & (\cronometro|cnt\(0) & \cronometro|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(2),
	datab => \cronometro|cnt\(3),
	datac => \cronometro|cnt\(0),
	datad => \cronometro|cnt\(1),
	combout => \cronometro|Equal2~9_combout\);

-- Location: LCCOMB_X75_Y34_N8
\cronometro|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~8_combout\ = (\cronometro|cnt\(4) & (\cronometro|Add3~7\ $ (GND))) # (!\cronometro|cnt\(4) & (!\cronometro|Add3~7\ & VCC))
-- \cronometro|Add3~9\ = CARRY((\cronometro|cnt\(4) & !\cronometro|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(4),
	datad => VCC,
	cin => \cronometro|Add3~7\,
	combout => \cronometro|Add3~8_combout\,
	cout => \cronometro|Add3~9\);

-- Location: FF_X75_Y34_N9
\cronometro|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~8_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(4));

-- Location: LCCOMB_X75_Y34_N10
\cronometro|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~10_combout\ = (\cronometro|cnt\(5) & (!\cronometro|Add3~9\)) # (!\cronometro|cnt\(5) & ((\cronometro|Add3~9\) # (GND)))
-- \cronometro|Add3~11\ = CARRY((!\cronometro|Add3~9\) # (!\cronometro|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(5),
	datad => VCC,
	cin => \cronometro|Add3~9\,
	combout => \cronometro|Add3~10_combout\,
	cout => \cronometro|Add3~11\);

-- Location: FF_X75_Y34_N11
\cronometro|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~10_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(5));

-- Location: LCCOMB_X75_Y34_N12
\cronometro|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~12_combout\ = (\cronometro|cnt\(6) & (\cronometro|Add3~11\ $ (GND))) # (!\cronometro|cnt\(6) & (!\cronometro|Add3~11\ & VCC))
-- \cronometro|Add3~13\ = CARRY((\cronometro|cnt\(6) & !\cronometro|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(6),
	datad => VCC,
	cin => \cronometro|Add3~11\,
	combout => \cronometro|Add3~12_combout\,
	cout => \cronometro|Add3~13\);

-- Location: FF_X75_Y34_N13
\cronometro|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~12_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(6));

-- Location: LCCOMB_X75_Y34_N14
\cronometro|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~14_combout\ = (\cronometro|cnt\(7) & (!\cronometro|Add3~13\)) # (!\cronometro|cnt\(7) & ((\cronometro|Add3~13\) # (GND)))
-- \cronometro|Add3~15\ = CARRY((!\cronometro|Add3~13\) # (!\cronometro|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(7),
	datad => VCC,
	cin => \cronometro|Add3~13\,
	combout => \cronometro|Add3~14_combout\,
	cout => \cronometro|Add3~15\);

-- Location: FF_X75_Y34_N15
\cronometro|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~14_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(7));

-- Location: LCCOMB_X75_Y34_N16
\cronometro|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~16_combout\ = (\cronometro|cnt\(8) & (\cronometro|Add3~15\ $ (GND))) # (!\cronometro|cnt\(8) & (!\cronometro|Add3~15\ & VCC))
-- \cronometro|Add3~17\ = CARRY((\cronometro|cnt\(8) & !\cronometro|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(8),
	datad => VCC,
	cin => \cronometro|Add3~15\,
	combout => \cronometro|Add3~16_combout\,
	cout => \cronometro|Add3~17\);

-- Location: FF_X75_Y34_N17
\cronometro|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~16_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(8));

-- Location: LCCOMB_X75_Y34_N18
\cronometro|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~18_combout\ = (\cronometro|cnt\(9) & (!\cronometro|Add3~17\)) # (!\cronometro|cnt\(9) & ((\cronometro|Add3~17\) # (GND)))
-- \cronometro|Add3~19\ = CARRY((!\cronometro|Add3~17\) # (!\cronometro|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(9),
	datad => VCC,
	cin => \cronometro|Add3~17\,
	combout => \cronometro|Add3~18_combout\,
	cout => \cronometro|Add3~19\);

-- Location: FF_X75_Y34_N19
\cronometro|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~18_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(9));

-- Location: LCCOMB_X75_Y34_N20
\cronometro|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~20_combout\ = (\cronometro|cnt\(10) & (\cronometro|Add3~19\ $ (GND))) # (!\cronometro|cnt\(10) & (!\cronometro|Add3~19\ & VCC))
-- \cronometro|Add3~21\ = CARRY((\cronometro|cnt\(10) & !\cronometro|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(10),
	datad => VCC,
	cin => \cronometro|Add3~19\,
	combout => \cronometro|Add3~20_combout\,
	cout => \cronometro|Add3~21\);

-- Location: FF_X75_Y34_N21
\cronometro|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~20_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(10));

-- Location: LCCOMB_X75_Y34_N22
\cronometro|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~22_combout\ = (\cronometro|cnt\(11) & (!\cronometro|Add3~21\)) # (!\cronometro|cnt\(11) & ((\cronometro|Add3~21\) # (GND)))
-- \cronometro|Add3~23\ = CARRY((!\cronometro|Add3~21\) # (!\cronometro|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(11),
	datad => VCC,
	cin => \cronometro|Add3~21\,
	combout => \cronometro|Add3~22_combout\,
	cout => \cronometro|Add3~23\);

-- Location: FF_X75_Y34_N23
\cronometro|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~22_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(11));

-- Location: LCCOMB_X75_Y34_N24
\cronometro|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~24_combout\ = (\cronometro|cnt\(12) & (\cronometro|Add3~23\ $ (GND))) # (!\cronometro|cnt\(12) & (!\cronometro|Add3~23\ & VCC))
-- \cronometro|Add3~25\ = CARRY((\cronometro|cnt\(12) & !\cronometro|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(12),
	datad => VCC,
	cin => \cronometro|Add3~23\,
	combout => \cronometro|Add3~24_combout\,
	cout => \cronometro|Add3~25\);

-- Location: FF_X75_Y34_N25
\cronometro|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~24_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(12));

-- Location: LCCOMB_X75_Y34_N26
\cronometro|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~26_combout\ = (\cronometro|cnt\(13) & (!\cronometro|Add3~25\)) # (!\cronometro|cnt\(13) & ((\cronometro|Add3~25\) # (GND)))
-- \cronometro|Add3~27\ = CARRY((!\cronometro|Add3~25\) # (!\cronometro|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(13),
	datad => VCC,
	cin => \cronometro|Add3~25\,
	combout => \cronometro|Add3~26_combout\,
	cout => \cronometro|Add3~27\);

-- Location: FF_X75_Y34_N27
\cronometro|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~26_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(13));

-- Location: LCCOMB_X75_Y34_N28
\cronometro|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~28_combout\ = (\cronometro|cnt\(14) & (\cronometro|Add3~27\ $ (GND))) # (!\cronometro|cnt\(14) & (!\cronometro|Add3~27\ & VCC))
-- \cronometro|Add3~29\ = CARRY((\cronometro|cnt\(14) & !\cronometro|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(14),
	datad => VCC,
	cin => \cronometro|Add3~27\,
	combout => \cronometro|Add3~28_combout\,
	cout => \cronometro|Add3~29\);

-- Location: FF_X75_Y34_N29
\cronometro|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~28_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(14));

-- Location: LCCOMB_X75_Y34_N30
\cronometro|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~30_combout\ = (\cronometro|cnt\(15) & (!\cronometro|Add3~29\)) # (!\cronometro|cnt\(15) & ((\cronometro|Add3~29\) # (GND)))
-- \cronometro|Add3~31\ = CARRY((!\cronometro|Add3~29\) # (!\cronometro|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(15),
	datad => VCC,
	cin => \cronometro|Add3~29\,
	combout => \cronometro|Add3~30_combout\,
	cout => \cronometro|Add3~31\);

-- Location: FF_X75_Y34_N31
\cronometro|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~30_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(15));

-- Location: LCCOMB_X74_Y34_N8
\cronometro|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~5_combout\ = (!\cronometro|cnt\(13) & (!\cronometro|cnt\(14) & (!\cronometro|cnt\(15) & !\cronometro|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(13),
	datab => \cronometro|cnt\(14),
	datac => \cronometro|cnt\(15),
	datad => \cronometro|cnt\(12),
	combout => \cronometro|Equal2~5_combout\);

-- Location: LCCOMB_X74_Y34_N14
\cronometro|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~6_combout\ = (!\cronometro|cnt\(10) & !\cronometro|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cronometro|cnt\(10),
	datad => \cronometro|cnt\(11),
	combout => \cronometro|Equal2~6_combout\);

-- Location: LCCOMB_X74_Y34_N20
\cronometro|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~7_combout\ = (!\cronometro|cnt\(9) & (\cronometro|Equal2~5_combout\ & (\cronometro|Equal2~6_combout\ & !\cronometro|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(9),
	datab => \cronometro|Equal2~5_combout\,
	datac => \cronometro|Equal2~6_combout\,
	datad => \cronometro|cnt\(8),
	combout => \cronometro|Equal2~7_combout\);

-- Location: LCCOMB_X74_Y34_N22
\cronometro|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~8_combout\ = (!\cronometro|cnt\(6) & (!\cronometro|cnt\(7) & (!\cronometro|cnt\(4) & !\cronometro|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(6),
	datab => \cronometro|cnt\(7),
	datac => \cronometro|cnt\(4),
	datad => \cronometro|cnt\(5),
	combout => \cronometro|Equal2~8_combout\);

-- Location: LCCOMB_X75_Y33_N0
\cronometro|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~32_combout\ = (\cronometro|cnt\(16) & (\cronometro|Add3~31\ $ (GND))) # (!\cronometro|cnt\(16) & (!\cronometro|Add3~31\ & VCC))
-- \cronometro|Add3~33\ = CARRY((\cronometro|cnt\(16) & !\cronometro|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(16),
	datad => VCC,
	cin => \cronometro|Add3~31\,
	combout => \cronometro|Add3~32_combout\,
	cout => \cronometro|Add3~33\);

-- Location: FF_X75_Y33_N1
\cronometro|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~32_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(16));

-- Location: LCCOMB_X75_Y33_N2
\cronometro|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~34_combout\ = (\cronometro|cnt\(17) & (!\cronometro|Add3~33\)) # (!\cronometro|cnt\(17) & ((\cronometro|Add3~33\) # (GND)))
-- \cronometro|Add3~35\ = CARRY((!\cronometro|Add3~33\) # (!\cronometro|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(17),
	datad => VCC,
	cin => \cronometro|Add3~33\,
	combout => \cronometro|Add3~34_combout\,
	cout => \cronometro|Add3~35\);

-- Location: FF_X75_Y33_N3
\cronometro|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~34_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(17));

-- Location: LCCOMB_X75_Y33_N4
\cronometro|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~36_combout\ = (\cronometro|cnt\(18) & (\cronometro|Add3~35\ $ (GND))) # (!\cronometro|cnt\(18) & (!\cronometro|Add3~35\ & VCC))
-- \cronometro|Add3~37\ = CARRY((\cronometro|cnt\(18) & !\cronometro|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(18),
	datad => VCC,
	cin => \cronometro|Add3~35\,
	combout => \cronometro|Add3~36_combout\,
	cout => \cronometro|Add3~37\);

-- Location: FF_X75_Y33_N5
\cronometro|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~36_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(18));

-- Location: LCCOMB_X75_Y33_N6
\cronometro|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~38_combout\ = (\cronometro|cnt\(19) & (!\cronometro|Add3~37\)) # (!\cronometro|cnt\(19) & ((\cronometro|Add3~37\) # (GND)))
-- \cronometro|Add3~39\ = CARRY((!\cronometro|Add3~37\) # (!\cronometro|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(19),
	datad => VCC,
	cin => \cronometro|Add3~37\,
	combout => \cronometro|Add3~38_combout\,
	cout => \cronometro|Add3~39\);

-- Location: FF_X75_Y33_N7
\cronometro|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~38_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(19));

-- Location: LCCOMB_X75_Y33_N8
\cronometro|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~40_combout\ = (\cronometro|cnt\(20) & (\cronometro|Add3~39\ $ (GND))) # (!\cronometro|cnt\(20) & (!\cronometro|Add3~39\ & VCC))
-- \cronometro|Add3~41\ = CARRY((\cronometro|cnt\(20) & !\cronometro|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(20),
	datad => VCC,
	cin => \cronometro|Add3~39\,
	combout => \cronometro|Add3~40_combout\,
	cout => \cronometro|Add3~41\);

-- Location: FF_X75_Y33_N9
\cronometro|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~40_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(20));

-- Location: LCCOMB_X75_Y33_N10
\cronometro|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~42_combout\ = (\cronometro|cnt\(21) & (!\cronometro|Add3~41\)) # (!\cronometro|cnt\(21) & ((\cronometro|Add3~41\) # (GND)))
-- \cronometro|Add3~43\ = CARRY((!\cronometro|Add3~41\) # (!\cronometro|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(21),
	datad => VCC,
	cin => \cronometro|Add3~41\,
	combout => \cronometro|Add3~42_combout\,
	cout => \cronometro|Add3~43\);

-- Location: FF_X75_Y33_N11
\cronometro|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~42_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(21));

-- Location: LCCOMB_X75_Y33_N12
\cronometro|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~44_combout\ = (\cronometro|cnt\(22) & (\cronometro|Add3~43\ $ (GND))) # (!\cronometro|cnt\(22) & (!\cronometro|Add3~43\ & VCC))
-- \cronometro|Add3~45\ = CARRY((\cronometro|cnt\(22) & !\cronometro|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(22),
	datad => VCC,
	cin => \cronometro|Add3~43\,
	combout => \cronometro|Add3~44_combout\,
	cout => \cronometro|Add3~45\);

-- Location: FF_X75_Y33_N13
\cronometro|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~44_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(22));

-- Location: LCCOMB_X75_Y33_N14
\cronometro|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~46_combout\ = (\cronometro|cnt\(23) & (!\cronometro|Add3~45\)) # (!\cronometro|cnt\(23) & ((\cronometro|Add3~45\) # (GND)))
-- \cronometro|Add3~47\ = CARRY((!\cronometro|Add3~45\) # (!\cronometro|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(23),
	datad => VCC,
	cin => \cronometro|Add3~45\,
	combout => \cronometro|Add3~46_combout\,
	cout => \cronometro|Add3~47\);

-- Location: FF_X75_Y33_N15
\cronometro|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~46_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(23));

-- Location: LCCOMB_X74_Y34_N10
\cronometro|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~2_combout\ = (!\cronometro|cnt\(23) & (!\cronometro|cnt\(22) & (!\cronometro|cnt\(20) & !\cronometro|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(23),
	datab => \cronometro|cnt\(22),
	datac => \cronometro|cnt\(20),
	datad => \cronometro|cnt\(21),
	combout => \cronometro|Equal2~2_combout\);

-- Location: LCCOMB_X74_Y34_N24
\cronometro|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~3_combout\ = (!\cronometro|cnt\(17) & (!\cronometro|cnt\(16) & (!\cronometro|cnt\(18) & !\cronometro|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(17),
	datab => \cronometro|cnt\(16),
	datac => \cronometro|cnt\(18),
	datad => \cronometro|cnt\(19),
	combout => \cronometro|Equal2~3_combout\);

-- Location: LCCOMB_X75_Y33_N16
\cronometro|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~48_combout\ = (\cronometro|cnt\(24) & (\cronometro|Add3~47\ $ (GND))) # (!\cronometro|cnt\(24) & (!\cronometro|Add3~47\ & VCC))
-- \cronometro|Add3~49\ = CARRY((\cronometro|cnt\(24) & !\cronometro|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(24),
	datad => VCC,
	cin => \cronometro|Add3~47\,
	combout => \cronometro|Add3~48_combout\,
	cout => \cronometro|Add3~49\);

-- Location: FF_X75_Y33_N17
\cronometro|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~48_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(24));

-- Location: LCCOMB_X75_Y33_N18
\cronometro|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~50_combout\ = (\cronometro|cnt\(25) & (!\cronometro|Add3~49\)) # (!\cronometro|cnt\(25) & ((\cronometro|Add3~49\) # (GND)))
-- \cronometro|Add3~51\ = CARRY((!\cronometro|Add3~49\) # (!\cronometro|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(25),
	datad => VCC,
	cin => \cronometro|Add3~49\,
	combout => \cronometro|Add3~50_combout\,
	cout => \cronometro|Add3~51\);

-- Location: FF_X75_Y33_N19
\cronometro|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~50_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(25));

-- Location: LCCOMB_X75_Y33_N20
\cronometro|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~52_combout\ = (\cronometro|cnt\(26) & (\cronometro|Add3~51\ $ (GND))) # (!\cronometro|cnt\(26) & (!\cronometro|Add3~51\ & VCC))
-- \cronometro|Add3~53\ = CARRY((\cronometro|cnt\(26) & !\cronometro|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(26),
	datad => VCC,
	cin => \cronometro|Add3~51\,
	combout => \cronometro|Add3~52_combout\,
	cout => \cronometro|Add3~53\);

-- Location: FF_X75_Y33_N21
\cronometro|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~52_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(26));

-- Location: LCCOMB_X75_Y33_N22
\cronometro|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~54_combout\ = (\cronometro|cnt\(27) & (!\cronometro|Add3~53\)) # (!\cronometro|cnt\(27) & ((\cronometro|Add3~53\) # (GND)))
-- \cronometro|Add3~55\ = CARRY((!\cronometro|Add3~53\) # (!\cronometro|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(27),
	datad => VCC,
	cin => \cronometro|Add3~53\,
	combout => \cronometro|Add3~54_combout\,
	cout => \cronometro|Add3~55\);

-- Location: FF_X75_Y33_N23
\cronometro|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~54_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(27));

-- Location: LCCOMB_X74_Y33_N20
\cronometro|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~1_combout\ = (!\cronometro|cnt\(26) & (!\cronometro|cnt\(25) & (!\cronometro|cnt\(24) & !\cronometro|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(26),
	datab => \cronometro|cnt\(25),
	datac => \cronometro|cnt\(24),
	datad => \cronometro|cnt\(27),
	combout => \cronometro|Equal2~1_combout\);

-- Location: LCCOMB_X75_Y33_N24
\cronometro|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~56_combout\ = (\cronometro|cnt\(28) & (\cronometro|Add3~55\ $ (GND))) # (!\cronometro|cnt\(28) & (!\cronometro|Add3~55\ & VCC))
-- \cronometro|Add3~57\ = CARRY((\cronometro|cnt\(28) & !\cronometro|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(28),
	datad => VCC,
	cin => \cronometro|Add3~55\,
	combout => \cronometro|Add3~56_combout\,
	cout => \cronometro|Add3~57\);

-- Location: FF_X75_Y33_N25
\cronometro|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~56_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(28));

-- Location: LCCOMB_X75_Y33_N26
\cronometro|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~58_combout\ = (\cronometro|cnt\(29) & (!\cronometro|Add3~57\)) # (!\cronometro|cnt\(29) & ((\cronometro|Add3~57\) # (GND)))
-- \cronometro|Add3~59\ = CARRY((!\cronometro|Add3~57\) # (!\cronometro|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(29),
	datad => VCC,
	cin => \cronometro|Add3~57\,
	combout => \cronometro|Add3~58_combout\,
	cout => \cronometro|Add3~59\);

-- Location: FF_X75_Y33_N27
\cronometro|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~58_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(29));

-- Location: LCCOMB_X75_Y33_N28
\cronometro|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~60_combout\ = (\cronometro|cnt\(30) & (\cronometro|Add3~59\ $ (GND))) # (!\cronometro|cnt\(30) & (!\cronometro|Add3~59\ & VCC))
-- \cronometro|Add3~61\ = CARRY((\cronometro|cnt\(30) & !\cronometro|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cronometro|cnt\(30),
	datad => VCC,
	cin => \cronometro|Add3~59\,
	combout => \cronometro|Add3~60_combout\,
	cout => \cronometro|Add3~61\);

-- Location: FF_X75_Y33_N29
\cronometro|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~60_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(30));

-- Location: LCCOMB_X75_Y33_N30
\cronometro|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Add3~62_combout\ = \cronometro|cnt\(31) $ (\cronometro|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(31),
	cin => \cronometro|Add3~61\,
	combout => \cronometro|Add3~62_combout\);

-- Location: FF_X75_Y33_N31
\cronometro|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cronometro|Add3~62_combout\,
	clrn => \LedSelect|ledOut~q\,
	ena => \cronometro|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|cnt\(31));

-- Location: LCCOMB_X74_Y34_N28
\cronometro|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~0_combout\ = (!\cronometro|cnt\(31) & (!\cronometro|cnt\(29) & (!\cronometro|cnt\(28) & !\cronometro|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|cnt\(31),
	datab => \cronometro|cnt\(29),
	datac => \cronometro|cnt\(28),
	datad => \cronometro|cnt\(30),
	combout => \cronometro|Equal2~0_combout\);

-- Location: LCCOMB_X74_Y34_N18
\cronometro|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~4_combout\ = (\cronometro|Equal2~2_combout\ & (\cronometro|Equal2~3_combout\ & (\cronometro|Equal2~1_combout\ & \cronometro|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal2~2_combout\,
	datab => \cronometro|Equal2~3_combout\,
	datac => \cronometro|Equal2~1_combout\,
	datad => \cronometro|Equal2~0_combout\,
	combout => \cronometro|Equal2~4_combout\);

-- Location: LCCOMB_X74_Y34_N16
\cronometro|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|Equal2~10_combout\ = (\cronometro|Equal2~9_combout\ & (\cronometro|Equal2~7_combout\ & (\cronometro|Equal2~8_combout\ & \cronometro|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal2~9_combout\,
	datab => \cronometro|Equal2~7_combout\,
	datac => \cronometro|Equal2~8_combout\,
	datad => \cronometro|Equal2~4_combout\,
	combout => \cronometro|Equal2~10_combout\);

-- Location: LCCOMB_X74_Y33_N8
\cronometro|s_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cronometro|s_led~0_combout\ = \cronometro|s_led~q\ $ (((\cronometro|Equal0~10_combout\ & (\cronometro|Equal1~1_combout\ & \cronometro|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|Equal0~10_combout\,
	datab => \cronometro|Equal1~1_combout\,
	datac => \cronometro|s_led~q\,
	datad => \cronometro|Equal2~10_combout\,
	combout => \cronometro|s_led~0_combout\);

-- Location: FF_X74_Y33_N9
\cronometro|s_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \cronometro|s_led~0_combout\,
	clrn => \LedSelect|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cronometro|s_led~q\);

-- Location: LCCOMB_X74_Y33_N16
\product_select|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \product_select|PS~13_combout\ = (!\SW[3]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \product_select|PS~13_combout\);

-- Location: LCCOMB_X74_Y33_N30
\led|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|PS~15_combout\ = (\product_select|PS~10_combout\ & (!\product_select|PS~13_combout\ & ((\led|PS.E1~q\) # (\LedSelect|ledOut~q\)))) # (!\product_select|PS~10_combout\ & (((\led|PS.E1~q\) # (\LedSelect|ledOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_select|PS~10_combout\,
	datab => \product_select|PS~13_combout\,
	datac => \led|PS.E1~q\,
	datad => \LedSelect|ledOut~q\,
	combout => \led|PS~15_combout\);

-- Location: FF_X74_Y33_N13
\led|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \led|PS~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|PS.E0~q\);

-- Location: LCCOMB_X74_Y33_N12
\led|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|PS~13_combout\ = (\led|PS.E1~q\ & (((!\led|PS.E0~q\ & \LedSelect|ledOut~q\)) # (!\cronometro|s_led~q\))) # (!\led|PS.E1~q\ & (((!\led|PS.E0~q\ & \LedSelect|ledOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|PS.E1~q\,
	datab => \cronometro|s_led~q\,
	datac => \led|PS.E0~q\,
	datad => \LedSelect|ledOut~q\,
	combout => \led|PS~13_combout\);

-- Location: LCCOMB_X74_Y33_N10
\led|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|PS~16_combout\ = (\led|PS~13_combout\ & ((\SW[0]~input_o\) # ((\SW[3]~input_o\) # (!\product_select|PS~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \product_select|PS~10_combout\,
	datac => \led|PS~13_combout\,
	datad => \SW[3]~input_o\,
	combout => \led|PS~16_combout\);

-- Location: FF_X74_Y33_N11
\led|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|PS.E1~q\);

-- Location: LCCOMB_X74_Y33_N4
\led|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|PS~14_combout\ = (\cronometro|s_led~q\ & ((\led|PS.E1~q\) # ((\LedSelect|ledOut~q\ & \led|PS.E2~q\)))) # (!\cronometro|s_led~q\ & (\LedSelect|ledOut~q\ & (\led|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cronometro|s_led~q\,
	datab => \LedSelect|ledOut~q\,
	datac => \led|PS.E2~q\,
	datad => \led|PS.E1~q\,
	combout => \led|PS~14_combout\);

-- Location: LCCOMB_X74_Y33_N24
\led|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|PS~17_combout\ = (\led|PS~14_combout\ & ((\SW[0]~input_o\) # ((\SW[3]~input_o\) # (!\product_select|PS~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \led|PS~14_combout\,
	datac => \SW[3]~input_o\,
	datad => \product_select|PS~10_combout\,
	combout => \led|PS~17_combout\);

-- Location: FF_X74_Y33_N25
\led|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \led|PS~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led|PS.E2~q\);

-- Location: LCCOMB_X74_Y33_N28
\led|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|Selector4~0_combout\ = (\led|PS.E1~q\ & (!\cronometro|s_led~q\ & ((\LedSelect|ledOut~q\) # (!\led|PS.E2~q\)))) # (!\led|PS.E1~q\ & ((\LedSelect|ledOut~q\) # ((!\led|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|PS.E1~q\,
	datab => \LedSelect|ledOut~q\,
	datac => \cronometro|s_led~q\,
	datad => \led|PS.E2~q\,
	combout => \led|Selector4~0_combout\);

-- Location: LCCOMB_X74_Y33_N22
\led|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \led|led~combout\ = (\led|Selector4~0_combout\ & ((\led|PS.E1~q\))) # (!\led|Selector4~0_combout\ & (\led|led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led|led~combout\,
	datac => \led|PS.E1~q\,
	datad => \led|Selector4~0_combout\,
	combout => \led|led~combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


