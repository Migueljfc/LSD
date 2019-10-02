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

-- DATE "06/01/2019 00:25:53"

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

ENTITY 	test IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst6|PS~8_combout\ : std_logic;
SIGNAL \inst6|PS~9_combout\ : std_logic;
SIGNAL \inst6|PS.TR~q\ : std_logic;
SIGNAL \inst6|PS~10_combout\ : std_logic;
SIGNAL \inst6|PS~18_combout\ : std_logic;
SIGNAL \inst6|PS~19_combout\ : std_logic;
SIGNAL \inst6|PS.CQ~q\ : std_logic;
SIGNAL \inst6|PS~20_combout\ : std_logic;
SIGNAL \inst6|PS~21_combout\ : std_logic;
SIGNAL \inst6|PS.CL~q\ : std_logic;
SIGNAL \inst6|PS~15_combout\ : std_logic;
SIGNAL \inst6|PS~22_combout\ : std_logic;
SIGNAL \inst6|PS~23_combout\ : std_logic;
SIGNAL \inst6|PS.CP~q\ : std_logic;
SIGNAL \inst6|PS~13_combout\ : std_logic;
SIGNAL \inst6|PS~14_combout\ : std_logic;
SIGNAL \inst6|PS~16_combout\ : std_logic;
SIGNAL \inst6|PS~17_combout\ : std_logic;
SIGNAL \inst6|PS.E0~q\ : std_logic;
SIGNAL \inst6|PS~11_combout\ : std_logic;
SIGNAL \inst6|PS~12_combout\ : std_logic;
SIGNAL \inst6|PS.CC~q\ : std_logic;
SIGNAL \inst6|EnableBin~combout\ : std_logic;
SIGNAL \inst5|sel~0_combout\ : std_logic;
SIGNAL \inst5|sel[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|sel~1_combout\ : std_logic;
SIGNAL \inst14|mo[2]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst13|Add0~17\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst13|Add0~19\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst13|Add0~21\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst13|Add0~23\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst13|Add0~25\ : std_logic;
SIGNAL \inst13|Add0~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[9]~2_combout\ : std_logic;
SIGNAL \inst13|Add0~27\ : std_logic;
SIGNAL \inst13|Add0~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst13|Add0~29\ : std_logic;
SIGNAL \inst13|Add0~30_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst13|Add0~31\ : std_logic;
SIGNAL \inst13|Add0~32_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst13|Add0~33\ : std_logic;
SIGNAL \inst13|Add0~34_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst13|Add0~35\ : std_logic;
SIGNAL \inst13|Add0~36_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst13|Add0~37\ : std_logic;
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[9]~29_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[9]~4_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[9]~5_combout\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|Add0~35\ : std_logic;
SIGNAL \inst12|Add0~36_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst12|Add0~37\ : std_logic;
SIGNAL \inst12|Add0~38_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst12|Add0~17\ : std_logic;
SIGNAL \inst12|Add0~18_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst12|Add0~19\ : std_logic;
SIGNAL \inst12|Add0~20_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst12|Add0~21\ : std_logic;
SIGNAL \inst12|Add0~22_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst12|Add0~23\ : std_logic;
SIGNAL \inst12|Add0~24_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst12|Add0~25\ : std_logic;
SIGNAL \inst12|Add0~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst12|Add0~27\ : std_logic;
SIGNAL \inst12|Add0~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst12|Add0~29\ : std_logic;
SIGNAL \inst12|Add0~30_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst12|Add0~31\ : std_logic;
SIGNAL \inst12|Add0~32_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst12|Add0~33\ : std_logic;
SIGNAL \inst12|Add0~34_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst11|s_dirtyIn~q\ : std_logic;
SIGNAL \inst11|s_previousIn~q\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[7]~4_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst11|Add0~23\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst11|Add0~25\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst11|Add0~27\ : std_logic;
SIGNAL \inst11|Add0~28_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst11|Add0~29\ : std_logic;
SIGNAL \inst11|Add0~30_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst11|Add0~31\ : std_logic;
SIGNAL \inst11|Add0~32_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst11|Add0~33\ : std_logic;
SIGNAL \inst11|Add0~34_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst11|Add0~35\ : std_logic;
SIGNAL \inst11|Add0~36_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst11|Add0~37\ : std_logic;
SIGNAL \inst11|Add0~38_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst11|Add0~39\ : std_logic;
SIGNAL \inst11|Add0~40_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst11|Add0~41\ : std_logic;
SIGNAL \inst11|Add0~42_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst11|LessThan0~5_combout\ : std_logic;
SIGNAL \inst11|LessThan0~2_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_combout\ : std_logic;
SIGNAL \inst11|LessThan0~3_combout\ : std_logic;
SIGNAL \inst11|LessThan0~4_combout\ : std_logic;
SIGNAL \inst11|LessThan0~6_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[7]~2_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[7]~29_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst11|Add0~43\ : std_logic;
SIGNAL \inst11|Add0~44_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[7]~5_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst10|s_dirtyIn~q\ : std_logic;
SIGNAL \inst10|s_previousIn~q\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Add0~37\ : std_logic;
SIGNAL \inst10|Add0~38_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst10|Add0~39\ : std_logic;
SIGNAL \inst10|Add0~40_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst10|LessThan0~5_combout\ : std_logic;
SIGNAL \inst10|LessThan0~2_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst10|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|LessThan0~1_combout\ : std_logic;
SIGNAL \inst10|LessThan0~3_combout\ : std_logic;
SIGNAL \inst10|LessThan0~4_combout\ : std_logic;
SIGNAL \inst10|LessThan0~6_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~2_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst10|Add0~23\ : std_logic;
SIGNAL \inst10|Add0~24_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst10|Add0~25\ : std_logic;
SIGNAL \inst10|Add0~26_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst10|Add0~27\ : std_logic;
SIGNAL \inst10|Add0~28_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst10|Add0~29\ : std_logic;
SIGNAL \inst10|Add0~30_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst10|Add0~31\ : std_logic;
SIGNAL \inst10|Add0~32_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst10|Add0~33\ : std_logic;
SIGNAL \inst10|Add0~34_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst10|Add0~35\ : std_logic;
SIGNAL \inst10|Add0~36_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~29_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~4_combout\ : std_logic;
SIGNAL \inst10|Add0~41\ : std_logic;
SIGNAL \inst10|Add0~42_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst10|Add0~43\ : std_logic;
SIGNAL \inst10|Add0~44_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~5_combout\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~q\ : std_logic;
SIGNAL \inst4|PS~14_combout\ : std_logic;
SIGNAL \inst9|PS~19_combout\ : std_logic;
SIGNAL \inst9|PS.E0~q\ : std_logic;
SIGNAL \inst9|PS~9_combout\ : std_logic;
SIGNAL \inst9|PS~10_combout\ : std_logic;
SIGNAL \inst9|PS.E1~q\ : std_logic;
SIGNAL \inst4|NS~0_combout\ : std_logic;
SIGNAL \inst9|PS~20_combout\ : std_logic;
SIGNAL \inst9|PS~21_combout\ : std_logic;
SIGNAL \inst9|PS.E2~q\ : std_logic;
SIGNAL \inst9|PS~11_combout\ : std_logic;
SIGNAL \inst9|PS~12_combout\ : std_logic;
SIGNAL \inst9|PS.E3~q\ : std_logic;
SIGNAL \inst9|PS~16_combout\ : std_logic;
SIGNAL \inst9|PS~17_combout\ : std_logic;
SIGNAL \inst9|PS~18_combout\ : std_logic;
SIGNAL \inst9|PS.E4~q\ : std_logic;
SIGNAL \inst9|PS~13_combout\ : std_logic;
SIGNAL \inst9|PS~14_combout\ : std_logic;
SIGNAL \inst9|PS~15_combout\ : std_logic;
SIGNAL \inst9|PS.E5~q\ : std_logic;
SIGNAL \inst4|NS~3_combout\ : std_logic;
SIGNAL \inst4|NS~1_combout\ : std_logic;
SIGNAL \inst9|PS~23_combout\ : std_logic;
SIGNAL \inst9|PS~24_combout\ : std_logic;
SIGNAL \inst4|NS~2_combout\ : std_logic;
SIGNAL \inst9|PS~22_combout\ : std_logic;
SIGNAL \inst9|PS~25_combout\ : std_logic;
SIGNAL \inst9|PS.E6~q\ : std_logic;
SIGNAL \inst9|WideOr1~0_combout\ : std_logic;
SIGNAL \inst3|PS~18_combout\ : std_logic;
SIGNAL \inst3|PS.E0~q\ : std_logic;
SIGNAL \inst3|PS~30_combout\ : std_logic;
SIGNAL \inst3|PS~31_combout\ : std_logic;
SIGNAL \inst3|PS.E1~q\ : std_logic;
SIGNAL \inst3|PS~16_combout\ : std_logic;
SIGNAL \inst3|PS~17_combout\ : std_logic;
SIGNAL \inst3|PS.E2~q\ : std_logic;
SIGNAL \inst3|PS~25_combout\ : std_logic;
SIGNAL \inst3|PS~26_combout\ : std_logic;
SIGNAL \inst3|PS.E3~q\ : std_logic;
SIGNAL \inst3|PS~13_combout\ : std_logic;
SIGNAL \inst3|PS~14_combout\ : std_logic;
SIGNAL \inst3|PS~15_combout\ : std_logic;
SIGNAL \inst3|PS.E4~q\ : std_logic;
SIGNAL \inst3|PS~32_combout\ : std_logic;
SIGNAL \inst3|PS~33_combout\ : std_logic;
SIGNAL \inst3|PS~34_combout\ : std_logic;
SIGNAL \inst3|PS.E5~q\ : std_logic;
SIGNAL \inst3|PS~19_combout\ : std_logic;
SIGNAL \inst3|PS~20_combout\ : std_logic;
SIGNAL \inst3|PS~21_combout\ : std_logic;
SIGNAL \inst3|PS.E6~q\ : std_logic;
SIGNAL \inst3|PS~35_combout\ : std_logic;
SIGNAL \inst3|PS~27_combout\ : std_logic;
SIGNAL \inst3|PS~28_combout\ : std_logic;
SIGNAL \inst3|PS~29_combout\ : std_logic;
SIGNAL \inst3|PS.E7~q\ : std_logic;
SIGNAL \inst3|PS~22_combout\ : std_logic;
SIGNAL \inst3|PS~23_combout\ : std_logic;
SIGNAL \inst3|PS~24_combout\ : std_logic;
SIGNAL \inst3|PS.E8~q\ : std_logic;
SIGNAL \inst3|PS~12_combout\ : std_logic;
SIGNAL \inst3|PS~36_combout\ : std_logic;
SIGNAL \inst3|PS~37_combout\ : std_logic;
SIGNAL \inst3|PS~38_combout\ : std_logic;
SIGNAL \inst3|PS.E9~q\ : std_logic;
SIGNAL \inst3|WideOr2~0_combout\ : std_logic;
SIGNAL \inst5|sel~2_combout\ : std_logic;
SIGNAL \inst14|mo[2]~1_combout\ : std_logic;
SIGNAL \inst2|PS~19_combout\ : std_logic;
SIGNAL \inst2|PS.E0~q\ : std_logic;
SIGNAL \inst2|PS~9_combout\ : std_logic;
SIGNAL \inst2|PS~10_combout\ : std_logic;
SIGNAL \inst2|PS.E1~q\ : std_logic;
SIGNAL \inst2|PS~20_combout\ : std_logic;
SIGNAL \inst2|PS~21_combout\ : std_logic;
SIGNAL \inst2|PS.E2~q\ : std_logic;
SIGNAL \inst2|PS~11_combout\ : std_logic;
SIGNAL \inst2|PS~12_combout\ : std_logic;
SIGNAL \inst2|PS.E3~q\ : std_logic;
SIGNAL \inst2|PS~16_combout\ : std_logic;
SIGNAL \inst2|PS~17_combout\ : std_logic;
SIGNAL \inst2|PS~18_combout\ : std_logic;
SIGNAL \inst2|PS.E4~q\ : std_logic;
SIGNAL \inst2|PS~13_combout\ : std_logic;
SIGNAL \inst2|PS~14_combout\ : std_logic;
SIGNAL \inst2|PS~15_combout\ : std_logic;
SIGNAL \inst2|PS.E5~q\ : std_logic;
SIGNAL \inst2|PS~22_combout\ : std_logic;
SIGNAL \inst2|PS~23_combout\ : std_logic;
SIGNAL \inst2|PS~24_combout\ : std_logic;
SIGNAL \inst2|PS~25_combout\ : std_logic;
SIGNAL \inst2|PS.E6~q\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst14|mo[2]~2_combout\ : std_logic;
SIGNAL \inst4|PS~15_combout\ : std_logic;
SIGNAL \inst4|PS.E0~q\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|PS.E1~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|Selector2~1_combout\ : std_logic;
SIGNAL \inst4|PS.E2~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|Selector3~1_combout\ : std_logic;
SIGNAL \inst4|PS.E3~q\ : std_logic;
SIGNAL \inst4|WideOr2~0_combout\ : std_logic;
SIGNAL \inst4|Selector4~1_combout\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|Selector4~2_combout\ : std_logic;
SIGNAL \inst4|PS.E4~q\ : std_logic;
SIGNAL \inst4|Selector5~0_combout\ : std_logic;
SIGNAL \inst4|Selector5~1_combout\ : std_logic;
SIGNAL \inst4|Selector5~2_combout\ : std_logic;
SIGNAL \inst4|PS.E5~q\ : std_logic;
SIGNAL \inst4|Selector6~1_combout\ : std_logic;
SIGNAL \inst4|Selector6~0_combout\ : std_logic;
SIGNAL \inst4|Selector6~2_combout\ : std_logic;
SIGNAL \inst4|PS.E6~q\ : std_logic;
SIGNAL \inst4|Selector8~0_combout\ : std_logic;
SIGNAL \inst4|Selector7~0_combout\ : std_logic;
SIGNAL \inst4|Selector7~1_combout\ : std_logic;
SIGNAL \inst4|Selector7~2_combout\ : std_logic;
SIGNAL \inst4|PS.E7~q\ : std_logic;
SIGNAL \inst4|Selector8~1_combout\ : std_logic;
SIGNAL \inst4|Selector8~2_combout\ : std_logic;
SIGNAL \inst4|PS.E8~q\ : std_logic;
SIGNAL \inst4|PS~13_combout\ : std_logic;
SIGNAL \inst4|PS~16_combout\ : std_logic;
SIGNAL \inst4|PS~17_combout\ : std_logic;
SIGNAL \inst4|PS~18_combout\ : std_logic;
SIGNAL \inst4|Selector9~1_combout\ : std_logic;
SIGNAL \inst4|Selector9~2_combout\ : std_logic;
SIGNAL \inst4|PS.E9~q\ : std_logic;
SIGNAL \inst4|Selector9~0_combout\ : std_logic;
SIGNAL \inst4|PS~19_combout\ : std_logic;
SIGNAL \inst4|PS.E10~q\ : std_logic;
SIGNAL \inst4|WideOr2~combout\ : std_logic;
SIGNAL \inst14|mo~15_combout\ : std_logic;
SIGNAL \inst14|mo~16_combout\ : std_logic;
SIGNAL \inst14|mo~17_combout\ : std_logic;
SIGNAL \inst14|mo~9_combout\ : std_logic;
SIGNAL \inst14|mo~10_combout\ : std_logic;
SIGNAL \inst14|mo~11_combout\ : std_logic;
SIGNAL \inst9|WideOr7~0_combout\ : std_logic;
SIGNAL \inst3|WideOr1~combout\ : std_logic;
SIGNAL \inst2|WideOr7~0_combout\ : std_logic;
SIGNAL \inst4|WideOr1~0_combout\ : std_logic;
SIGNAL \inst14|mo~12_combout\ : std_logic;
SIGNAL \inst14|mo~13_combout\ : std_logic;
SIGNAL \inst14|mo~14_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \inst9|WideOr2~0_combout\ : std_logic;
SIGNAL \inst3|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|WideOr3~combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst4|WideOr3~0_combout\ : std_logic;
SIGNAL \inst4|WideOr3~combout\ : std_logic;
SIGNAL \inst14|mo~18_combout\ : std_logic;
SIGNAL \inst14|mo~19_combout\ : std_logic;
SIGNAL \inst14|mo~20_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \inst9|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst4|WideOr4~combout\ : std_logic;
SIGNAL \inst14|mo~6_combout\ : std_logic;
SIGNAL \inst14|mo~7_combout\ : std_logic;
SIGNAL \inst14|mo~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \inst3|WideOr5~combout\ : std_logic;
SIGNAL \inst9|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst4|WideOr5~combout\ : std_logic;
SIGNAL \inst14|mo~3_combout\ : std_logic;
SIGNAL \inst14|mo~4_combout\ : std_logic;
SIGNAL \inst14|mo~5_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \inst|decOut_n~6_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~4_combout\ : std_logic;
SIGNAL \inst|decOut_n~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \inst|decOut_n~7_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~11_combout\ : std_logic;
SIGNAL \inst|decOut_n~12_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~15_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~16_combout\ : std_logic;
SIGNAL \inst|decOut_n~13_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~14_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~17_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~34_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~18_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~19_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \inst|decOut_n~22_combout\ : std_logic;
SIGNAL \inst|decOut_n~20_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~23_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~24_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~25_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~26_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~27_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~28_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~30_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~31_combout\ : std_logic;
SIGNAL \inst|decOut_n~29_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~32_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~33_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|decOut_n~7_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~56_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~57_combout\ : std_logic;
SIGNAL \inst1|decOut_n~11_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~15_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~13_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~14_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~16_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~17_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~19_combout\ : std_logic;
SIGNAL \inst1|decOut_n~21_combout\ : std_logic;
SIGNAL \inst1|decOut_n~22_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~20_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~23_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~24_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~25_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~26_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~27_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~18_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~28_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~29_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~33_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~51_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~31_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~30_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \inst1|decOut_n~37_combout\ : std_logic;
SIGNAL \inst1|decOut_n~39_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~40_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~36_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~38_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~52_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~53_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~42_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~44_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~41_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~45_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~46_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~47_combout\ : std_logic;
SIGNAL \inst1|decOut_n~48_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~43_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~49_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~50_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~54_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~55_combout\ : std_logic;
SIGNAL \inst28|Add0~0_combout\ : std_logic;
SIGNAL \inst28|cont~7_combout\ : std_logic;
SIGNAL \inst8|process_0~0_combout\ : std_logic;
SIGNAL \inst8|process_0~1_combout\ : std_logic;
SIGNAL \inst8|process_0~2_combout\ : std_logic;
SIGNAL \inst8|ledOut~q\ : std_logic;
SIGNAL \inst28|Add0~1\ : std_logic;
SIGNAL \inst28|Add0~2_combout\ : std_logic;
SIGNAL \inst28|Add0~3\ : std_logic;
SIGNAL \inst28|Add0~4_combout\ : std_logic;
SIGNAL \inst28|Add0~5\ : std_logic;
SIGNAL \inst28|Add0~6_combout\ : std_logic;
SIGNAL \inst28|Equal0~9_combout\ : std_logic;
SIGNAL \inst28|Add0~7\ : std_logic;
SIGNAL \inst28|Add0~8_combout\ : std_logic;
SIGNAL \inst28|Add0~9\ : std_logic;
SIGNAL \inst28|Add0~10_combout\ : std_logic;
SIGNAL \inst28|cont~6_combout\ : std_logic;
SIGNAL \inst28|Add0~11\ : std_logic;
SIGNAL \inst28|Add0~12_combout\ : std_logic;
SIGNAL \inst28|Add0~13\ : std_logic;
SIGNAL \inst28|Add0~14_combout\ : std_logic;
SIGNAL \inst28|Equal0~8_combout\ : std_logic;
SIGNAL \inst28|Add0~15\ : std_logic;
SIGNAL \inst28|Add0~16_combout\ : std_logic;
SIGNAL \inst28|cont~5_combout\ : std_logic;
SIGNAL \inst28|Add0~17\ : std_logic;
SIGNAL \inst28|Add0~18_combout\ : std_logic;
SIGNAL \inst28|Add0~19\ : std_logic;
SIGNAL \inst28|Add0~20_combout\ : std_logic;
SIGNAL \inst28|Add0~21\ : std_logic;
SIGNAL \inst28|Add0~22_combout\ : std_logic;
SIGNAL \inst28|Add0~23\ : std_logic;
SIGNAL \inst28|Add0~24_combout\ : std_logic;
SIGNAL \inst28|Add0~25\ : std_logic;
SIGNAL \inst28|Add0~26_combout\ : std_logic;
SIGNAL \inst28|cont~4_combout\ : std_logic;
SIGNAL \inst28|Add0~27\ : std_logic;
SIGNAL \inst28|Add0~28_combout\ : std_logic;
SIGNAL \inst28|Add0~29\ : std_logic;
SIGNAL \inst28|Add0~30_combout\ : std_logic;
SIGNAL \inst28|cont~3_combout\ : std_logic;
SIGNAL \inst28|Equal0~5_combout\ : std_logic;
SIGNAL \inst28|Equal0~6_combout\ : std_logic;
SIGNAL \inst28|Equal0~7_combout\ : std_logic;
SIGNAL \inst28|Add0~31\ : std_logic;
SIGNAL \inst28|Add0~32_combout\ : std_logic;
SIGNAL \inst28|cont~2_combout\ : std_logic;
SIGNAL \inst28|Add0~33\ : std_logic;
SIGNAL \inst28|Add0~34_combout\ : std_logic;
SIGNAL \inst28|cont~1_combout\ : std_logic;
SIGNAL \inst28|Add0~35\ : std_logic;
SIGNAL \inst28|Add0~36_combout\ : std_logic;
SIGNAL \inst28|cont~0_combout\ : std_logic;
SIGNAL \inst28|Add0~37\ : std_logic;
SIGNAL \inst28|Add0~38_combout\ : std_logic;
SIGNAL \inst28|Add0~39\ : std_logic;
SIGNAL \inst28|Add0~40_combout\ : std_logic;
SIGNAL \inst28|Add0~41\ : std_logic;
SIGNAL \inst28|Add0~42_combout\ : std_logic;
SIGNAL \inst28|Add0~43\ : std_logic;
SIGNAL \inst28|Add0~44_combout\ : std_logic;
SIGNAL \inst28|Add0~45\ : std_logic;
SIGNAL \inst28|Add0~46_combout\ : std_logic;
SIGNAL \inst28|Add0~47\ : std_logic;
SIGNAL \inst28|Add0~48_combout\ : std_logic;
SIGNAL \inst28|Add0~49\ : std_logic;
SIGNAL \inst28|Add0~50_combout\ : std_logic;
SIGNAL \inst28|Add0~51\ : std_logic;
SIGNAL \inst28|Add0~52_combout\ : std_logic;
SIGNAL \inst28|Add0~53\ : std_logic;
SIGNAL \inst28|Add0~54_combout\ : std_logic;
SIGNAL \inst28|Equal0~1_combout\ : std_logic;
SIGNAL \inst28|Add0~55\ : std_logic;
SIGNAL \inst28|Add0~56_combout\ : std_logic;
SIGNAL \inst28|Add0~57\ : std_logic;
SIGNAL \inst28|Add0~58_combout\ : std_logic;
SIGNAL \inst28|Add0~59\ : std_logic;
SIGNAL \inst28|Add0~60_combout\ : std_logic;
SIGNAL \inst28|Add0~61\ : std_logic;
SIGNAL \inst28|Add0~62_combout\ : std_logic;
SIGNAL \inst28|Equal0~0_combout\ : std_logic;
SIGNAL \inst28|Equal0~2_combout\ : std_logic;
SIGNAL \inst28|Equal0~3_combout\ : std_logic;
SIGNAL \inst28|Equal0~4_combout\ : std_logic;
SIGNAL \inst28|Equal0~10_combout\ : std_logic;
SIGNAL \inst28|Add1~0_combout\ : std_logic;
SIGNAL \inst28|Equal3~1_combout\ : std_logic;
SIGNAL \inst28|var_milseg[6]~0_combout\ : std_logic;
SIGNAL \inst28|var_seg[6]~0_combout\ : std_logic;
SIGNAL \inst28|var_seg[0]~1_combout\ : std_logic;
SIGNAL \inst28|Add2~1_cout\ : std_logic;
SIGNAL \inst28|Add2~2_combout\ : std_logic;
SIGNAL \inst28|var_seg[1]~5_combout\ : std_logic;
SIGNAL \inst28|Add2~3\ : std_logic;
SIGNAL \inst28|Add2~4_combout\ : std_logic;
SIGNAL \inst28|Add2~5\ : std_logic;
SIGNAL \inst28|Add2~6_combout\ : std_logic;
SIGNAL \inst28|var_seg[3]~4_combout\ : std_logic;
SIGNAL \inst28|Add2~7\ : std_logic;
SIGNAL \inst28|Add2~8_combout\ : std_logic;
SIGNAL \inst28|var_seg[4]~3_combout\ : std_logic;
SIGNAL \inst28|Add2~9\ : std_logic;
SIGNAL \inst28|Add2~10_combout\ : std_logic;
SIGNAL \inst28|var_seg[5]~2_combout\ : std_logic;
SIGNAL \inst28|Add2~11\ : std_logic;
SIGNAL \inst28|Add2~12_combout\ : std_logic;
SIGNAL \inst28|Equal3~0_combout\ : std_logic;
SIGNAL \inst28|Add1~19_combout\ : std_logic;
SIGNAL \inst28|Add1~1\ : std_logic;
SIGNAL \inst28|Add1~2_combout\ : std_logic;
SIGNAL \inst28|Add1~18_combout\ : std_logic;
SIGNAL \inst28|Add1~3\ : std_logic;
SIGNAL \inst28|Add1~4_combout\ : std_logic;
SIGNAL \inst28|Add1~20_combout\ : std_logic;
SIGNAL \inst28|Add1~5\ : std_logic;
SIGNAL \inst28|Add1~6_combout\ : std_logic;
SIGNAL \inst28|Add1~17_combout\ : std_logic;
SIGNAL \inst28|Add1~7\ : std_logic;
SIGNAL \inst28|Add1~8_combout\ : std_logic;
SIGNAL \inst28|Add1~16_combout\ : std_logic;
SIGNAL \inst28|Add1~9\ : std_logic;
SIGNAL \inst28|Add1~10_combout\ : std_logic;
SIGNAL \inst28|Add1~15_combout\ : std_logic;
SIGNAL \inst28|Add1~11\ : std_logic;
SIGNAL \inst28|Add1~12_combout\ : std_logic;
SIGNAL \inst28|Add1~14_combout\ : std_logic;
SIGNAL \inst28|Equal1~0_combout\ : std_logic;
SIGNAL \inst28|Equal1~1_combout\ : std_logic;
SIGNAL \inst28|Add3~0_combout\ : std_logic;
SIGNAL \inst28|cnt~2_combout\ : std_logic;
SIGNAL \inst28|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst28|Add3~1\ : std_logic;
SIGNAL \inst28|Add3~2_combout\ : std_logic;
SIGNAL \inst28|cnt~1_combout\ : std_logic;
SIGNAL \inst28|Add3~3\ : std_logic;
SIGNAL \inst28|Add3~4_combout\ : std_logic;
SIGNAL \inst28|Add3~5\ : std_logic;
SIGNAL \inst28|Add3~6_combout\ : std_logic;
SIGNAL \inst28|Add3~7\ : std_logic;
SIGNAL \inst28|Add3~8_combout\ : std_logic;
SIGNAL \inst28|Add3~9\ : std_logic;
SIGNAL \inst28|Add3~10_combout\ : std_logic;
SIGNAL \inst28|Add3~11\ : std_logic;
SIGNAL \inst28|Add3~12_combout\ : std_logic;
SIGNAL \inst28|Add3~13\ : std_logic;
SIGNAL \inst28|Add3~14_combout\ : std_logic;
SIGNAL \inst28|Add3~15\ : std_logic;
SIGNAL \inst28|Add3~16_combout\ : std_logic;
SIGNAL \inst28|Add3~17\ : std_logic;
SIGNAL \inst28|Add3~18_combout\ : std_logic;
SIGNAL \inst28|Add3~19\ : std_logic;
SIGNAL \inst28|Add3~20_combout\ : std_logic;
SIGNAL \inst28|Add3~21\ : std_logic;
SIGNAL \inst28|Add3~22_combout\ : std_logic;
SIGNAL \inst28|Add3~23\ : std_logic;
SIGNAL \inst28|Add3~24_combout\ : std_logic;
SIGNAL \inst28|Add3~25\ : std_logic;
SIGNAL \inst28|Add3~26_combout\ : std_logic;
SIGNAL \inst28|Add3~27\ : std_logic;
SIGNAL \inst28|Add3~28_combout\ : std_logic;
SIGNAL \inst28|Add3~29\ : std_logic;
SIGNAL \inst28|Add3~30_combout\ : std_logic;
SIGNAL \inst28|Add3~31\ : std_logic;
SIGNAL \inst28|Add3~32_combout\ : std_logic;
SIGNAL \inst28|Add3~33\ : std_logic;
SIGNAL \inst28|Add3~34_combout\ : std_logic;
SIGNAL \inst28|Add3~35\ : std_logic;
SIGNAL \inst28|Add3~36_combout\ : std_logic;
SIGNAL \inst28|Add3~37\ : std_logic;
SIGNAL \inst28|Add3~38_combout\ : std_logic;
SIGNAL \inst28|Add3~39\ : std_logic;
SIGNAL \inst28|Add3~40_combout\ : std_logic;
SIGNAL \inst28|Add3~41\ : std_logic;
SIGNAL \inst28|Add3~42_combout\ : std_logic;
SIGNAL \inst28|Add3~43\ : std_logic;
SIGNAL \inst28|Add3~44_combout\ : std_logic;
SIGNAL \inst28|Add3~45\ : std_logic;
SIGNAL \inst28|Add3~46_combout\ : std_logic;
SIGNAL \inst28|Equal2~2_combout\ : std_logic;
SIGNAL \inst28|Add3~47\ : std_logic;
SIGNAL \inst28|Add3~48_combout\ : std_logic;
SIGNAL \inst28|Add3~49\ : std_logic;
SIGNAL \inst28|Add3~50_combout\ : std_logic;
SIGNAL \inst28|Add3~51\ : std_logic;
SIGNAL \inst28|Add3~52_combout\ : std_logic;
SIGNAL \inst28|Add3~53\ : std_logic;
SIGNAL \inst28|Add3~54_combout\ : std_logic;
SIGNAL \inst28|Equal2~1_combout\ : std_logic;
SIGNAL \inst28|Equal2~3_combout\ : std_logic;
SIGNAL \inst28|Add3~55\ : std_logic;
SIGNAL \inst28|Add3~56_combout\ : std_logic;
SIGNAL \inst28|Add3~57\ : std_logic;
SIGNAL \inst28|Add3~58_combout\ : std_logic;
SIGNAL \inst28|Add3~59\ : std_logic;
SIGNAL \inst28|Add3~60_combout\ : std_logic;
SIGNAL \inst28|Add3~61\ : std_logic;
SIGNAL \inst28|Add3~62_combout\ : std_logic;
SIGNAL \inst28|Equal2~0_combout\ : std_logic;
SIGNAL \inst28|Equal2~4_combout\ : std_logic;
SIGNAL \inst28|Equal2~8_combout\ : std_logic;
SIGNAL \inst28|Equal2~9_combout\ : std_logic;
SIGNAL \inst28|Equal2~5_combout\ : std_logic;
SIGNAL \inst28|Equal2~6_combout\ : std_logic;
SIGNAL \inst28|Equal2~7_combout\ : std_logic;
SIGNAL \inst28|Equal2~10_combout\ : std_logic;
SIGNAL \inst28|s_led~0_combout\ : std_logic;
SIGNAL \inst28|s_led~q\ : std_logic;
SIGNAL \inst29|Selector0~0_combout\ : std_logic;
SIGNAL \inst29|PS.E0~q\ : std_logic;
SIGNAL \inst29|Selector1~0_combout\ : std_logic;
SIGNAL \inst29|PS.E1~q\ : std_logic;
SIGNAL \inst29|Selector2~0_combout\ : std_logic;
SIGNAL \inst29|PS.E2~q\ : std_logic;
SIGNAL \inst29|Selector4~0_combout\ : std_logic;
SIGNAL \inst29|led~combout\ : std_logic;
SIGNAL \inst14|mo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst11|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst28|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst28|var_milseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst28|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst10|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst28|var_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst6|ALT_INV_PS.CP~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst6|ALT_INV_PS.CP~q\ <= NOT \inst6|PS.CP~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[6]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[5]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[4]~34_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[3]~36_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[2]~23_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[1]~28_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[0]~33_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[6]~57_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[5]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[4]~29_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[3]~35_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[2]~52_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[1]~47_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[0]~55_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|led~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X82_Y41_N12
\inst6|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~8_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[0]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~8_combout\);

-- Location: LCCOMB_X82_Y41_N10
\inst6|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~9_combout\ = (!\SW[4]~input_o\ & \inst6|PS~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => \inst6|PS~8_combout\,
	combout => \inst6|PS~9_combout\);

-- Location: FF_X79_Y41_N13
\inst6|PS.TR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst6|PS~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.TR~q\);

-- Location: LCCOMB_X82_Y41_N20
\inst6|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~10_combout\ = (!\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~10_combout\);

-- Location: LCCOMB_X82_Y41_N2
\inst6|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~18_combout\ = (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|PS~18_combout\);

-- Location: LCCOMB_X82_Y41_N30
\inst6|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~19_combout\ = (\inst6|PS~18_combout\ & (!\SW[1]~input_o\ & ((\inst6|PS.CQ~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.E0~q\,
	datab => \inst6|PS~18_combout\,
	datac => \inst6|PS.CQ~q\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~19_combout\);

-- Location: FF_X82_Y41_N31
\inst6|PS.CQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|PS~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.CQ~q\);

-- Location: LCCOMB_X82_Y41_N24
\inst6|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~20_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|PS~20_combout\);

-- Location: LCCOMB_X82_Y41_N4
\inst6|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~21_combout\ = (\inst6|PS~20_combout\ & (\SW[1]~input_o\ & ((\inst6|PS.CL~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.E0~q\,
	datab => \inst6|PS~20_combout\,
	datac => \inst6|PS.CL~q\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~21_combout\);

-- Location: FF_X82_Y41_N5
\inst6|PS.CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.CL~q\);

-- Location: LCCOMB_X82_Y41_N26
\inst6|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~15_combout\ = (\inst6|PS.CQ~q\ & (!\SW[2]~input_o\ & (!\inst6|PS.CL~q\))) # (!\inst6|PS.CQ~q\ & (((!\SW[2]~input_o\ & !\inst6|PS.CL~q\)) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \SW[2]~input_o\,
	datac => \inst6|PS.CL~q\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~15_combout\);

-- Location: LCCOMB_X82_Y41_N6
\inst6|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~22_combout\ = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|PS~22_combout\);

-- Location: LCCOMB_X82_Y41_N14
\inst6|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~23_combout\ = (\inst6|PS~22_combout\ & (!\SW[0]~input_o\ & ((\inst6|PS.CP~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS~22_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst6|PS.CP~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~23_combout\);

-- Location: FF_X82_Y41_N15
\inst6|PS.CP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.CP~q\);

-- Location: LCCOMB_X82_Y41_N16
\inst6|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~13_combout\ = (!\SW[0]~input_o\ & (!\inst6|PS.CP~q\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \inst6|PS.CP~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~13_combout\);

-- Location: LCCOMB_X79_Y42_N24
\inst6|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~14_combout\ = (\inst6|PS~10_combout\ & ((\inst6|PS~13_combout\) # ((!\inst6|PS~11_combout\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS~11_combout\,
	datab => \inst6|PS~13_combout\,
	datac => \inst6|PS~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst6|PS~14_combout\);

-- Location: LCCOMB_X82_Y41_N0
\inst6|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~16_combout\ = (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~16_combout\);

-- Location: LCCOMB_X79_Y42_N10
\inst6|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~17_combout\ = (!\SW[4]~input_o\ & (!\inst6|PS~14_combout\ & ((!\inst6|PS~16_combout\) # (!\inst6|PS~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst6|PS~15_combout\,
	datac => \inst6|PS~14_combout\,
	datad => \inst6|PS~16_combout\,
	combout => \inst6|PS~17_combout\);

-- Location: FF_X79_Y42_N11
\inst6|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|PS~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.E0~q\);

-- Location: LCCOMB_X79_Y42_N0
\inst6|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~11_combout\ = (\SW[0]~input_o\ & ((\inst6|PS.CC~q\) # (!\inst6|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst6|PS.CC~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~11_combout\);

-- Location: LCCOMB_X79_Y42_N16
\inst6|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~12_combout\ = (!\SW[4]~input_o\ & (!\SW[3]~input_o\ & (\inst6|PS~10_combout\ & \inst6|PS~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst6|PS~10_combout\,
	datad => \inst6|PS~11_combout\,
	combout => \inst6|PS~12_combout\);

-- Location: FF_X79_Y42_N17
\inst6|PS.CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PS.CC~q\);

-- Location: LCCOMB_X79_Y41_N12
\inst6|EnableBin\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EnableBin~combout\ = (\inst6|PS.CC~q\ & (\inst6|EnableBin~combout\)) # (!\inst6|PS.CC~q\ & ((!\inst6|PS.TR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datac => \inst6|PS.TR~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst6|EnableBin~combout\);

-- Location: LCCOMB_X82_Y40_N12
\inst5|sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~0_combout\ = (!\inst6|PS.CL~q\ & (!\inst6|PS.CP~q\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CL~q\,
	datac => \inst6|PS.CP~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst5|sel~0_combout\);

-- Location: LCCOMB_X86_Y40_N30
\inst5|sel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel[0]~feeder_combout\ = \inst5|sel~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|sel~0_combout\,
	combout => \inst5|sel[0]~feeder_combout\);

-- Location: FF_X86_Y40_N31
\inst5|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|sel[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel\(0));

-- Location: LCCOMB_X83_Y40_N28
\inst5|sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~1_combout\ = (!\inst6|PS.CC~q\ & (\inst6|PS.E0~q\ & (!\inst6|PS.CQ~q\ & !\inst6|PS.CL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CC~q\,
	datab => \inst6|PS.E0~q\,
	datac => \inst6|PS.CQ~q\,
	datad => \inst6|PS.CL~q\,
	combout => \inst5|sel~1_combout\);

-- Location: FF_X86_Y40_N9
\inst5|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|sel~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel\(2));

-- Location: LCCOMB_X86_Y40_N2
\inst14|mo[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[2]~0_combout\ = (\inst5|sel\(0) & !\inst5|sel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(0),
	datad => \inst5|sel\(2),
	combout => \inst14|mo[2]~0_combout\);

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

-- Location: FF_X90_Y37_N9
\inst13|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_dirtyIn~q\);

-- Location: FF_X90_Y37_N1
\inst13|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst13|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_previousIn~q\);

-- Location: LCCOMB_X89_Y38_N10
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|s_debounceCnt\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: LCCOMB_X89_Y38_N12
\inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|s_debounceCnt\(1) & (\inst13|Add0~1\ & VCC)) # (!\inst13|s_debounceCnt\(1) & (!\inst13|Add0~1\))
-- \inst13|Add0~3\ = CARRY((!\inst13|s_debounceCnt\(1) & !\inst13|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: LCCOMB_X89_Y38_N4
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|Add0~2_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~2_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X89_Y38_N5
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X89_Y38_N14
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|s_debounceCnt\(2) & ((GND) # (!\inst13|Add0~3\))) # (!\inst13|s_debounceCnt\(2) & (\inst13|Add0~3\ $ (GND)))
-- \inst13|Add0~5\ = CARRY((\inst13|s_debounceCnt\(2)) # (!\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X89_Y38_N2
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|Add0~4_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~4_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X89_Y38_N3
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X89_Y38_N16
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|s_debounceCnt\(3) & (\inst13|Add0~5\ & VCC)) # (!\inst13|s_debounceCnt\(3) & (!\inst13|Add0~5\))
-- \inst13|Add0~7\ = CARRY((!\inst13|s_debounceCnt\(3) & !\inst13|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X89_Y38_N0
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|Add0~6_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~6_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X89_Y38_N1
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X89_Y38_N18
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|s_debounceCnt\(4) & ((GND) # (!\inst13|Add0~7\))) # (!\inst13|s_debounceCnt\(4) & (\inst13|Add0~7\ $ (GND)))
-- \inst13|Add0~9\ = CARRY((\inst13|s_debounceCnt\(4)) # (!\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X89_Y38_N6
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|Add0~8_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~8_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X89_Y38_N7
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X89_Y38_N20
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|s_debounceCnt\(5) & (\inst13|Add0~9\ & VCC)) # (!\inst13|s_debounceCnt\(5) & (!\inst13|Add0~9\))
-- \inst13|Add0~11\ = CARRY((!\inst13|s_debounceCnt\(5) & !\inst13|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: LCCOMB_X90_Y38_N16
\inst13|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~25_combout\ = (\inst13|Add0~10_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~10_combout\,
	datac => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~25_combout\);

-- Location: FF_X90_Y38_N17
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~25_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X89_Y38_N8
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (!\inst13|s_debounceCnt\(4) & (!\inst13|s_debounceCnt\(3) & (!\inst13|s_debounceCnt\(1) & !\inst13|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(4),
	datab => \inst13|s_debounceCnt\(3),
	datac => \inst13|s_debounceCnt\(1),
	datad => \inst13|s_debounceCnt\(2),
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X89_Y37_N16
\inst13|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~38_combout\ = (\inst13|s_debounceCnt\(19) & (\inst13|Add0~37\ & VCC)) # (!\inst13|s_debounceCnt\(19) & (!\inst13|Add0~37\))
-- \inst13|Add0~39\ = CARRY((!\inst13|s_debounceCnt\(19) & !\inst13|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst13|Add0~37\,
	combout => \inst13|Add0~38_combout\,
	cout => \inst13|Add0~39\);

-- Location: LCCOMB_X89_Y37_N18
\inst13|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~40_combout\ = (\inst13|s_debounceCnt\(20) & ((GND) # (!\inst13|Add0~39\))) # (!\inst13|s_debounceCnt\(20) & (\inst13|Add0~39\ $ (GND)))
-- \inst13|Add0~41\ = CARRY((\inst13|s_debounceCnt\(20)) # (!\inst13|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst13|Add0~39\,
	combout => \inst13|Add0~40_combout\,
	cout => \inst13|Add0~41\);

-- Location: LCCOMB_X90_Y38_N18
\inst13|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~9_combout\ = (\inst13|s_debounceCnt[9]~4_combout\ & (\inst13|s_debounceCnt[9]~5_combout\ & \inst13|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[9]~4_combout\,
	datac => \inst13|s_debounceCnt[9]~5_combout\,
	datad => \inst13|Add0~40_combout\,
	combout => \inst13|s_debounceCnt[20]~9_combout\);

-- Location: FF_X90_Y38_N19
\inst13|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(20));

-- Location: LCCOMB_X91_Y38_N30
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (!\inst13|s_debounceCnt\(21) & !\inst13|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(21),
	datad => \inst13|s_debounceCnt\(20),
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X89_Y38_N22
\inst13|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = (\inst13|s_debounceCnt\(6) & ((GND) # (!\inst13|Add0~11\))) # (!\inst13|s_debounceCnt\(6) & (\inst13|Add0~11\ $ (GND)))
-- \inst13|Add0~13\ = CARRY((\inst13|s_debounceCnt\(6)) # (!\inst13|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

-- Location: LCCOMB_X90_Y38_N8
\inst13|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~3_combout\ = (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~12_combout\,
	datad => \inst13|s_debounceCnt[9]~2_combout\,
	combout => \inst13|s_debounceCnt~3_combout\);

-- Location: FF_X90_Y38_N9
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~3_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X89_Y38_N24
\inst13|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst13|s_debounceCnt\(7) & (\inst13|Add0~13\ & VCC)) # (!\inst13|s_debounceCnt\(7) & (!\inst13|Add0~13\))
-- \inst13|Add0~15\ = CARRY((!\inst13|s_debounceCnt\(7) & !\inst13|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

-- Location: LCCOMB_X90_Y38_N12
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|s_debounceCnt[9]~5_combout\ & \inst13|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[9]~5_combout\,
	datad => \inst13|Add0~14_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X90_Y38_N13
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X89_Y38_N26
\inst13|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|s_debounceCnt\(8) & ((GND) # (!\inst13|Add0~15\))) # (!\inst13|s_debounceCnt\(8) & (\inst13|Add0~15\ $ (GND)))
-- \inst13|Add0~17\ = CARRY((\inst13|s_debounceCnt\(8)) # (!\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: LCCOMB_X90_Y38_N14
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~16_combout\,
	datad => \inst13|s_debounceCnt[9]~2_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X90_Y38_N15
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X89_Y38_N28
\inst13|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = (\inst13|s_debounceCnt\(9) & (\inst13|Add0~17\ & VCC)) # (!\inst13|s_debounceCnt\(9) & (!\inst13|Add0~17\))
-- \inst13|Add0~19\ = CARRY((!\inst13|s_debounceCnt\(9) & !\inst13|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst13|Add0~17\,
	combout => \inst13|Add0~18_combout\,
	cout => \inst13|Add0~19\);

-- Location: LCCOMB_X90_Y38_N20
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|s_debounceCnt[9]~2_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X90_Y38_N21
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X89_Y38_N30
\inst13|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|s_debounceCnt\(10) & ((GND) # (!\inst13|Add0~19\))) # (!\inst13|s_debounceCnt\(10) & (\inst13|Add0~19\ $ (GND)))
-- \inst13|Add0~21\ = CARRY((\inst13|s_debounceCnt\(10)) # (!\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: LCCOMB_X90_Y38_N22
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|s_debounceCnt[9]~5_combout\ & \inst13|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[9]~5_combout\,
	datad => \inst13|Add0~20_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y38_N23
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X89_Y37_N0
\inst13|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = (\inst13|s_debounceCnt\(11) & (\inst13|Add0~21\ & VCC)) # (!\inst13|s_debounceCnt\(11) & (!\inst13|Add0~21\))
-- \inst13|Add0~23\ = CARRY((!\inst13|s_debounceCnt\(11) & !\inst13|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst13|Add0~21\,
	combout => \inst13|Add0~22_combout\,
	cout => \inst13|Add0~23\);

-- Location: LCCOMB_X90_Y37_N30
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~22_combout\,
	datac => \inst13|s_debounceCnt[9]~2_combout\,
	datad => \inst13|s_previousIn~q\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y37_N31
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X89_Y37_N2
\inst13|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = (\inst13|s_debounceCnt\(12) & ((GND) # (!\inst13|Add0~23\))) # (!\inst13|s_debounceCnt\(12) & (\inst13|Add0~23\ $ (GND)))
-- \inst13|Add0~25\ = CARRY((\inst13|s_debounceCnt\(12)) # (!\inst13|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\,
	cout => \inst13|Add0~25\);

-- Location: LCCOMB_X90_Y37_N12
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|Add0~24_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~24_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X90_Y37_N13
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X89_Y37_N4
\inst13|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~26_combout\ = (\inst13|s_debounceCnt\(13) & (\inst13|Add0~25\ & VCC)) # (!\inst13|s_debounceCnt\(13) & (!\inst13|Add0~25\))
-- \inst13|Add0~27\ = CARRY((!\inst13|s_debounceCnt\(13) & !\inst13|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst13|Add0~25\,
	combout => \inst13|Add0~26_combout\,
	cout => \inst13|Add0~27\);

-- Location: LCCOMB_X90_Y37_N24
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|Add0~26_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~26_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X90_Y37_N25
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X90_Y37_N8
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (!\inst13|s_debounceCnt\(12) & !\inst13|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(12),
	datad => \inst13|s_debounceCnt\(13),
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y38_N10
\inst13|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~8_combout\ = (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~7_combout\,
	combout => \inst13|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X90_Y38_N2
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (\inst13|s_debounceCnt\(7)) # ((\inst13|s_debounceCnt\(6) & ((\inst13|s_debounceCnt\(0)) # (!\inst13|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(7),
	datab => \inst13|s_debounceCnt\(6),
	datac => \inst13|s_debounceCnt\(0),
	datad => \inst13|s_pulsedOut~8_combout\,
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y38_N0
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(10)) # ((\inst13|s_debounceCnt\(9) & (\inst13|s_debounceCnt\(8) & \inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(8),
	datac => \inst13|s_debounceCnt\(10),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y38_N6
\inst13|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~3_combout\ = (\inst13|s_debounceCnt\(14) & (((\inst13|s_debounceCnt\(11) & \inst13|LessThan0~1_combout\)) # (!\inst13|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|LessThan0~2_combout\,
	datac => \inst13|s_debounceCnt\(14),
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y38_N28
\inst13|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~4_combout\ = (\inst13|s_debounceCnt\(16)) # ((\inst13|s_debounceCnt\(17)) # ((\inst13|s_debounceCnt\(15)) # (\inst13|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(16),
	datab => \inst13|s_debounceCnt\(17),
	datac => \inst13|s_debounceCnt\(15),
	datad => \inst13|LessThan0~3_combout\,
	combout => \inst13|LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y38_N30
\inst13|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~6_combout\ = ((\inst13|s_debounceCnt\(18) & (\inst13|s_debounceCnt\(19) & \inst13|LessThan0~4_combout\))) # (!\inst13|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datab => \inst13|s_debounceCnt\(19),
	datac => \inst13|LessThan0~5_combout\,
	datad => \inst13|LessThan0~4_combout\,
	combout => \inst13|LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y38_N24
\inst13|s_debounceCnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[9]~2_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[9]~2_combout\);

-- Location: LCCOMB_X89_Y37_N6
\inst13|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~28_combout\ = (\inst13|s_debounceCnt\(14) & ((GND) # (!\inst13|Add0~27\))) # (!\inst13|s_debounceCnt\(14) & (\inst13|Add0~27\ $ (GND)))
-- \inst13|Add0~29\ = CARRY((\inst13|s_debounceCnt\(14)) # (!\inst13|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst13|Add0~27\,
	combout => \inst13|Add0~28_combout\,
	cout => \inst13|Add0~29\);

-- Location: LCCOMB_X90_Y37_N28
\inst13|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~18_combout\ = (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt[9]~2_combout\,
	datad => \inst13|Add0~28_combout\,
	combout => \inst13|s_debounceCnt~18_combout\);

-- Location: FF_X90_Y37_N29
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~18_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X89_Y37_N8
\inst13|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~30_combout\ = (\inst13|s_debounceCnt\(15) & (\inst13|Add0~29\ & VCC)) # (!\inst13|s_debounceCnt\(15) & (!\inst13|Add0~29\))
-- \inst13|Add0~31\ = CARRY((!\inst13|s_debounceCnt\(15) & !\inst13|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst13|Add0~29\,
	combout => \inst13|Add0~30_combout\,
	cout => \inst13|Add0~31\);

-- Location: LCCOMB_X89_Y37_N24
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~30_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X89_Y37_N25
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X89_Y37_N10
\inst13|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~32_combout\ = (\inst13|s_debounceCnt\(16) & ((GND) # (!\inst13|Add0~31\))) # (!\inst13|s_debounceCnt\(16) & (\inst13|Add0~31\ $ (GND)))
-- \inst13|Add0~33\ = CARRY((\inst13|s_debounceCnt\(16)) # (!\inst13|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst13|Add0~31\,
	combout => \inst13|Add0~32_combout\,
	cout => \inst13|Add0~33\);

-- Location: LCCOMB_X89_Y37_N30
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|Add0~32_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~32_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X89_Y37_N31
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X89_Y37_N12
\inst13|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~34_combout\ = (\inst13|s_debounceCnt\(17) & (\inst13|Add0~33\ & VCC)) # (!\inst13|s_debounceCnt\(17) & (!\inst13|Add0~33\))
-- \inst13|Add0~35\ = CARRY((!\inst13|s_debounceCnt\(17) & !\inst13|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst13|Add0~33\,
	combout => \inst13|Add0~34_combout\,
	cout => \inst13|Add0~35\);

-- Location: LCCOMB_X89_Y37_N28
\inst13|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~8_combout\ = (\inst13|Add0~34_combout\ & \inst13|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~34_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt~8_combout\);

-- Location: FF_X89_Y37_N29
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~8_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X89_Y37_N14
\inst13|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~36_combout\ = (\inst13|s_debounceCnt\(18) & ((GND) # (!\inst13|Add0~35\))) # (!\inst13|s_debounceCnt\(18) & (\inst13|Add0~35\ $ (GND)))
-- \inst13|Add0~37\ = CARRY((\inst13|s_debounceCnt\(18)) # (!\inst13|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst13|Add0~35\,
	combout => \inst13|Add0~36_combout\,
	cout => \inst13|Add0~37\);

-- Location: LCCOMB_X90_Y37_N4
\inst13|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~19_combout\ = (\inst13|s_debounceCnt[9]~4_combout\ & (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~36_combout\,
	datab => \inst13|s_debounceCnt[9]~4_combout\,
	datac => \inst13|s_debounceCnt[9]~2_combout\,
	datad => \inst13|s_previousIn~q\,
	combout => \inst13|s_debounceCnt[18]~19_combout\);

-- Location: FF_X90_Y37_N5
\inst13|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(18));

-- Location: LCCOMB_X89_Y37_N26
\inst13|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~20_combout\ = (\inst13|s_debounceCnt[9]~4_combout\ & (\inst13|s_debounceCnt[9]~2_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|Add0~38_combout\,
	datac => \inst13|s_debounceCnt[9]~4_combout\,
	datad => \inst13|s_debounceCnt[9]~2_combout\,
	combout => \inst13|s_debounceCnt[19]~20_combout\);

-- Location: FF_X89_Y37_N27
\inst13|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(19));

-- Location: LCCOMB_X90_Y37_N26
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(19) & (!\inst13|s_debounceCnt\(18) & (!\inst13|s_debounceCnt\(11) & !\inst13|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(19),
	datab => \inst13|s_debounceCnt\(18),
	datac => \inst13|s_debounceCnt\(11),
	datad => \inst13|s_debounceCnt\(14),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X90_Y37_N16
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(13) & (!\inst13|s_debounceCnt\(12) & (!\inst13|s_debounceCnt\(20) & !\inst13|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(13),
	datab => \inst13|s_debounceCnt\(12),
	datac => \inst13|s_debounceCnt\(20),
	datad => \inst13|s_debounceCnt\(21),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X90_Y37_N14
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(16) & (!\inst13|s_debounceCnt\(17) & (!\inst13|s_debounceCnt\(6) & !\inst13|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(16),
	datab => \inst13|s_debounceCnt\(17),
	datac => \inst13|s_debounceCnt\(6),
	datad => \inst13|s_debounceCnt\(15),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X91_Y38_N8
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (!\inst13|s_debounceCnt\(8) & (!\inst13|s_debounceCnt\(10) & (!\inst13|s_debounceCnt\(7) & !\inst13|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datab => \inst13|s_debounceCnt\(10),
	datac => \inst13|s_debounceCnt\(7),
	datad => \inst13|s_debounceCnt\(9),
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y37_N20
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_pulsedOut~5_combout\ & (\inst13|s_pulsedOut~3_combout\ & (\inst13|s_pulsedOut~2_combout\ & \inst13|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~5_combout\,
	datab => \inst13|s_pulsedOut~3_combout\,
	datac => \inst13|s_pulsedOut~2_combout\,
	datad => \inst13|s_pulsedOut~4_combout\,
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y37_N6
\inst13|s_debounceCnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[9]~29_combout\ = (\inst13|s_debounceCnt\(5)) # (((\inst13|s_debounceCnt\(0)) # (!\inst13|s_pulsedOut~6_combout\)) # (!\inst13|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_pulsedOut~7_combout\,
	datac => \inst13|s_debounceCnt\(0),
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_debounceCnt[9]~29_combout\);

-- Location: LCCOMB_X90_Y37_N0
\inst13|s_debounceCnt[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[9]~4_combout\ = (\inst13|s_debounceCnt\(22)) # (((\inst13|s_debounceCnt[9]~29_combout\) # (!\inst13|s_previousIn~q\)) # (!\inst13|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[9]~29_combout\,
	combout => \inst13|s_debounceCnt[9]~4_combout\);

-- Location: LCCOMB_X89_Y37_N20
\inst13|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~42_combout\ = (\inst13|s_debounceCnt\(21) & (\inst13|Add0~41\ & VCC)) # (!\inst13|s_debounceCnt\(21) & (!\inst13|Add0~41\))
-- \inst13|Add0~43\ = CARRY((!\inst13|s_debounceCnt\(21) & !\inst13|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst13|Add0~41\,
	combout => \inst13|Add0~42_combout\,
	cout => \inst13|Add0~43\);

-- Location: LCCOMB_X90_Y37_N2
\inst13|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~10_combout\ = (\inst13|s_debounceCnt[9]~4_combout\ & (\inst13|Add0~42_combout\ & \inst13|s_debounceCnt[9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[9]~4_combout\,
	datac => \inst13|Add0~42_combout\,
	datad => \inst13|s_debounceCnt[9]~5_combout\,
	combout => \inst13|s_debounceCnt[21]~10_combout\);

-- Location: FF_X90_Y37_N3
\inst13|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(21));

-- Location: LCCOMB_X89_Y37_N22
\inst13|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~44_combout\ = \inst13|Add0~43\ $ (\inst13|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|s_debounceCnt\(22),
	cin => \inst13|Add0~43\,
	combout => \inst13|Add0~44_combout\);

-- Location: LCCOMB_X90_Y37_N10
\inst13|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~27_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~6_combout\)))) # (!\inst13|s_debounceCnt\(22) & (((\inst13|s_debounceCnt[9]~29_combout\)) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|LessThan0~6_combout\,
	datad => \inst13|s_debounceCnt[9]~29_combout\,
	combout => \inst13|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X90_Y37_N18
\inst13|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~28_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt[22]~27_combout\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|Add0~44_combout\,
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|s_debounceCnt[22]~27_combout\,
	combout => \inst13|s_debounceCnt[22]~28_combout\);

-- Location: FF_X90_Y37_N19
\inst13|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(22));

-- Location: LCCOMB_X90_Y38_N26
\inst13|s_debounceCnt[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[9]~5_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|LessThan0~6_combout\,
	datad => \inst13|s_dirtyIn~q\,
	combout => \inst13|s_debounceCnt[9]~5_combout\);

-- Location: LCCOMB_X90_Y38_N4
\inst13|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~26_combout\ = (\inst13|s_debounceCnt[9]~5_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[9]~5_combout\,
	datad => \inst13|Add0~0_combout\,
	combout => \inst13|s_debounceCnt~26_combout\);

-- Location: FF_X90_Y38_N5
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~26_combout\,
	ena => \inst13|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X90_Y37_N22
\inst13|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~9_combout\ = (\inst13|s_debounceCnt\(0) & (\inst13|s_dirtyIn~q\ & (!\inst13|s_debounceCnt\(22) & \inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|s_previousIn~q\,
	combout => \inst13|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X91_Y37_N12
\inst13|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~10_combout\ = (\inst13|s_pulsedOut~9_combout\ & (\inst13|s_pulsedOut~7_combout\ & (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~9_combout\,
	datab => \inst13|s_pulsedOut~7_combout\,
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_pulsedOut~10_combout\);

-- Location: FF_X91_Y37_N13
\inst13|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_pulsedOut~q\);

-- Location: LCCOMB_X95_Y38_N10
\inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = \inst12|s_debounceCnt\(0) $ (VCC)
-- \inst12|Add0~1\ = CARRY(\inst12|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst12|Add0~0_combout\,
	cout => \inst12|Add0~1\);

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

-- Location: FF_X97_Y38_N29
\inst12|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_dirtyIn~q\);

-- Location: FF_X96_Y37_N1
\inst12|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst12|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_previousIn~q\);

-- Location: LCCOMB_X95_Y38_N14
\inst12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~4_combout\ = (\inst12|s_debounceCnt\(2) & ((GND) # (!\inst12|Add0~3\))) # (!\inst12|s_debounceCnt\(2) & (\inst12|Add0~3\ $ (GND)))
-- \inst12|Add0~5\ = CARRY((\inst12|s_debounceCnt\(2)) # (!\inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst12|Add0~3\,
	combout => \inst12|Add0~4_combout\,
	cout => \inst12|Add0~5\);

-- Location: LCCOMB_X95_Y38_N16
\inst12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~6_combout\ = (\inst12|s_debounceCnt\(3) & (\inst12|Add0~5\ & VCC)) # (!\inst12|s_debounceCnt\(3) & (!\inst12|Add0~5\))
-- \inst12|Add0~7\ = CARRY((!\inst12|s_debounceCnt\(3) & !\inst12|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst12|Add0~5\,
	combout => \inst12|Add0~6_combout\,
	cout => \inst12|Add0~7\);

-- Location: LCCOMB_X96_Y38_N20
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~6_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~6_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: LCCOMB_X96_Y38_N30
\inst12|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~3_combout\ = (((\inst12|s_debounceCnt\(22)) # (\inst12|s_debounceCnt[0]~2_combout\)) # (!\inst12|s_dirtyIn~q\)) # (!\inst12|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_debounceCnt[0]~2_combout\,
	combout => \inst12|s_debounceCnt[0]~3_combout\);

-- Location: FF_X96_Y38_N21
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X95_Y38_N18
\inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|s_debounceCnt\(4) & ((GND) # (!\inst12|Add0~7\))) # (!\inst12|s_debounceCnt\(4) & (\inst12|Add0~7\ $ (GND)))
-- \inst12|Add0~9\ = CARRY((\inst12|s_debounceCnt\(4)) # (!\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X96_Y38_N4
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|Add0~8_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~8_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X96_Y38_N5
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X95_Y38_N20
\inst12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~10_combout\ = (\inst12|s_debounceCnt\(5) & (\inst12|Add0~9\ & VCC)) # (!\inst12|s_debounceCnt\(5) & (!\inst12|Add0~9\))
-- \inst12|Add0~11\ = CARRY((!\inst12|s_debounceCnt\(5) & !\inst12|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst12|Add0~9\,
	combout => \inst12|Add0~10_combout\,
	cout => \inst12|Add0~11\);

-- Location: LCCOMB_X96_Y38_N8
\inst12|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~20_combout\ = (\inst12|Add0~10_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~10_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~20_combout\);

-- Location: FF_X96_Y38_N9
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~20_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X95_Y38_N22
\inst12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~12_combout\ = (\inst12|s_debounceCnt\(6) & ((GND) # (!\inst12|Add0~11\))) # (!\inst12|s_debounceCnt\(6) & (\inst12|Add0~11\ $ (GND)))
-- \inst12|Add0~13\ = CARRY((\inst12|s_debounceCnt\(6)) # (!\inst12|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst12|Add0~11\,
	combout => \inst12|Add0~12_combout\,
	cout => \inst12|Add0~13\);

-- Location: LCCOMB_X95_Y37_N12
\inst12|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~34_combout\ = (\inst12|s_debounceCnt\(17) & (\inst12|Add0~33\ & VCC)) # (!\inst12|s_debounceCnt\(17) & (!\inst12|Add0~33\))
-- \inst12|Add0~35\ = CARRY((!\inst12|s_debounceCnt\(17) & !\inst12|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst12|Add0~33\,
	combout => \inst12|Add0~34_combout\,
	cout => \inst12|Add0~35\);

-- Location: LCCOMB_X95_Y37_N14
\inst12|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~36_combout\ = (\inst12|s_debounceCnt\(18) & ((GND) # (!\inst12|Add0~35\))) # (!\inst12|s_debounceCnt\(18) & (\inst12|Add0~35\ $ (GND)))
-- \inst12|Add0~37\ = CARRY((\inst12|s_debounceCnt\(18)) # (!\inst12|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst12|Add0~35\,
	combout => \inst12|Add0~36_combout\,
	cout => \inst12|Add0~37\);

-- Location: LCCOMB_X96_Y37_N4
\inst12|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~18_combout\ = (\inst12|s_debounceCnt[0]~3_combout\ & (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~36_combout\,
	datab => \inst12|s_debounceCnt[0]~3_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt[18]~18_combout\);

-- Location: FF_X96_Y37_N5
\inst12|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(18));

-- Location: LCCOMB_X95_Y37_N16
\inst12|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~38_combout\ = (\inst12|s_debounceCnt\(19) & (\inst12|Add0~37\ & VCC)) # (!\inst12|s_debounceCnt\(19) & (!\inst12|Add0~37\))
-- \inst12|Add0~39\ = CARRY((!\inst12|s_debounceCnt\(19) & !\inst12|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst12|Add0~37\,
	combout => \inst12|Add0~38_combout\,
	cout => \inst12|Add0~39\);

-- Location: LCCOMB_X96_Y37_N30
\inst12|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~19_combout\ = (\inst12|s_debounceCnt[0]~3_combout\ & (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt[0]~3_combout\,
	datac => \inst12|Add0~38_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt[19]~19_combout\);

-- Location: FF_X96_Y37_N31
\inst12|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(19));

-- Location: LCCOMB_X95_Y37_N18
\inst12|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~40_combout\ = (\inst12|s_debounceCnt\(20) & ((GND) # (!\inst12|Add0~39\))) # (!\inst12|s_debounceCnt\(20) & (\inst12|Add0~39\ $ (GND)))
-- \inst12|Add0~41\ = CARRY((\inst12|s_debounceCnt\(20)) # (!\inst12|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst12|Add0~39\,
	combout => \inst12|Add0~40_combout\,
	cout => \inst12|Add0~41\);

-- Location: LCCOMB_X96_Y37_N16
\inst12|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~8_combout\ = (\inst12|Add0~40_combout\ & (\inst12|s_debounceCnt[0]~3_combout\ & \inst12|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~40_combout\,
	datac => \inst12|s_debounceCnt[0]~3_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt[20]~8_combout\);

-- Location: FF_X96_Y37_N17
\inst12|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(20));

-- Location: LCCOMB_X95_Y37_N20
\inst12|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~42_combout\ = (\inst12|s_debounceCnt\(21) & (\inst12|Add0~41\ & VCC)) # (!\inst12|s_debounceCnt\(21) & (!\inst12|Add0~41\))
-- \inst12|Add0~43\ = CARRY((!\inst12|s_debounceCnt\(21) & !\inst12|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst12|Add0~41\,
	combout => \inst12|Add0~42_combout\,
	cout => \inst12|Add0~43\);

-- Location: LCCOMB_X96_Y37_N18
\inst12|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~9_combout\ = (\inst12|Add0~42_combout\ & (\inst12|s_debounceCnt[0]~3_combout\ & \inst12|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~42_combout\,
	datac => \inst12|s_debounceCnt[0]~3_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt[21]~9_combout\);

-- Location: FF_X96_Y37_N19
\inst12|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(21));

-- Location: LCCOMB_X97_Y37_N20
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(17)) # ((\inst12|s_debounceCnt\(15)) # (\inst12|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(17),
	datac => \inst12|s_debounceCnt\(15),
	datad => \inst12|s_debounceCnt\(16),
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X96_Y38_N28
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(7)) # ((\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(6),
	datac => \inst12|s_debounceCnt\(7),
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y37_N24
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(10)) # ((\inst12|s_debounceCnt\(9) & (\inst12|s_debounceCnt\(8) & \inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(9),
	datab => \inst12|s_debounceCnt\(10),
	datac => \inst12|s_debounceCnt\(8),
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X96_Y37_N6
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (\inst12|s_debounceCnt\(12)) # ((\inst12|s_debounceCnt\(13)) # ((\inst12|s_debounceCnt\(11) & \inst12|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(12),
	datab => \inst12|s_debounceCnt\(11),
	datac => \inst12|s_debounceCnt\(13),
	datad => \inst12|LessThan0~1_combout\,
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X96_Y37_N28
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|s_debounceCnt\(18) & ((\inst12|LessThan0~3_combout\) # ((\inst12|s_debounceCnt\(14) & \inst12|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan0~3_combout\,
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(18),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X96_Y37_N2
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (\inst12|s_debounceCnt\(21)) # ((\inst12|s_debounceCnt\(20)) # ((\inst12|s_debounceCnt\(19) & \inst12|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(20),
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X96_Y37_N12
\inst12|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~0_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X96_Y38_N16
\inst12|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~1_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~12_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~1_combout\);

-- Location: FF_X96_Y38_N17
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~1_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X95_Y38_N24
\inst12|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~14_combout\ = (\inst12|s_debounceCnt\(7) & (\inst12|Add0~13\ & VCC)) # (!\inst12|s_debounceCnt\(7) & (!\inst12|Add0~13\))
-- \inst12|Add0~15\ = CARRY((!\inst12|s_debounceCnt\(7) & !\inst12|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst12|Add0~13\,
	combout => \inst12|Add0~14_combout\,
	cout => \inst12|Add0~15\);

-- Location: LCCOMB_X96_Y38_N14
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|Add0~14_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~14_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X96_Y38_N15
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X95_Y38_N26
\inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~16_combout\ = (\inst12|s_debounceCnt\(8) & ((GND) # (!\inst12|Add0~15\))) # (!\inst12|s_debounceCnt\(8) & (\inst12|Add0~15\ $ (GND)))
-- \inst12|Add0~17\ = CARRY((\inst12|s_debounceCnt\(8)) # (!\inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst12|Add0~15\,
	combout => \inst12|Add0~16_combout\,
	cout => \inst12|Add0~17\);

-- Location: LCCOMB_X96_Y37_N8
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~16_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X96_Y37_N9
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X95_Y38_N28
\inst12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~18_combout\ = (\inst12|s_debounceCnt\(9) & (\inst12|Add0~17\ & VCC)) # (!\inst12|s_debounceCnt\(9) & (!\inst12|Add0~17\))
-- \inst12|Add0~19\ = CARRY((!\inst12|s_debounceCnt\(9) & !\inst12|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst12|Add0~17\,
	combout => \inst12|Add0~18_combout\,
	cout => \inst12|Add0~19\);

-- Location: LCCOMB_X96_Y37_N26
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~18_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y37_N27
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X95_Y38_N30
\inst12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~20_combout\ = (\inst12|s_debounceCnt\(10) & ((GND) # (!\inst12|Add0~19\))) # (!\inst12|s_debounceCnt\(10) & (\inst12|Add0~19\ $ (GND)))
-- \inst12|Add0~21\ = CARRY((\inst12|s_debounceCnt\(10)) # (!\inst12|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst12|Add0~19\,
	combout => \inst12|Add0~20_combout\,
	cout => \inst12|Add0~21\);

-- Location: LCCOMB_X95_Y38_N2
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|Add0~20_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~20_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y38_N3
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X95_Y37_N0
\inst12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~22_combout\ = (\inst12|s_debounceCnt\(11) & (\inst12|Add0~21\ & VCC)) # (!\inst12|s_debounceCnt\(11) & (!\inst12|Add0~21\))
-- \inst12|Add0~23\ = CARRY((!\inst12|s_debounceCnt\(11) & !\inst12|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst12|Add0~21\,
	combout => \inst12|Add0~22_combout\,
	cout => \inst12|Add0~23\);

-- Location: LCCOMB_X96_Y37_N20
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~22_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X96_Y37_N21
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X95_Y37_N2
\inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~24_combout\ = (\inst12|s_debounceCnt\(12) & ((GND) # (!\inst12|Add0~23\))) # (!\inst12|s_debounceCnt\(12) & (\inst12|Add0~23\ $ (GND)))
-- \inst12|Add0~25\ = CARRY((\inst12|s_debounceCnt\(12)) # (!\inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst12|Add0~23\,
	combout => \inst12|Add0~24_combout\,
	cout => \inst12|Add0~25\);

-- Location: LCCOMB_X95_Y37_N28
\inst12|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~10_combout\ = (\inst12|Add0~24_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~24_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~10_combout\);

-- Location: FF_X95_Y37_N29
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~10_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X95_Y37_N4
\inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~26_combout\ = (\inst12|s_debounceCnt\(13) & (\inst12|Add0~25\ & VCC)) # (!\inst12|s_debounceCnt\(13) & (!\inst12|Add0~25\))
-- \inst12|Add0~27\ = CARRY((!\inst12|s_debounceCnt\(13) & !\inst12|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst12|Add0~25\,
	combout => \inst12|Add0~26_combout\,
	cout => \inst12|Add0~27\);

-- Location: LCCOMB_X95_Y37_N26
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|Add0~26_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~26_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X95_Y37_N27
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X95_Y37_N6
\inst12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~28_combout\ = (\inst12|s_debounceCnt\(14) & ((GND) # (!\inst12|Add0~27\))) # (!\inst12|s_debounceCnt\(14) & (\inst12|Add0~27\ $ (GND)))
-- \inst12|Add0~29\ = CARRY((\inst12|s_debounceCnt\(14)) # (!\inst12|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst12|Add0~27\,
	combout => \inst12|Add0~28_combout\,
	cout => \inst12|Add0~29\);

-- Location: LCCOMB_X96_Y37_N10
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X96_Y37_N11
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X95_Y37_N8
\inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~30_combout\ = (\inst12|s_debounceCnt\(15) & (\inst12|Add0~29\ & VCC)) # (!\inst12|s_debounceCnt\(15) & (!\inst12|Add0~29\))
-- \inst12|Add0~31\ = CARRY((!\inst12|s_debounceCnt\(15) & !\inst12|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst12|Add0~29\,
	combout => \inst12|Add0~30_combout\,
	cout => \inst12|Add0~31\);

-- Location: LCCOMB_X96_Y38_N26
\inst12|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~5_combout\ = (\inst12|Add0~30_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~30_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~5_combout\);

-- Location: FF_X96_Y38_N27
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~5_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X95_Y37_N10
\inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~32_combout\ = (\inst12|s_debounceCnt\(16) & ((GND) # (!\inst12|Add0~31\))) # (!\inst12|s_debounceCnt\(16) & (\inst12|Add0~31\ $ (GND)))
-- \inst12|Add0~33\ = CARRY((\inst12|s_debounceCnt\(16)) # (!\inst12|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst12|Add0~31\,
	combout => \inst12|Add0~32_combout\,
	cout => \inst12|Add0~33\);

-- Location: LCCOMB_X96_Y38_N0
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|Add0~32_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~32_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X96_Y38_N1
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y38_N22
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|Add0~34_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~34_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X96_Y38_N23
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y38_N12
\inst12|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~0_combout\ = (!\inst12|s_debounceCnt\(17) & (!\inst12|s_debounceCnt\(6) & (!\inst12|s_debounceCnt\(15) & !\inst12|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(17),
	datab => \inst12|s_debounceCnt\(6),
	datac => \inst12|s_debounceCnt\(15),
	datad => \inst12|s_debounceCnt\(16),
	combout => \inst12|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X95_Y38_N4
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(7) & (!\inst12|s_debounceCnt\(10) & (!\inst12|s_debounceCnt\(9) & !\inst12|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(7),
	datab => \inst12|s_debounceCnt\(10),
	datac => \inst12|s_debounceCnt\(9),
	datad => \inst12|s_debounceCnt\(8),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X95_Y37_N30
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(11) & (!\inst12|s_debounceCnt\(14) & (!\inst12|s_debounceCnt\(19) & !\inst12|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(19),
	datad => \inst12|s_debounceCnt\(18),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X95_Y37_N24
\inst12|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~1_combout\ = (!\inst12|s_debounceCnt\(13) & (!\inst12|s_debounceCnt\(12) & (!\inst12|s_debounceCnt\(20) & !\inst12|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(13),
	datab => \inst12|s_debounceCnt\(12),
	datac => \inst12|s_debounceCnt\(20),
	datad => \inst12|s_debounceCnt\(21),
	combout => \inst12|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X95_Y38_N6
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (\inst12|s_pulsedOut~0_combout\ & (\inst12|s_pulsedOut~2_combout\ & (\inst12|s_pulsedOut~3_combout\ & \inst12|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~0_combout\,
	datab => \inst12|s_pulsedOut~2_combout\,
	datac => \inst12|s_pulsedOut~3_combout\,
	datad => \inst12|s_pulsedOut~1_combout\,
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X95_Y38_N8
\inst12|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~2_combout\ = (\inst12|s_debounceCnt\(0)) # ((!\inst12|s_pulsedOut~4_combout\) # (!\inst12|s_pulsedOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datac => \inst12|s_pulsedOut~6_combout\,
	datad => \inst12|s_pulsedOut~4_combout\,
	combout => \inst12|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X96_Y37_N14
\inst12|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~26_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~5_combout\)))) # (!\inst12|s_debounceCnt\(22) & (((\inst12|s_debounceCnt[0]~2_combout\)) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[0]~2_combout\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[22]~26_combout\);

-- Location: LCCOMB_X95_Y37_N22
\inst12|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~44_combout\ = \inst12|Add0~43\ $ (\inst12|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|s_debounceCnt\(22),
	cin => \inst12|Add0~43\,
	combout => \inst12|Add0~44_combout\);

-- Location: LCCOMB_X96_Y37_N22
\inst12|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~27_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_debounceCnt[22]~26_combout\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt[22]~26_combout\,
	datad => \inst12|Add0~44_combout\,
	combout => \inst12|s_debounceCnt[22]~27_combout\);

-- Location: FF_X96_Y37_N23
\inst12|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(22));

-- Location: LCCOMB_X96_Y37_N0
\inst12|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~4_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_previousIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X96_Y38_N6
\inst12|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~25_combout\ = (\inst12|Add0~0_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~0_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~25_combout\);

-- Location: FF_X96_Y38_N7
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~25_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X95_Y38_N12
\inst12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~2_combout\ = (\inst12|s_debounceCnt\(1) & (\inst12|Add0~1\ & VCC)) # (!\inst12|s_debounceCnt\(1) & (!\inst12|Add0~1\))
-- \inst12|Add0~3\ = CARRY((!\inst12|s_debounceCnt\(1) & !\inst12|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst12|Add0~1\,
	combout => \inst12|Add0~2_combout\,
	cout => \inst12|Add0~3\);

-- Location: LCCOMB_X96_Y38_N18
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|Add0~2_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~2_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y38_N19
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X96_Y38_N10
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~4_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X96_Y38_N11
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y38_N2
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(4) & !\inst12|s_debounceCnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt\(4),
	datad => \inst12|s_debounceCnt\(1),
	combout => \inst12|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X96_Y38_N24
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (!\inst12|s_debounceCnt\(2) & (!\inst12|s_debounceCnt\(3) & (!\inst12|s_debounceCnt\(5) & \inst12|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(2),
	datab => \inst12|s_debounceCnt\(3),
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~5_combout\,
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X97_Y38_N10
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (\inst12|s_previousIn~q\ & (!\inst12|s_debounceCnt\(22) & (\inst12|s_debounceCnt\(0) & \inst12|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_debounceCnt\(0),
	datad => \inst12|s_dirtyIn~q\,
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X95_Y38_N0
\inst12|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~8_combout\ = (\inst12|s_pulsedOut~6_combout\ & (\inst12|s_pulsedOut~7_combout\ & \inst12|s_pulsedOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~6_combout\,
	datac => \inst12|s_pulsedOut~7_combout\,
	datad => \inst12|s_pulsedOut~4_combout\,
	combout => \inst12|s_pulsedOut~8_combout\);

-- Location: FF_X95_Y38_N1
\inst12|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_pulsedOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_pulsedOut~q\);

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

-- Location: FF_X96_Y42_N29
\inst11|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_dirtyIn~q\);

-- Location: FF_X94_Y43_N25
\inst11|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst11|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_previousIn~q\);

-- Location: LCCOMB_X96_Y43_N12
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|s_debounceCnt\(1) & (\inst11|Add0~1\ & VCC)) # (!\inst11|s_debounceCnt\(1) & (!\inst11|Add0~1\))
-- \inst11|Add0~3\ = CARRY((!\inst11|s_debounceCnt\(1) & !\inst11|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X96_Y43_N14
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst11|s_debounceCnt\(2) & ((GND) # (!\inst11|Add0~3\))) # (!\inst11|s_debounceCnt\(2) & (\inst11|Add0~3\ $ (GND)))
-- \inst11|Add0~5\ = CARRY((\inst11|s_debounceCnt\(2)) # (!\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X94_Y43_N4
\inst11|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~22_combout\ = (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~4_combout\,
	combout => \inst11|s_debounceCnt~22_combout\);

-- Location: LCCOMB_X94_Y43_N24
\inst11|s_debounceCnt[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[7]~4_combout\ = (\inst11|s_debounceCnt\(22)) # (((\inst11|s_debounceCnt[7]~29_combout\) # (!\inst11|s_previousIn~q\)) # (!\inst11|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(22),
	datab => \inst11|s_dirtyIn~q\,
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|s_debounceCnt[7]~29_combout\,
	combout => \inst11|s_debounceCnt[7]~4_combout\);

-- Location: FF_X94_Y43_N5
\inst11|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~22_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y43_N16
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|s_debounceCnt\(3) & (\inst11|Add0~5\ & VCC)) # (!\inst11|s_debounceCnt\(3) & (!\inst11|Add0~5\))
-- \inst11|Add0~7\ = CARRY((!\inst11|s_debounceCnt\(3) & !\inst11|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X94_Y43_N2
\inst11|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~23_combout\ = (\inst11|Add0~6_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~23_combout\);

-- Location: FF_X94_Y43_N3
\inst11|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~23_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(3));

-- Location: LCCOMB_X96_Y43_N18
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|s_debounceCnt\(4) & ((GND) # (!\inst11|Add0~7\))) # (!\inst11|s_debounceCnt\(4) & (\inst11|Add0~7\ $ (GND)))
-- \inst11|Add0~9\ = CARRY((\inst11|s_debounceCnt\(4)) # (!\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X94_Y43_N20
\inst11|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~24_combout\ = (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~8_combout\,
	combout => \inst11|s_debounceCnt~24_combout\);

-- Location: FF_X94_Y43_N21
\inst11|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~24_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(4));

-- Location: LCCOMB_X96_Y43_N20
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|s_debounceCnt\(5) & (\inst11|Add0~9\ & VCC)) # (!\inst11|s_debounceCnt\(5) & (!\inst11|Add0~9\))
-- \inst11|Add0~11\ = CARRY((!\inst11|s_debounceCnt\(5) & !\inst11|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X94_Y43_N8
\inst11|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~25_combout\ = (\inst11|Add0~10_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~10_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~25_combout\);

-- Location: FF_X94_Y43_N9
\inst11|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~25_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y43_N22
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|s_debounceCnt\(6) & ((GND) # (!\inst11|Add0~11\))) # (!\inst11|s_debounceCnt\(6) & (\inst11|Add0~11\ $ (GND)))
-- \inst11|Add0~13\ = CARRY((\inst11|s_debounceCnt\(6)) # (!\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X96_Y43_N24
\inst11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|s_debounceCnt\(7) & (\inst11|Add0~13\ & VCC)) # (!\inst11|s_debounceCnt\(7) & (!\inst11|Add0~13\))
-- \inst11|Add0~15\ = CARRY((!\inst11|s_debounceCnt\(7) & !\inst11|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: LCCOMB_X96_Y43_N26
\inst11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst11|s_debounceCnt\(8) & ((GND) # (!\inst11|Add0~15\))) # (!\inst11|s_debounceCnt\(8) & (\inst11|Add0~15\ $ (GND)))
-- \inst11|Add0~17\ = CARRY((\inst11|s_debounceCnt\(8)) # (!\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: LCCOMB_X96_Y43_N4
\inst11|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~14_combout\ = (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~16_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datac => \inst11|Add0~16_combout\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y43_N5
\inst11|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~14_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(8));

-- Location: LCCOMB_X96_Y43_N28
\inst11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst11|s_debounceCnt\(9) & (\inst11|Add0~17\ & VCC)) # (!\inst11|s_debounceCnt\(9) & (!\inst11|Add0~17\))
-- \inst11|Add0~19\ = CARRY((!\inst11|s_debounceCnt\(9) & !\inst11|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: LCCOMB_X96_Y43_N6
\inst11|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~15_combout\ = (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~18_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~18_combout\,
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt~15_combout\);

-- Location: FF_X96_Y43_N7
\inst11|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~15_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y43_N30
\inst11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|s_debounceCnt\(10) & ((GND) # (!\inst11|Add0~19\))) # (!\inst11|s_debounceCnt\(10) & (\inst11|Add0~19\ $ (GND)))
-- \inst11|Add0~21\ = CARRY((\inst11|s_debounceCnt\(10)) # (!\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: LCCOMB_X95_Y43_N16
\inst11|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~16_combout\ = (\inst11|Add0~20_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~20_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~16_combout\);

-- Location: FF_X95_Y43_N17
\inst11|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~16_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(10));

-- Location: LCCOMB_X96_Y42_N0
\inst11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = (\inst11|s_debounceCnt\(11) & (\inst11|Add0~21\ & VCC)) # (!\inst11|s_debounceCnt\(11) & (!\inst11|Add0~21\))
-- \inst11|Add0~23\ = CARRY((!\inst11|s_debounceCnt\(11) & !\inst11|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\,
	cout => \inst11|Add0~23\);

-- Location: LCCOMB_X96_Y43_N8
\inst11|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~17_combout\ = (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~22_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~22_combout\,
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt~17_combout\);

-- Location: FF_X96_Y43_N9
\inst11|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~17_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(11));

-- Location: LCCOMB_X96_Y42_N2
\inst11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = (\inst11|s_debounceCnt\(12) & ((GND) # (!\inst11|Add0~23\))) # (!\inst11|s_debounceCnt\(12) & (\inst11|Add0~23\ $ (GND)))
-- \inst11|Add0~25\ = CARRY((\inst11|s_debounceCnt\(12)) # (!\inst11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst11|Add0~23\,
	combout => \inst11|Add0~24_combout\,
	cout => \inst11|Add0~25\);

-- Location: LCCOMB_X95_Y43_N26
\inst11|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~11_combout\ = (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~24_combout\,
	combout => \inst11|s_debounceCnt~11_combout\);

-- Location: FF_X95_Y43_N27
\inst11|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~11_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y42_N4
\inst11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|s_debounceCnt\(13) & (\inst11|Add0~25\ & VCC)) # (!\inst11|s_debounceCnt\(13) & (!\inst11|Add0~25\))
-- \inst11|Add0~27\ = CARRY((!\inst11|s_debounceCnt\(13) & !\inst11|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: LCCOMB_X95_Y43_N8
\inst11|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~12_combout\ = (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~26_combout\,
	combout => \inst11|s_debounceCnt~12_combout\);

-- Location: FF_X95_Y43_N9
\inst11|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~12_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(13));

-- Location: LCCOMB_X96_Y42_N6
\inst11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|s_debounceCnt\(14) & ((GND) # (!\inst11|Add0~27\))) # (!\inst11|s_debounceCnt\(14) & (\inst11|Add0~27\ $ (GND)))
-- \inst11|Add0~29\ = CARRY((\inst11|s_debounceCnt\(14)) # (!\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: LCCOMB_X96_Y43_N2
\inst11|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~18_combout\ = (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~28_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datac => \inst11|Add0~28_combout\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt~18_combout\);

-- Location: FF_X96_Y43_N3
\inst11|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~18_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(14));

-- Location: LCCOMB_X96_Y42_N8
\inst11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|s_debounceCnt\(15) & (\inst11|Add0~29\ & VCC)) # (!\inst11|s_debounceCnt\(15) & (!\inst11|Add0~29\))
-- \inst11|Add0~31\ = CARRY((!\inst11|s_debounceCnt\(15) & !\inst11|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: LCCOMB_X95_Y42_N16
\inst11|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~6_combout\ = (\inst11|Add0~30_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~30_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~6_combout\);

-- Location: FF_X95_Y42_N17
\inst11|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~6_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(15));

-- Location: LCCOMB_X96_Y42_N10
\inst11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~32_combout\ = (\inst11|s_debounceCnt\(16) & ((GND) # (!\inst11|Add0~31\))) # (!\inst11|s_debounceCnt\(16) & (\inst11|Add0~31\ $ (GND)))
-- \inst11|Add0~33\ = CARRY((\inst11|s_debounceCnt\(16)) # (!\inst11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst11|Add0~31\,
	combout => \inst11|Add0~32_combout\,
	cout => \inst11|Add0~33\);

-- Location: LCCOMB_X95_Y42_N6
\inst11|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~7_combout\ = (\inst11|Add0~32_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~32_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~7_combout\);

-- Location: FF_X95_Y42_N7
\inst11|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~7_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y42_N12
\inst11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~34_combout\ = (\inst11|s_debounceCnt\(17) & (\inst11|Add0~33\ & VCC)) # (!\inst11|s_debounceCnt\(17) & (!\inst11|Add0~33\))
-- \inst11|Add0~35\ = CARRY((!\inst11|s_debounceCnt\(17) & !\inst11|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst11|Add0~33\,
	combout => \inst11|Add0~34_combout\,
	cout => \inst11|Add0~35\);

-- Location: LCCOMB_X95_Y42_N8
\inst11|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~8_combout\ = (\inst11|Add0~34_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~34_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~8_combout\);

-- Location: FF_X95_Y42_N9
\inst11|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~8_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y42_N14
\inst11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|s_debounceCnt\(18) & ((GND) # (!\inst11|Add0~35\))) # (!\inst11|s_debounceCnt\(18) & (\inst11|Add0~35\ $ (GND)))
-- \inst11|Add0~37\ = CARRY((\inst11|s_debounceCnt\(18)) # (!\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: LCCOMB_X94_Y43_N30
\inst11|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[18]~19_combout\ = (\inst11|s_debounceCnt[7]~4_combout\ & (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~36_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt[7]~4_combout\,
	datac => \inst11|Add0~36_combout\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt[18]~19_combout\);

-- Location: FF_X94_Y43_N31
\inst11|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(18));

-- Location: LCCOMB_X96_Y42_N16
\inst11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|s_debounceCnt\(19) & (\inst11|Add0~37\ & VCC)) # (!\inst11|s_debounceCnt\(19) & (!\inst11|Add0~37\))
-- \inst11|Add0~39\ = CARRY((!\inst11|s_debounceCnt\(19) & !\inst11|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: LCCOMB_X94_Y43_N28
\inst11|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[19]~20_combout\ = (\inst11|s_debounceCnt[7]~4_combout\ & (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~38_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt[7]~4_combout\,
	datac => \inst11|Add0~38_combout\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt[19]~20_combout\);

-- Location: FF_X94_Y43_N29
\inst11|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(19));

-- Location: LCCOMB_X96_Y42_N18
\inst11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|s_debounceCnt\(20) & ((GND) # (!\inst11|Add0~39\))) # (!\inst11|s_debounceCnt\(20) & (\inst11|Add0~39\ $ (GND)))
-- \inst11|Add0~41\ = CARRY((\inst11|s_debounceCnt\(20)) # (!\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: LCCOMB_X95_Y43_N14
\inst11|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~9_combout\ = (\inst11|s_debounceCnt[7]~4_combout\ & (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt[7]~4_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~40_combout\,
	combout => \inst11|s_debounceCnt[20]~9_combout\);

-- Location: FF_X95_Y43_N15
\inst11|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y42_N20
\inst11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|s_debounceCnt\(21) & (\inst11|Add0~41\ & VCC)) # (!\inst11|s_debounceCnt\(21) & (!\inst11|Add0~41\))
-- \inst11|Add0~43\ = CARRY((!\inst11|s_debounceCnt\(21) & !\inst11|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: LCCOMB_X95_Y43_N4
\inst11|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[21]~10_combout\ = (\inst11|s_debounceCnt[7]~4_combout\ & (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt[7]~4_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	datad => \inst11|Add0~42_combout\,
	combout => \inst11|s_debounceCnt[21]~10_combout\);

-- Location: FF_X95_Y43_N5
\inst11|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(21));

-- Location: LCCOMB_X96_Y43_N0
\inst11|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~5_combout\ = (!\inst11|s_debounceCnt\(21) & !\inst11|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt\(21),
	datad => \inst11|s_debounceCnt\(20),
	combout => \inst11|LessThan0~5_combout\);

-- Location: LCCOMB_X95_Y43_N12
\inst11|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~2_combout\ = (!\inst11|s_debounceCnt\(12) & !\inst11|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt\(12),
	datad => \inst11|s_debounceCnt\(13),
	combout => \inst11|LessThan0~2_combout\);

-- Location: LCCOMB_X94_Y43_N14
\inst11|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~8_combout\ = (!\inst11|s_debounceCnt\(5) & \inst11|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt\(5),
	datad => \inst11|s_pulsedOut~7_combout\,
	combout => \inst11|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X95_Y43_N0
\inst11|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (\inst11|s_debounceCnt\(7)) # ((\inst11|s_debounceCnt\(6) & ((\inst11|s_debounceCnt\(0)) # (!\inst11|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(0),
	datab => \inst11|s_debounceCnt\(6),
	datac => \inst11|s_debounceCnt\(7),
	datad => \inst11|s_pulsedOut~8_combout\,
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y43_N2
\inst11|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (\inst11|s_debounceCnt\(10)) # ((\inst11|s_debounceCnt\(8) & (\inst11|s_debounceCnt\(9) & \inst11|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(8),
	datab => \inst11|s_debounceCnt\(10),
	datac => \inst11|s_debounceCnt\(9),
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|LessThan0~1_combout\);

-- Location: LCCOMB_X95_Y43_N18
\inst11|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~3_combout\ = (\inst11|s_debounceCnt\(14) & (((\inst11|s_debounceCnt\(11) & \inst11|LessThan0~1_combout\)) # (!\inst11|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan0~2_combout\,
	datab => \inst11|s_debounceCnt\(11),
	datac => \inst11|s_debounceCnt\(14),
	datad => \inst11|LessThan0~1_combout\,
	combout => \inst11|LessThan0~3_combout\);

-- Location: LCCOMB_X95_Y43_N24
\inst11|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~4_combout\ = (\inst11|s_debounceCnt\(16)) # ((\inst11|s_debounceCnt\(15)) # ((\inst11|s_debounceCnt\(17)) # (\inst11|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(16),
	datab => \inst11|s_debounceCnt\(15),
	datac => \inst11|s_debounceCnt\(17),
	datad => \inst11|LessThan0~3_combout\,
	combout => \inst11|LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y43_N10
\inst11|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~6_combout\ = ((\inst11|s_debounceCnt\(18) & (\inst11|s_debounceCnt\(19) & \inst11|LessThan0~4_combout\))) # (!\inst11|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(18),
	datab => \inst11|s_debounceCnt\(19),
	datac => \inst11|LessThan0~5_combout\,
	datad => \inst11|LessThan0~4_combout\,
	combout => \inst11|LessThan0~6_combout\);

-- Location: LCCOMB_X95_Y43_N28
\inst11|s_debounceCnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[7]~2_combout\ = (\inst11|s_dirtyIn~q\ & ((!\inst11|LessThan0~6_combout\) # (!\inst11|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_dirtyIn~q\,
	datab => \inst11|s_debounceCnt\(22),
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[7]~2_combout\);

-- Location: LCCOMB_X95_Y43_N20
\inst11|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~3_combout\ = (\inst11|s_debounceCnt[7]~2_combout\ & ((\inst11|Add0~12_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~12_combout\,
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|s_debounceCnt[7]~2_combout\,
	combout => \inst11|s_debounceCnt~3_combout\);

-- Location: FF_X95_Y43_N21
\inst11|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~3_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(6));

-- Location: LCCOMB_X95_Y43_N22
\inst11|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~13_combout\ = (\inst11|Add0~14_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~14_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~13_combout\);

-- Location: FF_X95_Y43_N23
\inst11|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~13_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(7));

-- Location: LCCOMB_X94_Y43_N12
\inst11|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~4_combout\ = (!\inst11|s_debounceCnt\(7) & (!\inst11|s_debounceCnt\(10) & (!\inst11|s_debounceCnt\(9) & !\inst11|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(7),
	datab => \inst11|s_debounceCnt\(10),
	datac => \inst11|s_debounceCnt\(9),
	datad => \inst11|s_debounceCnt\(8),
	combout => \inst11|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X94_Y43_N18
\inst11|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~3_combout\ = (!\inst11|s_debounceCnt\(21) & (!\inst11|s_debounceCnt\(13) & (!\inst11|s_debounceCnt\(20) & !\inst11|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(21),
	datab => \inst11|s_debounceCnt\(13),
	datac => \inst11|s_debounceCnt\(20),
	datad => \inst11|s_debounceCnt\(12),
	combout => \inst11|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X94_Y43_N26
\inst11|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~5_combout\ = (!\inst11|s_debounceCnt\(18) & (!\inst11|s_debounceCnt\(19) & (!\inst11|s_debounceCnt\(14) & !\inst11|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(18),
	datab => \inst11|s_debounceCnt\(19),
	datac => \inst11|s_debounceCnt\(14),
	datad => \inst11|s_debounceCnt\(11),
	combout => \inst11|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X95_Y42_N2
\inst11|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~2_combout\ = (!\inst11|s_debounceCnt\(16) & (!\inst11|s_debounceCnt\(15) & (!\inst11|s_debounceCnt\(17) & !\inst11|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(16),
	datab => \inst11|s_debounceCnt\(15),
	datac => \inst11|s_debounceCnt\(17),
	datad => \inst11|s_debounceCnt\(6),
	combout => \inst11|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X94_Y43_N0
\inst11|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~6_combout\ = (\inst11|s_pulsedOut~4_combout\ & (\inst11|s_pulsedOut~3_combout\ & (\inst11|s_pulsedOut~5_combout\ & \inst11|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~4_combout\,
	datab => \inst11|s_pulsedOut~3_combout\,
	datac => \inst11|s_pulsedOut~5_combout\,
	datad => \inst11|s_pulsedOut~2_combout\,
	combout => \inst11|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X94_Y43_N10
\inst11|s_debounceCnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[7]~29_combout\ = ((\inst11|s_debounceCnt\(5)) # ((\inst11|s_debounceCnt\(0)) # (!\inst11|s_pulsedOut~6_combout\))) # (!\inst11|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~7_combout\,
	datab => \inst11|s_debounceCnt\(5),
	datac => \inst11|s_debounceCnt\(0),
	datad => \inst11|s_pulsedOut~6_combout\,
	combout => \inst11|s_debounceCnt[7]~29_combout\);

-- Location: LCCOMB_X95_Y42_N30
\inst11|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[22]~27_combout\ = (\inst11|s_debounceCnt\(22) & (((!\inst11|LessThan0~6_combout\)))) # (!\inst11|s_debounceCnt\(22) & ((\inst11|s_debounceCnt[7]~29_combout\) # ((!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(22),
	datab => \inst11|s_debounceCnt[7]~29_combout\,
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X96_Y42_N22
\inst11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~44_combout\ = \inst11|Add0~43\ $ (\inst11|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|s_debounceCnt\(22),
	cin => \inst11|Add0~43\,
	combout => \inst11|Add0~44_combout\);

-- Location: LCCOMB_X95_Y42_N24
\inst11|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[22]~28_combout\ = (\inst11|s_dirtyIn~q\ & (\inst11|s_debounceCnt[22]~27_combout\ & ((\inst11|Add0~44_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_dirtyIn~q\,
	datab => \inst11|s_previousIn~q\,
	datac => \inst11|s_debounceCnt[22]~27_combout\,
	datad => \inst11|Add0~44_combout\,
	combout => \inst11|s_debounceCnt[22]~28_combout\);

-- Location: FF_X95_Y42_N25
\inst11|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(22));

-- Location: LCCOMB_X95_Y43_N30
\inst11|s_debounceCnt[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[7]~5_combout\ = (\inst11|s_dirtyIn~q\ & (\inst11|s_previousIn~q\ & ((!\inst11|LessThan0~6_combout\) # (!\inst11|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_dirtyIn~q\,
	datab => \inst11|s_debounceCnt\(22),
	datac => \inst11|s_previousIn~q\,
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[7]~5_combout\);

-- Location: LCCOMB_X96_Y43_N10
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|s_debounceCnt\(0) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X95_Y43_N6
\inst11|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~26_combout\ = (\inst11|s_debounceCnt[7]~5_combout\ & \inst11|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt[7]~5_combout\,
	datac => \inst11|Add0~0_combout\,
	combout => \inst11|s_debounceCnt~26_combout\);

-- Location: FF_X95_Y43_N7
\inst11|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~26_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(0));

-- Location: LCCOMB_X94_Y43_N22
\inst11|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~21_combout\ = (\inst11|Add0~2_combout\ & \inst11|s_debounceCnt[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datac => \inst11|s_debounceCnt[7]~5_combout\,
	combout => \inst11|s_debounceCnt~21_combout\);

-- Location: FF_X94_Y43_N23
\inst11|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~21_combout\,
	ena => \inst11|s_debounceCnt[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(1));

-- Location: LCCOMB_X94_Y43_N6
\inst11|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~7_combout\ = (!\inst11|s_debounceCnt\(1) & (!\inst11|s_debounceCnt\(4) & (!\inst11|s_debounceCnt\(2) & !\inst11|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(1),
	datab => \inst11|s_debounceCnt\(4),
	datac => \inst11|s_debounceCnt\(2),
	datad => \inst11|s_debounceCnt\(3),
	combout => \inst11|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X94_Y42_N0
\inst11|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~9_combout\ = (\inst11|s_debounceCnt\(0) & (\inst11|s_previousIn~q\ & (\inst11|s_dirtyIn~q\ & !\inst11|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(0),
	datab => \inst11|s_previousIn~q\,
	datac => \inst11|s_dirtyIn~q\,
	datad => \inst11|s_debounceCnt\(22),
	combout => \inst11|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X94_Y43_N16
\inst11|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~10_combout\ = (\inst11|s_pulsedOut~7_combout\ & (\inst11|s_pulsedOut~9_combout\ & (!\inst11|s_debounceCnt\(5) & \inst11|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~7_combout\,
	datab => \inst11|s_pulsedOut~9_combout\,
	datac => \inst11|s_debounceCnt\(5),
	datad => \inst11|s_pulsedOut~6_combout\,
	combout => \inst11|s_pulsedOut~10_combout\);

-- Location: FF_X94_Y43_N17
\inst11|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_pulsedOut~q\);

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

-- Location: FF_X76_Y43_N15
\inst10|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_dirtyIn~q\);

-- Location: FF_X76_Y43_N3
\inst10|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst10|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_previousIn~q\);

-- Location: LCCOMB_X75_Y44_N10
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|s_debounceCnt\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X76_Y44_N8
\inst10|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~26_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~0_combout\,
	combout => \inst10|s_debounceCnt~26_combout\);

-- Location: FF_X76_Y44_N9
\inst10|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~26_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y44_N12
\inst10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|s_debounceCnt\(1) & (\inst10|Add0~1\ & VCC)) # (!\inst10|s_debounceCnt\(1) & (!\inst10|Add0~1\))
-- \inst10|Add0~3\ = CARRY((!\inst10|s_debounceCnt\(1) & !\inst10|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: LCCOMB_X76_Y44_N26
\inst10|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~21_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~2_combout\,
	combout => \inst10|s_debounceCnt~21_combout\);

-- Location: FF_X76_Y44_N27
\inst10|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~21_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(1));

-- Location: LCCOMB_X75_Y44_N14
\inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|s_debounceCnt\(2) & ((GND) # (!\inst10|Add0~3\))) # (!\inst10|s_debounceCnt\(2) & (\inst10|Add0~3\ $ (GND)))
-- \inst10|Add0~5\ = CARRY((\inst10|s_debounceCnt\(2)) # (!\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCCOMB_X76_Y44_N16
\inst10|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~22_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~4_combout\,
	combout => \inst10|s_debounceCnt~22_combout\);

-- Location: FF_X76_Y44_N17
\inst10|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~22_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(2));

-- Location: LCCOMB_X75_Y44_N16
\inst10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|s_debounceCnt\(3) & (\inst10|Add0~5\ & VCC)) # (!\inst10|s_debounceCnt\(3) & (!\inst10|Add0~5\))
-- \inst10|Add0~7\ = CARRY((!\inst10|s_debounceCnt\(3) & !\inst10|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: LCCOMB_X76_Y44_N22
\inst10|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~23_combout\ = (\inst10|Add0~6_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~6_combout\,
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~23_combout\);

-- Location: FF_X76_Y44_N23
\inst10|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~23_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(3));

-- Location: LCCOMB_X75_Y44_N18
\inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|s_debounceCnt\(4) & ((GND) # (!\inst10|Add0~7\))) # (!\inst10|s_debounceCnt\(4) & (\inst10|Add0~7\ $ (GND)))
-- \inst10|Add0~9\ = CARRY((\inst10|s_debounceCnt\(4)) # (!\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X76_Y44_N12
\inst10|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~24_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~8_combout\,
	combout => \inst10|s_debounceCnt~24_combout\);

-- Location: FF_X76_Y44_N13
\inst10|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~24_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(4));

-- Location: LCCOMB_X76_Y44_N2
\inst10|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~7_combout\ = (!\inst10|s_debounceCnt\(1) & (!\inst10|s_debounceCnt\(2) & (!\inst10|s_debounceCnt\(3) & !\inst10|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(1),
	datab => \inst10|s_debounceCnt\(2),
	datac => \inst10|s_debounceCnt\(3),
	datad => \inst10|s_debounceCnt\(4),
	combout => \inst10|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X75_Y44_N20
\inst10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst10|s_debounceCnt\(5) & (\inst10|Add0~9\ & VCC)) # (!\inst10|s_debounceCnt\(5) & (!\inst10|Add0~9\))
-- \inst10|Add0~11\ = CARRY((!\inst10|s_debounceCnt\(5) & !\inst10|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: LCCOMB_X75_Y44_N22
\inst10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = (\inst10|s_debounceCnt\(6) & ((GND) # (!\inst10|Add0~11\))) # (!\inst10|s_debounceCnt\(6) & (\inst10|Add0~11\ $ (GND)))
-- \inst10|Add0~13\ = CARRY((\inst10|s_debounceCnt\(6)) # (!\inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: LCCOMB_X75_Y43_N14
\inst10|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~36_combout\ = (\inst10|s_debounceCnt\(18) & ((GND) # (!\inst10|Add0~35\))) # (!\inst10|s_debounceCnt\(18) & (\inst10|Add0~35\ $ (GND)))
-- \inst10|Add0~37\ = CARRY((\inst10|s_debounceCnt\(18)) # (!\inst10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst10|Add0~35\,
	combout => \inst10|Add0~36_combout\,
	cout => \inst10|Add0~37\);

-- Location: LCCOMB_X75_Y43_N16
\inst10|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~38_combout\ = (\inst10|s_debounceCnt\(19) & (\inst10|Add0~37\ & VCC)) # (!\inst10|s_debounceCnt\(19) & (!\inst10|Add0~37\))
-- \inst10|Add0~39\ = CARRY((!\inst10|s_debounceCnt\(19) & !\inst10|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst10|Add0~37\,
	combout => \inst10|Add0~38_combout\,
	cout => \inst10|Add0~39\);

-- Location: LCCOMB_X76_Y43_N26
\inst10|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~20_combout\ = (\inst10|s_debounceCnt[19]~4_combout\ & (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~38_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[19]~4_combout\,
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~38_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt[19]~20_combout\);

-- Location: FF_X76_Y43_N27
\inst10|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(19));

-- Location: LCCOMB_X75_Y43_N18
\inst10|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~40_combout\ = (\inst10|s_debounceCnt\(20) & ((GND) # (!\inst10|Add0~39\))) # (!\inst10|s_debounceCnt\(20) & (\inst10|Add0~39\ $ (GND)))
-- \inst10|Add0~41\ = CARRY((\inst10|s_debounceCnt\(20)) # (!\inst10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst10|Add0~39\,
	combout => \inst10|Add0~40_combout\,
	cout => \inst10|Add0~41\);

-- Location: LCCOMB_X75_Y43_N28
\inst10|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[20]~9_combout\ = (\inst10|Add0~40_combout\ & (\inst10|s_debounceCnt[19]~4_combout\ & \inst10|s_debounceCnt[19]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add0~40_combout\,
	datac => \inst10|s_debounceCnt[19]~4_combout\,
	datad => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt[20]~9_combout\);

-- Location: FF_X75_Y43_N29
\inst10|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(20));

-- Location: LCCOMB_X76_Y43_N0
\inst10|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~5_combout\ = (!\inst10|s_debounceCnt\(21) & !\inst10|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt\(21),
	datad => \inst10|s_debounceCnt\(20),
	combout => \inst10|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y43_N0
\inst10|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~2_combout\ = (!\inst10|s_debounceCnt\(12) & !\inst10|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(12),
	datad => \inst10|s_debounceCnt\(13),
	combout => \inst10|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y44_N18
\inst10|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~8_combout\ = (!\inst10|s_debounceCnt\(5) & \inst10|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(5),
	datad => \inst10|s_pulsedOut~7_combout\,
	combout => \inst10|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X76_Y44_N30
\inst10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~0_combout\ = (\inst10|s_debounceCnt\(7)) # ((\inst10|s_debounceCnt\(6) & ((\inst10|s_debounceCnt\(0)) # (!\inst10|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(6),
	datab => \inst10|s_debounceCnt\(0),
	datac => \inst10|s_debounceCnt\(7),
	datad => \inst10|s_pulsedOut~8_combout\,
	combout => \inst10|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y44_N20
\inst10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~1_combout\ = (\inst10|s_debounceCnt\(10)) # ((\inst10|s_debounceCnt\(8) & (\inst10|LessThan0~0_combout\ & \inst10|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(10),
	datab => \inst10|s_debounceCnt\(8),
	datac => \inst10|LessThan0~0_combout\,
	datad => \inst10|s_debounceCnt\(9),
	combout => \inst10|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y44_N6
\inst10|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~3_combout\ = (\inst10|s_debounceCnt\(14) & (((\inst10|s_debounceCnt\(11) & \inst10|LessThan0~1_combout\)) # (!\inst10|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(14),
	datab => \inst10|s_debounceCnt\(11),
	datac => \inst10|LessThan0~2_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y44_N0
\inst10|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~4_combout\ = (\inst10|s_debounceCnt\(16)) # ((\inst10|s_debounceCnt\(17)) # ((\inst10|s_debounceCnt\(15)) # (\inst10|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(16),
	datab => \inst10|s_debounceCnt\(17),
	datac => \inst10|s_debounceCnt\(15),
	datad => \inst10|LessThan0~3_combout\,
	combout => \inst10|LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y44_N10
\inst10|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~6_combout\ = ((\inst10|s_debounceCnt\(18) & (\inst10|s_debounceCnt\(19) & \inst10|LessThan0~4_combout\))) # (!\inst10|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(18),
	datab => \inst10|LessThan0~5_combout\,
	datac => \inst10|s_debounceCnt\(19),
	datad => \inst10|LessThan0~4_combout\,
	combout => \inst10|LessThan0~6_combout\);

-- Location: LCCOMB_X76_Y44_N28
\inst10|s_debounceCnt[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~2_combout\ = (\inst10|s_dirtyIn~q\ & ((!\inst10|LessThan0~6_combout\) # (!\inst10|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_dirtyIn~q\,
	datac => \inst10|s_debounceCnt\(22),
	datad => \inst10|LessThan0~6_combout\,
	combout => \inst10|s_debounceCnt[19]~2_combout\);

-- Location: LCCOMB_X76_Y43_N4
\inst10|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~3_combout\ = (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~12_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~12_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt~3_combout\);

-- Location: FF_X76_Y43_N5
\inst10|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~3_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(6));

-- Location: LCCOMB_X75_Y44_N24
\inst10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|s_debounceCnt\(7) & (\inst10|Add0~13\ & VCC)) # (!\inst10|s_debounceCnt\(7) & (!\inst10|Add0~13\))
-- \inst10|Add0~15\ = CARRY((!\inst10|s_debounceCnt\(7) & !\inst10|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: LCCOMB_X75_Y44_N0
\inst10|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~13_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~14_combout\,
	combout => \inst10|s_debounceCnt~13_combout\);

-- Location: FF_X75_Y44_N1
\inst10|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~13_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(7));

-- Location: LCCOMB_X75_Y44_N26
\inst10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~16_combout\ = (\inst10|s_debounceCnt\(8) & ((GND) # (!\inst10|Add0~15\))) # (!\inst10|s_debounceCnt\(8) & (\inst10|Add0~15\ $ (GND)))
-- \inst10|Add0~17\ = CARRY((\inst10|s_debounceCnt\(8)) # (!\inst10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst10|Add0~15\,
	combout => \inst10|Add0~16_combout\,
	cout => \inst10|Add0~17\);

-- Location: LCCOMB_X75_Y44_N6
\inst10|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~14_combout\ = (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~16_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~16_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt~14_combout\);

-- Location: FF_X75_Y44_N7
\inst10|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~14_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(8));

-- Location: LCCOMB_X75_Y44_N28
\inst10|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~18_combout\ = (\inst10|s_debounceCnt\(9) & (\inst10|Add0~17\ & VCC)) # (!\inst10|s_debounceCnt\(9) & (!\inst10|Add0~17\))
-- \inst10|Add0~19\ = CARRY((!\inst10|s_debounceCnt\(9) & !\inst10|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst10|Add0~17\,
	combout => \inst10|Add0~18_combout\,
	cout => \inst10|Add0~19\);

-- Location: LCCOMB_X75_Y44_N8
\inst10|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~15_combout\ = (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~18_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~18_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt~15_combout\);

-- Location: FF_X75_Y44_N9
\inst10|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~15_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(9));

-- Location: LCCOMB_X75_Y44_N30
\inst10|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~20_combout\ = (\inst10|s_debounceCnt\(10) & ((GND) # (!\inst10|Add0~19\))) # (!\inst10|s_debounceCnt\(10) & (\inst10|Add0~19\ $ (GND)))
-- \inst10|Add0~21\ = CARRY((\inst10|s_debounceCnt\(10)) # (!\inst10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst10|Add0~19\,
	combout => \inst10|Add0~20_combout\,
	cout => \inst10|Add0~21\);

-- Location: LCCOMB_X75_Y44_N2
\inst10|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~16_combout\ = (\inst10|Add0~20_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~20_combout\,
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~16_combout\);

-- Location: FF_X75_Y44_N3
\inst10|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~16_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(10));

-- Location: LCCOMB_X75_Y43_N0
\inst10|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~22_combout\ = (\inst10|s_debounceCnt\(11) & (\inst10|Add0~21\ & VCC)) # (!\inst10|s_debounceCnt\(11) & (!\inst10|Add0~21\))
-- \inst10|Add0~23\ = CARRY((!\inst10|s_debounceCnt\(11) & !\inst10|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst10|Add0~21\,
	combout => \inst10|Add0~22_combout\,
	cout => \inst10|Add0~23\);

-- Location: LCCOMB_X76_Y43_N20
\inst10|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~17_combout\ = (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~22_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~22_combout\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt~17_combout\);

-- Location: FF_X76_Y43_N21
\inst10|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~17_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(11));

-- Location: LCCOMB_X75_Y43_N2
\inst10|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~24_combout\ = (\inst10|s_debounceCnt\(12) & ((GND) # (!\inst10|Add0~23\))) # (!\inst10|s_debounceCnt\(12) & (\inst10|Add0~23\ $ (GND)))
-- \inst10|Add0~25\ = CARRY((\inst10|s_debounceCnt\(12)) # (!\inst10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst10|Add0~23\,
	combout => \inst10|Add0~24_combout\,
	cout => \inst10|Add0~25\);

-- Location: LCCOMB_X77_Y43_N28
\inst10|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~11_combout\ = (\inst10|Add0~24_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~24_combout\,
	datad => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~11_combout\);

-- Location: FF_X77_Y43_N29
\inst10|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~11_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(12));

-- Location: LCCOMB_X75_Y43_N4
\inst10|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~26_combout\ = (\inst10|s_debounceCnt\(13) & (\inst10|Add0~25\ & VCC)) # (!\inst10|s_debounceCnt\(13) & (!\inst10|Add0~25\))
-- \inst10|Add0~27\ = CARRY((!\inst10|s_debounceCnt\(13) & !\inst10|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst10|Add0~25\,
	combout => \inst10|Add0~26_combout\,
	cout => \inst10|Add0~27\);

-- Location: LCCOMB_X77_Y43_N6
\inst10|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~12_combout\ = (\inst10|Add0~26_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~26_combout\,
	datad => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~12_combout\);

-- Location: FF_X77_Y43_N7
\inst10|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~12_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(13));

-- Location: LCCOMB_X75_Y43_N6
\inst10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~28_combout\ = (\inst10|s_debounceCnt\(14) & ((GND) # (!\inst10|Add0~27\))) # (!\inst10|s_debounceCnt\(14) & (\inst10|Add0~27\ $ (GND)))
-- \inst10|Add0~29\ = CARRY((\inst10|s_debounceCnt\(14)) # (!\inst10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst10|Add0~27\,
	combout => \inst10|Add0~28_combout\,
	cout => \inst10|Add0~29\);

-- Location: LCCOMB_X76_Y43_N6
\inst10|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~18_combout\ = (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~28_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~28_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt~18_combout\);

-- Location: FF_X76_Y43_N7
\inst10|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~18_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(14));

-- Location: LCCOMB_X75_Y43_N8
\inst10|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~30_combout\ = (\inst10|s_debounceCnt\(15) & (\inst10|Add0~29\ & VCC)) # (!\inst10|s_debounceCnt\(15) & (!\inst10|Add0~29\))
-- \inst10|Add0~31\ = CARRY((!\inst10|s_debounceCnt\(15) & !\inst10|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst10|Add0~29\,
	combout => \inst10|Add0~30_combout\,
	cout => \inst10|Add0~31\);

-- Location: LCCOMB_X75_Y43_N24
\inst10|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~6_combout\ = (\inst10|Add0~30_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~30_combout\,
	datad => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y43_N25
\inst10|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~6_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(15));

-- Location: LCCOMB_X75_Y43_N10
\inst10|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~32_combout\ = (\inst10|s_debounceCnt\(16) & ((GND) # (!\inst10|Add0~31\))) # (!\inst10|s_debounceCnt\(16) & (\inst10|Add0~31\ $ (GND)))
-- \inst10|Add0~33\ = CARRY((\inst10|s_debounceCnt\(16)) # (!\inst10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst10|Add0~31\,
	combout => \inst10|Add0~32_combout\,
	cout => \inst10|Add0~33\);

-- Location: LCCOMB_X75_Y43_N30
\inst10|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~7_combout\ = (\inst10|Add0~32_combout\ & \inst10|s_debounceCnt[19]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~32_combout\,
	datad => \inst10|s_debounceCnt[19]~5_combout\,
	combout => \inst10|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y43_N31
\inst10|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~7_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(16));

-- Location: LCCOMB_X75_Y43_N12
\inst10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~34_combout\ = (\inst10|s_debounceCnt\(17) & (\inst10|Add0~33\ & VCC)) # (!\inst10|s_debounceCnt\(17) & (!\inst10|Add0~33\))
-- \inst10|Add0~35\ = CARRY((!\inst10|s_debounceCnt\(17) & !\inst10|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst10|Add0~33\,
	combout => \inst10|Add0~34_combout\,
	cout => \inst10|Add0~35\);

-- Location: LCCOMB_X76_Y44_N4
\inst10|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~8_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt[19]~5_combout\,
	datac => \inst10|Add0~34_combout\,
	combout => \inst10|s_debounceCnt~8_combout\);

-- Location: FF_X76_Y44_N5
\inst10|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~8_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(17));

-- Location: LCCOMB_X75_Y43_N26
\inst10|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~19_combout\ = (\inst10|s_debounceCnt[19]~4_combout\ & (\inst10|s_debounceCnt[19]~2_combout\ & ((\inst10|Add0~36_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_previousIn~q\,
	datab => \inst10|Add0~36_combout\,
	datac => \inst10|s_debounceCnt[19]~4_combout\,
	datad => \inst10|s_debounceCnt[19]~2_combout\,
	combout => \inst10|s_debounceCnt[18]~19_combout\);

-- Location: FF_X75_Y43_N27
\inst10|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(18));

-- Location: LCCOMB_X76_Y43_N12
\inst10|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~5_combout\ = (!\inst10|s_debounceCnt\(18) & (!\inst10|s_debounceCnt\(11) & (!\inst10|s_debounceCnt\(19) & !\inst10|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(18),
	datab => \inst10|s_debounceCnt\(11),
	datac => \inst10|s_debounceCnt\(19),
	datad => \inst10|s_debounceCnt\(14),
	combout => \inst10|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X76_Y43_N8
\inst10|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~3_combout\ = (!\inst10|s_debounceCnt\(13) & (!\inst10|s_debounceCnt\(20) & (!\inst10|s_debounceCnt\(21) & !\inst10|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(13),
	datab => \inst10|s_debounceCnt\(20),
	datac => \inst10|s_debounceCnt\(21),
	datad => \inst10|s_debounceCnt\(12),
	combout => \inst10|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X75_Y44_N4
\inst10|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~4_combout\ = (!\inst10|s_debounceCnt\(8) & (!\inst10|s_debounceCnt\(10) & (!\inst10|s_debounceCnt\(9) & !\inst10|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(8),
	datab => \inst10|s_debounceCnt\(10),
	datac => \inst10|s_debounceCnt\(9),
	datad => \inst10|s_debounceCnt\(7),
	combout => \inst10|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X76_Y43_N10
\inst10|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~2_combout\ = (!\inst10|s_debounceCnt\(16) & (!\inst10|s_debounceCnt\(15) & (!\inst10|s_debounceCnt\(6) & !\inst10|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(16),
	datab => \inst10|s_debounceCnt\(15),
	datac => \inst10|s_debounceCnt\(6),
	datad => \inst10|s_debounceCnt\(17),
	combout => \inst10|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X76_Y43_N24
\inst10|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~6_combout\ = (\inst10|s_pulsedOut~5_combout\ & (\inst10|s_pulsedOut~3_combout\ & (\inst10|s_pulsedOut~4_combout\ & \inst10|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_pulsedOut~5_combout\,
	datab => \inst10|s_pulsedOut~3_combout\,
	datac => \inst10|s_pulsedOut~4_combout\,
	datad => \inst10|s_pulsedOut~2_combout\,
	combout => \inst10|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X76_Y43_N28
\inst10|s_debounceCnt[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~29_combout\ = (\inst10|s_debounceCnt\(5)) # ((\inst10|s_debounceCnt\(0)) # ((!\inst10|s_pulsedOut~6_combout\) # (!\inst10|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(5),
	datab => \inst10|s_debounceCnt\(0),
	datac => \inst10|s_pulsedOut~7_combout\,
	datad => \inst10|s_pulsedOut~6_combout\,
	combout => \inst10|s_debounceCnt[19]~29_combout\);

-- Location: LCCOMB_X76_Y43_N14
\inst10|s_debounceCnt[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~4_combout\ = (\inst10|s_debounceCnt\(22)) # (((\inst10|s_debounceCnt[19]~29_combout\) # (!\inst10|s_dirtyIn~q\)) # (!\inst10|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|s_dirtyIn~q\,
	datad => \inst10|s_debounceCnt[19]~29_combout\,
	combout => \inst10|s_debounceCnt[19]~4_combout\);

-- Location: LCCOMB_X75_Y43_N20
\inst10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~42_combout\ = (\inst10|s_debounceCnt\(21) & (\inst10|Add0~41\ & VCC)) # (!\inst10|s_debounceCnt\(21) & (!\inst10|Add0~41\))
-- \inst10|Add0~43\ = CARRY((!\inst10|s_debounceCnt\(21) & !\inst10|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst10|Add0~41\,
	combout => \inst10|Add0~42_combout\,
	cout => \inst10|Add0~43\);

-- Location: LCCOMB_X76_Y43_N22
\inst10|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[21]~10_combout\ = (\inst10|s_debounceCnt[19]~4_combout\ & (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[19]~4_combout\,
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~42_combout\,
	combout => \inst10|s_debounceCnt[21]~10_combout\);

-- Location: FF_X76_Y43_N23
\inst10|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(21));

-- Location: LCCOMB_X75_Y43_N22
\inst10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~44_combout\ = \inst10|Add0~43\ $ (\inst10|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|s_debounceCnt\(22),
	cin => \inst10|Add0~43\,
	combout => \inst10|Add0~44_combout\);

-- Location: LCCOMB_X76_Y43_N16
\inst10|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[22]~27_combout\ = (\inst10|s_debounceCnt\(22) & (((!\inst10|LessThan0~6_combout\)))) # (!\inst10|s_debounceCnt\(22) & (((\inst10|s_debounceCnt[19]~29_combout\)) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|LessThan0~6_combout\,
	datad => \inst10|s_debounceCnt[19]~29_combout\,
	combout => \inst10|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X76_Y43_N30
\inst10|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[22]~28_combout\ = (\inst10|s_dirtyIn~q\ & (\inst10|s_debounceCnt[22]~27_combout\ & ((\inst10|Add0~44_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_dirtyIn~q\,
	datab => \inst10|Add0~44_combout\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[22]~27_combout\,
	combout => \inst10|s_debounceCnt[22]~28_combout\);

-- Location: FF_X76_Y43_N31
\inst10|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(22));

-- Location: LCCOMB_X76_Y44_N14
\inst10|s_debounceCnt[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~5_combout\ = (\inst10|s_previousIn~q\ & (\inst10|s_dirtyIn~q\ & ((!\inst10|LessThan0~6_combout\) # (!\inst10|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|s_dirtyIn~q\,
	datad => \inst10|LessThan0~6_combout\,
	combout => \inst10|s_debounceCnt[19]~5_combout\);

-- Location: LCCOMB_X76_Y44_N24
\inst10|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~25_combout\ = (\inst10|s_debounceCnt[19]~5_combout\ & \inst10|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt[19]~5_combout\,
	datad => \inst10|Add0~10_combout\,
	combout => \inst10|s_debounceCnt~25_combout\);

-- Location: FF_X76_Y44_N25
\inst10|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~25_combout\,
	ena => \inst10|s_debounceCnt[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(5));

-- Location: LCCOMB_X76_Y43_N2
\inst10|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~9_combout\ = (!\inst10|s_debounceCnt\(22) & (\inst10|s_dirtyIn~q\ & (\inst10|s_previousIn~q\ & \inst10|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_dirtyIn~q\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt\(0),
	combout => \inst10|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X76_Y43_N18
\inst10|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~10_combout\ = (!\inst10|s_debounceCnt\(5) & (\inst10|s_pulsedOut~9_combout\ & (\inst10|s_pulsedOut~7_combout\ & \inst10|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(5),
	datab => \inst10|s_pulsedOut~9_combout\,
	datac => \inst10|s_pulsedOut~7_combout\,
	datad => \inst10|s_pulsedOut~6_combout\,
	combout => \inst10|s_pulsedOut~10_combout\);

-- Location: FF_X76_Y43_N19
\inst10|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_pulsedOut~q\);

-- Location: LCCOMB_X87_Y40_N12
\inst4|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~14_combout\ = (\inst12|s_pulsedOut~q\) # ((\inst13|s_pulsedOut~q\) # ((\inst11|s_pulsedOut~q\) # (\inst10|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst10|s_pulsedOut~q\,
	combout => \inst4|PS~14_combout\);

-- Location: LCCOMB_X85_Y39_N28
\inst9|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~19_combout\ = (\inst6|PS.CC~q\ & ((\inst4|PS~14_combout\) # (\inst9|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS.E0~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~19_combout\);

-- Location: FF_X85_Y39_N29
\inst9|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E0~q\);

-- Location: LCCOMB_X85_Y39_N10
\inst9|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~9_combout\ = (\inst13|s_pulsedOut~q\ & !\inst9|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst9|PS.E0~q\,
	combout => \inst9|PS~9_combout\);

-- Location: LCCOMB_X85_Y39_N24
\inst9|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~10_combout\ = (\inst6|PS.CC~q\ & ((\inst9|PS~9_combout\) # ((!\inst4|PS~14_combout\ & \inst9|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS~9_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS.E1~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~10_combout\);

-- Location: FF_X85_Y39_N25
\inst9|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E1~q\);

-- Location: LCCOMB_X87_Y40_N30
\inst4|NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|NS~0_combout\ = (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|NS~0_combout\);

-- Location: LCCOMB_X86_Y39_N28
\inst9|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~20_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst9|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (!\inst9|PS.E0~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E0~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst9|PS.E1~q\,
	combout => \inst9|PS~20_combout\);

-- Location: LCCOMB_X85_Y39_N26
\inst9|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~21_combout\ = (\inst6|PS.CC~q\ & ((\inst9|PS~20_combout\) # ((!\inst4|PS~14_combout\ & \inst9|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst9|PS~20_combout\,
	datac => \inst9|PS.E2~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~21_combout\);

-- Location: FF_X85_Y39_N27
\inst9|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E2~q\);

-- Location: LCCOMB_X86_Y39_N30
\inst9|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~11_combout\ = (\inst13|s_pulsedOut~q\ & (\inst9|PS.E2~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst9|PS.E1~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E2~q\,
	datab => \inst9|PS.E1~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst9|PS~11_combout\);

-- Location: LCCOMB_X86_Y39_N4
\inst9|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~12_combout\ = (\inst6|PS.CC~q\ & ((\inst9|PS~11_combout\) # ((!\inst4|PS~14_combout\ & \inst9|PS.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS~11_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS.E3~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~12_combout\);

-- Location: FF_X86_Y39_N5
\inst9|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E3~q\);

-- Location: LCCOMB_X86_Y39_N6
\inst9|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~16_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst9|PS.E3~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst9|PS.E2~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E2~q\,
	datab => \inst9|PS.E3~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst9|PS~16_combout\);

-- Location: LCCOMB_X86_Y39_N12
\inst9|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~17_combout\ = (\inst9|PS~16_combout\) # ((!\inst9|PS.E0~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E0~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst9|PS~16_combout\,
	combout => \inst9|PS~17_combout\);

-- Location: LCCOMB_X86_Y39_N20
\inst9|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~18_combout\ = (\inst6|PS.CC~q\ & ((\inst9|PS~17_combout\) # ((!\inst4|PS~14_combout\ & \inst9|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS~17_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS.E4~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~18_combout\);

-- Location: FF_X86_Y39_N21
\inst9|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E4~q\);

-- Location: LCCOMB_X86_Y39_N24
\inst9|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~13_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst9|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst9|PS.E3~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E3~q\,
	datab => \inst9|PS.E4~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst9|PS~13_combout\);

-- Location: LCCOMB_X85_Y39_N12
\inst9|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~14_combout\ = (\inst9|PS~13_combout\) # ((\inst9|PS.E1~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PS.E1~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst9|PS~13_combout\,
	combout => \inst9|PS~14_combout\);

-- Location: LCCOMB_X85_Y39_N14
\inst9|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~15_combout\ = (\inst6|PS.CC~q\ & ((\inst9|PS~14_combout\) # ((!\inst4|PS~14_combout\ & \inst9|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS~14_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS.E5~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst9|PS~15_combout\);

-- Location: FF_X85_Y39_N15
\inst9|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E5~q\);

-- Location: LCCOMB_X87_Y40_N20
\inst4|NS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|NS~3_combout\ = (!\inst13|s_pulsedOut~q\ & ((\inst12|s_pulsedOut~q\) # ((\inst11|s_pulsedOut~q\) # (\inst10|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst10|s_pulsedOut~q\,
	combout => \inst4|NS~3_combout\);

-- Location: LCCOMB_X87_Y40_N28
\inst4|NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|NS~1_combout\ = (!\inst13|s_pulsedOut~q\ & (!\inst12|s_pulsedOut~q\ & ((\inst11|s_pulsedOut~q\) # (\inst10|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst10|s_pulsedOut~q\,
	combout => \inst4|NS~1_combout\);

-- Location: LCCOMB_X86_Y39_N16
\inst9|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~23_combout\ = (\inst4|NS~1_combout\) # ((!\inst9|PS.E3~q\ & !\inst9|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PS.E3~q\,
	datac => \inst9|PS.E2~q\,
	datad => \inst4|NS~1_combout\,
	combout => \inst9|PS~23_combout\);

-- Location: LCCOMB_X86_Y39_N22
\inst9|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~24_combout\ = (\inst6|PS.CC~q\ & (\inst9|PS~23_combout\ & ((\inst4|NS~3_combout\) # (!\inst9|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E4~q\,
	datab => \inst6|PS.CC~q\,
	datac => \inst4|NS~3_combout\,
	datad => \inst9|PS~23_combout\,
	combout => \inst9|PS~24_combout\);

-- Location: LCCOMB_X87_Y40_N6
\inst4|NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|NS~2_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (!\inst11|s_pulsedOut~q\ & \inst10|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst10|s_pulsedOut~q\,
	combout => \inst4|NS~2_combout\);

-- Location: LCCOMB_X86_Y39_N10
\inst9|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~22_combout\ = (\inst4|NS~2_combout\) # ((\inst9|PS.E0~q\ & !\inst9|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E0~q\,
	datac => \inst4|NS~2_combout\,
	datad => \inst9|PS.E1~q\,
	combout => \inst9|PS~22_combout\);

-- Location: LCCOMB_X86_Y39_N0
\inst9|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|PS~25_combout\ = (\inst9|PS~24_combout\ & (\inst9|PS~22_combout\ & ((\inst4|PS~14_combout\) # (!\inst9|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E5~q\,
	datab => \inst4|PS~14_combout\,
	datac => \inst9|PS~24_combout\,
	datad => \inst9|PS~22_combout\,
	combout => \inst9|PS~25_combout\);

-- Location: FF_X86_Y39_N1
\inst9|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|PS~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PS.E6~q\);

-- Location: LCCOMB_X86_Y39_N2
\inst9|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|WideOr1~0_combout\ = (\inst9|PS.E5~q\) # ((\inst9|PS.E2~q\) # (\inst9|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E5~q\,
	datac => \inst9|PS.E2~q\,
	datad => \inst9|PS.E6~q\,
	combout => \inst9|WideOr1~0_combout\);

-- Location: LCCOMB_X88_Y39_N18
\inst3|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~18_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS.E0~q\) # (\inst4|PS~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datac => \inst3|PS.E0~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst3|PS~18_combout\);

-- Location: FF_X88_Y39_N19
\inst3|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E0~q\);

-- Location: LCCOMB_X86_Y39_N14
\inst3|PS~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~30_combout\ = (!\inst3|PS.E0~q\ & \inst13|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|PS.E0~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst3|PS~30_combout\);

-- Location: LCCOMB_X87_Y39_N22
\inst3|PS~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~31_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~30_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst6|PS.CQ~q\,
	datac => \inst3|PS.E1~q\,
	datad => \inst3|PS~30_combout\,
	combout => \inst3|PS~31_combout\);

-- Location: FF_X87_Y39_N23
\inst3|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E1~q\);

-- Location: LCCOMB_X88_Y39_N6
\inst3|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~16_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst3|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & (!\inst3|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst3|PS.E0~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst3|PS.E1~q\,
	combout => \inst3|PS~16_combout\);

-- Location: LCCOMB_X88_Y39_N4
\inst3|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~17_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~16_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst4|PS~14_combout\,
	datac => \inst3|PS.E2~q\,
	datad => \inst3|PS~16_combout\,
	combout => \inst3|PS~17_combout\);

-- Location: FF_X88_Y39_N5
\inst3|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E2~q\);

-- Location: LCCOMB_X88_Y39_N10
\inst3|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~25_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst3|PS.E2~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst3|PS.E1~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst3|PS.E1~q\,
	datac => \inst3|PS.E2~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~25_combout\);

-- Location: LCCOMB_X88_Y39_N22
\inst3|PS~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~26_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~25_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst4|PS~14_combout\,
	datac => \inst3|PS.E3~q\,
	datad => \inst3|PS~25_combout\,
	combout => \inst3|PS~26_combout\);

-- Location: FF_X88_Y39_N23
\inst3|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E3~q\);

-- Location: LCCOMB_X88_Y39_N24
\inst3|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~13_combout\ = (\inst13|s_pulsedOut~q\ & (\inst3|PS.E3~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst3|PS.E2~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E3~q\,
	datab => \inst3|PS.E2~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~13_combout\);

-- Location: LCCOMB_X87_Y39_N10
\inst3|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~14_combout\ = (\inst3|PS~13_combout\) # ((!\inst3|PS.E0~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PS.E0~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst3|PS~13_combout\,
	combout => \inst3|PS~14_combout\);

-- Location: LCCOMB_X87_Y39_N16
\inst3|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~15_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~14_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst6|PS.CQ~q\,
	datac => \inst3|PS.E4~q\,
	datad => \inst3|PS~14_combout\,
	combout => \inst3|PS~15_combout\);

-- Location: FF_X87_Y39_N17
\inst3|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E4~q\);

-- Location: LCCOMB_X88_Y39_N20
\inst3|PS~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~32_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst3|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst3|PS.E3~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E3~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst3|PS.E4~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~32_combout\);

-- Location: LCCOMB_X88_Y39_N14
\inst3|PS~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~33_combout\ = (\inst3|PS~32_combout\) # ((\inst3|PS.E1~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PS.E1~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst3|PS~32_combout\,
	combout => \inst3|PS~33_combout\);

-- Location: LCCOMB_X88_Y39_N30
\inst3|PS~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~34_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~33_combout\) # ((\inst3|PS.E5~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst3|PS~33_combout\,
	datac => \inst3|PS.E5~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst3|PS~34_combout\);

-- Location: FF_X88_Y39_N31
\inst3|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E5~q\);

-- Location: LCCOMB_X88_Y39_N0
\inst3|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~19_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst3|PS.E5~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst3|PS.E4~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E4~q\,
	datab => \inst3|PS.E5~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~19_combout\);

-- Location: LCCOMB_X87_Y39_N24
\inst3|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~20_combout\ = (\inst3|PS~19_combout\) # ((\inst4|NS~0_combout\ & \inst3|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|NS~0_combout\,
	datac => \inst3|PS~19_combout\,
	datad => \inst3|PS.E2~q\,
	combout => \inst3|PS~20_combout\);

-- Location: LCCOMB_X87_Y39_N26
\inst3|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~21_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~20_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst6|PS.CQ~q\,
	datac => \inst3|PS.E6~q\,
	datad => \inst3|PS~20_combout\,
	combout => \inst3|PS~21_combout\);

-- Location: FF_X87_Y39_N27
\inst3|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E6~q\);

-- Location: LCCOMB_X87_Y39_N18
\inst3|PS~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~35_combout\ = (\inst4|NS~1_combout\) # ((!\inst3|PS.E5~q\ & !\inst3|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E5~q\,
	datac => \inst4|NS~1_combout\,
	datad => \inst3|PS.E6~q\,
	combout => \inst3|PS~35_combout\);

-- Location: LCCOMB_X88_Y39_N28
\inst3|PS~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~27_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst3|PS.E6~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst3|PS.E5~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst3|PS.E5~q\,
	datac => \inst3|PS.E6~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~27_combout\);

-- Location: LCCOMB_X88_Y39_N26
\inst3|PS~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~28_combout\ = (\inst3|PS~27_combout\) # ((\inst3|PS.E3~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E3~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst3|PS~27_combout\,
	combout => \inst3|PS~28_combout\);

-- Location: LCCOMB_X88_Y39_N8
\inst3|PS~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~29_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~28_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst4|PS~14_combout\,
	datac => \inst3|PS.E7~q\,
	datad => \inst3|PS~28_combout\,
	combout => \inst3|PS~29_combout\);

-- Location: FF_X88_Y39_N9
\inst3|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E7~q\);

-- Location: LCCOMB_X88_Y39_N2
\inst3|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~22_combout\ = (\inst13|s_pulsedOut~q\ & (\inst3|PS.E7~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst3|PS.E6~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst3|PS.E7~q\,
	datac => \inst3|PS.E6~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst3|PS~22_combout\);

-- Location: LCCOMB_X88_Y39_N16
\inst3|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~23_combout\ = (\inst3|PS~22_combout\) # ((\inst3|PS.E4~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E4~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst3|PS~22_combout\,
	combout => \inst3|PS~23_combout\);

-- Location: LCCOMB_X88_Y39_N12
\inst3|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~24_combout\ = (\inst6|PS.CQ~q\ & ((\inst3|PS~23_combout\) # ((!\inst4|PS~14_combout\ & \inst3|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst4|PS~14_combout\,
	datac => \inst3|PS.E8~q\,
	datad => \inst3|PS~23_combout\,
	combout => \inst3|PS~24_combout\);

-- Location: FF_X88_Y39_N13
\inst3|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E8~q\);

-- Location: LCCOMB_X87_Y39_N12
\inst3|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~12_combout\ = (!\inst3|PS.E2~q\ & (!\inst3|PS.E1~q\ & \inst3|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E2~q\,
	datac => \inst3|PS.E1~q\,
	datad => \inst3|PS.E0~q\,
	combout => \inst3|PS~12_combout\);

-- Location: LCCOMB_X87_Y39_N28
\inst3|PS~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~36_combout\ = (\inst4|NS~2_combout\) # ((\inst3|PS~12_combout\ & (!\inst3|PS.E3~q\ & !\inst3|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS~12_combout\,
	datab => \inst3|PS.E3~q\,
	datac => \inst3|PS.E4~q\,
	datad => \inst4|NS~2_combout\,
	combout => \inst3|PS~36_combout\);

-- Location: LCCOMB_X87_Y39_N6
\inst3|PS~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~37_combout\ = (\inst6|PS.CQ~q\ & (\inst3|PS~36_combout\ & ((\inst4|NS~3_combout\) # (!\inst3|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst4|NS~3_combout\,
	datac => \inst3|PS.E7~q\,
	datad => \inst3|PS~36_combout\,
	combout => \inst3|PS~37_combout\);

-- Location: LCCOMB_X87_Y39_N0
\inst3|PS~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|PS~38_combout\ = (\inst3|PS~35_combout\ & (\inst3|PS~37_combout\ & ((\inst4|PS~14_combout\) # (!\inst3|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst3|PS~35_combout\,
	datac => \inst3|PS.E8~q\,
	datad => \inst3|PS~37_combout\,
	combout => \inst3|PS~38_combout\);

-- Location: FF_X87_Y39_N1
\inst3|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|PS~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PS.E9~q\);

-- Location: LCCOMB_X87_Y39_N2
\inst3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~0_combout\ = (\inst3|PS.E5~q\) # ((\inst3|PS.E9~q\) # ((\inst3|PS.E8~q\) # (\inst3|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E5~q\,
	datab => \inst3|PS.E9~q\,
	datac => \inst3|PS.E8~q\,
	datad => \inst3|PS.E2~q\,
	combout => \inst3|WideOr2~0_combout\);

-- Location: LCCOMB_X83_Y40_N2
\inst5|sel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~2_combout\ = (!\inst6|PS.CC~q\ & (!\inst6|PS.CP~q\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PS.CC~q\,
	datac => \inst6|PS.CP~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst5|sel~2_combout\);

-- Location: FF_X86_Y40_N3
\inst5|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|sel~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel\(1));

-- Location: LCCOMB_X86_Y40_N12
\inst14|mo[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[2]~1_combout\ = (!\inst5|sel\(0) & ((!\inst5|sel\(1)) # (!\inst5|sel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(2),
	datac => \inst5|sel\(0),
	datad => \inst5|sel\(1),
	combout => \inst14|mo[2]~1_combout\);

-- Location: LCCOMB_X85_Y40_N16
\inst2|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~19_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS.E0~q\) # (\inst4|PS~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E0~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst2|PS~19_combout\);

-- Location: FF_X85_Y40_N17
\inst2|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E0~q\);

-- Location: LCCOMB_X84_Y40_N14
\inst2|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~9_combout\ = (\inst13|s_pulsedOut~q\ & !\inst2|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst2|PS.E0~q\,
	combout => \inst2|PS~9_combout\);

-- Location: LCCOMB_X85_Y40_N4
\inst2|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~10_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS~9_combout\) # ((\inst2|PS.E1~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS~9_combout\,
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E1~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst2|PS~10_combout\);

-- Location: FF_X85_Y40_N5
\inst2|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E1~q\);

-- Location: LCCOMB_X85_Y40_N12
\inst2|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~20_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst2|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (!\inst2|PS.E0~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E0~q\,
	datab => \inst2|PS.E1~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst2|PS~20_combout\);

-- Location: LCCOMB_X85_Y40_N26
\inst2|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~21_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS~20_combout\) # ((\inst2|PS.E2~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS~20_combout\,
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E2~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst2|PS~21_combout\);

-- Location: FF_X85_Y40_N27
\inst2|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E2~q\);

-- Location: LCCOMB_X85_Y40_N30
\inst2|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~11_combout\ = (\inst13|s_pulsedOut~q\ & (\inst2|PS.E2~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst2|PS.E1~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E2~q\,
	datab => \inst2|PS.E1~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst2|PS~11_combout\);

-- Location: LCCOMB_X85_Y40_N18
\inst2|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~12_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS~11_combout\) # ((\inst2|PS.E3~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS~11_combout\,
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E3~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst2|PS~12_combout\);

-- Location: FF_X85_Y40_N19
\inst2|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E3~q\);

-- Location: LCCOMB_X85_Y40_N28
\inst2|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~16_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst2|PS.E3~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst2|PS.E2~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E2~q\,
	datab => \inst2|PS.E3~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst2|PS~16_combout\);

-- Location: LCCOMB_X85_Y40_N2
\inst2|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~17_combout\ = (\inst2|PS~16_combout\) # ((!\inst2|PS.E0~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E0~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst2|PS~16_combout\,
	combout => \inst2|PS~17_combout\);

-- Location: LCCOMB_X85_Y40_N14
\inst2|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~18_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS~17_combout\) # ((!\inst4|PS~14_combout\ & \inst2|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E4~q\,
	datad => \inst2|PS~17_combout\,
	combout => \inst2|PS~18_combout\);

-- Location: FF_X85_Y40_N15
\inst2|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E4~q\);

-- Location: LCCOMB_X85_Y40_N20
\inst2|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~13_combout\ = (\inst13|s_pulsedOut~q\ & (\inst2|PS.E4~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst2|PS.E3~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E4~q\,
	datab => \inst2|PS.E3~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst2|PS~13_combout\);

-- Location: LCCOMB_X85_Y40_N10
\inst2|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~14_combout\ = (\inst2|PS~13_combout\) # ((\inst2|PS.E1~q\ & \inst4|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E1~q\,
	datac => \inst4|NS~0_combout\,
	datad => \inst2|PS~13_combout\,
	combout => \inst2|PS~14_combout\);

-- Location: LCCOMB_X85_Y40_N8
\inst2|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~15_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS~14_combout\) # ((\inst2|PS.E5~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS~14_combout\,
	datab => \inst6|PS.CL~q\,
	datac => \inst2|PS.E5~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst2|PS~15_combout\);

-- Location: FF_X85_Y40_N9
\inst2|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E5~q\);

-- Location: LCCOMB_X85_Y40_N22
\inst2|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~22_combout\ = (\inst4|NS~1_combout\) # ((!\inst2|PS.E2~q\ & !\inst2|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E2~q\,
	datab => \inst2|PS.E3~q\,
	datac => \inst4|NS~1_combout\,
	combout => \inst2|PS~22_combout\);

-- Location: LCCOMB_X85_Y40_N24
\inst2|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~23_combout\ = (\inst4|NS~2_combout\) # ((!\inst2|PS.E1~q\ & \inst2|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E1~q\,
	datac => \inst4|NS~2_combout\,
	datad => \inst2|PS.E0~q\,
	combout => \inst2|PS~23_combout\);

-- Location: LCCOMB_X85_Y40_N6
\inst2|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~24_combout\ = (\inst6|PS.CL~q\ & (\inst2|PS~23_combout\ & ((\inst4|NS~3_combout\) # (!\inst2|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E4~q\,
	datab => \inst6|PS.CL~q\,
	datac => \inst4|NS~3_combout\,
	datad => \inst2|PS~23_combout\,
	combout => \inst2|PS~24_combout\);

-- Location: LCCOMB_X85_Y40_N0
\inst2|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PS~25_combout\ = (\inst2|PS~22_combout\ & (\inst2|PS~24_combout\ & ((\inst4|PS~14_combout\) # (!\inst2|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst2|PS.E5~q\,
	datac => \inst2|PS~22_combout\,
	datad => \inst2|PS~24_combout\,
	combout => \inst2|PS~25_combout\);

-- Location: FF_X85_Y40_N1
\inst2|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|PS~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PS.E6~q\);

-- Location: LCCOMB_X84_Y40_N10
\inst2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst2|PS.E6~q\) # ((\inst2|PS.E5~q\) # (\inst2|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E6~q\,
	datac => \inst2|PS.E5~q\,
	datad => \inst2|PS.E2~q\,
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X86_Y40_N8
\inst14|mo[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[2]~2_combout\ = (\inst5|sel\(2)) # ((\inst5|sel\(0) & \inst5|sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(0),
	datac => \inst5|sel\(2),
	datad => \inst5|sel\(1),
	combout => \inst14|mo[2]~2_combout\);

-- Location: LCCOMB_X88_Y40_N6
\inst4|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~15_combout\ = (\inst6|PS.CP~q\ & ((\inst4|PS.E0~q\) # (\inst4|PS~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CP~q\,
	datac => \inst4|PS.E0~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst4|PS~15_combout\);

-- Location: FF_X88_Y40_N7
\inst4|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E0~q\);

-- Location: LCCOMB_X88_Y40_N4
\inst4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|PS.E0~q\ & (((\inst4|PS.E1~q\ & !\inst4|PS~14_combout\)))) # (!\inst4|PS.E0~q\ & ((\inst13|s_pulsedOut~q\) # ((\inst4|PS.E1~q\ & !\inst4|PS~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst4|PS.E1~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X88_Y40_N5
\inst4|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector1~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E1~q\);

-- Location: LCCOMB_X88_Y40_N10
\inst4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst4|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (!\inst4|PS.E0~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst4|PS.E1~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector2~0_combout\);

-- Location: LCCOMB_X88_Y40_N8
\inst4|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~1_combout\ = (\inst4|Selector2~0_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datac => \inst4|PS.E2~q\,
	datad => \inst4|Selector2~0_combout\,
	combout => \inst4|Selector2~1_combout\);

-- Location: FF_X88_Y40_N9
\inst4|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector2~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E2~q\);

-- Location: LCCOMB_X89_Y40_N18
\inst4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst13|s_pulsedOut~q\ & (\inst4|PS.E2~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst4|PS.E1~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E2~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst4|PS.E1~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: LCCOMB_X89_Y40_N2
\inst4|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~1_combout\ = (\inst4|Selector3~0_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS~14_combout\,
	datac => \inst4|PS.E3~q\,
	datad => \inst4|Selector3~0_combout\,
	combout => \inst4|Selector3~1_combout\);

-- Location: FF_X89_Y40_N3
\inst4|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector3~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E3~q\);

-- Location: LCCOMB_X88_Y40_N20
\inst4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr2~0_combout\ = (\inst4|PS.E0~q\ & !\inst4|PS.E3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datad => \inst4|PS.E3~q\,
	combout => \inst4|WideOr2~0_combout\);

-- Location: LCCOMB_X88_Y40_N28
\inst4|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst4|PS.E3~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst4|PS.E2~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E3~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst4|PS.E2~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector4~1_combout\);

-- Location: LCCOMB_X87_Y40_N18
\inst4|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (!\inst4|PS.E0~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector4~0_combout\);

-- Location: LCCOMB_X87_Y40_N8
\inst4|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~2_combout\ = (\inst4|Selector4~1_combout\) # ((\inst4|Selector4~0_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~14_combout\,
	datab => \inst4|Selector4~1_combout\,
	datac => \inst4|PS.E4~q\,
	datad => \inst4|Selector4~0_combout\,
	combout => \inst4|Selector4~2_combout\);

-- Location: FF_X87_Y40_N9
\inst4|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector4~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E4~q\);

-- Location: LCCOMB_X89_Y40_N30
\inst4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~0_combout\ = (\inst11|s_pulsedOut~q\ & (\inst4|PS.E1~q\ & (!\inst13|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~q\,
	datab => \inst4|PS.E1~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector5~0_combout\);

-- Location: LCCOMB_X89_Y40_N28
\inst4|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst4|PS.E4~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst4|PS.E3~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E4~q\,
	datab => \inst4|PS.E3~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector5~1_combout\);

-- Location: LCCOMB_X89_Y40_N20
\inst4|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~2_combout\ = (\inst4|Selector5~0_combout\) # ((\inst4|Selector5~1_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector5~0_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst4|PS.E5~q\,
	datad => \inst4|Selector5~1_combout\,
	combout => \inst4|Selector5~2_combout\);

-- Location: FF_X89_Y40_N21
\inst4|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector5~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E5~q\);

-- Location: LCCOMB_X89_Y40_N12
\inst4|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst4|PS.E5~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst4|PS.E4~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E4~q\,
	datab => \inst4|PS.E5~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector6~1_combout\);

-- Location: LCCOMB_X89_Y40_N6
\inst4|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~0_combout\ = (\inst4|PS.E2~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E2~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector6~0_combout\);

-- Location: LCCOMB_X89_Y40_N4
\inst4|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~2_combout\ = (\inst4|Selector6~1_combout\) # ((\inst4|Selector6~0_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector6~1_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst4|PS.E6~q\,
	datad => \inst4|Selector6~0_combout\,
	combout => \inst4|Selector6~2_combout\);

-- Location: FF_X89_Y40_N5
\inst4|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector6~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E6~q\);

-- Location: LCCOMB_X89_Y40_N22
\inst4|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~0_combout\ = (\inst4|PS.E4~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E4~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector8~0_combout\);

-- Location: LCCOMB_X89_Y40_N26
\inst4|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~0_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & \inst4|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst4|PS.E3~q\,
	combout => \inst4|Selector7~0_combout\);

-- Location: LCCOMB_X89_Y40_N24
\inst4|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst4|PS.E6~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((\inst4|PS.E5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst4|PS.E6~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst4|PS.E5~q\,
	combout => \inst4|Selector7~1_combout\);

-- Location: LCCOMB_X89_Y40_N16
\inst4|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~2_combout\ = (\inst4|Selector7~0_combout\) # ((\inst4|Selector7~1_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector7~0_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst4|PS.E7~q\,
	datad => \inst4|Selector7~1_combout\,
	combout => \inst4|Selector7~2_combout\);

-- Location: FF_X89_Y40_N17
\inst4|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector7~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E7~q\);

-- Location: LCCOMB_X89_Y40_N0
\inst4|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst4|PS.E7~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & (\inst4|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst4|PS.E6~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst4|PS.E7~q\,
	combout => \inst4|Selector8~1_combout\);

-- Location: LCCOMB_X89_Y40_N10
\inst4|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~2_combout\ = (\inst4|Selector8~0_combout\) # ((\inst4|Selector8~1_combout\) # ((!\inst4|PS~14_combout\ & \inst4|PS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector8~0_combout\,
	datab => \inst4|PS~14_combout\,
	datac => \inst4|PS.E8~q\,
	datad => \inst4|Selector8~1_combout\,
	combout => \inst4|Selector8~2_combout\);

-- Location: FF_X89_Y40_N11
\inst4|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector8~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E8~q\);

-- Location: LCCOMB_X88_Y40_N24
\inst4|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~13_combout\ = (\inst4|PS.E0~q\ & (!\inst4|PS.E1~q\ & (!\inst4|PS.E2~q\ & !\inst4|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datab => \inst4|PS.E1~q\,
	datac => \inst4|PS.E2~q\,
	datad => \inst4|PS.E3~q\,
	combout => \inst4|PS~13_combout\);

-- Location: LCCOMB_X88_Y40_N16
\inst4|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~16_combout\ = (\inst4|NS~2_combout\) # ((!\inst4|PS.E5~q\ & (\inst4|PS~13_combout\ & !\inst4|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E5~q\,
	datab => \inst4|PS~13_combout\,
	datac => \inst4|NS~2_combout\,
	datad => \inst4|PS.E4~q\,
	combout => \inst4|PS~16_combout\);

-- Location: LCCOMB_X88_Y40_N22
\inst4|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~17_combout\ = (\inst6|PS.CP~q\ & (\inst4|PS~16_combout\ & ((\inst4|NS~3_combout\) # (!\inst4|PS.E8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CP~q\,
	datab => \inst4|NS~3_combout\,
	datac => \inst4|PS.E8~q\,
	datad => \inst4|PS~16_combout\,
	combout => \inst4|PS~17_combout\);

-- Location: LCCOMB_X89_Y40_N14
\inst4|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~18_combout\ = (!\inst4|PS.E7~q\ & !\inst4|PS.E6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS.E7~q\,
	datac => \inst4|PS.E6~q\,
	combout => \inst4|PS~18_combout\);

-- Location: LCCOMB_X89_Y40_N8
\inst4|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst4|PS.E8~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst4|PS.E7~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E8~q\,
	datab => \inst4|PS.E7~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst4|Selector9~1_combout\);

-- Location: LCCOMB_X88_Y40_N18
\inst4|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~2_combout\ = (\inst4|Selector9~1_combout\) # ((\inst4|Selector9~0_combout\) # ((\inst4|PS.E5~q\ & \inst4|NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E5~q\,
	datab => \inst4|NS~0_combout\,
	datac => \inst4|Selector9~1_combout\,
	datad => \inst4|Selector9~0_combout\,
	combout => \inst4|Selector9~2_combout\);

-- Location: FF_X88_Y40_N19
\inst4|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Selector9~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E9~q\);

-- Location: LCCOMB_X88_Y40_N2
\inst4|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~0_combout\ = (\inst4|PS.E9~q\ & !\inst4|PS~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS.E9~q\,
	datad => \inst4|PS~14_combout\,
	combout => \inst4|Selector9~0_combout\);

-- Location: LCCOMB_X88_Y40_N12
\inst4|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PS~19_combout\ = (\inst4|PS~17_combout\ & (!\inst4|Selector9~0_combout\ & ((\inst4|NS~1_combout\) # (\inst4|PS~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS~17_combout\,
	datab => \inst4|NS~1_combout\,
	datac => \inst4|PS~18_combout\,
	datad => \inst4|Selector9~0_combout\,
	combout => \inst4|PS~19_combout\);

-- Location: FF_X88_Y40_N13
\inst4|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|PS~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PS.E10~q\);

-- Location: LCCOMB_X87_Y40_N2
\inst4|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr2~combout\ = ((\inst4|PS.E6~q\) # ((\inst4|PS.E10~q\) # (\inst4|PS.E9~q\))) # (!\inst4|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr2~0_combout\,
	datab => \inst4|PS.E6~q\,
	datac => \inst4|PS.E10~q\,
	datad => \inst4|PS.E9~q\,
	combout => \inst4|WideOr2~combout\);

-- Location: LCCOMB_X86_Y40_N28
\inst14|mo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~15_combout\ = (\inst14|mo[2]~1_combout\ & ((\inst14|mo[2]~2_combout\ & ((!\inst4|WideOr2~combout\))) # (!\inst14|mo[2]~2_combout\ & (!\inst2|WideOr1~0_combout\)))) # (!\inst14|mo[2]~1_combout\ & (((\inst14|mo[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~1_combout\,
	datab => \inst2|WideOr1~0_combout\,
	datac => \inst14|mo[2]~2_combout\,
	datad => \inst4|WideOr2~combout\,
	combout => \inst14|mo~15_combout\);

-- Location: LCCOMB_X86_Y40_N22
\inst14|mo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~16_combout\ = (\inst14|mo[2]~0_combout\ & ((\inst14|mo~15_combout\ & ((!\inst3|WideOr2~0_combout\))) # (!\inst14|mo~15_combout\ & (!\inst9|WideOr1~0_combout\)))) # (!\inst14|mo[2]~0_combout\ & (((\inst14|mo~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst9|WideOr1~0_combout\,
	datac => \inst3|WideOr2~0_combout\,
	datad => \inst14|mo~15_combout\,
	combout => \inst14|mo~16_combout\);

-- Location: LCCOMB_X86_Y40_N14
\inst14|mo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~17_combout\ = (\inst14|mo~16_combout\ & ((\inst14|mo[2]~2_combout\) # ((\inst14|mo[2]~0_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo~16_combout\,
	datab => \inst14|mo[2]~2_combout\,
	datac => \inst14|mo[2]~0_combout\,
	datad => \inst5|sel\(1),
	combout => \inst14|mo~17_combout\);

-- Location: FF_X86_Y40_N15
\inst14|mo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(3));

-- Location: LCCOMB_X87_Y40_N10
\inst14|mo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~9_combout\ = (\inst5|sel\(2) & ((\inst5|sel\(0)) # (\inst5|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sel\(0),
	datac => \inst5|sel\(2),
	datad => \inst5|sel\(1),
	combout => \inst14|mo~9_combout\);

-- Location: FF_X87_Y40_N11
\inst14|mo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(6));

-- Location: LCCOMB_X87_Y40_N26
\inst14|mo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~10_combout\ = (\inst5|sel\(2) & ((\inst5|sel\(1)) # ((\inst5|sel\(0)) # (!\inst4|PS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst5|sel\(2),
	datac => \inst4|PS~13_combout\,
	datad => \inst5|sel\(0),
	combout => \inst14|mo~10_combout\);

-- Location: LCCOMB_X87_Y40_N0
\inst14|mo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~11_combout\ = (\inst14|mo~10_combout\) # ((\inst5|sel\(1) & (!\inst3|PS~12_combout\ & \inst5|sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst3|PS~12_combout\,
	datac => \inst14|mo~10_combout\,
	datad => \inst5|sel\(0),
	combout => \inst14|mo~11_combout\);

-- Location: FF_X87_Y40_N1
\inst14|mo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(5));

-- Location: LCCOMB_X85_Y39_N16
\inst9|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|WideOr7~0_combout\ = ((\inst9|PS.E2~q\) # (\inst9|PS.E1~q\)) # (!\inst9|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PS.E0~q\,
	datac => \inst9|PS.E2~q\,
	datad => \inst9|PS.E1~q\,
	combout => \inst9|WideOr7~0_combout\);

-- Location: LCCOMB_X87_Y39_N30
\inst3|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr1~combout\ = (\inst3|PS.E4~q\) # ((\inst3|PS.E5~q\) # (\inst3|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PS.E4~q\,
	datac => \inst3|PS.E5~q\,
	datad => \inst3|PS.E3~q\,
	combout => \inst3|WideOr1~combout\);

-- Location: LCCOMB_X84_Y40_N4
\inst2|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~0_combout\ = (\inst2|PS.E1~q\) # ((\inst2|PS.E2~q\) # (!\inst2|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E1~q\,
	datab => \inst2|PS.E2~q\,
	datad => \inst2|PS.E0~q\,
	combout => \inst2|WideOr7~0_combout\);

-- Location: LCCOMB_X88_Y40_N30
\inst4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr1~0_combout\ = ((\inst4|PS.E6~q\) # ((\inst4|PS.E5~q\) # (\inst4|PS.E4~q\))) # (!\inst4|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E0~q\,
	datab => \inst4|PS.E6~q\,
	datac => \inst4|PS.E5~q\,
	datad => \inst4|PS.E4~q\,
	combout => \inst4|WideOr1~0_combout\);

-- Location: LCCOMB_X87_Y40_N24
\inst14|mo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~12_combout\ = (\inst14|mo[2]~2_combout\ & (((\inst4|WideOr1~0_combout\) # (!\inst14|mo[2]~1_combout\)))) # (!\inst14|mo[2]~2_combout\ & (\inst2|WideOr7~0_combout\ & ((\inst14|mo[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~2_combout\,
	datab => \inst2|WideOr7~0_combout\,
	datac => \inst4|WideOr1~0_combout\,
	datad => \inst14|mo[2]~1_combout\,
	combout => \inst14|mo~12_combout\);

-- Location: LCCOMB_X86_Y40_N6
\inst14|mo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~13_combout\ = (\inst14|mo[2]~0_combout\ & ((\inst14|mo~12_combout\ & ((\inst3|WideOr1~combout\))) # (!\inst14|mo~12_combout\ & (\inst9|WideOr7~0_combout\)))) # (!\inst14|mo[2]~0_combout\ & (((\inst14|mo~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst9|WideOr7~0_combout\,
	datac => \inst3|WideOr1~combout\,
	datad => \inst14|mo~12_combout\,
	combout => \inst14|mo~13_combout\);

-- Location: LCCOMB_X86_Y40_N0
\inst14|mo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~14_combout\ = (\inst14|mo~13_combout\ & ((\inst14|mo[2]~2_combout\) # ((\inst14|mo[2]~0_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo~13_combout\,
	datab => \inst14|mo[2]~2_combout\,
	datac => \inst14|mo[2]~0_combout\,
	datad => \inst5|sel\(1),
	combout => \inst14|mo~14_combout\);

-- Location: FF_X86_Y40_N1
\inst14|mo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(4));

-- Location: LCCOMB_X89_Y43_N6
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst14|mo\(4) $ (VCC)
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst14|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(4),
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X89_Y43_N8
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst14|mo\(5) & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst14|mo\(5) & 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst14|mo\(5) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(5),
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X89_Y43_N10
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst14|mo\(6) & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst14|mo\(6) & 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst14|mo\(6) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(6),
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X89_Y43_N12
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X89_Y42_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\inst14|mo\(3) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X89_Y42_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\inst14|mo\(3) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X89_Y42_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X89_Y42_N12
\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\inst14|mo\(6) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|mo\(6),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X89_Y42_N2
\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X89_Y43_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\inst14|mo\(5) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|mo\(5),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X89_Y43_N30
\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X89_Y43_N24
\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\inst14|mo\(4) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(4),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X89_Y43_N22
\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X89_Y42_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X89_Y42_N20
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X89_Y42_N22
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X89_Y42_N24
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y42_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X89_Y42_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst14|mo\(6)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst14|mo\(6),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X89_Y42_N8
\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X89_Y43_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst14|mo\(5))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst14|mo\(5),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X89_Y43_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst14|mo\(4)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst14|mo\(4),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X89_Y42_N10
\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X89_Y42_N14
\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X89_Y42_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\inst14|mo\(3) & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X86_Y39_N8
\inst9|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|WideOr2~0_combout\ = (\inst9|PS.E4~q\) # ((\inst9|PS.E1~q\) # (\inst9|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PS.E4~q\,
	datac => \inst9|PS.E1~q\,
	datad => \inst9|PS.E6~q\,
	combout => \inst9|WideOr2~0_combout\);

-- Location: LCCOMB_X87_Y39_N4
\inst3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~0_combout\ = (!\inst3|PS.E6~q\ & (!\inst3|PS.E8~q\ & \inst3|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E6~q\,
	datac => \inst3|PS.E8~q\,
	datad => \inst3|PS.E0~q\,
	combout => \inst3|WideOr3~0_combout\);

-- Location: LCCOMB_X87_Y39_N20
\inst3|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~combout\ = (\inst3|PS.E5~q\) # ((\inst3|PS.E3~q\) # (!\inst3|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E5~q\,
	datac => \inst3|WideOr3~0_combout\,
	datad => \inst3|PS.E3~q\,
	combout => \inst3|WideOr3~combout\);

-- Location: LCCOMB_X84_Y40_N8
\inst2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst2|PS.E6~q\) # ((\inst2|PS.E4~q\) # (\inst2|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E6~q\,
	datac => \inst2|PS.E4~q\,
	datad => \inst2|PS.E1~q\,
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X88_Y40_N26
\inst4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~0_combout\ = (!\inst4|PS.E9~q\ & (!\inst4|PS.E1~q\ & !\inst4|PS.E7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS.E9~q\,
	datac => \inst4|PS.E1~q\,
	datad => \inst4|PS.E7~q\,
	combout => \inst4|WideOr3~0_combout\);

-- Location: LCCOMB_X87_Y40_N4
\inst4|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~combout\ = (\inst4|PS.E6~q\) # ((\inst4|PS.E4~q\) # (!\inst4|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PS.E6~q\,
	datac => \inst4|PS.E4~q\,
	datad => \inst4|WideOr3~0_combout\,
	combout => \inst4|WideOr3~combout\);

-- Location: LCCOMB_X86_Y40_N16
\inst14|mo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~18_combout\ = (\inst14|mo[2]~1_combout\ & ((\inst14|mo[2]~2_combout\ & ((\inst4|WideOr3~combout\))) # (!\inst14|mo[2]~2_combout\ & (!\inst2|WideOr2~0_combout\)))) # (!\inst14|mo[2]~1_combout\ & (((\inst14|mo[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~1_combout\,
	datab => \inst2|WideOr2~0_combout\,
	datac => \inst14|mo[2]~2_combout\,
	datad => \inst4|WideOr3~combout\,
	combout => \inst14|mo~18_combout\);

-- Location: LCCOMB_X86_Y40_N26
\inst14|mo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~19_combout\ = (\inst14|mo[2]~0_combout\ & ((\inst14|mo~18_combout\ & ((\inst3|WideOr3~combout\))) # (!\inst14|mo~18_combout\ & (!\inst9|WideOr2~0_combout\)))) # (!\inst14|mo[2]~0_combout\ & (((\inst14|mo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst9|WideOr2~0_combout\,
	datac => \inst3|WideOr3~combout\,
	datad => \inst14|mo~18_combout\,
	combout => \inst14|mo~19_combout\);

-- Location: LCCOMB_X86_Y40_N24
\inst14|mo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~20_combout\ = (\inst14|mo~19_combout\ & ((\inst14|mo[2]~2_combout\) # ((\inst14|mo[2]~0_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo~19_combout\,
	datab => \inst14|mo[2]~2_combout\,
	datac => \inst14|mo[2]~0_combout\,
	datad => \inst5|sel\(1),
	combout => \inst14|mo~20_combout\);

-- Location: FF_X86_Y40_N25
\inst14|mo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(2));

-- Location: LCCOMB_X89_Y42_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst14|mo\(2) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X89_Y42_N30
\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\inst14|mo\(2) & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X90_Y42_N10
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X90_Y42_N12
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X90_Y42_N14
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X90_Y42_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X90_Y42_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (GND))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X90_Y42_N20
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X90_Y42_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst14|mo\(3)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst14|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X90_Y42_N24
\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X90_Y42_N2
\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X91_Y42_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\inst14|mo\(2) & \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X86_Y39_N18
\inst9|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|WideOr3~0_combout\ = (\inst9|PS.E3~q\) # ((\inst9|PS.E4~q\) # (!\inst9|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PS.E3~q\,
	datac => \inst9|PS.E0~q\,
	datad => \inst9|PS.E4~q\,
	combout => \inst9|WideOr3~0_combout\);

-- Location: LCCOMB_X87_Y39_N8
\inst3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr4~0_combout\ = (\inst3|PS.E2~q\) # ((\inst3|PS.E7~q\) # ((\inst3|PS.E6~q\) # (\inst3|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PS.E2~q\,
	datab => \inst3|PS.E7~q\,
	datac => \inst3|PS.E6~q\,
	datad => \inst3|PS.E3~q\,
	combout => \inst3|WideOr4~0_combout\);

-- Location: LCCOMB_X84_Y40_N26
\inst2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst2|PS.E3~q\) # ((\inst2|PS.E4~q\) # (!\inst2|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PS.E3~q\,
	datac => \inst2|PS.E4~q\,
	datad => \inst2|PS.E0~q\,
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X88_Y40_N14
\inst4|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~combout\ = (\inst4|PS.E4~q\) # ((\inst4|PS.E7~q\) # ((\inst4|PS.E8~q\) # (!\inst4|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E4~q\,
	datab => \inst4|PS.E7~q\,
	datac => \inst4|PS.E8~q\,
	datad => \inst4|WideOr2~0_combout\,
	combout => \inst4|WideOr4~combout\);

-- Location: LCCOMB_X87_Y40_N16
\inst14|mo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~6_combout\ = (\inst14|mo[2]~2_combout\ & (((\inst4|WideOr4~combout\) # (!\inst14|mo[2]~1_combout\)))) # (!\inst14|mo[2]~2_combout\ & (\inst2|WideOr3~0_combout\ & ((\inst14|mo[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~2_combout\,
	datab => \inst2|WideOr3~0_combout\,
	datac => \inst4|WideOr4~combout\,
	datad => \inst14|mo[2]~1_combout\,
	combout => \inst14|mo~6_combout\);

-- Location: LCCOMB_X86_Y40_N20
\inst14|mo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~7_combout\ = (\inst14|mo[2]~0_combout\ & ((\inst14|mo~6_combout\ & ((\inst3|WideOr4~0_combout\))) # (!\inst14|mo~6_combout\ & (\inst9|WideOr3~0_combout\)))) # (!\inst14|mo[2]~0_combout\ & (((\inst14|mo~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst9|WideOr3~0_combout\,
	datac => \inst3|WideOr4~0_combout\,
	datad => \inst14|mo~6_combout\,
	combout => \inst14|mo~7_combout\);

-- Location: LCCOMB_X86_Y40_N10
\inst14|mo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~8_combout\ = (\inst14|mo~7_combout\ & ((\inst14|mo[2]~0_combout\) # ((\inst14|mo[2]~2_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst14|mo~7_combout\,
	datac => \inst14|mo[2]~2_combout\,
	datad => \inst5|sel\(1),
	combout => \inst14|mo~8_combout\);

-- Location: FF_X86_Y40_N11
\inst14|mo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(1));

-- Location: LCCOMB_X91_Y42_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (\inst14|mo\(1) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X91_Y42_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\inst14|mo\(1) & \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X91_Y42_N8
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X91_Y42_N10
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X91_Y42_N12
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y42_N8
\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X90_Y42_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X90_Y42_N30
\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X90_Y42_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X90_Y42_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X90_Y42_N22
\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X91_Y42_N14
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y42_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # ((\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X91_Y42_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X91_Y42_N20
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X91_Y42_N24
\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X91_Y42_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCCOMB_X87_Y39_N14
\inst3|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~combout\ = (\inst3|PS.E4~q\) # ((\inst3|PS.E2~q\) # (!\inst3|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PS.E4~q\,
	datac => \inst3|WideOr3~0_combout\,
	datad => \inst3|PS.E2~q\,
	combout => \inst3|WideOr5~combout\);

-- Location: LCCOMB_X86_Y39_N26
\inst9|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|WideOr4~0_combout\ = (\inst9|PS.E5~q\) # ((\inst9|PS.E3~q\) # (\inst9|PS.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PS.E5~q\,
	datac => \inst9|PS.E3~q\,
	datad => \inst9|PS.E1~q\,
	combout => \inst9|WideOr4~0_combout\);

-- Location: LCCOMB_X84_Y40_N24
\inst2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst2|PS.E1~q\) # ((\inst2|PS.E5~q\) # (\inst2|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PS.E1~q\,
	datac => \inst2|PS.E5~q\,
	datad => \inst2|PS.E3~q\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X88_Y40_N0
\inst4|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~combout\ = (\inst4|PS.E5~q\) # ((\inst4|PS.E3~q\) # (!\inst4|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PS.E5~q\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst4|PS.E3~q\,
	combout => \inst4|WideOr5~combout\);

-- Location: LCCOMB_X87_Y40_N22
\inst14|mo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~3_combout\ = (\inst14|mo[2]~2_combout\ & (((\inst4|WideOr5~combout\) # (!\inst14|mo[2]~1_combout\)))) # (!\inst14|mo[2]~2_combout\ & (\inst2|WideOr4~0_combout\ & ((\inst14|mo[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~2_combout\,
	datab => \inst2|WideOr4~0_combout\,
	datac => \inst4|WideOr5~combout\,
	datad => \inst14|mo[2]~1_combout\,
	combout => \inst14|mo~3_combout\);

-- Location: LCCOMB_X86_Y40_N18
\inst14|mo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~4_combout\ = (\inst14|mo[2]~0_combout\ & ((\inst14|mo~3_combout\ & (\inst3|WideOr5~combout\)) # (!\inst14|mo~3_combout\ & ((\inst9|WideOr4~0_combout\))))) # (!\inst14|mo[2]~0_combout\ & (((\inst14|mo~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr5~combout\,
	datab => \inst9|WideOr4~0_combout\,
	datac => \inst14|mo[2]~0_combout\,
	datad => \inst14|mo~3_combout\,
	combout => \inst14|mo~4_combout\);

-- Location: LCCOMB_X86_Y40_N4
\inst14|mo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~5_combout\ = (\inst14|mo~4_combout\ & ((\inst14|mo[2]~0_combout\) # ((\inst5|sel\(1)) # (\inst14|mo[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[2]~0_combout\,
	datab => \inst5|sel\(1),
	datac => \inst14|mo[2]~2_combout\,
	datad => \inst14|mo~4_combout\,
	combout => \inst14|mo~5_combout\);

-- Location: FF_X86_Y40_N5
\inst14|mo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(0));

-- Location: LCCOMB_X91_Y42_N22
\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst14|mo\(1))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCCOMB_X94_Y46_N20
\inst|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~2_combout\ = (\inst14|mo\(0) & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\inst14|mo\(0) & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst14|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X94_Y46_N30
\inst|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~3_combout\ = (\inst6|EnableBin~combout\ & !\inst|decOut_n[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|EnableBin~combout\,
	datad => \inst|decOut_n[6]~2_combout\,
	combout => \inst|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X94_Y46_N8
\inst|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~6_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & \inst6|EnableBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst6|EnableBin~combout\,
	combout => \inst|decOut_n~6_combout\);

-- Location: LCCOMB_X94_Y46_N28
\inst|decOut_n[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~4_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & !\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	combout => \inst|decOut_n[5]~4_combout\);

-- Location: LCCOMB_X94_Y46_N26
\inst|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~5_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # ((\inst14|mo\(0)) # ((!\inst|decOut_n[5]~4_combout\) # (!\inst6|EnableBin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst14|mo\(0),
	datac => \inst6|EnableBin~combout\,
	datad => \inst|decOut_n[5]~4_combout\,
	combout => \inst|decOut_n~5_combout\);

-- Location: LCCOMB_X91_Y46_N8
\inst|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~10_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # ((\inst|decOut_n~5_combout\ & ((\inst14|mo\(0)) # (!\inst|decOut_n~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~6_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X91_Y42_N30
\inst|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~8_combout\ = (\inst14|mo\(0) & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst14|mo\(1))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(0),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X91_Y46_N0
\inst|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~7_combout\ = (\inst|decOut_n~5_combout\ & ((\inst14|mo\(0)) # (!\inst|decOut_n~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~6_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n~7_combout\);

-- Location: LCCOMB_X91_Y46_N22
\inst|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~9_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\inst|decOut_n~7_combout\))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst|decOut_n[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst|decOut_n[5]~8_combout\,
	datad => \inst|decOut_n~7_combout\,
	combout => \inst|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X91_Y46_N18
\inst|decOut_n[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~11_combout\ = ((\inst|decOut_n[5]~9_combout\) # ((\inst|decOut_n[5]~10_combout\ & \inst|decOut_n[5]~4_combout\))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datab => \inst|decOut_n[5]~10_combout\,
	datac => \inst|decOut_n[5]~9_combout\,
	datad => \inst|decOut_n[5]~4_combout\,
	combout => \inst|decOut_n[5]~11_combout\);

-- Location: LCCOMB_X94_Y46_N10
\inst|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~12_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (((\inst14|mo\(0) & 
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\inst14|mo\(0) & 
-- !\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst14|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst|decOut_n~12_combout\);

-- Location: LCCOMB_X94_Y46_N4
\inst|decOut_n[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~15_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (((!\inst|decOut_n~12_combout\)) # (!\inst6|EnableBin~combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & 
-- (((!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \inst6|EnableBin~combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datad => \inst|decOut_n~12_combout\,
	combout => \inst|decOut_n[5]~15_combout\);

-- Location: LCCOMB_X94_Y46_N6
\inst|decOut_n[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~16_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst|decOut_n[5]~15_combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst|decOut_n[5]~15_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	combout => \inst|decOut_n[4]~16_combout\);

-- Location: LCCOMB_X94_Y46_N24
\inst|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~13_combout\ = ((\inst14|mo\(0)) # (!\inst|decOut_n~6_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst|decOut_n~6_combout\,
	datac => \inst14|mo\(0),
	combout => \inst|decOut_n~13_combout\);

-- Location: LCCOMB_X94_Y46_N2
\inst|decOut_n[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~14_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (((\inst14|mo\(0))))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst|decOut_n~13_combout\ & (!\inst14|mo\(0) & 
-- \inst|decOut_n~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \inst|decOut_n~13_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n[4]~14_combout\);

-- Location: LCCOMB_X94_Y46_N12
\inst|decOut_n[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~17_combout\ = (\inst|decOut_n[4]~16_combout\ & ((\inst14|mo\(0) & ((!\inst|decOut_n[4]~14_combout\))) # (!\inst14|mo\(0) & (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)))) # (!\inst|decOut_n[4]~16_combout\ & 
-- ((\inst|decOut_n[4]~14_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)) # (!\inst|decOut_n[4]~14_combout\ & ((\inst14|mo\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[4]~16_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n[4]~14_combout\,
	combout => \inst|decOut_n[4]~17_combout\);

-- Location: LCCOMB_X94_Y46_N18
\inst|decOut_n[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~34_combout\ = (\inst|decOut_n[4]~17_combout\) # (((\inst14|mo\(0) & !\inst|decOut_n~12_combout\)) # (!\inst6|EnableBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[4]~17_combout\,
	datab => \inst14|mo\(0),
	datac => \inst6|EnableBin~combout\,
	datad => \inst|decOut_n~12_combout\,
	combout => \inst|decOut_n[4]~34_combout\);

-- Location: LCCOMB_X94_Y46_N22
\inst|decOut_n[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~18_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (\inst|decOut_n~13_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \inst|decOut_n~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst|decOut_n~13_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n[5]~18_combout\);

-- Location: LCCOMB_X94_Y46_N16
\inst|decOut_n[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~19_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (((\inst14|mo\(0)) # (\inst|decOut_n[5]~15_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- (\inst|decOut_n[5]~18_combout\ & (!\inst14|mo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[5]~18_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n[5]~15_combout\,
	combout => \inst|decOut_n[3]~19_combout\);

-- Location: LCCOMB_X94_Y46_N0
\inst|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~35_combout\ = (\inst|decOut_n[3]~19_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((!\inst|decOut_n~12_combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\inst|decOut_n[3]~19_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ (((\inst|decOut_n~12_combout\) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst|decOut_n[3]~19_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datad => \inst|decOut_n~12_combout\,
	combout => \inst|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X94_Y46_N14
\inst|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~36_combout\ = ((\inst14|mo\(0) & (\inst|decOut_n[3]~35_combout\)) # (!\inst14|mo\(0) & ((\inst|decOut_n[3]~19_combout\)))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[3]~35_combout\,
	datab => \inst6|EnableBin~combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n[3]~19_combout\,
	combout => \inst|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X91_Y46_N4
\inst|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~22_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	combout => \inst|decOut_n~22_combout\);

-- Location: LCCOMB_X91_Y46_N24
\inst|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~20_combout\ = (\inst|decOut_n~6_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\inst|decOut_n~5_combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\inst14|mo\(0))))) 
-- # (!\inst|decOut_n~6_combout\ & (((\inst|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~6_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n~20_combout\);

-- Location: LCCOMB_X91_Y46_N30
\inst|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~21_combout\ = (!\inst14|mo\(0) & (\inst|decOut_n[5]~4_combout\ & ((\inst|decOut_n~20_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~20_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n[5]~4_combout\,
	combout => \inst|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X91_Y46_N26
\inst|decOut_n[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~23_combout\ = ((\inst|decOut_n[2]~21_combout\) # ((\inst|decOut_n~22_combout\ & \inst|decOut_n~20_combout\))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datab => \inst|decOut_n~22_combout\,
	datac => \inst|decOut_n[2]~21_combout\,
	datad => \inst|decOut_n~20_combout\,
	combout => \inst|decOut_n[2]~23_combout\);

-- Location: LCCOMB_X91_Y42_N28
\inst|decOut_n[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~24_combout\ = \inst14|mo\(0) $ (((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst14|mo\(1))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(0),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst|decOut_n[5]~24_combout\);

-- Location: LCCOMB_X91_Y46_N20
\inst|decOut_n[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~25_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\inst14|mo\(0) & ((\inst|decOut_n~6_combout\) # (\inst|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~6_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n[5]~25_combout\);

-- Location: LCCOMB_X91_Y46_N10
\inst|decOut_n[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~26_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst|decOut_n[5]~8_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\inst|decOut_n[5]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst|decOut_n[5]~8_combout\,
	datad => \inst|decOut_n[5]~25_combout\,
	combout => \inst|decOut_n[1]~26_combout\);

-- Location: LCCOMB_X91_Y46_N28
\inst|decOut_n[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~27_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst|decOut_n[1]~26_combout\ & (\inst|decOut_n~20_combout\)) # (!\inst|decOut_n[1]~26_combout\ & ((\inst|decOut_n[5]~24_combout\))))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (((\inst|decOut_n[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst|decOut_n~20_combout\,
	datac => \inst|decOut_n[5]~24_combout\,
	datad => \inst|decOut_n[1]~26_combout\,
	combout => \inst|decOut_n[1]~27_combout\);

-- Location: LCCOMB_X91_Y46_N6
\inst|decOut_n[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~28_combout\ = (\inst|decOut_n[1]~27_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datad => \inst|decOut_n[1]~27_combout\,
	combout => \inst|decOut_n[1]~28_combout\);

-- Location: LCCOMB_X91_Y46_N16
\inst|decOut_n[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~30_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\inst|decOut_n~5_combout\ & ((\inst14|mo\(0)) # (!\inst|decOut_n~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~6_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datac => \inst14|mo\(0),
	datad => \inst|decOut_n~5_combout\,
	combout => \inst|decOut_n[5]~30_combout\);

-- Location: LCCOMB_X91_Y46_N14
\inst|decOut_n[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~31_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\inst|decOut_n[5]~8_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\inst|decOut_n[5]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst|decOut_n[5]~8_combout\,
	datad => \inst|decOut_n[5]~30_combout\,
	combout => \inst|decOut_n[0]~31_combout\);

-- Location: LCCOMB_X91_Y42_N2
\inst|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~29_combout\ = (!\inst14|mo\(0) & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\inst14|mo\(1))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(0),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst|decOut_n~29_combout\);

-- Location: LCCOMB_X91_Y46_N12
\inst|decOut_n[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~32_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst|decOut_n[0]~31_combout\ & ((\inst|decOut_n~7_combout\))) # (!\inst|decOut_n[0]~31_combout\ & (\inst|decOut_n~29_combout\)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst|decOut_n[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst|decOut_n[0]~31_combout\,
	datac => \inst|decOut_n~29_combout\,
	datad => \inst|decOut_n~7_combout\,
	combout => \inst|decOut_n[0]~32_combout\);

-- Location: LCCOMB_X91_Y46_N2
\inst|decOut_n[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~33_combout\ = (\inst|decOut_n[0]~32_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datad => \inst|decOut_n[0]~32_combout\,
	combout => \inst|decOut_n[0]~33_combout\);

-- Location: LCCOMB_X92_Y40_N6
\inst1|decOut_n[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~8_combout\ = (\inst14|mo\(3) & (\inst14|mo\(6) & (\inst14|mo\(5)))) # (!\inst14|mo\(3) & (!\inst14|mo\(6) & (!\inst14|mo\(5) & !\inst14|mo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datab => \inst14|mo\(6),
	datac => \inst14|mo\(5),
	datad => \inst14|mo\(2),
	combout => \inst1|decOut_n[6]~8_combout\);

-- Location: LCCOMB_X89_Y41_N16
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst14|mo\(4) $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst14|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X89_Y41_N18
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst14|mo\(5) & (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst14|mo\(5) & 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst14|mo\(5) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(5),
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X89_Y41_N20
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst14|mo\(6) & (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst14|mo\(6) & 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst14|mo\(6) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(6),
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X89_Y41_N22
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X89_Y41_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst14|mo\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst14|mo\(5),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X89_Y41_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X89_Y41_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\inst14|mo\(4) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X89_Y41_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X90_Y41_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\inst14|mo\(3) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X90_Y41_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\inst14|mo\(3) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X89_Y41_N0
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X89_Y41_N2
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X89_Y41_N4
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X89_Y41_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\inst14|mo\(6) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(6),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X89_Y41_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X89_Y41_N6
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y41_N8
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y41_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X90_Y41_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst14|mo\(5))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst14|mo\(5),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X89_Y41_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst14|mo\(4))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X90_Y41_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X90_Y41_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X90_Y41_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\inst14|mo\(3) & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X90_Y41_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\inst14|mo\(2) & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(2),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X90_Y41_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\inst14|mo\(2) & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(2),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X90_Y41_N22
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X90_Y41_N24
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X90_Y41_N26
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X90_Y41_N28
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y41_N30
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y41_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X91_Y41_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X90_Y41_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst14|mo\(3)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst14|mo\(3),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X91_Y41_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X91_Y41_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst14|mo\(2) & \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|mo\(2),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X91_Y41_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X91_Y41_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\inst14|mo\(1) & \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X91_Y41_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\inst14|mo\(1) & !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X91_Y41_N4
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X91_Y41_N6
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X91_Y41_N8
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X91_Y41_N10
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y41_N12
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y40_N16
\inst1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~7_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|decOut_n~7_combout\);

-- Location: LCCOMB_X92_Y40_N20
\inst1|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~6_combout\ = (\inst14|mo\(1) & ((\inst14|mo\(3)) # ((\inst14|mo\(6) & \inst14|mo\(2))))) # (!\inst14|mo\(1) & (\inst14|mo\(3) & ((\inst14|mo\(6)) # (\inst14|mo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(6),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X92_Y40_N0
\inst1|decOut_n[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~56_combout\ = (!\inst14|mo\(5) & ((\inst1|decOut_n[6]~6_combout\) # ((\inst1|decOut_n~7_combout\ & !\inst14|mo\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~7_combout\,
	datab => \inst14|mo\(6),
	datac => \inst14|mo\(5),
	datad => \inst1|decOut_n[6]~6_combout\,
	combout => \inst1|decOut_n[6]~56_combout\);

-- Location: LCCOMB_X92_Y40_N14
\inst1|decOut_n[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~57_combout\ = (\inst6|EnableBin~combout\ & ((\inst14|mo\(4) & (\inst1|decOut_n[6]~8_combout\)) # (!\inst14|mo\(4) & ((\inst1|decOut_n[6]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[6]~8_combout\,
	datab => \inst14|mo\(4),
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[6]~56_combout\,
	combout => \inst1|decOut_n[6]~57_combout\);

-- Location: LCCOMB_X91_Y40_N8
\inst1|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~11_combout\ = ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|EnableBin~combout\,
	combout => \inst1|decOut_n~11_combout\);

-- Location: LCCOMB_X91_Y40_N2
\inst1|decOut_n[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~15_combout\ = (\inst14|mo\(4) & (\inst14|mo\(3) & ((\inst1|decOut_n~11_combout\) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~11_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst14|mo\(4),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~15_combout\);

-- Location: LCCOMB_X92_Y40_N4
\inst1|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~9_combout\ = (!\inst14|mo\(4) & ((\inst14|mo\(3)) # ((\inst14|mo\(2) & \inst14|mo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst14|mo\(2),
	datac => \inst14|mo\(1),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X91_Y41_N30
\inst1|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~12_combout\ = ((!\inst14|mo\(2) & !\inst14|mo\(1))) # (!\inst14|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(1),
	combout => \inst1|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X91_Y40_N26
\inst1|decOut_n[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~13_combout\ = (\inst1|decOut_n~11_combout\) # ((\inst14|mo\(4)) # ((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst1|decOut_n[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~11_combout\,
	datab => \inst14|mo\(4),
	datac => \inst1|decOut_n[2]~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|decOut_n[5]~13_combout\);

-- Location: LCCOMB_X91_Y40_N30
\inst1|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~10_combout\ = (\inst14|mo\(4)) # (\inst14|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|mo\(4),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X91_Y40_N24
\inst1|decOut_n[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~14_combout\ = (\inst14|mo\(6) & (((\inst14|mo\(5))))) # (!\inst14|mo\(6) & ((\inst14|mo\(5) & ((!\inst1|decOut_n[5]~10_combout\))) # (!\inst14|mo\(5) & (\inst1|decOut_n[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[5]~13_combout\,
	datab => \inst14|mo\(6),
	datac => \inst1|decOut_n[5]~10_combout\,
	datad => \inst14|mo\(5),
	combout => \inst1|decOut_n[5]~14_combout\);

-- Location: LCCOMB_X92_Y40_N18
\inst1|decOut_n[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~16_combout\ = (\inst14|mo\(6) & ((\inst1|decOut_n[5]~14_combout\ & (\inst1|decOut_n[5]~15_combout\)) # (!\inst1|decOut_n[5]~14_combout\ & ((\inst1|decOut_n[5]~9_combout\))))) # (!\inst14|mo\(6) & (((\inst1|decOut_n[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[5]~15_combout\,
	datab => \inst14|mo\(6),
	datac => \inst1|decOut_n[5]~9_combout\,
	datad => \inst1|decOut_n[5]~14_combout\,
	combout => \inst1|decOut_n[5]~16_combout\);

-- Location: LCCOMB_X92_Y40_N12
\inst1|decOut_n[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~17_combout\ = (\inst1|decOut_n[5]~16_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[5]~16_combout\,
	combout => \inst1|decOut_n[5]~17_combout\);

-- Location: LCCOMB_X92_Y41_N18
\inst1|decOut_n[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~19_combout\ = ((!\inst14|mo\(3)) # (!\inst14|mo\(2))) # (!\inst14|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~19_combout\);

-- Location: LCCOMB_X91_Y40_N28
\inst1|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~21_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|decOut_n~21_combout\);

-- Location: LCCOMB_X91_Y40_N22
\inst1|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~22_combout\ = (\inst1|decOut_n~21_combout\) # (((!\inst1|decOut_n~7_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\inst6|EnableBin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~7_combout\,
	datab => \inst1|decOut_n~21_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|EnableBin~combout\,
	combout => \inst1|decOut_n~22_combout\);

-- Location: LCCOMB_X92_Y41_N28
\inst1|decOut_n[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~20_combout\ = (\inst14|mo\(4) & ((\inst14|mo\(3) & (\inst14|mo\(2) & \inst14|mo\(1))) # (!\inst14|mo\(3) & (!\inst14|mo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst14|mo\(3),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(1),
	combout => \inst1|decOut_n[5]~20_combout\);

-- Location: LCCOMB_X92_Y41_N10
\inst1|decOut_n[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~23_combout\ = (\inst1|decOut_n[5]~20_combout\) # ((!\inst14|mo\(4) & ((\inst1|decOut_n~22_combout\) # (!\inst1|decOut_n[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~22_combout\,
	datab => \inst1|decOut_n[2]~12_combout\,
	datac => \inst14|mo\(4),
	datad => \inst1|decOut_n[5]~20_combout\,
	combout => \inst1|decOut_n[5]~23_combout\);

-- Location: LCCOMB_X92_Y41_N24
\inst1|decOut_n[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~24_combout\ = (\inst14|mo\(6) & (((\inst14|mo\(5))))) # (!\inst14|mo\(6) & ((\inst14|mo\(5) & (\inst1|decOut_n[5]~19_combout\)) # (!\inst14|mo\(5) & ((\inst1|decOut_n[5]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(6),
	datab => \inst1|decOut_n[5]~19_combout\,
	datac => \inst14|mo\(5),
	datad => \inst1|decOut_n[5]~23_combout\,
	combout => \inst1|decOut_n[4]~24_combout\);

-- Location: LCCOMB_X91_Y41_N24
\inst1|decOut_n[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~25_combout\ = (!\inst14|mo\(2) & !\inst14|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~25_combout\);

-- Location: LCCOMB_X92_Y41_N30
\inst1|decOut_n[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~26_combout\ = (\inst14|mo\(2) & (\inst14|mo\(1) & \inst14|mo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(2),
	datac => \inst14|mo\(1),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~26_combout\);

-- Location: LCCOMB_X92_Y41_N4
\inst1|decOut_n[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~27_combout\ = (\inst14|mo\(4) & (((\inst1|decOut_n~22_combout\)))) # (!\inst14|mo\(4) & ((\inst1|decOut_n[5]~25_combout\) # ((\inst1|decOut_n[5]~26_combout\ & \inst1|decOut_n~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst1|decOut_n[5]~25_combout\,
	datac => \inst1|decOut_n[5]~26_combout\,
	datad => \inst1|decOut_n~22_combout\,
	combout => \inst1|decOut_n[5]~27_combout\);

-- Location: LCCOMB_X92_Y41_N16
\inst1|decOut_n[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~18_combout\ = (\inst14|mo\(4) & (\inst14|mo\(3) & ((\inst14|mo\(2)) # (\inst14|mo\(1))))) # (!\inst14|mo\(4) & ((\inst14|mo\(3)) # ((\inst14|mo\(2) & \inst14|mo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst14|mo\(3),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(1),
	combout => \inst1|decOut_n[5]~18_combout\);

-- Location: LCCOMB_X92_Y41_N6
\inst1|decOut_n[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~28_combout\ = (\inst14|mo\(6) & ((\inst1|decOut_n[4]~24_combout\ & (\inst1|decOut_n[5]~27_combout\)) # (!\inst1|decOut_n[4]~24_combout\ & ((\inst1|decOut_n[5]~18_combout\))))) # (!\inst14|mo\(6) & (\inst1|decOut_n[4]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(6),
	datab => \inst1|decOut_n[4]~24_combout\,
	datac => \inst1|decOut_n[5]~27_combout\,
	datad => \inst1|decOut_n[5]~18_combout\,
	combout => \inst1|decOut_n[4]~28_combout\);

-- Location: LCCOMB_X98_Y37_N28
\inst1|decOut_n[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~29_combout\ = (\inst1|decOut_n[4]~28_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[4]~28_combout\,
	combout => \inst1|decOut_n[4]~29_combout\);

-- Location: LCCOMB_X92_Y40_N26
\inst1|decOut_n[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~33_combout\ = (\inst14|mo\(2) & ((!\inst14|mo\(3)) # (!\inst14|mo\(1)))) # (!\inst14|mo\(2) & ((\inst14|mo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(2),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~33_combout\);

-- Location: LCCOMB_X91_Y40_N10
\inst1|decOut_n[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~51_combout\ = (\inst14|mo\(4) & (\inst1|decOut_n~22_combout\)) # (!\inst14|mo\(4) & ((\inst1|decOut_n[5]~33_combout\) # ((\inst1|decOut_n~22_combout\ & \inst14|mo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~22_combout\,
	datab => \inst1|decOut_n[5]~33_combout\,
	datac => \inst14|mo\(4),
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[5]~51_combout\);

-- Location: LCCOMB_X92_Y41_N2
\inst1|decOut_n[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~31_combout\ = (\inst14|mo\(4) & (((\inst1|decOut_n[5]~25_combout\)))) # (!\inst14|mo\(4) & ((\inst1|decOut_n~22_combout\) # ((!\inst1|decOut_n[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~22_combout\,
	datab => \inst1|decOut_n[5]~25_combout\,
	datac => \inst14|mo\(4),
	datad => \inst1|decOut_n[2]~12_combout\,
	combout => \inst1|decOut_n[5]~31_combout\);

-- Location: LCCOMB_X92_Y41_N12
\inst1|decOut_n[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~30_combout\ = (\inst14|mo\(4) & (!\inst14|mo\(3) & (!\inst14|mo\(2) & !\inst14|mo\(1)))) # (!\inst14|mo\(4) & (\inst14|mo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst14|mo\(3),
	datac => \inst14|mo\(2),
	datad => \inst14|mo\(1),
	combout => \inst1|decOut_n[5]~30_combout\);

-- Location: LCCOMB_X92_Y41_N8
\inst1|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~32_combout\ = (\inst14|mo\(6) & (((\inst14|mo\(5))))) # (!\inst14|mo\(6) & ((\inst14|mo\(5) & ((\inst1|decOut_n[5]~30_combout\))) # (!\inst14|mo\(5) & (\inst1|decOut_n[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(6),
	datab => \inst1|decOut_n[5]~31_combout\,
	datac => \inst14|mo\(5),
	datad => \inst1|decOut_n[5]~30_combout\,
	combout => \inst1|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X92_Y40_N8
\inst1|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~34_combout\ = (\inst14|mo\(6) & ((\inst1|decOut_n[3]~32_combout\ & (\inst1|decOut_n[5]~51_combout\)) # (!\inst1|decOut_n[3]~32_combout\ & ((\inst1|decOut_n[5]~9_combout\))))) # (!\inst14|mo\(6) & (((\inst1|decOut_n[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[5]~51_combout\,
	datab => \inst14|mo\(6),
	datac => \inst1|decOut_n[5]~9_combout\,
	datad => \inst1|decOut_n[3]~32_combout\,
	combout => \inst1|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X98_Y37_N6
\inst1|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~35_combout\ = (\inst1|decOut_n[3]~34_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[3]~34_combout\,
	combout => \inst1|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X91_Y40_N18
\inst1|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~37_combout\ = ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst6|EnableBin~combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|decOut_n~37_combout\);

-- Location: LCCOMB_X91_Y40_N14
\inst1|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~39_combout\ = (\inst1|decOut_n~37_combout\) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|decOut_n~37_combout\,
	combout => \inst1|decOut_n~39_combout\);

-- Location: LCCOMB_X91_Y40_N12
\inst1|decOut_n[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~40_combout\ = (\inst14|mo\(4) & (((\inst1|decOut_n[5]~33_combout\)))) # (!\inst14|mo\(4) & (\inst1|decOut_n[2]~12_combout\ & (\inst1|decOut_n~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[2]~12_combout\,
	datab => \inst14|mo\(4),
	datac => \inst1|decOut_n~39_combout\,
	datad => \inst1|decOut_n[5]~33_combout\,
	combout => \inst1|decOut_n[2]~40_combout\);

-- Location: LCCOMB_X91_Y40_N4
\inst1|decOut_n[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~36_combout\ = (\inst14|mo\(3) & (\inst14|mo\(4) & (\inst14|mo\(6) & \inst14|mo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datab => \inst14|mo\(4),
	datac => \inst14|mo\(6),
	datad => \inst14|mo\(5),
	combout => \inst1|decOut_n[2]~36_combout\);

-- Location: LCCOMB_X91_Y40_N20
\inst1|decOut_n[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~38_combout\ = ((\inst1|decOut_n[2]~36_combout\ & ((\inst1|decOut_n~37_combout\) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[2]~36_combout\,
	datab => \inst1|decOut_n~37_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst6|EnableBin~combout\,
	combout => \inst1|decOut_n[2]~38_combout\);

-- Location: LCCOMB_X91_Y40_N0
\inst1|decOut_n[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~52_combout\ = (\inst1|decOut_n[2]~38_combout\) # ((\inst1|decOut_n[2]~40_combout\ & (!\inst14|mo\(6) & !\inst14|mo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[2]~40_combout\,
	datab => \inst1|decOut_n[2]~38_combout\,
	datac => \inst14|mo\(6),
	datad => \inst14|mo\(5),
	combout => \inst1|decOut_n[2]~52_combout\);

-- Location: LCCOMB_X92_Y40_N22
\inst1|decOut_n[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~53_combout\ = (\inst14|mo\(5) & ((\inst14|mo\(4)) # ((\inst14|mo\(1) & \inst14|mo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst14|mo\(5),
	datac => \inst14|mo\(1),
	datad => \inst14|mo\(2),
	combout => \inst1|decOut_n[1]~53_combout\);

-- Location: LCCOMB_X92_Y40_N24
\inst1|decOut_n[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~42_combout\ = (\inst14|mo\(1) & ((\inst14|mo\(2)) # (!\inst14|mo\(6)))) # (!\inst14|mo\(1) & (\inst14|mo\(2) & !\inst14|mo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(1),
	datab => \inst14|mo\(2),
	datad => \inst14|mo\(6),
	combout => \inst1|decOut_n[1]~42_combout\);

-- Location: LCCOMB_X92_Y40_N2
\inst1|decOut_n[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~44_combout\ = (\inst14|mo\(3) & (((\inst1|decOut_n[1]~53_combout\)))) # (!\inst14|mo\(3) & ((\inst1|decOut_n[1]~42_combout\ & ((\inst1|decOut_n[1]~53_combout\))) # (!\inst1|decOut_n[1]~42_combout\ & (\inst14|mo\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datab => \inst14|mo\(6),
	datac => \inst1|decOut_n[1]~53_combout\,
	datad => \inst1|decOut_n[1]~42_combout\,
	combout => \inst1|decOut_n[1]~44_combout\);

-- Location: LCCOMB_X92_Y40_N30
\inst1|decOut_n[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~41_combout\ = \inst14|mo\(5) $ (\inst14|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(5),
	datac => \inst14|mo\(4),
	combout => \inst1|decOut_n[1]~41_combout\);

-- Location: LCCOMB_X92_Y40_N28
\inst1|decOut_n[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~45_combout\ = (\inst14|mo\(3) & ((\inst14|mo\(6)) # ((!\inst1|decOut_n[1]~53_combout\ & \inst1|decOut_n[1]~42_combout\)))) # (!\inst14|mo\(3) & ((\inst14|mo\(6) & (!\inst1|decOut_n[1]~53_combout\ & \inst1|decOut_n[1]~42_combout\)) # 
-- (!\inst14|mo\(6) & (\inst1|decOut_n[1]~53_combout\ & !\inst1|decOut_n[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(3),
	datab => \inst14|mo\(6),
	datac => \inst1|decOut_n[1]~53_combout\,
	datad => \inst1|decOut_n[1]~42_combout\,
	combout => \inst1|decOut_n[1]~45_combout\);

-- Location: LCCOMB_X92_Y40_N10
\inst1|decOut_n[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~46_combout\ = (\inst1|decOut_n~39_combout\ & ((\inst1|decOut_n[1]~45_combout\ & (\inst1|decOut_n[1]~44_combout\)) # (!\inst1|decOut_n[1]~45_combout\ & ((!\inst1|decOut_n[1]~41_combout\))))) # (!\inst1|decOut_n~39_combout\ & 
-- (\inst1|decOut_n[1]~44_combout\ & (\inst1|decOut_n[1]~41_combout\ $ (!\inst1|decOut_n[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~39_combout\,
	datab => \inst1|decOut_n[1]~44_combout\,
	datac => \inst1|decOut_n[1]~41_combout\,
	datad => \inst1|decOut_n[1]~45_combout\,
	combout => \inst1|decOut_n[1]~46_combout\);

-- Location: LCCOMB_X92_Y40_N16
\inst1|decOut_n[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~47_combout\ = (\inst1|decOut_n[1]~46_combout\) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[1]~46_combout\,
	combout => \inst1|decOut_n[1]~47_combout\);

-- Location: LCCOMB_X91_Y41_N18
\inst1|decOut_n~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~48_combout\ = (\inst1|decOut_n~11_combout\) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|decOut_n~11_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|decOut_n~48_combout\);

-- Location: LCCOMB_X92_Y41_N22
\inst1|decOut_n[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~43_combout\ = (\inst14|mo\(2) & \inst14|mo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|mo\(2),
	datac => \inst14|mo\(1),
	combout => \inst1|decOut_n[6]~43_combout\);

-- Location: LCCOMB_X92_Y41_N20
\inst1|decOut_n[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~49_combout\ = (\inst14|mo\(4) & ((\inst1|decOut_n~48_combout\) # ((!\inst14|mo\(3))))) # (!\inst14|mo\(4) & (((\inst1|decOut_n[6]~43_combout\ & \inst14|mo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datab => \inst1|decOut_n~48_combout\,
	datac => \inst1|decOut_n[6]~43_combout\,
	datad => \inst14|mo\(3),
	combout => \inst1|decOut_n[0]~49_combout\);

-- Location: LCCOMB_X92_Y41_N14
\inst1|decOut_n[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~50_combout\ = (\inst14|mo\(4) & (\inst1|decOut_n[5]~25_combout\)) # (!\inst14|mo\(4) & (((\inst1|decOut_n~48_combout\) # (!\inst1|decOut_n[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n[5]~25_combout\,
	datab => \inst1|decOut_n~48_combout\,
	datac => \inst14|mo\(4),
	datad => \inst1|decOut_n[2]~12_combout\,
	combout => \inst1|decOut_n[0]~50_combout\);

-- Location: LCCOMB_X92_Y41_N0
\inst1|decOut_n[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~54_combout\ = (\inst14|mo\(6) & (((\inst14|mo\(5))))) # (!\inst14|mo\(6) & ((\inst14|mo\(5) & ((\inst1|decOut_n[5]~30_combout\))) # (!\inst14|mo\(5) & (\inst1|decOut_n[0]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(6),
	datab => \inst1|decOut_n[0]~50_combout\,
	datac => \inst14|mo\(5),
	datad => \inst1|decOut_n[5]~30_combout\,
	combout => \inst1|decOut_n[0]~54_combout\);

-- Location: LCCOMB_X92_Y41_N26
\inst1|decOut_n[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~55_combout\ = ((\inst1|decOut_n[0]~54_combout\ & ((\inst1|decOut_n[0]~49_combout\) # (!\inst14|mo\(6))))) # (!\inst6|EnableBin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(6),
	datab => \inst1|decOut_n[0]~49_combout\,
	datac => \inst6|EnableBin~combout\,
	datad => \inst1|decOut_n[0]~54_combout\,
	combout => \inst1|decOut_n[0]~55_combout\);

-- Location: LCCOMB_X82_Y44_N0
\inst28|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~0_combout\ = \inst28|cont\(0) $ (VCC)
-- \inst28|Add0~1\ = CARRY(\inst28|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(0),
	datad => VCC,
	combout => \inst28|Add0~0_combout\,
	cout => \inst28|Add0~1\);

-- Location: LCCOMB_X81_Y43_N12
\inst28|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~7_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~0_combout\,
	combout => \inst28|cont~7_combout\);

-- Location: LCCOMB_X84_Y40_N20
\inst8|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~0_combout\ = (\inst6|PS.CL~q\ & ((\inst2|PS.E6~q\) # ((\inst9|PS.E6~q\ & \inst6|PS.CC~q\)))) # (!\inst6|PS.CL~q\ & (\inst9|PS.E6~q\ & ((\inst6|PS.CC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CL~q\,
	datab => \inst9|PS.E6~q\,
	datac => \inst2|PS.E6~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst8|process_0~0_combout\);

-- Location: LCCOMB_X87_Y40_N14
\inst8|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~1_combout\ = (\inst6|PS.CP~q\ & ((\inst4|PS.E10~q\) # ((\inst6|PS.CQ~q\ & \inst3|PS.E9~q\)))) # (!\inst6|PS.CP~q\ & (((\inst6|PS.CQ~q\ & \inst3|PS.E9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CP~q\,
	datab => \inst4|PS.E10~q\,
	datac => \inst6|PS.CQ~q\,
	datad => \inst3|PS.E9~q\,
	combout => \inst8|process_0~1_combout\);

-- Location: LCCOMB_X79_Y42_N30
\inst8|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~2_combout\ = (\inst8|process_0~0_combout\) # (\inst8|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~0_combout\,
	datad => \inst8|process_0~1_combout\,
	combout => \inst8|process_0~2_combout\);

-- Location: FF_X79_Y42_N31
\inst8|ledOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|ledOut~q\);

-- Location: FF_X81_Y43_N13
\inst28|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~7_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(0));

-- Location: LCCOMB_X82_Y44_N2
\inst28|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~2_combout\ = (\inst28|cont\(1) & (!\inst28|Add0~1\)) # (!\inst28|cont\(1) & ((\inst28|Add0~1\) # (GND)))
-- \inst28|Add0~3\ = CARRY((!\inst28|Add0~1\) # (!\inst28|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(1),
	datad => VCC,
	cin => \inst28|Add0~1\,
	combout => \inst28|Add0~2_combout\,
	cout => \inst28|Add0~3\);

-- Location: FF_X82_Y44_N3
\inst28|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~2_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(1));

-- Location: LCCOMB_X82_Y44_N4
\inst28|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~4_combout\ = (\inst28|cont\(2) & (\inst28|Add0~3\ $ (GND))) # (!\inst28|cont\(2) & (!\inst28|Add0~3\ & VCC))
-- \inst28|Add0~5\ = CARRY((\inst28|cont\(2) & !\inst28|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(2),
	datad => VCC,
	cin => \inst28|Add0~3\,
	combout => \inst28|Add0~4_combout\,
	cout => \inst28|Add0~5\);

-- Location: FF_X82_Y44_N5
\inst28|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~4_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(2));

-- Location: LCCOMB_X82_Y44_N6
\inst28|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~6_combout\ = (\inst28|cont\(3) & (!\inst28|Add0~5\)) # (!\inst28|cont\(3) & ((\inst28|Add0~5\) # (GND)))
-- \inst28|Add0~7\ = CARRY((!\inst28|Add0~5\) # (!\inst28|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(3),
	datad => VCC,
	cin => \inst28|Add0~5\,
	combout => \inst28|Add0~6_combout\,
	cout => \inst28|Add0~7\);

-- Location: FF_X82_Y44_N7
\inst28|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~6_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(3));

-- Location: LCCOMB_X81_Y43_N26
\inst28|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~9_combout\ = (!\inst28|cont\(0) & (!\inst28|cont\(1) & (!\inst28|cont\(2) & !\inst28|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(0),
	datab => \inst28|cont\(1),
	datac => \inst28|cont\(2),
	datad => \inst28|cont\(3),
	combout => \inst28|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y44_N8
\inst28|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~8_combout\ = (\inst28|cont\(4) & (\inst28|Add0~7\ $ (GND))) # (!\inst28|cont\(4) & (!\inst28|Add0~7\ & VCC))
-- \inst28|Add0~9\ = CARRY((\inst28|cont\(4) & !\inst28|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(4),
	datad => VCC,
	cin => \inst28|Add0~7\,
	combout => \inst28|Add0~8_combout\,
	cout => \inst28|Add0~9\);

-- Location: FF_X82_Y44_N9
\inst28|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~8_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(4));

-- Location: LCCOMB_X82_Y44_N10
\inst28|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~10_combout\ = (\inst28|cont\(5) & (!\inst28|Add0~9\)) # (!\inst28|cont\(5) & ((\inst28|Add0~9\) # (GND)))
-- \inst28|Add0~11\ = CARRY((!\inst28|Add0~9\) # (!\inst28|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(5),
	datad => VCC,
	cin => \inst28|Add0~9\,
	combout => \inst28|Add0~10_combout\,
	cout => \inst28|Add0~11\);

-- Location: LCCOMB_X81_Y43_N0
\inst28|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~6_combout\ = (\inst28|Add0~10_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~10_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~6_combout\);

-- Location: FF_X81_Y43_N1
\inst28|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~6_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(5));

-- Location: LCCOMB_X82_Y44_N12
\inst28|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~12_combout\ = (\inst28|cont\(6) & (\inst28|Add0~11\ $ (GND))) # (!\inst28|cont\(6) & (!\inst28|Add0~11\ & VCC))
-- \inst28|Add0~13\ = CARRY((\inst28|cont\(6) & !\inst28|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(6),
	datad => VCC,
	cin => \inst28|Add0~11\,
	combout => \inst28|Add0~12_combout\,
	cout => \inst28|Add0~13\);

-- Location: FF_X82_Y44_N13
\inst28|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~12_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(6));

-- Location: LCCOMB_X82_Y44_N14
\inst28|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~14_combout\ = (\inst28|cont\(7) & (!\inst28|Add0~13\)) # (!\inst28|cont\(7) & ((\inst28|Add0~13\) # (GND)))
-- \inst28|Add0~15\ = CARRY((!\inst28|Add0~13\) # (!\inst28|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(7),
	datad => VCC,
	cin => \inst28|Add0~13\,
	combout => \inst28|Add0~14_combout\,
	cout => \inst28|Add0~15\);

-- Location: FF_X82_Y44_N15
\inst28|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~14_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(7));

-- Location: LCCOMB_X81_Y43_N18
\inst28|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~8_combout\ = (!\inst28|cont\(6) & (\inst28|cont\(5) & (!\inst28|cont\(4) & !\inst28|cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(6),
	datab => \inst28|cont\(5),
	datac => \inst28|cont\(4),
	datad => \inst28|cont\(7),
	combout => \inst28|Equal0~8_combout\);

-- Location: LCCOMB_X82_Y44_N16
\inst28|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~16_combout\ = (\inst28|cont\(8) & (\inst28|Add0~15\ $ (GND))) # (!\inst28|cont\(8) & (!\inst28|Add0~15\ & VCC))
-- \inst28|Add0~17\ = CARRY((\inst28|cont\(8) & !\inst28|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(8),
	datad => VCC,
	cin => \inst28|Add0~15\,
	combout => \inst28|Add0~16_combout\,
	cout => \inst28|Add0~17\);

-- Location: LCCOMB_X81_Y43_N10
\inst28|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~5_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal0~10_combout\,
	datac => \inst28|Add0~16_combout\,
	combout => \inst28|cont~5_combout\);

-- Location: FF_X81_Y43_N11
\inst28|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~5_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(8));

-- Location: LCCOMB_X82_Y44_N18
\inst28|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~18_combout\ = (\inst28|cont\(9) & (!\inst28|Add0~17\)) # (!\inst28|cont\(9) & ((\inst28|Add0~17\) # (GND)))
-- \inst28|Add0~19\ = CARRY((!\inst28|Add0~17\) # (!\inst28|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(9),
	datad => VCC,
	cin => \inst28|Add0~17\,
	combout => \inst28|Add0~18_combout\,
	cout => \inst28|Add0~19\);

-- Location: FF_X82_Y44_N19
\inst28|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~18_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(9));

-- Location: LCCOMB_X82_Y44_N20
\inst28|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~20_combout\ = (\inst28|cont\(10) & (\inst28|Add0~19\ $ (GND))) # (!\inst28|cont\(10) & (!\inst28|Add0~19\ & VCC))
-- \inst28|Add0~21\ = CARRY((\inst28|cont\(10) & !\inst28|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(10),
	datad => VCC,
	cin => \inst28|Add0~19\,
	combout => \inst28|Add0~20_combout\,
	cout => \inst28|Add0~21\);

-- Location: FF_X82_Y44_N21
\inst28|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~20_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(10));

-- Location: LCCOMB_X82_Y44_N22
\inst28|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~22_combout\ = (\inst28|cont\(11) & (!\inst28|Add0~21\)) # (!\inst28|cont\(11) & ((\inst28|Add0~21\) # (GND)))
-- \inst28|Add0~23\ = CARRY((!\inst28|Add0~21\) # (!\inst28|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(11),
	datad => VCC,
	cin => \inst28|Add0~21\,
	combout => \inst28|Add0~22_combout\,
	cout => \inst28|Add0~23\);

-- Location: FF_X82_Y44_N23
\inst28|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~22_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(11));

-- Location: LCCOMB_X82_Y44_N24
\inst28|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~24_combout\ = (\inst28|cont\(12) & (\inst28|Add0~23\ $ (GND))) # (!\inst28|cont\(12) & (!\inst28|Add0~23\ & VCC))
-- \inst28|Add0~25\ = CARRY((\inst28|cont\(12) & !\inst28|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(12),
	datad => VCC,
	cin => \inst28|Add0~23\,
	combout => \inst28|Add0~24_combout\,
	cout => \inst28|Add0~25\);

-- Location: FF_X82_Y44_N25
\inst28|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~24_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(12));

-- Location: LCCOMB_X82_Y44_N26
\inst28|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~26_combout\ = (\inst28|cont\(13) & (!\inst28|Add0~25\)) # (!\inst28|cont\(13) & ((\inst28|Add0~25\) # (GND)))
-- \inst28|Add0~27\ = CARRY((!\inst28|Add0~25\) # (!\inst28|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(13),
	datad => VCC,
	cin => \inst28|Add0~25\,
	combout => \inst28|Add0~26_combout\,
	cout => \inst28|Add0~27\);

-- Location: LCCOMB_X81_Y43_N6
\inst28|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~4_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal0~10_combout\,
	datac => \inst28|Add0~26_combout\,
	combout => \inst28|cont~4_combout\);

-- Location: FF_X81_Y43_N7
\inst28|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~4_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(13));

-- Location: LCCOMB_X82_Y44_N28
\inst28|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~28_combout\ = (\inst28|cont\(14) & (\inst28|Add0~27\ $ (GND))) # (!\inst28|cont\(14) & (!\inst28|Add0~27\ & VCC))
-- \inst28|Add0~29\ = CARRY((\inst28|cont\(14) & !\inst28|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(14),
	datad => VCC,
	cin => \inst28|Add0~27\,
	combout => \inst28|Add0~28_combout\,
	cout => \inst28|Add0~29\);

-- Location: FF_X82_Y44_N29
\inst28|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~28_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(14));

-- Location: LCCOMB_X82_Y44_N30
\inst28|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~30_combout\ = (\inst28|cont\(15) & (!\inst28|Add0~29\)) # (!\inst28|cont\(15) & ((\inst28|Add0~29\) # (GND)))
-- \inst28|Add0~31\ = CARRY((!\inst28|Add0~29\) # (!\inst28|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(15),
	datad => VCC,
	cin => \inst28|Add0~29\,
	combout => \inst28|Add0~30_combout\,
	cout => \inst28|Add0~31\);

-- Location: LCCOMB_X81_Y44_N28
\inst28|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~3_combout\ = (\inst28|Add0~30_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~30_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~3_combout\);

-- Location: FF_X81_Y44_N29
\inst28|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~3_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(15));

-- Location: LCCOMB_X81_Y43_N8
\inst28|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~5_combout\ = (\inst28|cont\(13) & (!\inst28|cont\(14) & (\inst28|cont\(15) & !\inst28|cont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(13),
	datab => \inst28|cont\(14),
	datac => \inst28|cont\(15),
	datad => \inst28|cont\(12),
	combout => \inst28|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y43_N24
\inst28|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~6_combout\ = (!\inst28|cont\(10) & (\inst28|cont\(8) & (!\inst28|cont\(9) & !\inst28|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(10),
	datab => \inst28|cont\(8),
	datac => \inst28|cont\(9),
	datad => \inst28|cont\(11),
	combout => \inst28|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y43_N14
\inst28|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~7_combout\ = (\inst28|Equal0~5_combout\ & \inst28|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~5_combout\,
	datad => \inst28|Equal0~6_combout\,
	combout => \inst28|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y43_N0
\inst28|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~32_combout\ = (\inst28|cont\(16) & (\inst28|Add0~31\ $ (GND))) # (!\inst28|cont\(16) & (!\inst28|Add0~31\ & VCC))
-- \inst28|Add0~33\ = CARRY((\inst28|cont\(16) & !\inst28|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(16),
	datad => VCC,
	cin => \inst28|Add0~31\,
	combout => \inst28|Add0~32_combout\,
	cout => \inst28|Add0~33\);

-- Location: LCCOMB_X80_Y43_N18
\inst28|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~2_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~10_combout\,
	datac => \inst28|Add0~32_combout\,
	combout => \inst28|cont~2_combout\);

-- Location: FF_X80_Y43_N19
\inst28|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~2_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(16));

-- Location: LCCOMB_X82_Y43_N2
\inst28|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~34_combout\ = (\inst28|cont\(17) & (!\inst28|Add0~33\)) # (!\inst28|cont\(17) & ((\inst28|Add0~33\) # (GND)))
-- \inst28|Add0~35\ = CARRY((!\inst28|Add0~33\) # (!\inst28|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(17),
	datad => VCC,
	cin => \inst28|Add0~33\,
	combout => \inst28|Add0~34_combout\,
	cout => \inst28|Add0~35\);

-- Location: LCCOMB_X81_Y43_N2
\inst28|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~1_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~34_combout\,
	combout => \inst28|cont~1_combout\);

-- Location: FF_X81_Y43_N3
\inst28|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~1_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(17));

-- Location: LCCOMB_X82_Y43_N4
\inst28|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~36_combout\ = (\inst28|cont\(18) & (\inst28|Add0~35\ $ (GND))) # (!\inst28|cont\(18) & (!\inst28|Add0~35\ & VCC))
-- \inst28|Add0~37\ = CARRY((\inst28|cont\(18) & !\inst28|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(18),
	datad => VCC,
	cin => \inst28|Add0~35\,
	combout => \inst28|Add0~36_combout\,
	cout => \inst28|Add0~37\);

-- Location: LCCOMB_X80_Y43_N16
\inst28|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~0_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~36_combout\,
	combout => \inst28|cont~0_combout\);

-- Location: FF_X80_Y43_N17
\inst28|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~0_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(18));

-- Location: LCCOMB_X82_Y43_N6
\inst28|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~38_combout\ = (\inst28|cont\(19) & (!\inst28|Add0~37\)) # (!\inst28|cont\(19) & ((\inst28|Add0~37\) # (GND)))
-- \inst28|Add0~39\ = CARRY((!\inst28|Add0~37\) # (!\inst28|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(19),
	datad => VCC,
	cin => \inst28|Add0~37\,
	combout => \inst28|Add0~38_combout\,
	cout => \inst28|Add0~39\);

-- Location: FF_X82_Y43_N7
\inst28|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~38_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(19));

-- Location: LCCOMB_X82_Y43_N8
\inst28|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~40_combout\ = (\inst28|cont\(20) & (\inst28|Add0~39\ $ (GND))) # (!\inst28|cont\(20) & (!\inst28|Add0~39\ & VCC))
-- \inst28|Add0~41\ = CARRY((\inst28|cont\(20) & !\inst28|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(20),
	datad => VCC,
	cin => \inst28|Add0~39\,
	combout => \inst28|Add0~40_combout\,
	cout => \inst28|Add0~41\);

-- Location: FF_X82_Y43_N9
\inst28|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~40_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(20));

-- Location: LCCOMB_X82_Y43_N10
\inst28|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~42_combout\ = (\inst28|cont\(21) & (!\inst28|Add0~41\)) # (!\inst28|cont\(21) & ((\inst28|Add0~41\) # (GND)))
-- \inst28|Add0~43\ = CARRY((!\inst28|Add0~41\) # (!\inst28|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(21),
	datad => VCC,
	cin => \inst28|Add0~41\,
	combout => \inst28|Add0~42_combout\,
	cout => \inst28|Add0~43\);

-- Location: FF_X82_Y43_N11
\inst28|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~42_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(21));

-- Location: LCCOMB_X82_Y43_N12
\inst28|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~44_combout\ = (\inst28|cont\(22) & (\inst28|Add0~43\ $ (GND))) # (!\inst28|cont\(22) & (!\inst28|Add0~43\ & VCC))
-- \inst28|Add0~45\ = CARRY((\inst28|cont\(22) & !\inst28|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(22),
	datad => VCC,
	cin => \inst28|Add0~43\,
	combout => \inst28|Add0~44_combout\,
	cout => \inst28|Add0~45\);

-- Location: FF_X82_Y43_N13
\inst28|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~44_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(22));

-- Location: LCCOMB_X82_Y43_N14
\inst28|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~46_combout\ = (\inst28|cont\(23) & (!\inst28|Add0~45\)) # (!\inst28|cont\(23) & ((\inst28|Add0~45\) # (GND)))
-- \inst28|Add0~47\ = CARRY((!\inst28|Add0~45\) # (!\inst28|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(23),
	datad => VCC,
	cin => \inst28|Add0~45\,
	combout => \inst28|Add0~46_combout\,
	cout => \inst28|Add0~47\);

-- Location: FF_X82_Y43_N15
\inst28|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~46_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(23));

-- Location: LCCOMB_X82_Y43_N16
\inst28|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~48_combout\ = (\inst28|cont\(24) & (\inst28|Add0~47\ $ (GND))) # (!\inst28|cont\(24) & (!\inst28|Add0~47\ & VCC))
-- \inst28|Add0~49\ = CARRY((\inst28|cont\(24) & !\inst28|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(24),
	datad => VCC,
	cin => \inst28|Add0~47\,
	combout => \inst28|Add0~48_combout\,
	cout => \inst28|Add0~49\);

-- Location: FF_X82_Y43_N17
\inst28|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~48_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(24));

-- Location: LCCOMB_X82_Y43_N18
\inst28|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~50_combout\ = (\inst28|cont\(25) & (!\inst28|Add0~49\)) # (!\inst28|cont\(25) & ((\inst28|Add0~49\) # (GND)))
-- \inst28|Add0~51\ = CARRY((!\inst28|Add0~49\) # (!\inst28|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(25),
	datad => VCC,
	cin => \inst28|Add0~49\,
	combout => \inst28|Add0~50_combout\,
	cout => \inst28|Add0~51\);

-- Location: FF_X82_Y43_N19
\inst28|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~50_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(25));

-- Location: LCCOMB_X82_Y43_N20
\inst28|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~52_combout\ = (\inst28|cont\(26) & (\inst28|Add0~51\ $ (GND))) # (!\inst28|cont\(26) & (!\inst28|Add0~51\ & VCC))
-- \inst28|Add0~53\ = CARRY((\inst28|cont\(26) & !\inst28|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(26),
	datad => VCC,
	cin => \inst28|Add0~51\,
	combout => \inst28|Add0~52_combout\,
	cout => \inst28|Add0~53\);

-- Location: FF_X82_Y43_N21
\inst28|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~52_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(26));

-- Location: LCCOMB_X82_Y43_N22
\inst28|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~54_combout\ = (\inst28|cont\(27) & (!\inst28|Add0~53\)) # (!\inst28|cont\(27) & ((\inst28|Add0~53\) # (GND)))
-- \inst28|Add0~55\ = CARRY((!\inst28|Add0~53\) # (!\inst28|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(27),
	datad => VCC,
	cin => \inst28|Add0~53\,
	combout => \inst28|Add0~54_combout\,
	cout => \inst28|Add0~55\);

-- Location: FF_X82_Y43_N23
\inst28|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~54_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(27));

-- Location: LCCOMB_X81_Y43_N30
\inst28|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~1_combout\ = (!\inst28|cont\(27) & (!\inst28|cont\(25) & (!\inst28|cont\(26) & !\inst28|cont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(27),
	datab => \inst28|cont\(25),
	datac => \inst28|cont\(26),
	datad => \inst28|cont\(24),
	combout => \inst28|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y43_N24
\inst28|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~56_combout\ = (\inst28|cont\(28) & (\inst28|Add0~55\ $ (GND))) # (!\inst28|cont\(28) & (!\inst28|Add0~55\ & VCC))
-- \inst28|Add0~57\ = CARRY((\inst28|cont\(28) & !\inst28|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(28),
	datad => VCC,
	cin => \inst28|Add0~55\,
	combout => \inst28|Add0~56_combout\,
	cout => \inst28|Add0~57\);

-- Location: FF_X82_Y43_N25
\inst28|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~56_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(28));

-- Location: LCCOMB_X82_Y43_N26
\inst28|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~58_combout\ = (\inst28|cont\(29) & (!\inst28|Add0~57\)) # (!\inst28|cont\(29) & ((\inst28|Add0~57\) # (GND)))
-- \inst28|Add0~59\ = CARRY((!\inst28|Add0~57\) # (!\inst28|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(29),
	datad => VCC,
	cin => \inst28|Add0~57\,
	combout => \inst28|Add0~58_combout\,
	cout => \inst28|Add0~59\);

-- Location: FF_X82_Y43_N27
\inst28|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~58_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(29));

-- Location: LCCOMB_X82_Y43_N28
\inst28|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~60_combout\ = (\inst28|cont\(30) & (\inst28|Add0~59\ $ (GND))) # (!\inst28|cont\(30) & (!\inst28|Add0~59\ & VCC))
-- \inst28|Add0~61\ = CARRY((\inst28|cont\(30) & !\inst28|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(30),
	datad => VCC,
	cin => \inst28|Add0~59\,
	combout => \inst28|Add0~60_combout\,
	cout => \inst28|Add0~61\);

-- Location: FF_X82_Y43_N29
\inst28|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~60_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(30));

-- Location: LCCOMB_X82_Y43_N30
\inst28|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~62_combout\ = \inst28|cont\(31) $ (\inst28|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(31),
	cin => \inst28|Add0~61\,
	combout => \inst28|Add0~62_combout\);

-- Location: FF_X82_Y43_N31
\inst28|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~62_combout\,
	ena => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(31));

-- Location: LCCOMB_X81_Y43_N28
\inst28|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~0_combout\ = (!\inst28|cont\(31) & (!\inst28|cont\(28) & (!\inst28|cont\(29) & !\inst28|cont\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(31),
	datab => \inst28|cont\(28),
	datac => \inst28|cont\(29),
	datad => \inst28|cont\(30),
	combout => \inst28|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y43_N4
\inst28|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~2_combout\ = (!\inst28|cont\(23) & (!\inst28|cont\(21) & (!\inst28|cont\(20) & !\inst28|cont\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(23),
	datab => \inst28|cont\(21),
	datac => \inst28|cont\(20),
	datad => \inst28|cont\(22),
	combout => \inst28|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y43_N24
\inst28|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~3_combout\ = (\inst28|cont\(17) & (\inst28|cont\(18) & (!\inst28|cont\(19) & \inst28|cont\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(17),
	datab => \inst28|cont\(18),
	datac => \inst28|cont\(19),
	datad => \inst28|cont\(16),
	combout => \inst28|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y43_N16
\inst28|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~4_combout\ = (\inst28|Equal0~1_combout\ & (\inst28|Equal0~0_combout\ & (\inst28|Equal0~2_combout\ & \inst28|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~1_combout\,
	datab => \inst28|Equal0~0_combout\,
	datac => \inst28|Equal0~2_combout\,
	datad => \inst28|Equal0~3_combout\,
	combout => \inst28|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y43_N20
\inst28|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~10_combout\ = (\inst28|Equal0~9_combout\ & (\inst28|Equal0~8_combout\ & (\inst28|Equal0~7_combout\ & \inst28|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~9_combout\,
	datab => \inst28|Equal0~8_combout\,
	datac => \inst28|Equal0~7_combout\,
	datad => \inst28|Equal0~4_combout\,
	combout => \inst28|Equal0~10_combout\);

-- Location: LCCOMB_X82_Y42_N0
\inst28|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~0_combout\ = \inst28|var_milseg\(0) $ (GND)
-- \inst28|Add1~1\ = CARRY(!\inst28|var_milseg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(0),
	datad => VCC,
	combout => \inst28|Add1~0_combout\,
	cout => \inst28|Add1~1\);

-- Location: LCCOMB_X81_Y42_N22
\inst28|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal3~1_combout\ = ((\inst28|var_seg\(2)) # (!\inst28|var_seg\(0))) # (!\inst28|var_seg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(1),
	datac => \inst28|var_seg\(2),
	datad => \inst28|var_seg\(0),
	combout => \inst28|Equal3~1_combout\);

-- Location: LCCOMB_X81_Y42_N20
\inst28|var_milseg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_milseg[6]~0_combout\ = (\inst8|ledOut~q\ & \inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ledOut~q\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|var_milseg[6]~0_combout\);

-- Location: LCCOMB_X81_Y42_N30
\inst28|var_seg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[6]~0_combout\ = (\inst28|Equal1~1_combout\ & (\inst28|var_milseg[6]~0_combout\ & ((\inst28|Equal3~0_combout\) # (\inst28|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~0_combout\,
	datab => \inst28|Equal1~1_combout\,
	datac => \inst28|Equal3~1_combout\,
	datad => \inst28|var_milseg[6]~0_combout\,
	combout => \inst28|var_seg[6]~0_combout\);

-- Location: LCCOMB_X81_Y42_N0
\inst28|var_seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[0]~1_combout\ = \inst28|var_seg[6]~0_combout\ $ (\inst28|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg[6]~0_combout\,
	datac => \inst28|var_seg\(0),
	combout => \inst28|var_seg[0]~1_combout\);

-- Location: FF_X81_Y42_N1
\inst28|var_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(0));

-- Location: LCCOMB_X81_Y42_N4
\inst28|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~1_cout\ = CARRY(!\inst28|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(0),
	datad => VCC,
	cout => \inst28|Add2~1_cout\);

-- Location: LCCOMB_X81_Y42_N6
\inst28|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~2_combout\ = (\inst28|var_seg\(1) & (!\inst28|Add2~1_cout\)) # (!\inst28|var_seg\(1) & (\inst28|Add2~1_cout\ & VCC))
-- \inst28|Add2~3\ = CARRY((\inst28|var_seg\(1) & !\inst28|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(1),
	datad => VCC,
	cin => \inst28|Add2~1_cout\,
	combout => \inst28|Add2~2_combout\,
	cout => \inst28|Add2~3\);

-- Location: LCCOMB_X81_Y42_N2
\inst28|var_seg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[1]~5_combout\ = !\inst28|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~2_combout\,
	combout => \inst28|var_seg[1]~5_combout\);

-- Location: FF_X81_Y42_N3
\inst28|var_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[1]~5_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(1));

-- Location: LCCOMB_X81_Y42_N8
\inst28|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~4_combout\ = (\inst28|var_seg\(2) & ((GND) # (!\inst28|Add2~3\))) # (!\inst28|var_seg\(2) & (\inst28|Add2~3\ $ (GND)))
-- \inst28|Add2~5\ = CARRY((\inst28|var_seg\(2)) # (!\inst28|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(2),
	datad => VCC,
	cin => \inst28|Add2~3\,
	combout => \inst28|Add2~4_combout\,
	cout => \inst28|Add2~5\);

-- Location: FF_X81_Y42_N9
\inst28|var_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add2~4_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(2));

-- Location: LCCOMB_X81_Y42_N10
\inst28|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~6_combout\ = (\inst28|var_seg\(3) & (!\inst28|Add2~5\)) # (!\inst28|var_seg\(3) & (\inst28|Add2~5\ & VCC))
-- \inst28|Add2~7\ = CARRY((\inst28|var_seg\(3) & !\inst28|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(3),
	datad => VCC,
	cin => \inst28|Add2~5\,
	combout => \inst28|Add2~6_combout\,
	cout => \inst28|Add2~7\);

-- Location: LCCOMB_X81_Y42_N18
\inst28|var_seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[3]~4_combout\ = !\inst28|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~6_combout\,
	combout => \inst28|var_seg[3]~4_combout\);

-- Location: FF_X81_Y42_N19
\inst28|var_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[3]~4_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(3));

-- Location: LCCOMB_X81_Y42_N12
\inst28|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~8_combout\ = (\inst28|var_seg\(4) & (\inst28|Add2~7\ $ (GND))) # (!\inst28|var_seg\(4) & ((GND) # (!\inst28|Add2~7\)))
-- \inst28|Add2~9\ = CARRY((!\inst28|Add2~7\) # (!\inst28|var_seg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(4),
	datad => VCC,
	cin => \inst28|Add2~7\,
	combout => \inst28|Add2~8_combout\,
	cout => \inst28|Add2~9\);

-- Location: LCCOMB_X81_Y42_N26
\inst28|var_seg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[4]~3_combout\ = !\inst28|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~8_combout\,
	combout => \inst28|var_seg[4]~3_combout\);

-- Location: FF_X81_Y42_N27
\inst28|var_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[4]~3_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(4));

-- Location: LCCOMB_X81_Y42_N14
\inst28|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~10_combout\ = (\inst28|var_seg\(5) & (!\inst28|Add2~9\)) # (!\inst28|var_seg\(5) & (\inst28|Add2~9\ & VCC))
-- \inst28|Add2~11\ = CARRY((\inst28|var_seg\(5) & !\inst28|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(5),
	datad => VCC,
	cin => \inst28|Add2~9\,
	combout => \inst28|Add2~10_combout\,
	cout => \inst28|Add2~11\);

-- Location: LCCOMB_X81_Y42_N28
\inst28|var_seg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[5]~2_combout\ = !\inst28|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add2~10_combout\,
	combout => \inst28|var_seg[5]~2_combout\);

-- Location: FF_X81_Y42_N29
\inst28|var_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[5]~2_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(5));

-- Location: LCCOMB_X81_Y42_N16
\inst28|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~12_combout\ = \inst28|Add2~11\ $ (\inst28|var_seg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst28|var_seg\(6),
	cin => \inst28|Add2~11\,
	combout => \inst28|Add2~12_combout\);

-- Location: FF_X81_Y42_N17
\inst28|var_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add2~12_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(6));

-- Location: LCCOMB_X81_Y42_N24
\inst28|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal3~0_combout\ = (\inst28|var_seg\(6)) # (((!\inst28|var_seg\(3)) # (!\inst28|var_seg\(4))) # (!\inst28|var_seg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(6),
	datab => \inst28|var_seg\(5),
	datac => \inst28|var_seg\(4),
	datad => \inst28|var_seg\(3),
	combout => \inst28|Equal3~0_combout\);

-- Location: LCCOMB_X82_Y42_N22
\inst28|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~19_combout\ = (\inst28|Equal1~1_combout\ & (((!\inst28|Equal3~0_combout\ & !\inst28|Equal3~1_combout\)))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Add1~0_combout\,
	datab => \inst28|Equal3~0_combout\,
	datac => \inst28|Equal3~1_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~19_combout\);

-- Location: FF_X82_Y42_N23
\inst28|var_milseg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~19_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(0));

-- Location: LCCOMB_X82_Y42_N2
\inst28|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~2_combout\ = (\inst28|var_milseg\(1) & (!\inst28|Add1~1\)) # (!\inst28|var_milseg\(1) & (\inst28|Add1~1\ & VCC))
-- \inst28|Add1~3\ = CARRY((\inst28|var_milseg\(1) & !\inst28|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(1),
	datad => VCC,
	cin => \inst28|Add1~1\,
	combout => \inst28|Add1~2_combout\,
	cout => \inst28|Add1~3\);

-- Location: LCCOMB_X82_Y42_N28
\inst28|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~18_combout\ = (\inst28|Equal1~1_combout\ & (!\inst28|Equal3~1_combout\ & (!\inst28|Equal3~0_combout\))) # (!\inst28|Equal1~1_combout\ & (((!\inst28|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~1_combout\,
	datab => \inst28|Equal3~0_combout\,
	datac => \inst28|Add1~2_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~18_combout\);

-- Location: FF_X82_Y42_N29
\inst28|var_milseg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~18_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(1));

-- Location: LCCOMB_X82_Y42_N4
\inst28|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~4_combout\ = (\inst28|var_milseg\(2) & ((GND) # (!\inst28|Add1~3\))) # (!\inst28|var_milseg\(2) & (\inst28|Add1~3\ $ (GND)))
-- \inst28|Add1~5\ = CARRY((\inst28|var_milseg\(2)) # (!\inst28|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(2),
	datad => VCC,
	cin => \inst28|Add1~3\,
	combout => \inst28|Add1~4_combout\,
	cout => \inst28|Add1~5\);

-- Location: LCCOMB_X82_Y42_N24
\inst28|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~20_combout\ = (\inst28|Add1~4_combout\ & !\inst28|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add1~4_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~20_combout\);

-- Location: FF_X82_Y42_N25
\inst28|var_milseg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~20_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(2));

-- Location: LCCOMB_X82_Y42_N6
\inst28|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~6_combout\ = (\inst28|var_milseg\(3) & (\inst28|Add1~5\ & VCC)) # (!\inst28|var_milseg\(3) & (!\inst28|Add1~5\))
-- \inst28|Add1~7\ = CARRY((!\inst28|var_milseg\(3) & !\inst28|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(3),
	datad => VCC,
	cin => \inst28|Add1~5\,
	combout => \inst28|Add1~6_combout\,
	cout => \inst28|Add1~7\);

-- Location: LCCOMB_X82_Y42_N20
\inst28|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~17_combout\ = (!\inst28|Equal1~1_combout\ & \inst28|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal1~1_combout\,
	datad => \inst28|Add1~6_combout\,
	combout => \inst28|Add1~17_combout\);

-- Location: FF_X82_Y42_N21
\inst28|var_milseg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~17_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(3));

-- Location: LCCOMB_X82_Y42_N8
\inst28|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~8_combout\ = (\inst28|var_milseg\(4) & ((GND) # (!\inst28|Add1~7\))) # (!\inst28|var_milseg\(4) & (\inst28|Add1~7\ $ (GND)))
-- \inst28|Add1~9\ = CARRY((\inst28|var_milseg\(4)) # (!\inst28|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(4),
	datad => VCC,
	cin => \inst28|Add1~7\,
	combout => \inst28|Add1~8_combout\,
	cout => \inst28|Add1~9\);

-- Location: LCCOMB_X82_Y42_N30
\inst28|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~16_combout\ = (\inst28|Add1~8_combout\ & !\inst28|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add1~8_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~16_combout\);

-- Location: FF_X82_Y42_N31
\inst28|var_milseg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~16_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(4));

-- Location: LCCOMB_X82_Y42_N10
\inst28|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~10_combout\ = (\inst28|var_milseg\(5) & (!\inst28|Add1~9\)) # (!\inst28|var_milseg\(5) & (\inst28|Add1~9\ & VCC))
-- \inst28|Add1~11\ = CARRY((\inst28|var_milseg\(5) & !\inst28|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(5),
	datad => VCC,
	cin => \inst28|Add1~9\,
	combout => \inst28|Add1~10_combout\,
	cout => \inst28|Add1~11\);

-- Location: LCCOMB_X82_Y42_N16
\inst28|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~15_combout\ = (\inst28|Equal1~1_combout\ & (((!\inst28|Equal3~0_combout\ & !\inst28|Equal3~1_combout\)))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Add1~10_combout\,
	datab => \inst28|Equal3~0_combout\,
	datac => \inst28|Equal3~1_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~15_combout\);

-- Location: FF_X82_Y42_N17
\inst28|var_milseg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~15_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(5));

-- Location: LCCOMB_X82_Y42_N12
\inst28|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~12_combout\ = \inst28|var_milseg\(6) $ (!\inst28|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(6),
	cin => \inst28|Add1~11\,
	combout => \inst28|Add1~12_combout\);

-- Location: LCCOMB_X82_Y42_N14
\inst28|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~14_combout\ = (\inst28|Equal1~1_combout\ & (((!\inst28|Equal3~0_combout\ & !\inst28|Equal3~1_combout\)))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Add1~12_combout\,
	datab => \inst28|Equal3~0_combout\,
	datac => \inst28|Equal3~1_combout\,
	datad => \inst28|Equal1~1_combout\,
	combout => \inst28|Add1~14_combout\);

-- Location: FF_X82_Y42_N15
\inst28|var_milseg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add1~14_combout\,
	ena => \inst28|var_milseg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_milseg\(6));

-- Location: LCCOMB_X82_Y42_N26
\inst28|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal1~0_combout\ = (!\inst28|var_milseg\(4) & (\inst28|var_milseg\(5) & (\inst28|var_milseg\(6) & !\inst28|var_milseg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(4),
	datab => \inst28|var_milseg\(5),
	datac => \inst28|var_milseg\(6),
	datad => \inst28|var_milseg\(3),
	combout => \inst28|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y42_N18
\inst28|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal1~1_combout\ = (\inst28|var_milseg\(0) & (!\inst28|var_milseg\(2) & (\inst28|Equal1~0_combout\ & \inst28|var_milseg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(0),
	datab => \inst28|var_milseg\(2),
	datac => \inst28|Equal1~0_combout\,
	datad => \inst28|var_milseg\(1),
	combout => \inst28|Equal1~1_combout\);

-- Location: LCCOMB_X80_Y42_N0
\inst28|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~0_combout\ = \inst28|cnt\(0) $ (VCC)
-- \inst28|Add3~1\ = CARRY(\inst28|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(0),
	datad => VCC,
	combout => \inst28|Add3~0_combout\,
	cout => \inst28|Add3~1\);

-- Location: LCCOMB_X79_Y41_N16
\inst28|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt~2_combout\ = (!\inst28|Equal2~10_combout\ & \inst28|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal2~10_combout\,
	datad => \inst28|Add3~0_combout\,
	combout => \inst28|cnt~2_combout\);

-- Location: LCCOMB_X81_Y43_N22
\inst28|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[1]~0_combout\ = (\inst28|Equal1~1_combout\ & \inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cnt[1]~0_combout\);

-- Location: FF_X80_Y42_N1
\inst28|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst28|cnt~2_combout\,
	clrn => \inst8|ledOut~q\,
	sload => VCC,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(0));

-- Location: LCCOMB_X80_Y42_N2
\inst28|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~2_combout\ = (\inst28|cnt\(1) & (!\inst28|Add3~1\)) # (!\inst28|cnt\(1) & ((\inst28|Add3~1\) # (GND)))
-- \inst28|Add3~3\ = CARRY((!\inst28|Add3~1\) # (!\inst28|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(1),
	datad => VCC,
	cin => \inst28|Add3~1\,
	combout => \inst28|Add3~2_combout\,
	cout => \inst28|Add3~3\);

-- Location: LCCOMB_X79_Y42_N4
\inst28|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt~1_combout\ = (\inst28|Add3~2_combout\ & !\inst28|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add3~2_combout\,
	datad => \inst28|Equal2~10_combout\,
	combout => \inst28|cnt~1_combout\);

-- Location: FF_X80_Y42_N3
\inst28|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst28|cnt~1_combout\,
	clrn => \inst8|ledOut~q\,
	sload => VCC,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(1));

-- Location: LCCOMB_X80_Y42_N4
\inst28|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~4_combout\ = (\inst28|cnt\(2) & (\inst28|Add3~3\ $ (GND))) # (!\inst28|cnt\(2) & (!\inst28|Add3~3\ & VCC))
-- \inst28|Add3~5\ = CARRY((\inst28|cnt\(2) & !\inst28|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(2),
	datad => VCC,
	cin => \inst28|Add3~3\,
	combout => \inst28|Add3~4_combout\,
	cout => \inst28|Add3~5\);

-- Location: FF_X80_Y42_N5
\inst28|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~4_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(2));

-- Location: LCCOMB_X80_Y42_N6
\inst28|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~6_combout\ = (\inst28|cnt\(3) & (!\inst28|Add3~5\)) # (!\inst28|cnt\(3) & ((\inst28|Add3~5\) # (GND)))
-- \inst28|Add3~7\ = CARRY((!\inst28|Add3~5\) # (!\inst28|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(3),
	datad => VCC,
	cin => \inst28|Add3~5\,
	combout => \inst28|Add3~6_combout\,
	cout => \inst28|Add3~7\);

-- Location: FF_X80_Y42_N7
\inst28|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~6_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(3));

-- Location: LCCOMB_X80_Y42_N8
\inst28|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~8_combout\ = (\inst28|cnt\(4) & (\inst28|Add3~7\ $ (GND))) # (!\inst28|cnt\(4) & (!\inst28|Add3~7\ & VCC))
-- \inst28|Add3~9\ = CARRY((\inst28|cnt\(4) & !\inst28|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(4),
	datad => VCC,
	cin => \inst28|Add3~7\,
	combout => \inst28|Add3~8_combout\,
	cout => \inst28|Add3~9\);

-- Location: FF_X80_Y42_N9
\inst28|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~8_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(4));

-- Location: LCCOMB_X80_Y42_N10
\inst28|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~10_combout\ = (\inst28|cnt\(5) & (!\inst28|Add3~9\)) # (!\inst28|cnt\(5) & ((\inst28|Add3~9\) # (GND)))
-- \inst28|Add3~11\ = CARRY((!\inst28|Add3~9\) # (!\inst28|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(5),
	datad => VCC,
	cin => \inst28|Add3~9\,
	combout => \inst28|Add3~10_combout\,
	cout => \inst28|Add3~11\);

-- Location: FF_X80_Y42_N11
\inst28|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~10_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(5));

-- Location: LCCOMB_X80_Y42_N12
\inst28|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~12_combout\ = (\inst28|cnt\(6) & (\inst28|Add3~11\ $ (GND))) # (!\inst28|cnt\(6) & (!\inst28|Add3~11\ & VCC))
-- \inst28|Add3~13\ = CARRY((\inst28|cnt\(6) & !\inst28|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(6),
	datad => VCC,
	cin => \inst28|Add3~11\,
	combout => \inst28|Add3~12_combout\,
	cout => \inst28|Add3~13\);

-- Location: FF_X80_Y42_N13
\inst28|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~12_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(6));

-- Location: LCCOMB_X80_Y42_N14
\inst28|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~14_combout\ = (\inst28|cnt\(7) & (!\inst28|Add3~13\)) # (!\inst28|cnt\(7) & ((\inst28|Add3~13\) # (GND)))
-- \inst28|Add3~15\ = CARRY((!\inst28|Add3~13\) # (!\inst28|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(7),
	datad => VCC,
	cin => \inst28|Add3~13\,
	combout => \inst28|Add3~14_combout\,
	cout => \inst28|Add3~15\);

-- Location: FF_X80_Y42_N15
\inst28|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~14_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(7));

-- Location: LCCOMB_X80_Y42_N16
\inst28|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~16_combout\ = (\inst28|cnt\(8) & (\inst28|Add3~15\ $ (GND))) # (!\inst28|cnt\(8) & (!\inst28|Add3~15\ & VCC))
-- \inst28|Add3~17\ = CARRY((\inst28|cnt\(8) & !\inst28|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(8),
	datad => VCC,
	cin => \inst28|Add3~15\,
	combout => \inst28|Add3~16_combout\,
	cout => \inst28|Add3~17\);

-- Location: FF_X80_Y42_N17
\inst28|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~16_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(8));

-- Location: LCCOMB_X80_Y42_N18
\inst28|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~18_combout\ = (\inst28|cnt\(9) & (!\inst28|Add3~17\)) # (!\inst28|cnt\(9) & ((\inst28|Add3~17\) # (GND)))
-- \inst28|Add3~19\ = CARRY((!\inst28|Add3~17\) # (!\inst28|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(9),
	datad => VCC,
	cin => \inst28|Add3~17\,
	combout => \inst28|Add3~18_combout\,
	cout => \inst28|Add3~19\);

-- Location: FF_X80_Y42_N19
\inst28|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~18_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(9));

-- Location: LCCOMB_X80_Y42_N20
\inst28|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~20_combout\ = (\inst28|cnt\(10) & (\inst28|Add3~19\ $ (GND))) # (!\inst28|cnt\(10) & (!\inst28|Add3~19\ & VCC))
-- \inst28|Add3~21\ = CARRY((\inst28|cnt\(10) & !\inst28|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(10),
	datad => VCC,
	cin => \inst28|Add3~19\,
	combout => \inst28|Add3~20_combout\,
	cout => \inst28|Add3~21\);

-- Location: FF_X80_Y42_N21
\inst28|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~20_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(10));

-- Location: LCCOMB_X80_Y42_N22
\inst28|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~22_combout\ = (\inst28|cnt\(11) & (!\inst28|Add3~21\)) # (!\inst28|cnt\(11) & ((\inst28|Add3~21\) # (GND)))
-- \inst28|Add3~23\ = CARRY((!\inst28|Add3~21\) # (!\inst28|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(11),
	datad => VCC,
	cin => \inst28|Add3~21\,
	combout => \inst28|Add3~22_combout\,
	cout => \inst28|Add3~23\);

-- Location: FF_X80_Y42_N23
\inst28|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~22_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(11));

-- Location: LCCOMB_X80_Y42_N24
\inst28|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~24_combout\ = (\inst28|cnt\(12) & (\inst28|Add3~23\ $ (GND))) # (!\inst28|cnt\(12) & (!\inst28|Add3~23\ & VCC))
-- \inst28|Add3~25\ = CARRY((\inst28|cnt\(12) & !\inst28|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(12),
	datad => VCC,
	cin => \inst28|Add3~23\,
	combout => \inst28|Add3~24_combout\,
	cout => \inst28|Add3~25\);

-- Location: FF_X80_Y42_N25
\inst28|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~24_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(12));

-- Location: LCCOMB_X80_Y42_N26
\inst28|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~26_combout\ = (\inst28|cnt\(13) & (!\inst28|Add3~25\)) # (!\inst28|cnt\(13) & ((\inst28|Add3~25\) # (GND)))
-- \inst28|Add3~27\ = CARRY((!\inst28|Add3~25\) # (!\inst28|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(13),
	datad => VCC,
	cin => \inst28|Add3~25\,
	combout => \inst28|Add3~26_combout\,
	cout => \inst28|Add3~27\);

-- Location: FF_X80_Y42_N27
\inst28|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~26_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(13));

-- Location: LCCOMB_X80_Y42_N28
\inst28|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~28_combout\ = (\inst28|cnt\(14) & (\inst28|Add3~27\ $ (GND))) # (!\inst28|cnt\(14) & (!\inst28|Add3~27\ & VCC))
-- \inst28|Add3~29\ = CARRY((\inst28|cnt\(14) & !\inst28|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(14),
	datad => VCC,
	cin => \inst28|Add3~27\,
	combout => \inst28|Add3~28_combout\,
	cout => \inst28|Add3~29\);

-- Location: FF_X80_Y42_N29
\inst28|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~28_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(14));

-- Location: LCCOMB_X80_Y42_N30
\inst28|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~30_combout\ = (\inst28|cnt\(15) & (!\inst28|Add3~29\)) # (!\inst28|cnt\(15) & ((\inst28|Add3~29\) # (GND)))
-- \inst28|Add3~31\ = CARRY((!\inst28|Add3~29\) # (!\inst28|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(15),
	datad => VCC,
	cin => \inst28|Add3~29\,
	combout => \inst28|Add3~30_combout\,
	cout => \inst28|Add3~31\);

-- Location: FF_X80_Y42_N31
\inst28|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~30_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(15));

-- Location: LCCOMB_X80_Y41_N0
\inst28|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~32_combout\ = (\inst28|cnt\(16) & (\inst28|Add3~31\ $ (GND))) # (!\inst28|cnt\(16) & (!\inst28|Add3~31\ & VCC))
-- \inst28|Add3~33\ = CARRY((\inst28|cnt\(16) & !\inst28|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(16),
	datad => VCC,
	cin => \inst28|Add3~31\,
	combout => \inst28|Add3~32_combout\,
	cout => \inst28|Add3~33\);

-- Location: FF_X80_Y41_N1
\inst28|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~32_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(16));

-- Location: LCCOMB_X80_Y41_N2
\inst28|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~34_combout\ = (\inst28|cnt\(17) & (!\inst28|Add3~33\)) # (!\inst28|cnt\(17) & ((\inst28|Add3~33\) # (GND)))
-- \inst28|Add3~35\ = CARRY((!\inst28|Add3~33\) # (!\inst28|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(17),
	datad => VCC,
	cin => \inst28|Add3~33\,
	combout => \inst28|Add3~34_combout\,
	cout => \inst28|Add3~35\);

-- Location: FF_X80_Y41_N3
\inst28|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~34_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(17));

-- Location: LCCOMB_X80_Y41_N4
\inst28|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~36_combout\ = (\inst28|cnt\(18) & (\inst28|Add3~35\ $ (GND))) # (!\inst28|cnt\(18) & (!\inst28|Add3~35\ & VCC))
-- \inst28|Add3~37\ = CARRY((\inst28|cnt\(18) & !\inst28|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(18),
	datad => VCC,
	cin => \inst28|Add3~35\,
	combout => \inst28|Add3~36_combout\,
	cout => \inst28|Add3~37\);

-- Location: FF_X80_Y41_N5
\inst28|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~36_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(18));

-- Location: LCCOMB_X80_Y41_N6
\inst28|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~38_combout\ = (\inst28|cnt\(19) & (!\inst28|Add3~37\)) # (!\inst28|cnt\(19) & ((\inst28|Add3~37\) # (GND)))
-- \inst28|Add3~39\ = CARRY((!\inst28|Add3~37\) # (!\inst28|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(19),
	datad => VCC,
	cin => \inst28|Add3~37\,
	combout => \inst28|Add3~38_combout\,
	cout => \inst28|Add3~39\);

-- Location: FF_X80_Y41_N7
\inst28|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~38_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(19));

-- Location: LCCOMB_X80_Y41_N8
\inst28|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~40_combout\ = (\inst28|cnt\(20) & (\inst28|Add3~39\ $ (GND))) # (!\inst28|cnt\(20) & (!\inst28|Add3~39\ & VCC))
-- \inst28|Add3~41\ = CARRY((\inst28|cnt\(20) & !\inst28|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(20),
	datad => VCC,
	cin => \inst28|Add3~39\,
	combout => \inst28|Add3~40_combout\,
	cout => \inst28|Add3~41\);

-- Location: FF_X80_Y41_N9
\inst28|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~40_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(20));

-- Location: LCCOMB_X80_Y41_N10
\inst28|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~42_combout\ = (\inst28|cnt\(21) & (!\inst28|Add3~41\)) # (!\inst28|cnt\(21) & ((\inst28|Add3~41\) # (GND)))
-- \inst28|Add3~43\ = CARRY((!\inst28|Add3~41\) # (!\inst28|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(21),
	datad => VCC,
	cin => \inst28|Add3~41\,
	combout => \inst28|Add3~42_combout\,
	cout => \inst28|Add3~43\);

-- Location: FF_X80_Y41_N11
\inst28|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~42_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(21));

-- Location: LCCOMB_X80_Y41_N12
\inst28|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~44_combout\ = (\inst28|cnt\(22) & (\inst28|Add3~43\ $ (GND))) # (!\inst28|cnt\(22) & (!\inst28|Add3~43\ & VCC))
-- \inst28|Add3~45\ = CARRY((\inst28|cnt\(22) & !\inst28|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(22),
	datad => VCC,
	cin => \inst28|Add3~43\,
	combout => \inst28|Add3~44_combout\,
	cout => \inst28|Add3~45\);

-- Location: FF_X80_Y41_N13
\inst28|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~44_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(22));

-- Location: LCCOMB_X80_Y41_N14
\inst28|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~46_combout\ = (\inst28|cnt\(23) & (!\inst28|Add3~45\)) # (!\inst28|cnt\(23) & ((\inst28|Add3~45\) # (GND)))
-- \inst28|Add3~47\ = CARRY((!\inst28|Add3~45\) # (!\inst28|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(23),
	datad => VCC,
	cin => \inst28|Add3~45\,
	combout => \inst28|Add3~46_combout\,
	cout => \inst28|Add3~47\);

-- Location: FF_X80_Y41_N15
\inst28|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~46_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(23));

-- Location: LCCOMB_X79_Y41_N26
\inst28|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~2_combout\ = (!\inst28|cnt\(22) & (!\inst28|cnt\(21) & (!\inst28|cnt\(20) & !\inst28|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(22),
	datab => \inst28|cnt\(21),
	datac => \inst28|cnt\(20),
	datad => \inst28|cnt\(23),
	combout => \inst28|Equal2~2_combout\);

-- Location: LCCOMB_X80_Y41_N16
\inst28|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~48_combout\ = (\inst28|cnt\(24) & (\inst28|Add3~47\ $ (GND))) # (!\inst28|cnt\(24) & (!\inst28|Add3~47\ & VCC))
-- \inst28|Add3~49\ = CARRY((\inst28|cnt\(24) & !\inst28|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(24),
	datad => VCC,
	cin => \inst28|Add3~47\,
	combout => \inst28|Add3~48_combout\,
	cout => \inst28|Add3~49\);

-- Location: FF_X80_Y41_N17
\inst28|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~48_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(24));

-- Location: LCCOMB_X80_Y41_N18
\inst28|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~50_combout\ = (\inst28|cnt\(25) & (!\inst28|Add3~49\)) # (!\inst28|cnt\(25) & ((\inst28|Add3~49\) # (GND)))
-- \inst28|Add3~51\ = CARRY((!\inst28|Add3~49\) # (!\inst28|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(25),
	datad => VCC,
	cin => \inst28|Add3~49\,
	combout => \inst28|Add3~50_combout\,
	cout => \inst28|Add3~51\);

-- Location: FF_X80_Y41_N19
\inst28|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~50_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(25));

-- Location: LCCOMB_X80_Y41_N20
\inst28|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~52_combout\ = (\inst28|cnt\(26) & (\inst28|Add3~51\ $ (GND))) # (!\inst28|cnt\(26) & (!\inst28|Add3~51\ & VCC))
-- \inst28|Add3~53\ = CARRY((\inst28|cnt\(26) & !\inst28|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(26),
	datad => VCC,
	cin => \inst28|Add3~51\,
	combout => \inst28|Add3~52_combout\,
	cout => \inst28|Add3~53\);

-- Location: FF_X80_Y41_N21
\inst28|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~52_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(26));

-- Location: LCCOMB_X80_Y41_N22
\inst28|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~54_combout\ = (\inst28|cnt\(27) & (!\inst28|Add3~53\)) # (!\inst28|cnt\(27) & ((\inst28|Add3~53\) # (GND)))
-- \inst28|Add3~55\ = CARRY((!\inst28|Add3~53\) # (!\inst28|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(27),
	datad => VCC,
	cin => \inst28|Add3~53\,
	combout => \inst28|Add3~54_combout\,
	cout => \inst28|Add3~55\);

-- Location: FF_X80_Y41_N23
\inst28|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~54_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(27));

-- Location: LCCOMB_X79_Y41_N28
\inst28|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~1_combout\ = (!\inst28|cnt\(26) & (!\inst28|cnt\(25) & (!\inst28|cnt\(24) & !\inst28|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(26),
	datab => \inst28|cnt\(25),
	datac => \inst28|cnt\(24),
	datad => \inst28|cnt\(27),
	combout => \inst28|Equal2~1_combout\);

-- Location: LCCOMB_X79_Y41_N8
\inst28|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~3_combout\ = (!\inst28|cnt\(19) & (!\inst28|cnt\(16) & (!\inst28|cnt\(18) & !\inst28|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(19),
	datab => \inst28|cnt\(16),
	datac => \inst28|cnt\(18),
	datad => \inst28|cnt\(17),
	combout => \inst28|Equal2~3_combout\);

-- Location: LCCOMB_X80_Y41_N24
\inst28|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~56_combout\ = (\inst28|cnt\(28) & (\inst28|Add3~55\ $ (GND))) # (!\inst28|cnt\(28) & (!\inst28|Add3~55\ & VCC))
-- \inst28|Add3~57\ = CARRY((\inst28|cnt\(28) & !\inst28|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(28),
	datad => VCC,
	cin => \inst28|Add3~55\,
	combout => \inst28|Add3~56_combout\,
	cout => \inst28|Add3~57\);

-- Location: FF_X80_Y41_N25
\inst28|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~56_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(28));

-- Location: LCCOMB_X80_Y41_N26
\inst28|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~58_combout\ = (\inst28|cnt\(29) & (!\inst28|Add3~57\)) # (!\inst28|cnt\(29) & ((\inst28|Add3~57\) # (GND)))
-- \inst28|Add3~59\ = CARRY((!\inst28|Add3~57\) # (!\inst28|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(29),
	datad => VCC,
	cin => \inst28|Add3~57\,
	combout => \inst28|Add3~58_combout\,
	cout => \inst28|Add3~59\);

-- Location: FF_X80_Y41_N27
\inst28|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~58_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(29));

-- Location: LCCOMB_X80_Y41_N28
\inst28|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~60_combout\ = (\inst28|cnt\(30) & (\inst28|Add3~59\ $ (GND))) # (!\inst28|cnt\(30) & (!\inst28|Add3~59\ & VCC))
-- \inst28|Add3~61\ = CARRY((\inst28|cnt\(30) & !\inst28|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(30),
	datad => VCC,
	cin => \inst28|Add3~59\,
	combout => \inst28|Add3~60_combout\,
	cout => \inst28|Add3~61\);

-- Location: FF_X80_Y41_N29
\inst28|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~60_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(30));

-- Location: LCCOMB_X80_Y41_N30
\inst28|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add3~62_combout\ = \inst28|cnt\(31) $ (\inst28|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(31),
	cin => \inst28|Add3~61\,
	combout => \inst28|Add3~62_combout\);

-- Location: FF_X80_Y41_N31
\inst28|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add3~62_combout\,
	clrn => \inst8|ledOut~q\,
	ena => \inst28|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(31));

-- Location: LCCOMB_X79_Y41_N6
\inst28|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~0_combout\ = (!\inst28|cnt\(31) & (!\inst28|cnt\(29) & (!\inst28|cnt\(28) & !\inst28|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(31),
	datab => \inst28|cnt\(29),
	datac => \inst28|cnt\(28),
	datad => \inst28|cnt\(30),
	combout => \inst28|Equal2~0_combout\);

-- Location: LCCOMB_X79_Y41_N22
\inst28|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~4_combout\ = (\inst28|Equal2~2_combout\ & (\inst28|Equal2~1_combout\ & (\inst28|Equal2~3_combout\ & \inst28|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal2~2_combout\,
	datab => \inst28|Equal2~1_combout\,
	datac => \inst28|Equal2~3_combout\,
	datad => \inst28|Equal2~0_combout\,
	combout => \inst28|Equal2~4_combout\);

-- Location: LCCOMB_X79_Y42_N12
\inst28|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~8_combout\ = (!\inst28|cnt\(7) & (!\inst28|cnt\(5) & (!\inst28|cnt\(6) & !\inst28|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(7),
	datab => \inst28|cnt\(5),
	datac => \inst28|cnt\(6),
	datad => \inst28|cnt\(4),
	combout => \inst28|Equal2~8_combout\);

-- Location: LCCOMB_X79_Y42_N28
\inst28|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~9_combout\ = (!\inst28|cnt\(3) & (!\inst28|cnt\(0) & (\inst28|cnt\(1) & !\inst28|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(3),
	datab => \inst28|cnt\(0),
	datac => \inst28|cnt\(1),
	datad => \inst28|cnt\(2),
	combout => \inst28|Equal2~9_combout\);

-- Location: LCCOMB_X79_Y42_N6
\inst28|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~5_combout\ = (!\inst28|cnt\(15) & (!\inst28|cnt\(13) & (!\inst28|cnt\(12) & !\inst28|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(15),
	datab => \inst28|cnt\(13),
	datac => \inst28|cnt\(12),
	datad => \inst28|cnt\(14),
	combout => \inst28|Equal2~5_combout\);

-- Location: LCCOMB_X79_Y42_N14
\inst28|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~6_combout\ = (!\inst28|cnt\(10) & (!\inst28|cnt\(9) & (!\inst28|cnt\(11) & !\inst28|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(10),
	datab => \inst28|cnt\(9),
	datac => \inst28|cnt\(11),
	datad => \inst28|cnt\(8),
	combout => \inst28|Equal2~6_combout\);

-- Location: LCCOMB_X79_Y41_N24
\inst28|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~7_combout\ = (\inst28|Equal2~5_combout\ & \inst28|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal2~5_combout\,
	datad => \inst28|Equal2~6_combout\,
	combout => \inst28|Equal2~7_combout\);

-- Location: LCCOMB_X79_Y41_N14
\inst28|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~10_combout\ = (\inst28|Equal2~4_combout\ & (\inst28|Equal2~8_combout\ & (\inst28|Equal2~9_combout\ & \inst28|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal2~4_combout\,
	datab => \inst28|Equal2~8_combout\,
	datac => \inst28|Equal2~9_combout\,
	datad => \inst28|Equal2~7_combout\,
	combout => \inst28|Equal2~10_combout\);

-- Location: LCCOMB_X79_Y42_N18
\inst28|s_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|s_led~0_combout\ = \inst28|s_led~q\ $ (((\inst28|Equal0~10_combout\ & (\inst28|Equal1~1_combout\ & \inst28|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~10_combout\,
	datab => \inst28|Equal1~1_combout\,
	datac => \inst28|s_led~q\,
	datad => \inst28|Equal2~10_combout\,
	combout => \inst28|s_led~0_combout\);

-- Location: FF_X79_Y42_N19
\inst28|s_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst28|s_led~0_combout\,
	clrn => \inst8|ledOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|s_led~q\);

-- Location: LCCOMB_X79_Y42_N2
\inst29|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector0~0_combout\ = (\inst8|ledOut~q\) # (\inst29|PS.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ledOut~q\,
	datac => \inst29|PS.E1~q\,
	combout => \inst29|Selector0~0_combout\);

-- Location: FF_X79_Y42_N27
\inst29|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|PS.E0~q\);

-- Location: LCCOMB_X79_Y42_N26
\inst29|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector1~0_combout\ = (\inst29|PS.E1~q\ & (((!\inst29|PS.E0~q\ & \inst8|ledOut~q\)) # (!\inst28|s_led~q\))) # (!\inst29|PS.E1~q\ & (((!\inst29|PS.E0~q\ & \inst8|ledOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|PS.E1~q\,
	datab => \inst28|s_led~q\,
	datac => \inst29|PS.E0~q\,
	datad => \inst8|ledOut~q\,
	combout => \inst29|Selector1~0_combout\);

-- Location: FF_X79_Y42_N21
\inst29|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|PS.E1~q\);

-- Location: LCCOMB_X79_Y42_N8
\inst29|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector2~0_combout\ = (\inst29|PS.E1~q\ & ((\inst28|s_led~q\) # ((\inst8|ledOut~q\ & \inst29|PS.E2~q\)))) # (!\inst29|PS.E1~q\ & (((\inst8|ledOut~q\ & \inst29|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|PS.E1~q\,
	datab => \inst28|s_led~q\,
	datac => \inst8|ledOut~q\,
	datad => \inst29|PS.E2~q\,
	combout => \inst29|Selector2~0_combout\);

-- Location: FF_X79_Y42_N1
\inst29|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst29|Selector2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|PS.E2~q\);

-- Location: LCCOMB_X79_Y42_N20
\inst29|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~0_combout\ = (\inst8|ledOut~q\ & (((!\inst28|s_led~q\) # (!\inst29|PS.E1~q\)))) # (!\inst8|ledOut~q\ & (!\inst29|PS.E2~q\ & ((!\inst28|s_led~q\) # (!\inst29|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ledOut~q\,
	datab => \inst29|PS.E2~q\,
	datac => \inst29|PS.E1~q\,
	datad => \inst28|s_led~q\,
	combout => \inst29|Selector4~0_combout\);

-- Location: LCCOMB_X79_Y42_N22
\inst29|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|led~combout\ = (\inst29|Selector4~0_combout\ & ((\inst29|PS.E1~q\))) # (!\inst29|Selector4~0_combout\ & (\inst29|led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|led~combout\,
	datac => \inst29|PS.E1~q\,
	datad => \inst29|Selector4~0_combout\,
	combout => \inst29|led~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


