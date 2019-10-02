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

-- DATE "06/02/2019 22:14:08"

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
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
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
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
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
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst6|PS~8_combout\ : std_logic;
SIGNAL \inst6|PS~9_combout\ : std_logic;
SIGNAL \inst6|PS.TR~q\ : std_logic;
SIGNAL \inst6|PS~10_combout\ : std_logic;
SIGNAL \inst6|PS~22_combout\ : std_logic;
SIGNAL \inst6|PS~23_combout\ : std_logic;
SIGNAL \inst6|PS.CL~q\ : std_logic;
SIGNAL \inst6|PS~20_combout\ : std_logic;
SIGNAL \inst6|PS~21_combout\ : std_logic;
SIGNAL \inst6|PS.CQ~q\ : std_logic;
SIGNAL \inst6|PS~15_combout\ : std_logic;
SIGNAL \inst6|PS~18_combout\ : std_logic;
SIGNAL \inst6|PS~19_combout\ : std_logic;
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
SIGNAL \inst15|Add0~0_combout\ : std_logic;
SIGNAL \inst15|cont~6_combout\ : std_logic;
SIGNAL \inst28|cnt[0]~32_combout\ : std_logic;
SIGNAL \inst28|Add1~0_combout\ : std_logic;
SIGNAL \inst28|Add2~0_combout\ : std_logic;
SIGNAL \inst28|var_seg[0]~7_combout\ : std_logic;
SIGNAL \inst28|Add0~0_combout\ : std_logic;
SIGNAL \inst28|cont~4_combout\ : std_logic;
SIGNAL \inst28|Add0~1\ : std_logic;
SIGNAL \inst28|Add0~2_combout\ : std_logic;
SIGNAL \inst28|Add0~3\ : std_logic;
SIGNAL \inst28|Add0~4_combout\ : std_logic;
SIGNAL \inst28|Add0~5\ : std_logic;
SIGNAL \inst28|Add0~6_combout\ : std_logic;
SIGNAL \inst28|Add0~7\ : std_logic;
SIGNAL \inst28|Add0~8_combout\ : std_logic;
SIGNAL \inst28|Add0~9\ : std_logic;
SIGNAL \inst28|Add0~10_combout\ : std_logic;
SIGNAL \inst28|cont~2_combout\ : std_logic;
SIGNAL \inst28|Add0~11\ : std_logic;
SIGNAL \inst28|Add0~12_combout\ : std_logic;
SIGNAL \inst28|Equal0~3_combout\ : std_logic;
SIGNAL \inst28|Add0~13\ : std_logic;
SIGNAL \inst28|Add0~14_combout\ : std_logic;
SIGNAL \inst28|Add0~15\ : std_logic;
SIGNAL \inst28|Add0~16_combout\ : std_logic;
SIGNAL \inst28|cont~1_combout\ : std_logic;
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
SIGNAL \inst28|cont~0_combout\ : std_logic;
SIGNAL \inst28|Add0~27\ : std_logic;
SIGNAL \inst28|Add0~28_combout\ : std_logic;
SIGNAL \inst28|Add0~29\ : std_logic;
SIGNAL \inst28|Add0~30_combout\ : std_logic;
SIGNAL \inst28|cont~3_combout\ : std_logic;
SIGNAL \inst28|Equal0~4_combout\ : std_logic;
SIGNAL \inst28|Equal0~0_combout\ : std_logic;
SIGNAL \inst28|Equal0~1_combout\ : std_logic;
SIGNAL \inst28|Equal0~2_combout\ : std_logic;
SIGNAL \inst28|Add0~31\ : std_logic;
SIGNAL \inst28|Add0~32_combout\ : std_logic;
SIGNAL \inst28|cont~5_combout\ : std_logic;
SIGNAL \inst28|Add0~33\ : std_logic;
SIGNAL \inst28|Add0~34_combout\ : std_logic;
SIGNAL \inst28|cont~6_combout\ : std_logic;
SIGNAL \inst28|Add0~35\ : std_logic;
SIGNAL \inst28|Add0~36_combout\ : std_logic;
SIGNAL \inst28|cont~7_combout\ : std_logic;
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
SIGNAL \inst28|Equal0~6_combout\ : std_logic;
SIGNAL \inst28|Equal0~5_combout\ : std_logic;
SIGNAL \inst28|Add0~47\ : std_logic;
SIGNAL \inst28|Add0~48_combout\ : std_logic;
SIGNAL \inst28|Add0~49\ : std_logic;
SIGNAL \inst28|Add0~50_combout\ : std_logic;
SIGNAL \inst28|Add0~51\ : std_logic;
SIGNAL \inst28|Add0~52_combout\ : std_logic;
SIGNAL \inst28|Add0~53\ : std_logic;
SIGNAL \inst28|Add0~54_combout\ : std_logic;
SIGNAL \inst28|Equal0~7_combout\ : std_logic;
SIGNAL \inst28|Add0~55\ : std_logic;
SIGNAL \inst28|Add0~56_combout\ : std_logic;
SIGNAL \inst28|Add0~57\ : std_logic;
SIGNAL \inst28|Add0~58_combout\ : std_logic;
SIGNAL \inst28|Add0~59\ : std_logic;
SIGNAL \inst28|Add0~60_combout\ : std_logic;
SIGNAL \inst28|Add0~61\ : std_logic;
SIGNAL \inst28|Add0~62_combout\ : std_logic;
SIGNAL \inst28|Equal0~8_combout\ : std_logic;
SIGNAL \inst28|Equal0~9_combout\ : std_logic;
SIGNAL \inst28|Equal0~10_combout\ : std_logic;
SIGNAL \inst28|var_seg[6]~0_combout\ : std_logic;
SIGNAL \inst28|Add2~1\ : std_logic;
SIGNAL \inst28|Add2~2_combout\ : std_logic;
SIGNAL \inst28|var_seg[1]~6_combout\ : std_logic;
SIGNAL \inst28|Add2~3\ : std_logic;
SIGNAL \inst28|Add2~4_combout\ : std_logic;
SIGNAL \inst28|var_seg[2]~2_combout\ : std_logic;
SIGNAL \inst28|Add2~5\ : std_logic;
SIGNAL \inst28|Add2~6_combout\ : std_logic;
SIGNAL \inst28|var_seg[3]~5_combout\ : std_logic;
SIGNAL \inst28|Add2~7\ : std_logic;
SIGNAL \inst28|Add2~8_combout\ : std_logic;
SIGNAL \inst28|var_seg[4]~4_combout\ : std_logic;
SIGNAL \inst28|Add2~9\ : std_logic;
SIGNAL \inst28|Add2~10_combout\ : std_logic;
SIGNAL \inst28|var_seg[5]~3_combout\ : std_logic;
SIGNAL \inst28|Add2~11\ : std_logic;
SIGNAL \inst28|Add2~12_combout\ : std_logic;
SIGNAL \inst28|var_seg[6]~1_combout\ : std_logic;
SIGNAL \inst28|Equal3~0_combout\ : std_logic;
SIGNAL \inst28|Equal3~1_combout\ : std_logic;
SIGNAL \inst28|Add1~19_combout\ : std_logic;
SIGNAL \inst28|var_milseg[6]~0_combout\ : std_logic;
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
SIGNAL \inst28|s_led~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
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
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~29_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~5_combout\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~26_combout\ : std_logic;
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
SIGNAL \inst13|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst12|Add0~17\ : std_logic;
SIGNAL \inst12|Add0~18_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst12|Add0~19\ : std_logic;
SIGNAL \inst12|Add0~20_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst12|Add0~21\ : std_logic;
SIGNAL \inst12|Add0~22_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst12|Add0~23\ : std_logic;
SIGNAL \inst12|Add0~24_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst12|Add0~25\ : std_logic;
SIGNAL \inst12|Add0~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst12|Add0~27\ : std_logic;
SIGNAL \inst12|Add0~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst12|Add0~29\ : std_logic;
SIGNAL \inst12|Add0~30_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst12|Add0~31\ : std_logic;
SIGNAL \inst12|Add0~32_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst12|Add0~33\ : std_logic;
SIGNAL \inst12|Add0~34_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst12|Add0~35\ : std_logic;
SIGNAL \inst12|Add0~36_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst12|Add0~37\ : std_logic;
SIGNAL \inst12|Add0~38_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[1]~29_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[1]~5_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst10|s_dirtyIn~q\ : std_logic;
SIGNAL \inst10|s_previousIn~q\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst10|Add0~23\ : std_logic;
SIGNAL \inst10|Add0~24_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst10|Add0~25\ : std_logic;
SIGNAL \inst10|Add0~26_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst10|Add0~27\ : std_logic;
SIGNAL \inst10|Add0~28_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst10|Add0~29\ : std_logic;
SIGNAL \inst10|Add0~30_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst10|Add0~31\ : std_logic;
SIGNAL \inst10|Add0~32_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst10|Add0~33\ : std_logic;
SIGNAL \inst10|Add0~34_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst10|Add0~35\ : std_logic;
SIGNAL \inst10|Add0~36_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst10|Add0~37\ : std_logic;
SIGNAL \inst10|Add0~38_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst10|Add0~39\ : std_logic;
SIGNAL \inst10|Add0~40_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst10|Add0~41\ : std_logic;
SIGNAL \inst10|Add0~42_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst10|LessThan0~3_combout\ : std_logic;
SIGNAL \inst10|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|LessThan0~1_combout\ : std_logic;
SIGNAL \inst10|LessThan0~2_combout\ : std_logic;
SIGNAL \inst10|LessThan0~4_combout\ : std_logic;
SIGNAL \inst10|LessThan0~5_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst10|Add0~43\ : std_logic;
SIGNAL \inst10|Add0~44_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \inst10|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst10|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst11|s_dirtyIn~q\ : std_logic;
SIGNAL \inst11|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst11|s_previousIn~q\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[20]~4_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
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
SIGNAL \inst11|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~13_combout\ : std_logic;
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
SIGNAL \inst11|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[20]~29_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst11|Add0~43\ : std_logic;
SIGNAL \inst11|Add0~44_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt[20]~5_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst11|s_pulsedOut~q\ : std_logic;
SIGNAL \inst19|NS~1_combout\ : std_logic;
SIGNAL \inst22|Selector0~2_combout\ : std_logic;
SIGNAL \inst22|PS~18_combout\ : std_logic;
SIGNAL \inst22|PS.E0~q\ : std_logic;
SIGNAL \inst22|Selector1~0_combout\ : std_logic;
SIGNAL \inst22|PS.E1~q\ : std_logic;
SIGNAL \inst22|Selector2~0_combout\ : std_logic;
SIGNAL \inst22|Selector2~1_combout\ : std_logic;
SIGNAL \inst22|PS.E2~q\ : std_logic;
SIGNAL \inst22|Selector3~0_combout\ : std_logic;
SIGNAL \inst22|Selector3~1_combout\ : std_logic;
SIGNAL \inst22|PS.E3~q\ : std_logic;
SIGNAL \inst22|Selector4~0_combout\ : std_logic;
SIGNAL \inst22|Selector4~1_combout\ : std_logic;
SIGNAL \inst22|Selector4~2_combout\ : std_logic;
SIGNAL \inst22|PS.E4~q\ : std_logic;
SIGNAL \inst22|Selector5~1_combout\ : std_logic;
SIGNAL \inst22|Selector5~0_combout\ : std_logic;
SIGNAL \inst22|Selector5~2_combout\ : std_logic;
SIGNAL \inst22|PS.E5~q\ : std_logic;
SIGNAL \inst22|Selector0~0_combout\ : std_logic;
SIGNAL \inst22|Selector0~1_combout\ : std_logic;
SIGNAL \inst23|Selector0~2_combout\ : std_logic;
SIGNAL \inst23|PS~18_combout\ : std_logic;
SIGNAL \inst23|PS.E0~q\ : std_logic;
SIGNAL \inst23|Selector1~0_combout\ : std_logic;
SIGNAL \inst23|PS.E1~q\ : std_logic;
SIGNAL \inst23|Selector2~0_combout\ : std_logic;
SIGNAL \inst23|Selector2~1_combout\ : std_logic;
SIGNAL \inst23|PS.E2~q\ : std_logic;
SIGNAL \inst23|Selector3~0_combout\ : std_logic;
SIGNAL \inst23|Selector3~1_combout\ : std_logic;
SIGNAL \inst23|PS.E3~q\ : std_logic;
SIGNAL \inst23|Selector4~0_combout\ : std_logic;
SIGNAL \inst23|Selector4~1_combout\ : std_logic;
SIGNAL \inst23|Selector4~2_combout\ : std_logic;
SIGNAL \inst23|PS.E4~q\ : std_logic;
SIGNAL \inst23|Selector5~1_combout\ : std_logic;
SIGNAL \inst23|Selector5~0_combout\ : std_logic;
SIGNAL \inst23|Selector5~2_combout\ : std_logic;
SIGNAL \inst23|PS.E5~q\ : std_logic;
SIGNAL \inst23|Selector0~0_combout\ : std_logic;
SIGNAL \inst23|Selector0~1_combout\ : std_logic;
SIGNAL \inst21|Selector0~2_combout\ : std_logic;
SIGNAL \inst21|PS~21_combout\ : std_logic;
SIGNAL \inst21|PS.E0~q\ : std_logic;
SIGNAL \inst21|Selector1~0_combout\ : std_logic;
SIGNAL \inst21|PS.E1~q\ : std_logic;
SIGNAL \inst21|Selector2~0_combout\ : std_logic;
SIGNAL \inst21|Selector2~1_combout\ : std_logic;
SIGNAL \inst21|PS.E2~q\ : std_logic;
SIGNAL \inst21|Selector3~0_combout\ : std_logic;
SIGNAL \inst21|Selector3~1_combout\ : std_logic;
SIGNAL \inst21|PS.E3~q\ : std_logic;
SIGNAL \inst21|Selector4~1_combout\ : std_logic;
SIGNAL \inst21|Selector4~0_combout\ : std_logic;
SIGNAL \inst21|Selector4~2_combout\ : std_logic;
SIGNAL \inst21|PS.E4~q\ : std_logic;
SIGNAL \inst21|Selector5~1_combout\ : std_logic;
SIGNAL \inst21|Selector5~0_combout\ : std_logic;
SIGNAL \inst21|Selector5~2_combout\ : std_logic;
SIGNAL \inst21|PS.E5~q\ : std_logic;
SIGNAL \inst21|Selector6~1_combout\ : std_logic;
SIGNAL \inst21|Selector6~0_combout\ : std_logic;
SIGNAL \inst21|Selector6~2_combout\ : std_logic;
SIGNAL \inst21|PS.E6~q\ : std_logic;
SIGNAL \inst21|Selector7~1_combout\ : std_logic;
SIGNAL \inst21|Selector7~0_combout\ : std_logic;
SIGNAL \inst21|Selector7~2_combout\ : std_logic;
SIGNAL \inst21|PS.E7~q\ : std_logic;
SIGNAL \inst21|Selector0~0_combout\ : std_logic;
SIGNAL \inst21|Selector8~0_combout\ : std_logic;
SIGNAL \inst21|Selector8~1_combout\ : std_logic;
SIGNAL \inst21|Selector8~2_combout\ : std_logic;
SIGNAL \inst21|PS.E8~q\ : std_logic;
SIGNAL \inst21|WideOr0~0_combout\ : std_logic;
SIGNAL \inst21|Selector0~1_combout\ : std_logic;
SIGNAL \inst19|Selector2~0_combout\ : std_logic;
SIGNAL \inst19|Selector2~1_combout\ : std_logic;
SIGNAL \inst19|PS.E2~q\ : std_logic;
SIGNAL \inst19|Selector4~1_combout\ : std_logic;
SIGNAL \inst19|Selector4~0_combout\ : std_logic;
SIGNAL \inst19|Selector4~2_combout\ : std_logic;
SIGNAL \inst19|PS.E4~q\ : std_logic;
SIGNAL \inst19|Selector5~1_combout\ : std_logic;
SIGNAL \inst19|Selector5~0_combout\ : std_logic;
SIGNAL \inst19|Selector5~2_combout\ : std_logic;
SIGNAL \inst19|PS.E5~q\ : std_logic;
SIGNAL \inst19|Selector6~1_combout\ : std_logic;
SIGNAL \inst19|Selector6~0_combout\ : std_logic;
SIGNAL \inst19|Selector6~2_combout\ : std_logic;
SIGNAL \inst19|PS.E6~q\ : std_logic;
SIGNAL \inst19|Selector8~1_combout\ : std_logic;
SIGNAL \inst19|Selector8~0_combout\ : std_logic;
SIGNAL \inst19|Selector8~2_combout\ : std_logic;
SIGNAL \inst19|PS.E8~q\ : std_logic;
SIGNAL \inst19|Selector9~1_combout\ : std_logic;
SIGNAL \inst19|Selector9~0_combout\ : std_logic;
SIGNAL \inst19|Selector9~2_combout\ : std_logic;
SIGNAL \inst19|PS.E9~q\ : std_logic;
SIGNAL \inst19|NS~3_combout\ : std_logic;
SIGNAL \inst19|Selector13~0_combout\ : std_logic;
SIGNAL \inst19|NS~0_combout\ : std_logic;
SIGNAL \inst19|Selector13~1_combout\ : std_logic;
SIGNAL \inst19|PS.E13~q\ : std_logic;
SIGNAL \inst19|Selector11~0_combout\ : std_logic;
SIGNAL \inst19|NS~2_combout\ : std_logic;
SIGNAL \inst19|Selector11~1_combout\ : std_logic;
SIGNAL \inst19|Selector11~2_combout\ : std_logic;
SIGNAL \inst19|PS.E11~q\ : std_logic;
SIGNAL \inst19|Selector17~0_combout\ : std_logic;
SIGNAL \inst19|PS.E17~q\ : std_logic;
SIGNAL \inst19|Selector19~0_combout\ : std_logic;
SIGNAL \inst19|PS.E19~q\ : std_logic;
SIGNAL \inst19|Selector15~0_combout\ : std_logic;
SIGNAL \inst19|PS.E15~q\ : std_logic;
SIGNAL \inst19|WideOr7~0_combout\ : std_logic;
SIGNAL \inst19|Selector16~0_combout\ : std_logic;
SIGNAL \inst19|PS.E16~q\ : std_logic;
SIGNAL \inst19|Selector12~0_combout\ : std_logic;
SIGNAL \inst19|Selector12~1_combout\ : std_logic;
SIGNAL \inst19|PS.E12~q\ : std_logic;
SIGNAL \inst19|Selector14~0_combout\ : std_logic;
SIGNAL \inst19|PS.E14~q\ : std_logic;
SIGNAL \inst19|Selector10~1_combout\ : std_logic;
SIGNAL \inst19|Selector10~0_combout\ : std_logic;
SIGNAL \inst19|Selector10~2_combout\ : std_logic;
SIGNAL \inst19|PS.E10~q\ : std_logic;
SIGNAL \inst19|WideOr2~1_combout\ : std_logic;
SIGNAL \inst19|Selector18~0_combout\ : std_logic;
SIGNAL \inst19|PS.E18~q\ : std_logic;
SIGNAL \inst19|WideOr5~0_combout\ : std_logic;
SIGNAL \inst19|Selector0~0_combout\ : std_logic;
SIGNAL \inst19|PS~22_combout\ : std_logic;
SIGNAL \inst19|PS.E0~q\ : std_logic;
SIGNAL \inst19|Selector1~0_combout\ : std_logic;
SIGNAL \inst19|PS.E1~q\ : std_logic;
SIGNAL \inst19|Selector3~0_combout\ : std_logic;
SIGNAL \inst19|Selector3~1_combout\ : std_logic;
SIGNAL \inst19|PS.E3~q\ : std_logic;
SIGNAL \inst19|Selector7~0_combout\ : std_logic;
SIGNAL \inst19|Selector7~1_combout\ : std_logic;
SIGNAL \inst19|Selector7~2_combout\ : std_logic;
SIGNAL \inst19|PS.E7~q\ : std_logic;
SIGNAL \inst19|WideOr27~1_combout\ : std_logic;
SIGNAL \inst19|WideOr27~0_combout\ : std_logic;
SIGNAL \inst19|WideOr27~2_combout\ : std_logic;
SIGNAL \inst8|process_0~0_combout\ : std_logic;
SIGNAL \inst8|ledOut~q\ : std_logic;
SIGNAL \inst28|s_en~q\ : std_logic;
SIGNAL \inst28|cnt[17]~38_combout\ : std_logic;
SIGNAL \inst28|cnt[17]~39_combout\ : std_logic;
SIGNAL \inst28|cnt[0]~33\ : std_logic;
SIGNAL \inst28|cnt[1]~34_combout\ : std_logic;
SIGNAL \inst28|cnt[1]~35\ : std_logic;
SIGNAL \inst28|cnt[2]~36_combout\ : std_logic;
SIGNAL \inst28|cnt[2]~37\ : std_logic;
SIGNAL \inst28|cnt[3]~40_combout\ : std_logic;
SIGNAL \inst28|cnt[3]~41\ : std_logic;
SIGNAL \inst28|cnt[4]~42_combout\ : std_logic;
SIGNAL \inst28|cnt[4]~43\ : std_logic;
SIGNAL \inst28|cnt[5]~44_combout\ : std_logic;
SIGNAL \inst28|cnt[5]~45\ : std_logic;
SIGNAL \inst28|cnt[6]~46_combout\ : std_logic;
SIGNAL \inst28|cnt[6]~47\ : std_logic;
SIGNAL \inst28|cnt[7]~48_combout\ : std_logic;
SIGNAL \inst28|cnt[7]~49\ : std_logic;
SIGNAL \inst28|cnt[8]~50_combout\ : std_logic;
SIGNAL \inst28|cnt[8]~51\ : std_logic;
SIGNAL \inst28|cnt[9]~52_combout\ : std_logic;
SIGNAL \inst28|cnt[9]~53\ : std_logic;
SIGNAL \inst28|cnt[10]~54_combout\ : std_logic;
SIGNAL \inst28|cnt[10]~55\ : std_logic;
SIGNAL \inst28|cnt[11]~56_combout\ : std_logic;
SIGNAL \inst28|cnt[11]~57\ : std_logic;
SIGNAL \inst28|cnt[12]~58_combout\ : std_logic;
SIGNAL \inst28|cnt[12]~59\ : std_logic;
SIGNAL \inst28|cnt[13]~60_combout\ : std_logic;
SIGNAL \inst28|cnt[13]~61\ : std_logic;
SIGNAL \inst28|cnt[14]~62_combout\ : std_logic;
SIGNAL \inst28|cnt[14]~63\ : std_logic;
SIGNAL \inst28|cnt[15]~64_combout\ : std_logic;
SIGNAL \inst28|cnt[15]~65\ : std_logic;
SIGNAL \inst28|cnt[16]~66_combout\ : std_logic;
SIGNAL \inst28|cnt[16]~67\ : std_logic;
SIGNAL \inst28|cnt[17]~68_combout\ : std_logic;
SIGNAL \inst28|cnt[17]~69\ : std_logic;
SIGNAL \inst28|cnt[18]~70_combout\ : std_logic;
SIGNAL \inst28|cnt[18]~71\ : std_logic;
SIGNAL \inst28|cnt[19]~72_combout\ : std_logic;
SIGNAL \inst28|cnt[19]~73\ : std_logic;
SIGNAL \inst28|cnt[20]~74_combout\ : std_logic;
SIGNAL \inst28|cnt[20]~75\ : std_logic;
SIGNAL \inst28|cnt[21]~76_combout\ : std_logic;
SIGNAL \inst28|cnt[21]~77\ : std_logic;
SIGNAL \inst28|cnt[22]~78_combout\ : std_logic;
SIGNAL \inst28|cnt[22]~79\ : std_logic;
SIGNAL \inst28|cnt[23]~80_combout\ : std_logic;
SIGNAL \inst28|cnt[23]~81\ : std_logic;
SIGNAL \inst28|cnt[24]~82_combout\ : std_logic;
SIGNAL \inst28|cnt[24]~83\ : std_logic;
SIGNAL \inst28|cnt[25]~84_combout\ : std_logic;
SIGNAL \inst28|cnt[25]~85\ : std_logic;
SIGNAL \inst28|cnt[26]~86_combout\ : std_logic;
SIGNAL \inst28|cnt[26]~87\ : std_logic;
SIGNAL \inst28|cnt[27]~88_combout\ : std_logic;
SIGNAL \inst28|cnt[27]~89\ : std_logic;
SIGNAL \inst28|cnt[28]~90_combout\ : std_logic;
SIGNAL \inst28|cnt[28]~91\ : std_logic;
SIGNAL \inst28|cnt[29]~92_combout\ : std_logic;
SIGNAL \inst28|cnt[29]~93\ : std_logic;
SIGNAL \inst28|cnt[30]~94_combout\ : std_logic;
SIGNAL \inst28|cnt[30]~95\ : std_logic;
SIGNAL \inst28|cnt[31]~96_combout\ : std_logic;
SIGNAL \inst28|Equal2~9_combout\ : std_logic;
SIGNAL \inst28|Equal2~8_combout\ : std_logic;
SIGNAL \inst28|Equal2~1_combout\ : std_logic;
SIGNAL \inst28|Equal2~0_combout\ : std_logic;
SIGNAL \inst28|Equal2~2_combout\ : std_logic;
SIGNAL \inst28|Equal2~3_combout\ : std_logic;
SIGNAL \inst28|Equal2~4_combout\ : std_logic;
SIGNAL \inst28|Equal2~6_combout\ : std_logic;
SIGNAL \inst28|Equal2~5_combout\ : std_logic;
SIGNAL \inst28|Equal2~7_combout\ : std_logic;
SIGNAL \inst28|Equal2~10_combout\ : std_logic;
SIGNAL \inst28|s_led~0_combout\ : std_logic;
SIGNAL \inst28|s_led~q\ : std_logic;
SIGNAL \inst29|Selector0~0_combout\ : std_logic;
SIGNAL \inst29|PS.E0~q\ : std_logic;
SIGNAL \inst29|Selector1~0_combout\ : std_logic;
SIGNAL \inst29|PS.E1~feeder_combout\ : std_logic;
SIGNAL \inst29|PS.E1~q\ : std_logic;
SIGNAL \inst29|Selector2~0_combout\ : std_logic;
SIGNAL \inst29|PS.E2~feeder_combout\ : std_logic;
SIGNAL \inst29|PS.E2~q\ : std_logic;
SIGNAL \inst29|Selector4~0_combout\ : std_logic;
SIGNAL \inst29|led~combout\ : std_logic;
SIGNAL \inst15|Add0~1\ : std_logic;
SIGNAL \inst15|Add0~2_combout\ : std_logic;
SIGNAL \inst15|Add0~3\ : std_logic;
SIGNAL \inst15|Add0~4_combout\ : std_logic;
SIGNAL \inst15|Add0~5\ : std_logic;
SIGNAL \inst15|Add0~6_combout\ : std_logic;
SIGNAL \inst15|Add0~7\ : std_logic;
SIGNAL \inst15|Add0~8_combout\ : std_logic;
SIGNAL \inst15|cont~5_combout\ : std_logic;
SIGNAL \inst15|Add0~9\ : std_logic;
SIGNAL \inst15|Add0~10_combout\ : std_logic;
SIGNAL \inst15|Add0~11\ : std_logic;
SIGNAL \inst15|Add0~12_combout\ : std_logic;
SIGNAL \inst15|cont~4_combout\ : std_logic;
SIGNAL \inst15|Add0~13\ : std_logic;
SIGNAL \inst15|Add0~14_combout\ : std_logic;
SIGNAL \inst15|Add0~15\ : std_logic;
SIGNAL \inst15|Add0~16_combout\ : std_logic;
SIGNAL \inst15|cont~3_combout\ : std_logic;
SIGNAL \inst15|Add0~17\ : std_logic;
SIGNAL \inst15|Add0~18_combout\ : std_logic;
SIGNAL \inst15|cont~2_combout\ : std_logic;
SIGNAL \inst15|Add0~19\ : std_logic;
SIGNAL \inst15|Add0~20_combout\ : std_logic;
SIGNAL \inst15|Add0~21\ : std_logic;
SIGNAL \inst15|Add0~22_combout\ : std_logic;
SIGNAL \inst15|Add0~23\ : std_logic;
SIGNAL \inst15|Add0~24_combout\ : std_logic;
SIGNAL \inst15|Add0~25\ : std_logic;
SIGNAL \inst15|Add0~26_combout\ : std_logic;
SIGNAL \inst15|Add0~27\ : std_logic;
SIGNAL \inst15|Add0~28_combout\ : std_logic;
SIGNAL \inst15|cont~1_combout\ : std_logic;
SIGNAL \inst15|Equal0~5_combout\ : std_logic;
SIGNAL \inst15|Equal0~6_combout\ : std_logic;
SIGNAL \inst15|Equal0~7_combout\ : std_logic;
SIGNAL \inst15|Equal0~8_combout\ : std_logic;
SIGNAL \inst15|Equal0~9_combout\ : std_logic;
SIGNAL \inst15|Add0~29\ : std_logic;
SIGNAL \inst15|Add0~30_combout\ : std_logic;
SIGNAL \inst15|cont~0_combout\ : std_logic;
SIGNAL \inst15|Add0~31\ : std_logic;
SIGNAL \inst15|Add0~32_combout\ : std_logic;
SIGNAL \inst15|Add0~33\ : std_logic;
SIGNAL \inst15|Add0~34_combout\ : std_logic;
SIGNAL \inst15|Add0~35\ : std_logic;
SIGNAL \inst15|Add0~36_combout\ : std_logic;
SIGNAL \inst15|Add0~37\ : std_logic;
SIGNAL \inst15|Add0~38_combout\ : std_logic;
SIGNAL \inst15|Add0~39\ : std_logic;
SIGNAL \inst15|Add0~40_combout\ : std_logic;
SIGNAL \inst15|Add0~41\ : std_logic;
SIGNAL \inst15|Add0~42_combout\ : std_logic;
SIGNAL \inst15|Add0~43\ : std_logic;
SIGNAL \inst15|Add0~44_combout\ : std_logic;
SIGNAL \inst15|Add0~45\ : std_logic;
SIGNAL \inst15|Add0~46_combout\ : std_logic;
SIGNAL \inst15|Add0~47\ : std_logic;
SIGNAL \inst15|Add0~48_combout\ : std_logic;
SIGNAL \inst15|Add0~49\ : std_logic;
SIGNAL \inst15|Add0~50_combout\ : std_logic;
SIGNAL \inst15|Add0~51\ : std_logic;
SIGNAL \inst15|Add0~52_combout\ : std_logic;
SIGNAL \inst15|Add0~53\ : std_logic;
SIGNAL \inst15|Add0~54_combout\ : std_logic;
SIGNAL \inst15|Add0~55\ : std_logic;
SIGNAL \inst15|Add0~56_combout\ : std_logic;
SIGNAL \inst15|Add0~57\ : std_logic;
SIGNAL \inst15|Add0~58_combout\ : std_logic;
SIGNAL \inst15|Add0~59\ : std_logic;
SIGNAL \inst15|Add0~60_combout\ : std_logic;
SIGNAL \inst15|Add0~61\ : std_logic;
SIGNAL \inst15|Add0~62_combout\ : std_logic;
SIGNAL \inst15|Equal0~0_combout\ : std_logic;
SIGNAL \inst15|Equal0~1_combout\ : std_logic;
SIGNAL \inst15|Equal0~2_combout\ : std_logic;
SIGNAL \inst15|Equal0~3_combout\ : std_logic;
SIGNAL \inst15|Equal0~4_combout\ : std_logic;
SIGNAL \inst15|var_seg[6]~7_combout\ : std_logic;
SIGNAL \inst15|var_seg[0]~8_combout\ : std_logic;
SIGNAL \inst15|var_seg[0]~9\ : std_logic;
SIGNAL \inst15|var_seg[1]~10_combout\ : std_logic;
SIGNAL \inst15|var_seg[1]~11\ : std_logic;
SIGNAL \inst15|var_seg[2]~12_combout\ : std_logic;
SIGNAL \inst15|var_seg[2]~13\ : std_logic;
SIGNAL \inst15|var_seg[3]~14_combout\ : std_logic;
SIGNAL \inst15|var_seg[3]~15\ : std_logic;
SIGNAL \inst15|var_seg[4]~16_combout\ : std_logic;
SIGNAL \inst15|var_seg[4]~17\ : std_logic;
SIGNAL \inst15|var_seg[5]~18_combout\ : std_logic;
SIGNAL \inst15|Equal3~0_combout\ : std_logic;
SIGNAL \inst15|var_seg[5]~19\ : std_logic;
SIGNAL \inst15|var_seg[6]~20_combout\ : std_logic;
SIGNAL \inst15|Equal3~1_combout\ : std_logic;
SIGNAL \inst15|Add1~0_combout\ : std_logic;
SIGNAL \inst15|Add1~19_combout\ : std_logic;
SIGNAL \inst15|var_milseg[3]~0_combout\ : std_logic;
SIGNAL \inst15|Add1~1\ : std_logic;
SIGNAL \inst15|Add1~2_combout\ : std_logic;
SIGNAL \inst15|Add1~18_combout\ : std_logic;
SIGNAL \inst15|Add1~3\ : std_logic;
SIGNAL \inst15|Add1~4_combout\ : std_logic;
SIGNAL \inst15|Add1~20_combout\ : std_logic;
SIGNAL \inst15|Add1~5\ : std_logic;
SIGNAL \inst15|Add1~6_combout\ : std_logic;
SIGNAL \inst15|Add1~17_combout\ : std_logic;
SIGNAL \inst15|Add1~7\ : std_logic;
SIGNAL \inst15|Add1~8_combout\ : std_logic;
SIGNAL \inst15|Add1~16_combout\ : std_logic;
SIGNAL \inst15|Add1~9\ : std_logic;
SIGNAL \inst15|Add1~10_combout\ : std_logic;
SIGNAL \inst15|Add1~15_combout\ : std_logic;
SIGNAL \inst15|Add1~11\ : std_logic;
SIGNAL \inst15|Add1~12_combout\ : std_logic;
SIGNAL \inst15|Add1~14_combout\ : std_logic;
SIGNAL \inst15|Equal1~0_combout\ : std_logic;
SIGNAL \inst15|Equal1~1_combout\ : std_logic;
SIGNAL \inst15|cnt[0]~0_combout\ : std_logic;
SIGNAL \inst15|Add3~0_combout\ : std_logic;
SIGNAL \inst15|Add3~1\ : std_logic;
SIGNAL \inst15|Add3~2_combout\ : std_logic;
SIGNAL \inst15|cnt~1_combout\ : std_logic;
SIGNAL \inst15|Add3~3\ : std_logic;
SIGNAL \inst15|Add3~4_combout\ : std_logic;
SIGNAL \inst15|Add3~5\ : std_logic;
SIGNAL \inst15|Add3~6_combout\ : std_logic;
SIGNAL \inst15|Add3~7\ : std_logic;
SIGNAL \inst15|Add3~8_combout\ : std_logic;
SIGNAL \inst15|Add3~9\ : std_logic;
SIGNAL \inst15|Add3~10_combout\ : std_logic;
SIGNAL \inst15|Add3~11\ : std_logic;
SIGNAL \inst15|Add3~12_combout\ : std_logic;
SIGNAL \inst15|Add3~13\ : std_logic;
SIGNAL \inst15|Add3~14_combout\ : std_logic;
SIGNAL \inst15|Add3~15\ : std_logic;
SIGNAL \inst15|Add3~16_combout\ : std_logic;
SIGNAL \inst15|Add3~17\ : std_logic;
SIGNAL \inst15|Add3~18_combout\ : std_logic;
SIGNAL \inst15|Add3~19\ : std_logic;
SIGNAL \inst15|Add3~20_combout\ : std_logic;
SIGNAL \inst15|Add3~21\ : std_logic;
SIGNAL \inst15|Add3~22_combout\ : std_logic;
SIGNAL \inst15|Equal2~6_combout\ : std_logic;
SIGNAL \inst15|Add3~23\ : std_logic;
SIGNAL \inst15|Add3~24_combout\ : std_logic;
SIGNAL \inst15|Add3~25\ : std_logic;
SIGNAL \inst15|Add3~26_combout\ : std_logic;
SIGNAL \inst15|Add3~27\ : std_logic;
SIGNAL \inst15|Add3~28_combout\ : std_logic;
SIGNAL \inst15|Add3~29\ : std_logic;
SIGNAL \inst15|Add3~30_combout\ : std_logic;
SIGNAL \inst15|Equal2~5_combout\ : std_logic;
SIGNAL \inst15|Equal2~8_combout\ : std_logic;
SIGNAL \inst15|Equal2~7_combout\ : std_logic;
SIGNAL \inst15|Equal2~9_combout\ : std_logic;
SIGNAL \inst15|Add3~31\ : std_logic;
SIGNAL \inst15|Add3~32_combout\ : std_logic;
SIGNAL \inst15|Add3~33\ : std_logic;
SIGNAL \inst15|Add3~34_combout\ : std_logic;
SIGNAL \inst15|Add3~35\ : std_logic;
SIGNAL \inst15|Add3~36_combout\ : std_logic;
SIGNAL \inst15|Add3~37\ : std_logic;
SIGNAL \inst15|Add3~38_combout\ : std_logic;
SIGNAL \inst15|Equal2~3_combout\ : std_logic;
SIGNAL \inst15|Add3~39\ : std_logic;
SIGNAL \inst15|Add3~40_combout\ : std_logic;
SIGNAL \inst15|Add3~41\ : std_logic;
SIGNAL \inst15|Add3~42_combout\ : std_logic;
SIGNAL \inst15|Add3~43\ : std_logic;
SIGNAL \inst15|Add3~44_combout\ : std_logic;
SIGNAL \inst15|Add3~45\ : std_logic;
SIGNAL \inst15|Add3~46_combout\ : std_logic;
SIGNAL \inst15|Add3~47\ : std_logic;
SIGNAL \inst15|Add3~48_combout\ : std_logic;
SIGNAL \inst15|Add3~49\ : std_logic;
SIGNAL \inst15|Add3~50_combout\ : std_logic;
SIGNAL \inst15|Add3~51\ : std_logic;
SIGNAL \inst15|Add3~52_combout\ : std_logic;
SIGNAL \inst15|Add3~53\ : std_logic;
SIGNAL \inst15|Add3~54_combout\ : std_logic;
SIGNAL \inst15|Equal2~1_combout\ : std_logic;
SIGNAL \inst15|Add3~55\ : std_logic;
SIGNAL \inst15|Add3~56_combout\ : std_logic;
SIGNAL \inst15|Add3~57\ : std_logic;
SIGNAL \inst15|Add3~58_combout\ : std_logic;
SIGNAL \inst15|Add3~59\ : std_logic;
SIGNAL \inst15|Add3~60_combout\ : std_logic;
SIGNAL \inst15|Add3~61\ : std_logic;
SIGNAL \inst15|Add3~62_combout\ : std_logic;
SIGNAL \inst15|Equal2~0_combout\ : std_logic;
SIGNAL \inst15|Equal2~2_combout\ : std_logic;
SIGNAL \inst15|Equal2~4_combout\ : std_logic;
SIGNAL \inst15|Equal2~10_combout\ : std_logic;
SIGNAL \inst15|s_led~0_combout\ : std_logic;
SIGNAL \inst15|s_led~q\ : std_logic;
SIGNAL \inst5|sel~1_combout\ : std_logic;
SIGNAL \inst5|sel~0_combout\ : std_logic;
SIGNAL \inst5|sel~2_combout\ : std_logic;
SIGNAL \inst14|mo[1]~3_combout\ : std_logic;
SIGNAL \inst14|mo[1]~1_combout\ : std_logic;
SIGNAL \inst23|Selector13~0_combout\ : std_logic;
SIGNAL \inst23|PS.E13~q\ : std_logic;
SIGNAL \inst23|Selector14~0_combout\ : std_logic;
SIGNAL \inst23|PS.E14~q\ : std_logic;
SIGNAL \inst23|Selector8~0_combout\ : std_logic;
SIGNAL \inst23|PS.E8~q\ : std_logic;
SIGNAL \inst23|Selector6~1_combout\ : std_logic;
SIGNAL \inst23|Selector6~0_combout\ : std_logic;
SIGNAL \inst23|Selector6~2_combout\ : std_logic;
SIGNAL \inst23|PS.E6~q\ : std_logic;
SIGNAL \inst23|WideOr3~0_combout\ : std_logic;
SIGNAL \inst23|Selector11~0_combout\ : std_logic;
SIGNAL \inst23|PS.E11~q\ : std_logic;
SIGNAL \inst23|WideOr3~combout\ : std_logic;
SIGNAL \inst21|Selector14~0_combout\ : std_logic;
SIGNAL \inst21|PS.E14~q\ : std_logic;
SIGNAL \inst21|Selector16~0_combout\ : std_logic;
SIGNAL \inst21|PS.E16~q\ : std_logic;
SIGNAL \inst21|WideOr3~0_combout\ : std_logic;
SIGNAL \inst21|Selector11~0_combout\ : std_logic;
SIGNAL \inst21|Selector11~1_combout\ : std_logic;
SIGNAL \inst21|PS.E11~q\ : std_logic;
SIGNAL \inst21|Selector9~0_combout\ : std_logic;
SIGNAL \inst21|Selector9~1_combout\ : std_logic;
SIGNAL \inst21|Selector9~2_combout\ : std_logic;
SIGNAL \inst21|PS.E9~q\ : std_logic;
SIGNAL \inst21|Selector17~0_combout\ : std_logic;
SIGNAL \inst21|PS.E17~q\ : std_logic;
SIGNAL \inst21|WideOr3~1_combout\ : std_logic;
SIGNAL \inst21|WideOr3~combout\ : std_logic;
SIGNAL \inst14|mo[1]~2_combout\ : std_logic;
SIGNAL \inst19|WideOr3~0_combout\ : std_logic;
SIGNAL \inst19|WideOr0~0_combout\ : std_logic;
SIGNAL \inst19|WideOr0~1_combout\ : std_logic;
SIGNAL \inst19|WideOr3~1_combout\ : std_logic;
SIGNAL \inst22|Selector13~0_combout\ : std_logic;
SIGNAL \inst22|PS.E13~q\ : std_logic;
SIGNAL \inst22|Selector11~0_combout\ : std_logic;
SIGNAL \inst22|PS.E11~q\ : std_logic;
SIGNAL \inst22|Selector6~1_combout\ : std_logic;
SIGNAL \inst22|Selector6~0_combout\ : std_logic;
SIGNAL \inst22|Selector6~2_combout\ : std_logic;
SIGNAL \inst22|PS.E6~q\ : std_logic;
SIGNAL \inst22|Selector8~0_combout\ : std_logic;
SIGNAL \inst22|PS.E8~q\ : std_logic;
SIGNAL \inst22|Selector14~0_combout\ : std_logic;
SIGNAL \inst22|PS.E14~q\ : std_logic;
SIGNAL \inst22|WideOr3~0_combout\ : std_logic;
SIGNAL \inst22|WideOr3~combout\ : std_logic;
SIGNAL \inst14|mo~13_combout\ : std_logic;
SIGNAL \inst14|mo~14_combout\ : std_logic;
SIGNAL \inst14|mo~15_combout\ : std_logic;
SIGNAL \inst16|mo~4_combout\ : std_logic;
SIGNAL \inst14|mo~0_combout\ : std_logic;
SIGNAL \inst16|mo~0_combout\ : std_logic;
SIGNAL \inst23|Selector15~0_combout\ : std_logic;
SIGNAL \inst23|PS.E15~q\ : std_logic;
SIGNAL \inst23|WideOr0~0_combout\ : std_logic;
SIGNAL \inst21|Selector18~0_combout\ : std_logic;
SIGNAL \inst21|PS.E18~q\ : std_logic;
SIGNAL \inst21|WideOr0~combout\ : std_logic;
SIGNAL \inst22|Selector15~0_combout\ : std_logic;
SIGNAL \inst22|PS.E15~q\ : std_logic;
SIGNAL \inst22|WideOr0~0_combout\ : std_logic;
SIGNAL \inst19|WideOr0~combout\ : std_logic;
SIGNAL \inst14|mo~4_combout\ : std_logic;
SIGNAL \inst14|mo~5_combout\ : std_logic;
SIGNAL \inst14|mo~6_combout\ : std_logic;
SIGNAL \inst16|mo~1_combout\ : std_logic;
SIGNAL \inst21|Selector15~0_combout\ : std_logic;
SIGNAL \inst21|PS.E15~q\ : std_logic;
SIGNAL \inst21|Selector13~0_combout\ : std_logic;
SIGNAL \inst21|PS.E13~q\ : std_logic;
SIGNAL \inst21|WideOr1~0_combout\ : std_logic;
SIGNAL \inst21|WideOr1~combout\ : std_logic;
SIGNAL \inst23|Selector10~0_combout\ : std_logic;
SIGNAL \inst23|PS.E10~q\ : std_logic;
SIGNAL \inst23|Selector12~0_combout\ : std_logic;
SIGNAL \inst23|PS.E12~q\ : std_logic;
SIGNAL \inst23|WideOr1~0_combout\ : std_logic;
SIGNAL \inst23|WideOr1~combout\ : std_logic;
SIGNAL \inst22|Selector10~0_combout\ : std_logic;
SIGNAL \inst22|PS.E10~q\ : std_logic;
SIGNAL \inst22|Selector12~0_combout\ : std_logic;
SIGNAL \inst22|PS.E12~q\ : std_logic;
SIGNAL \inst22|WideOr1~0_combout\ : std_logic;
SIGNAL \inst22|WideOr1~combout\ : std_logic;
SIGNAL \inst19|WideOr1~0_combout\ : std_logic;
SIGNAL \inst19|WideOr1~combout\ : std_logic;
SIGNAL \inst14|mo~7_combout\ : std_logic;
SIGNAL \inst14|mo~8_combout\ : std_logic;
SIGNAL \inst14|mo~9_combout\ : std_logic;
SIGNAL \inst16|mo~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \inst23|Selector7~0_combout\ : std_logic;
SIGNAL \inst23|PS.E7~q\ : std_logic;
SIGNAL \inst23|WideOr2~0_combout\ : std_logic;
SIGNAL \inst23|WideOr2~combout\ : std_logic;
SIGNAL \inst22|Selector7~0_combout\ : std_logic;
SIGNAL \inst22|PS.E7~q\ : std_logic;
SIGNAL \inst22|WideOr2~0_combout\ : std_logic;
SIGNAL \inst22|WideOr2~combout\ : std_logic;
SIGNAL \inst19|WideOr2~0_combout\ : std_logic;
SIGNAL \inst19|WideOr2~combout\ : std_logic;
SIGNAL \inst14|mo~10_combout\ : std_logic;
SIGNAL \inst21|Selector10~0_combout\ : std_logic;
SIGNAL \inst21|Selector10~1_combout\ : std_logic;
SIGNAL \inst21|Selector10~2_combout\ : std_logic;
SIGNAL \inst21|PS.E10~q\ : std_logic;
SIGNAL \inst21|WideOr2~0_combout\ : std_logic;
SIGNAL \inst21|WideOr2~combout\ : std_logic;
SIGNAL \inst14|mo~11_combout\ : std_logic;
SIGNAL \inst14|mo~12_combout\ : std_logic;
SIGNAL \inst16|mo~3_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ : std_logic;
SIGNAL \inst21|WideOr4~0_combout\ : std_logic;
SIGNAL \inst21|Selector12~0_combout\ : std_logic;
SIGNAL \inst21|Selector12~1_combout\ : std_logic;
SIGNAL \inst21|PS.E12~q\ : std_logic;
SIGNAL \inst21|WideOr4~1_combout\ : std_logic;
SIGNAL \inst21|WideOr4~combout\ : std_logic;
SIGNAL \inst23|Selector9~0_combout\ : std_logic;
SIGNAL \inst23|PS.E9~q\ : std_logic;
SIGNAL \inst23|WideOr4~0_combout\ : std_logic;
SIGNAL \inst23|WideOr4~combout\ : std_logic;
SIGNAL \inst22|Selector9~0_combout\ : std_logic;
SIGNAL \inst22|PS.E9~q\ : std_logic;
SIGNAL \inst22|WideOr4~0_combout\ : std_logic;
SIGNAL \inst22|WideOr4~combout\ : std_logic;
SIGNAL \inst19|WideOr4~0_combout\ : std_logic;
SIGNAL \inst19|WideOr4~1_combout\ : std_logic;
SIGNAL \inst14|mo~16_combout\ : std_logic;
SIGNAL \inst14|mo~17_combout\ : std_logic;
SIGNAL \inst14|mo~18_combout\ : std_logic;
SIGNAL \inst16|mo~5_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ : std_logic;
SIGNAL \inst1|decOut_n~1_combout\ : std_logic;
SIGNAL \inst14|mo~19_combout\ : std_logic;
SIGNAL \inst19|WideOr5~combout\ : std_logic;
SIGNAL \inst14|mo~20_combout\ : std_logic;
SIGNAL \inst14|mo~21_combout\ : std_logic;
SIGNAL \inst21|WideOr5~combout\ : std_logic;
SIGNAL \inst14|mo~22_combout\ : std_logic;
SIGNAL \inst16|mo~6_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~2_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~3_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~4_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~6_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \inst|decOut_n~7_combout\ : std_logic;
SIGNAL \inst|decOut_n~8_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \inst|decOut_n~13_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~11_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~12_combout\ : std_logic;
SIGNAL \inst11|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst28|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|var_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst15|var_milseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst14|mo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst28|var_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst16|mo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst15|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst28|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst15|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst28|var_milseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst28|ALT_INV_s_en~q\ : std_logic;
SIGNAL \inst|ALT_INV_decOut_n~13_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_PS.CL~q\ : std_logic;
SIGNAL \inst6|ALT_INV_PS.CQ~q\ : std_logic;
SIGNAL \inst6|ALT_INV_PS.CP~q\ : std_logic;
SIGNAL \inst6|ALT_INV_PS.CC~q\ : std_logic;

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
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst28|ALT_INV_s_en~q\ <= NOT \inst28|s_en~q\;
\inst|ALT_INV_decOut_n~13_combout\ <= NOT \inst|decOut_n~13_combout\;
\inst6|ALT_INV_PS.CL~q\ <= NOT \inst6|PS.CL~q\;
\inst6|ALT_INV_PS.CQ~q\ <= NOT \inst6|PS.CQ~q\;
\inst6|ALT_INV_PS.CP~q\ <= NOT \inst6|PS.CP~q\;
\inst6|ALT_INV_PS.CC~q\ <= NOT \inst6|PS.CC~q\;
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
	i => \inst1|decOut_n[6]~0_combout\,
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
	i => \inst1|decOut_n[5]~2_combout\,
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
	i => \inst1|decOut_n[4]~3_combout\,
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
	i => \inst1|decOut_n[3]~4_combout\,
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
	i => \inst1|decOut_n[2]~5_combout\,
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
	i => \inst1|decOut_n[1]~6_combout\,
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
	i => \inst1|decOut_n[3]~4_combout\,
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
	i => \inst|decOut_n[6]~6_combout\,
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
	i => \inst|decOut_n[5]~9_combout\,
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
	i => \inst|ALT_INV_decOut_n~13_combout\,
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
	i => \inst|decOut_n[3]~10_combout\,
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
	i => \inst|decOut_n[2]~11_combout\,
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
	i => \inst|decOut_n[1]~12_combout\,
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
	i => \inst|decOut_n[3]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|led~combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|s_led~q\,
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

-- Location: LCCOMB_X73_Y40_N4
\inst6|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~8_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\) # ((\SW[0]~input_o\) # (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst6|PS~8_combout\);

-- Location: LCCOMB_X73_Y40_N8
\inst6|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~9_combout\ = (!\SW[4]~input_o\ & \inst6|PS~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \inst6|PS~8_combout\,
	combout => \inst6|PS~9_combout\);

-- Location: FF_X73_Y40_N1
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

-- Location: LCCOMB_X73_Y40_N18
\inst6|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~10_combout\ = (!\SW[1]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst6|PS~10_combout\);

-- Location: LCCOMB_X73_Y40_N30
\inst6|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~22_combout\ = (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|PS~22_combout\);

-- Location: LCCOMB_X73_Y40_N20
\inst6|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~23_combout\ = (\inst6|PS~22_combout\ & (\SW[1]~input_o\ & ((\inst6|PS.CL~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS~22_combout\,
	datab => \inst6|PS.E0~q\,
	datac => \inst6|PS.CL~q\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~23_combout\);

-- Location: FF_X73_Y40_N21
\inst6|PS.CL\ : dffeas
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
	q => \inst6|PS.CL~q\);

-- Location: LCCOMB_X73_Y40_N26
\inst6|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~20_combout\ = (!\SW[0]~input_o\ & (\SW[2]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|PS~20_combout\);

-- Location: LCCOMB_X73_Y40_N14
\inst6|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~21_combout\ = (\inst6|PS~20_combout\ & (!\SW[1]~input_o\ & ((\inst6|PS.CQ~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS~20_combout\,
	datab => \inst6|PS.E0~q\,
	datac => \inst6|PS.CQ~q\,
	datad => \SW[1]~input_o\,
	combout => \inst6|PS~21_combout\);

-- Location: FF_X73_Y40_N15
\inst6|PS.CQ\ : dffeas
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
	q => \inst6|PS.CQ~q\);

-- Location: LCCOMB_X73_Y40_N16
\inst6|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~15_combout\ = (\inst6|PS.CL~q\ & (!\SW[1]~input_o\ & (!\inst6|PS.CQ~q\))) # (!\inst6|PS.CL~q\ & (((!\SW[1]~input_o\ & !\inst6|PS.CQ~q\)) # (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CL~q\,
	datab => \SW[1]~input_o\,
	datac => \inst6|PS.CQ~q\,
	datad => \SW[2]~input_o\,
	combout => \inst6|PS~15_combout\);

-- Location: LCCOMB_X73_Y40_N6
\inst6|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~18_combout\ = (!\SW[4]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst6|PS~18_combout\);

-- Location: LCCOMB_X72_Y40_N0
\inst6|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~19_combout\ = (\inst6|PS~18_combout\ & (!\SW[0]~input_o\ & ((\inst6|PS.CP~q\) # (!\inst6|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS~18_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst6|PS.CP~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~19_combout\);

-- Location: FF_X72_Y40_N1
\inst6|PS.CP\ : dffeas
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
	q => \inst6|PS.CP~q\);

-- Location: LCCOMB_X73_Y40_N12
\inst6|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~13_combout\ = (\SW[0]~input_o\ & (\inst6|PS.E0~q\ & (!\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (((\inst6|PS.E0~q\ & !\inst6|PS.CP~q\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst6|PS.E0~q\,
	datac => \SW[3]~input_o\,
	datad => \inst6|PS.CP~q\,
	combout => \inst6|PS~13_combout\);

-- Location: LCCOMB_X73_Y40_N24
\inst6|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~14_combout\ = (\inst6|PS~10_combout\ & (\inst6|PS~13_combout\ & ((!\inst6|PS.CC~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst6|PS~10_combout\,
	datac => \inst6|PS.CC~q\,
	datad => \inst6|PS~13_combout\,
	combout => \inst6|PS~14_combout\);

-- Location: LCCOMB_X73_Y40_N10
\inst6|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~16_combout\ = (!\SW[3]~input_o\ & (\inst6|PS.E0~q\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst6|PS.E0~q\,
	datac => \SW[0]~input_o\,
	combout => \inst6|PS~16_combout\);

-- Location: LCCOMB_X73_Y40_N28
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

-- Location: FF_X73_Y40_N29
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

-- Location: LCCOMB_X72_Y40_N26
\inst6|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~11_combout\ = (\SW[0]~input_o\ & ((\inst6|PS.CC~q\) # (!\inst6|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \inst6|PS.CC~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst6|PS~11_combout\);

-- Location: LCCOMB_X73_Y40_N2
\inst6|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PS~12_combout\ = (!\SW[3]~input_o\ & (\inst6|PS~10_combout\ & (!\SW[4]~input_o\ & \inst6|PS~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst6|PS~10_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst6|PS~11_combout\,
	combout => \inst6|PS~12_combout\);

-- Location: FF_X73_Y40_N3
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

-- Location: LCCOMB_X73_Y40_N0
\inst6|EnableBin\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EnableBin~combout\ = (\inst6|PS.CC~q\ & (\inst6|EnableBin~combout\)) # (!\inst6|PS.CC~q\ & ((!\inst6|PS.TR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EnableBin~combout\,
	datac => \inst6|PS.TR~q\,
	datad => \inst6|PS.CC~q\,
	combout => \inst6|EnableBin~combout\);

-- Location: LCCOMB_X34_Y40_N0
\inst15|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~0_combout\ = \inst15|cont\(0) $ (VCC)
-- \inst15|Add0~1\ = CARRY(\inst15|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(0),
	datad => VCC,
	combout => \inst15|Add0~0_combout\,
	cout => \inst15|Add0~1\);

-- Location: LCCOMB_X35_Y40_N30
\inst15|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~6_combout\ = (\inst15|Add0~0_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Add0~0_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|cont~6_combout\);

-- Location: LCCOMB_X46_Y42_N0
\inst28|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[0]~32_combout\ = \inst28|cnt\(0) $ (VCC)
-- \inst28|cnt[0]~33\ = CARRY(\inst28|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(0),
	datad => VCC,
	combout => \inst28|cnt[0]~32_combout\,
	cout => \inst28|cnt[0]~33\);

-- Location: LCCOMB_X48_Y43_N18
\inst28|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~0_combout\ = \inst28|var_milseg\(0) $ (GND)
-- \inst28|Add1~1\ = CARRY(!\inst28|var_milseg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_milseg\(0),
	datad => VCC,
	combout => \inst28|Add1~0_combout\,
	cout => \inst28|Add1~1\);

-- Location: LCCOMB_X50_Y42_N16
\inst28|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~0_combout\ = \inst28|var_seg\(0) $ (GND)
-- \inst28|Add2~1\ = CARRY(!\inst28|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(0),
	datad => VCC,
	combout => \inst28|Add2~0_combout\,
	cout => \inst28|Add2~1\);

-- Location: LCCOMB_X50_Y42_N6
\inst28|var_seg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[0]~7_combout\ = !\inst28|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~0_combout\,
	combout => \inst28|var_seg[0]~7_combout\);

-- Location: LCCOMB_X48_Y41_N0
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

-- Location: LCCOMB_X47_Y41_N20
\inst28|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~4_combout\ = (\inst28|Add0~0_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~0_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~4_combout\);

-- Location: FF_X47_Y41_N21
\inst28|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~4_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(0));

-- Location: LCCOMB_X48_Y41_N2
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

-- Location: FF_X48_Y41_N3
\inst28|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~2_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(1));

-- Location: LCCOMB_X48_Y41_N4
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

-- Location: FF_X48_Y41_N5
\inst28|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~4_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(2));

-- Location: LCCOMB_X48_Y41_N6
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

-- Location: FF_X48_Y41_N7
\inst28|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~6_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(3));

-- Location: LCCOMB_X48_Y41_N8
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

-- Location: FF_X48_Y41_N9
\inst28|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~8_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(4));

-- Location: LCCOMB_X48_Y41_N10
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

-- Location: LCCOMB_X47_Y41_N12
\inst28|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~2_combout\ = (\inst28|Add0~10_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~10_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~2_combout\);

-- Location: FF_X47_Y41_N13
\inst28|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~2_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(5));

-- Location: LCCOMB_X48_Y41_N12
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

-- Location: FF_X48_Y41_N13
\inst28|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~12_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(6));

-- Location: LCCOMB_X47_Y41_N10
\inst28|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~3_combout\ = (\inst28|cont\(5) & (!\inst28|cont\(6) & (!\inst28|cont\(4) & !\inst28|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(5),
	datab => \inst28|cont\(6),
	datac => \inst28|cont\(4),
	datad => \inst28|cont\(3),
	combout => \inst28|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y41_N14
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

-- Location: FF_X48_Y41_N15
\inst28|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~14_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(7));

-- Location: LCCOMB_X48_Y41_N16
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

-- Location: LCCOMB_X48_Y42_N30
\inst28|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~1_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~16_combout\,
	combout => \inst28|cont~1_combout\);

-- Location: FF_X48_Y42_N31
\inst28|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~1_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(8));

-- Location: LCCOMB_X48_Y41_N18
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

-- Location: FF_X48_Y41_N19
\inst28|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~18_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(9));

-- Location: LCCOMB_X48_Y41_N20
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

-- Location: FF_X48_Y41_N21
\inst28|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~20_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(10));

-- Location: LCCOMB_X48_Y41_N22
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

-- Location: FF_X48_Y41_N23
\inst28|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~22_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(11));

-- Location: LCCOMB_X48_Y41_N24
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

-- Location: FF_X48_Y41_N25
\inst28|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~24_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(12));

-- Location: LCCOMB_X48_Y41_N26
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

-- Location: LCCOMB_X48_Y42_N12
\inst28|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~0_combout\ = (\inst28|Add0~26_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~26_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~0_combout\);

-- Location: FF_X48_Y42_N13
\inst28|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~0_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(13));

-- Location: LCCOMB_X48_Y41_N28
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

-- Location: FF_X48_Y41_N29
\inst28|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~28_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(14));

-- Location: LCCOMB_X48_Y41_N30
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

-- Location: LCCOMB_X48_Y42_N10
\inst28|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~3_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~30_combout\,
	combout => \inst28|cont~3_combout\);

-- Location: FF_X48_Y42_N11
\inst28|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~3_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(15));

-- Location: LCCOMB_X48_Y42_N8
\inst28|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~4_combout\ = (\inst28|cont\(15) & (!\inst28|cont\(0) & (!\inst28|cont\(2) & !\inst28|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(15),
	datab => \inst28|cont\(0),
	datac => \inst28|cont\(2),
	datad => \inst28|cont\(1),
	combout => \inst28|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y42_N26
\inst28|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~0_combout\ = (!\inst28|cont\(12) & (\inst28|cont\(13) & (!\inst28|cont\(14) & !\inst28|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(12),
	datab => \inst28|cont\(13),
	datac => \inst28|cont\(14),
	datad => \inst28|cont\(11),
	combout => \inst28|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y42_N16
\inst28|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~1_combout\ = (\inst28|cont\(8) & (!\inst28|cont\(7) & (!\inst28|cont\(10) & !\inst28|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(8),
	datab => \inst28|cont\(7),
	datac => \inst28|cont\(10),
	datad => \inst28|cont\(9),
	combout => \inst28|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y42_N4
\inst28|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~2_combout\ = (\inst28|Equal0~0_combout\ & \inst28|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~0_combout\,
	datad => \inst28|Equal0~1_combout\,
	combout => \inst28|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y40_N0
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

-- Location: LCCOMB_X48_Y42_N26
\inst28|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~5_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~32_combout\,
	combout => \inst28|cont~5_combout\);

-- Location: FF_X48_Y42_N27
\inst28|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~5_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(16));

-- Location: LCCOMB_X48_Y40_N2
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

-- Location: LCCOMB_X47_Y42_N14
\inst28|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~6_combout\ = (!\inst28|Equal0~10_combout\ & \inst28|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal0~10_combout\,
	datad => \inst28|Add0~34_combout\,
	combout => \inst28|cont~6_combout\);

-- Location: FF_X47_Y42_N15
\inst28|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~6_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(17));

-- Location: LCCOMB_X48_Y40_N4
\inst28|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add0~36_combout\ = (\inst28|cont\(18) & (\inst28|Add0~35\ $ (GND))) # (!\inst28|cont\(18) & (!\inst28|Add0~35\ & VCC))
-- \inst28|Add0~37\ = CARRY((\inst28|cont\(18) & !\inst28|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cont\(18),
	datad => VCC,
	cin => \inst28|Add0~35\,
	combout => \inst28|Add0~36_combout\,
	cout => \inst28|Add0~37\);

-- Location: LCCOMB_X48_Y42_N28
\inst28|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cont~7_combout\ = (\inst28|Add0~36_combout\ & !\inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add0~36_combout\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cont~7_combout\);

-- Location: FF_X48_Y42_N29
\inst28|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cont~7_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(18));

-- Location: LCCOMB_X48_Y40_N6
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

-- Location: FF_X48_Y40_N7
\inst28|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~38_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(19));

-- Location: LCCOMB_X48_Y40_N8
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

-- Location: FF_X48_Y40_N9
\inst28|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~40_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(20));

-- Location: LCCOMB_X48_Y40_N10
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

-- Location: FF_X48_Y40_N11
\inst28|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~42_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(21));

-- Location: LCCOMB_X48_Y40_N12
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

-- Location: FF_X48_Y40_N13
\inst28|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~44_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(22));

-- Location: LCCOMB_X48_Y40_N14
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

-- Location: FF_X48_Y40_N15
\inst28|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~46_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(23));

-- Location: LCCOMB_X47_Y40_N10
\inst28|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~6_combout\ = (!\inst28|cont\(21) & (!\inst28|cont\(22) & (!\inst28|cont\(20) & !\inst28|cont\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(21),
	datab => \inst28|cont\(22),
	datac => \inst28|cont\(20),
	datad => \inst28|cont\(23),
	combout => \inst28|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y42_N16
\inst28|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~5_combout\ = (\inst28|cont\(18) & (\inst28|cont\(16) & (\inst28|cont\(17) & !\inst28|cont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(18),
	datab => \inst28|cont\(16),
	datac => \inst28|cont\(17),
	datad => \inst28|cont\(19),
	combout => \inst28|Equal0~5_combout\);

-- Location: LCCOMB_X48_Y40_N16
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

-- Location: FF_X48_Y40_N17
\inst28|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~48_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(24));

-- Location: LCCOMB_X48_Y40_N18
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

-- Location: FF_X48_Y40_N19
\inst28|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~50_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(25));

-- Location: LCCOMB_X48_Y40_N20
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

-- Location: FF_X48_Y40_N21
\inst28|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~52_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(26));

-- Location: LCCOMB_X48_Y40_N22
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

-- Location: FF_X48_Y40_N23
\inst28|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~54_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(27));

-- Location: LCCOMB_X47_Y40_N22
\inst28|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~7_combout\ = (!\inst28|cont\(26) & (!\inst28|cont\(25) & (!\inst28|cont\(27) & !\inst28|cont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(26),
	datab => \inst28|cont\(25),
	datac => \inst28|cont\(27),
	datad => \inst28|cont\(24),
	combout => \inst28|Equal0~7_combout\);

-- Location: LCCOMB_X48_Y40_N24
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

-- Location: FF_X48_Y40_N25
\inst28|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~56_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(28));

-- Location: LCCOMB_X48_Y40_N26
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

-- Location: FF_X48_Y40_N27
\inst28|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~58_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(29));

-- Location: LCCOMB_X48_Y40_N28
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

-- Location: FF_X48_Y40_N29
\inst28|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~60_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(30));

-- Location: LCCOMB_X48_Y40_N30
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

-- Location: FF_X48_Y40_N31
\inst28|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|Add0~62_combout\,
	ena => \inst28|s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cont\(31));

-- Location: LCCOMB_X47_Y40_N16
\inst28|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~8_combout\ = (!\inst28|cont\(31) & (!\inst28|cont\(29) & (!\inst28|cont\(30) & !\inst28|cont\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cont\(31),
	datab => \inst28|cont\(29),
	datac => \inst28|cont\(30),
	datad => \inst28|cont\(28),
	combout => \inst28|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y42_N10
\inst28|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~9_combout\ = (\inst28|Equal0~6_combout\ & (\inst28|Equal0~5_combout\ & (\inst28|Equal0~7_combout\ & \inst28|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~6_combout\,
	datab => \inst28|Equal0~5_combout\,
	datac => \inst28|Equal0~7_combout\,
	datad => \inst28|Equal0~8_combout\,
	combout => \inst28|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y42_N0
\inst28|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal0~10_combout\ = (\inst28|Equal0~3_combout\ & (\inst28|Equal0~4_combout\ & (\inst28|Equal0~2_combout\ & \inst28|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal0~3_combout\,
	datab => \inst28|Equal0~4_combout\,
	datac => \inst28|Equal0~2_combout\,
	datad => \inst28|Equal0~9_combout\,
	combout => \inst28|Equal0~10_combout\);

-- Location: LCCOMB_X47_Y42_N22
\inst28|var_seg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[6]~0_combout\ = (\inst28|s_en~q\ & (\inst28|Equal0~10_combout\ & (\inst28|Equal3~1_combout\ $ (!\inst28|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~1_combout\,
	datab => \inst28|Equal1~1_combout\,
	datac => \inst28|s_en~q\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|var_seg[6]~0_combout\);

-- Location: FF_X50_Y42_N7
\inst28|var_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[0]~7_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(0));

-- Location: LCCOMB_X50_Y42_N18
\inst28|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~2_combout\ = (\inst28|var_seg\(1) & (!\inst28|Add2~1\)) # (!\inst28|var_seg\(1) & (\inst28|Add2~1\ & VCC))
-- \inst28|Add2~3\ = CARRY((\inst28|var_seg\(1) & !\inst28|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(1),
	datad => VCC,
	cin => \inst28|Add2~1\,
	combout => \inst28|Add2~2_combout\,
	cout => \inst28|Add2~3\);

-- Location: LCCOMB_X50_Y42_N8
\inst28|var_seg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[1]~6_combout\ = !\inst28|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~2_combout\,
	combout => \inst28|var_seg[1]~6_combout\);

-- Location: FF_X50_Y42_N9
\inst28|var_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[1]~6_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(1));

-- Location: LCCOMB_X50_Y42_N20
\inst28|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~4_combout\ = (\inst28|var_seg\(2) & ((GND) # (!\inst28|Add2~3\))) # (!\inst28|var_seg\(2) & (\inst28|Add2~3\ $ (GND)))
-- \inst28|Add2~5\ = CARRY((\inst28|var_seg\(2)) # (!\inst28|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(2),
	datad => VCC,
	cin => \inst28|Add2~3\,
	combout => \inst28|Add2~4_combout\,
	cout => \inst28|Add2~5\);

-- Location: LCCOMB_X50_Y42_N30
\inst28|var_seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[2]~2_combout\ = (\inst28|var_seg[6]~0_combout\ & (\inst28|Equal3~1_combout\ & (\inst28|Add2~4_combout\))) # (!\inst28|var_seg[6]~0_combout\ & (((\inst28|var_seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~1_combout\,
	datab => \inst28|Add2~4_combout\,
	datac => \inst28|var_seg\(2),
	datad => \inst28|var_seg[6]~0_combout\,
	combout => \inst28|var_seg[2]~2_combout\);

-- Location: FF_X50_Y42_N31
\inst28|var_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(2));

-- Location: LCCOMB_X50_Y42_N22
\inst28|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~6_combout\ = (\inst28|var_seg\(3) & (!\inst28|Add2~5\)) # (!\inst28|var_seg\(3) & (\inst28|Add2~5\ & VCC))
-- \inst28|Add2~7\ = CARRY((\inst28|var_seg\(3) & !\inst28|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(3),
	datad => VCC,
	cin => \inst28|Add2~5\,
	combout => \inst28|Add2~6_combout\,
	cout => \inst28|Add2~7\);

-- Location: LCCOMB_X50_Y42_N10
\inst28|var_seg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[3]~5_combout\ = !\inst28|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add2~6_combout\,
	combout => \inst28|var_seg[3]~5_combout\);

-- Location: FF_X50_Y42_N11
\inst28|var_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[3]~5_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(3));

-- Location: LCCOMB_X50_Y42_N24
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

-- Location: LCCOMB_X50_Y42_N12
\inst28|var_seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[4]~4_combout\ = !\inst28|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|Add2~8_combout\,
	combout => \inst28|var_seg[4]~4_combout\);

-- Location: FF_X50_Y42_N13
\inst28|var_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[4]~4_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(4));

-- Location: LCCOMB_X50_Y42_N26
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

-- Location: LCCOMB_X50_Y42_N14
\inst28|var_seg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[5]~3_combout\ = !\inst28|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Add2~10_combout\,
	combout => \inst28|var_seg[5]~3_combout\);

-- Location: FF_X50_Y42_N15
\inst28|var_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[5]~3_combout\,
	ena => \inst28|var_seg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(5));

-- Location: LCCOMB_X50_Y42_N28
\inst28|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add2~12_combout\ = \inst28|var_seg\(6) $ (\inst28|Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|var_seg\(6),
	cin => \inst28|Add2~11\,
	combout => \inst28|Add2~12_combout\);

-- Location: LCCOMB_X50_Y42_N4
\inst28|var_seg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_seg[6]~1_combout\ = (\inst28|var_seg[6]~0_combout\ & (\inst28|Equal3~1_combout\ & (\inst28|Add2~12_combout\))) # (!\inst28|var_seg[6]~0_combout\ & (((\inst28|var_seg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~1_combout\,
	datab => \inst28|Add2~12_combout\,
	datac => \inst28|var_seg\(6),
	datad => \inst28|var_seg[6]~0_combout\,
	combout => \inst28|var_seg[6]~1_combout\);

-- Location: FF_X50_Y42_N5
\inst28|var_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|var_seg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|var_seg\(6));

-- Location: LCCOMB_X50_Y42_N0
\inst28|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal3~0_combout\ = ((\inst28|var_seg\(6)) # ((!\inst28|var_seg\(4)) # (!\inst28|var_seg\(5)))) # (!\inst28|var_seg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(3),
	datab => \inst28|var_seg\(6),
	datac => \inst28|var_seg\(5),
	datad => \inst28|var_seg\(4),
	combout => \inst28|Equal3~0_combout\);

-- Location: LCCOMB_X50_Y42_N2
\inst28|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal3~1_combout\ = (((\inst28|var_seg\(2)) # (\inst28|Equal3~0_combout\)) # (!\inst28|var_seg\(1))) # (!\inst28|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_seg\(0),
	datab => \inst28|var_seg\(1),
	datac => \inst28|var_seg\(2),
	datad => \inst28|Equal3~0_combout\,
	combout => \inst28|Equal3~1_combout\);

-- Location: LCCOMB_X47_Y43_N28
\inst28|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~19_combout\ = (\inst28|Equal1~1_combout\ & ((!\inst28|Equal3~1_combout\))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datab => \inst28|Add1~0_combout\,
	datad => \inst28|Equal3~1_combout\,
	combout => \inst28|Add1~19_combout\);

-- Location: LCCOMB_X47_Y43_N2
\inst28|var_milseg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|var_milseg[6]~0_combout\ = (\inst28|s_en~q\ & \inst28|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|s_en~q\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|var_milseg[6]~0_combout\);

-- Location: FF_X47_Y43_N29
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

-- Location: LCCOMB_X48_Y43_N20
\inst28|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~2_combout\ = (\inst28|var_milseg\(1) & (!\inst28|Add1~1\)) # (!\inst28|var_milseg\(1) & (\inst28|Add1~1\ & VCC))
-- \inst28|Add1~3\ = CARRY((\inst28|var_milseg\(1) & !\inst28|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(1),
	datad => VCC,
	cin => \inst28|Add1~1\,
	combout => \inst28|Add1~2_combout\,
	cout => \inst28|Add1~3\);

-- Location: LCCOMB_X47_Y43_N26
\inst28|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~18_combout\ = (\inst28|Equal1~1_combout\ & ((!\inst28|Equal3~1_combout\))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datac => \inst28|Add1~2_combout\,
	datad => \inst28|Equal3~1_combout\,
	combout => \inst28|Add1~18_combout\);

-- Location: FF_X47_Y43_N27
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

-- Location: LCCOMB_X48_Y43_N22
\inst28|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~4_combout\ = (\inst28|var_milseg\(2) & ((GND) # (!\inst28|Add1~3\))) # (!\inst28|var_milseg\(2) & (\inst28|Add1~3\ $ (GND)))
-- \inst28|Add1~5\ = CARRY((\inst28|var_milseg\(2)) # (!\inst28|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(2),
	datad => VCC,
	cin => \inst28|Add1~3\,
	combout => \inst28|Add1~4_combout\,
	cout => \inst28|Add1~5\);

-- Location: LCCOMB_X47_Y43_N10
\inst28|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~20_combout\ = (!\inst28|Equal1~1_combout\ & \inst28|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datad => \inst28|Add1~4_combout\,
	combout => \inst28|Add1~20_combout\);

-- Location: FF_X47_Y43_N11
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

-- Location: LCCOMB_X48_Y43_N24
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

-- Location: LCCOMB_X47_Y43_N22
\inst28|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~17_combout\ = (!\inst28|Equal1~1_combout\ & \inst28|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datad => \inst28|Add1~6_combout\,
	combout => \inst28|Add1~17_combout\);

-- Location: FF_X47_Y43_N23
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

-- Location: LCCOMB_X48_Y43_N26
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

-- Location: LCCOMB_X47_Y43_N16
\inst28|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~16_combout\ = (!\inst28|Equal1~1_combout\ & \inst28|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datad => \inst28|Add1~8_combout\,
	combout => \inst28|Add1~16_combout\);

-- Location: FF_X47_Y43_N17
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

-- Location: LCCOMB_X48_Y43_N28
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

-- Location: LCCOMB_X47_Y43_N6
\inst28|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~15_combout\ = (\inst28|Equal1~1_combout\ & (!\inst28|Equal3~1_combout\)) # (!\inst28|Equal1~1_combout\ & ((!\inst28|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal3~1_combout\,
	datac => \inst28|Equal1~1_combout\,
	datad => \inst28|Add1~10_combout\,
	combout => \inst28|Add1~15_combout\);

-- Location: FF_X47_Y43_N7
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

-- Location: LCCOMB_X48_Y43_N30
\inst28|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~12_combout\ = \inst28|Add1~11\ $ (!\inst28|var_milseg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst28|var_milseg\(6),
	cin => \inst28|Add1~11\,
	combout => \inst28|Add1~12_combout\);

-- Location: LCCOMB_X47_Y43_N24
\inst28|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Add1~14_combout\ = (\inst28|Equal1~1_combout\ & ((!\inst28|Equal3~1_combout\))) # (!\inst28|Equal1~1_combout\ & (!\inst28|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datac => \inst28|Add1~12_combout\,
	datad => \inst28|Equal3~1_combout\,
	combout => \inst28|Add1~14_combout\);

-- Location: FF_X47_Y43_N25
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

-- Location: LCCOMB_X47_Y43_N4
\inst28|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal1~0_combout\ = (\inst28|var_milseg\(5) & (!\inst28|var_milseg\(4) & (!\inst28|var_milseg\(3) & \inst28|var_milseg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(5),
	datab => \inst28|var_milseg\(4),
	datac => \inst28|var_milseg\(3),
	datad => \inst28|var_milseg\(6),
	combout => \inst28|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y43_N12
\inst28|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal1~1_combout\ = (\inst28|var_milseg\(1) & (\inst28|var_milseg\(0) & (\inst28|Equal1~0_combout\ & !\inst28|var_milseg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|var_milseg\(1),
	datab => \inst28|var_milseg\(0),
	datac => \inst28|Equal1~0_combout\,
	datad => \inst28|var_milseg\(2),
	combout => \inst28|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y42_N20
\inst28|s_led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|s_led~1_combout\ = ((\inst28|Equal2~10_combout\) # (!\inst28|Equal0~10_combout\)) # (!\inst28|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal1~1_combout\,
	datab => \inst28|Equal0~10_combout\,
	datad => \inst28|Equal2~10_combout\,
	combout => \inst28|s_led~1_combout\);

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

-- Location: FF_X62_Y36_N27
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

-- Location: FF_X62_Y36_N31
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

-- Location: LCCOMB_X61_Y36_N6
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (!\inst13|s_debounceCnt\(3) & (!\inst13|s_debounceCnt\(2) & (!\inst13|s_debounceCnt\(4) & !\inst13|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(3),
	datab => \inst13|s_debounceCnt\(2),
	datac => \inst13|s_debounceCnt\(4),
	datad => \inst13|s_debounceCnt\(1),
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X60_Y36_N20
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

-- Location: LCCOMB_X60_Y36_N22
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

-- Location: LCCOMB_X60_Y36_N26
\inst13|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|s_debounceCnt\(8) & ((GND) # (!\inst13|Add0~15\))) # (!\inst13|s_debounceCnt\(8) & (\inst13|Add0~15\ $ (GND)))
-- \inst13|Add0~17\ = CARRY((\inst13|s_debounceCnt\(8)) # (!\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: LCCOMB_X60_Y36_N28
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

-- Location: LCCOMB_X62_Y36_N14
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X62_Y36_N15
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X60_Y36_N30
\inst13|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|s_debounceCnt\(10) & ((GND) # (!\inst13|Add0~19\))) # (!\inst13|s_debounceCnt\(10) & (\inst13|Add0~19\ $ (GND)))
-- \inst13|Add0~21\ = CARRY((\inst13|s_debounceCnt\(10)) # (!\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: LCCOMB_X60_Y36_N4
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|Add0~20_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~20_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X60_Y36_N5
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X60_Y35_N0
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

-- Location: LCCOMB_X62_Y36_N12
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~22_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X62_Y36_N13
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X60_Y35_N2
\inst13|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = (\inst13|s_debounceCnt\(12) & ((GND) # (!\inst13|Add0~23\))) # (!\inst13|s_debounceCnt\(12) & (\inst13|Add0~23\ $ (GND)))
-- \inst13|Add0~25\ = CARRY((\inst13|s_debounceCnt\(12)) # (!\inst13|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\,
	cout => \inst13|Add0~25\);

-- Location: LCCOMB_X61_Y36_N8
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|s_debounceCnt[18]~5_combout\ & \inst13|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	datad => \inst13|Add0~24_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X61_Y36_N9
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X60_Y35_N4
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

-- Location: LCCOMB_X61_Y36_N14
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|s_debounceCnt[18]~5_combout\ & \inst13|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	datad => \inst13|Add0~26_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X61_Y36_N15
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X60_Y35_N6
\inst13|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~28_combout\ = (\inst13|s_debounceCnt\(14) & ((GND) # (!\inst13|Add0~27\))) # (!\inst13|s_debounceCnt\(14) & (\inst13|Add0~27\ $ (GND)))
-- \inst13|Add0~29\ = CARRY((\inst13|s_debounceCnt\(14)) # (!\inst13|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst13|Add0~27\,
	combout => \inst13|Add0~28_combout\,
	cout => \inst13|Add0~29\);

-- Location: LCCOMB_X62_Y36_N22
\inst13|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~18_combout\ = (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~28_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt~18_combout\);

-- Location: FF_X62_Y36_N23
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~18_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X60_Y35_N8
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

-- Location: LCCOMB_X60_Y35_N28
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~30_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X60_Y35_N29
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X60_Y35_N10
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

-- Location: LCCOMB_X60_Y35_N30
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|Add0~32_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~32_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X60_Y35_N31
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X60_Y35_N12
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

-- Location: LCCOMB_X60_Y35_N24
\inst13|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~8_combout\ = (\inst13|Add0~34_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~34_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~8_combout\);

-- Location: FF_X60_Y35_N25
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~8_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X60_Y35_N14
\inst13|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~36_combout\ = (\inst13|s_debounceCnt\(18) & ((GND) # (!\inst13|Add0~35\))) # (!\inst13|s_debounceCnt\(18) & (\inst13|Add0~35\ $ (GND)))
-- \inst13|Add0~37\ = CARRY((\inst13|s_debounceCnt\(18)) # (!\inst13|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst13|Add0~35\,
	combout => \inst13|Add0~36_combout\,
	cout => \inst13|Add0~37\);

-- Location: LCCOMB_X62_Y36_N0
\inst13|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~19_combout\ = (\inst13|s_debounceCnt[18]~4_combout\ & (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|Add0~36_combout\,
	datac => \inst13|s_debounceCnt[18]~4_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt[18]~19_combout\);

-- Location: FF_X62_Y36_N1
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

-- Location: LCCOMB_X60_Y35_N16
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

-- Location: LCCOMB_X62_Y36_N4
\inst13|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~20_combout\ = (\inst13|s_debounceCnt[18]~4_combout\ & (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|Add0~38_combout\,
	datac => \inst13|s_debounceCnt[18]~4_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt[19]~20_combout\);

-- Location: FF_X62_Y36_N5
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

-- Location: LCCOMB_X60_Y35_N18
\inst13|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~40_combout\ = (\inst13|s_debounceCnt\(20) & ((GND) # (!\inst13|Add0~39\))) # (!\inst13|s_debounceCnt\(20) & (\inst13|Add0~39\ $ (GND)))
-- \inst13|Add0~41\ = CARRY((\inst13|s_debounceCnt\(20)) # (!\inst13|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst13|Add0~39\,
	combout => \inst13|Add0~40_combout\,
	cout => \inst13|Add0~41\);

-- Location: LCCOMB_X60_Y35_N26
\inst13|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~9_combout\ = (\inst13|Add0~40_combout\ & (\inst13|s_debounceCnt[18]~4_combout\ & \inst13|s_debounceCnt[18]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~40_combout\,
	datac => \inst13|s_debounceCnt[18]~4_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt[20]~9_combout\);

-- Location: FF_X60_Y35_N27
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

-- Location: LCCOMB_X61_Y35_N10
\inst13|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~3_combout\ = (\inst13|s_debounceCnt\(16)) # ((\inst13|s_debounceCnt\(15)) # (\inst13|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(16),
	datac => \inst13|s_debounceCnt\(15),
	datad => \inst13|s_debounceCnt\(17),
	combout => \inst13|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y36_N24
\inst13|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~8_combout\ = (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~7_combout\,
	combout => \inst13|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X61_Y36_N20
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (\inst13|s_debounceCnt\(7)) # ((\inst13|s_debounceCnt\(6) & ((\inst13|s_debounceCnt\(0)) # (!\inst13|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_debounceCnt\(6),
	datac => \inst13|s_debounceCnt\(7),
	datad => \inst13|s_pulsedOut~8_combout\,
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y36_N10
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(10)) # ((\inst13|s_debounceCnt\(8) & (\inst13|s_debounceCnt\(9) & \inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datab => \inst13|s_debounceCnt\(9),
	datac => \inst13|s_debounceCnt\(10),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y36_N12
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (\inst13|s_debounceCnt\(13)) # ((\inst13|s_debounceCnt\(12)) # ((\inst13|s_debounceCnt\(11) & \inst13|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|s_debounceCnt\(13),
	datac => \inst13|s_debounceCnt\(12),
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y36_N2
\inst13|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~4_combout\ = (\inst13|s_debounceCnt\(18) & ((\inst13|LessThan0~3_combout\) # ((\inst13|s_debounceCnt\(14) & \inst13|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datab => \inst13|s_debounceCnt\(14),
	datac => \inst13|LessThan0~3_combout\,
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y36_N28
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (\inst13|s_debounceCnt\(20)) # ((\inst13|s_debounceCnt\(21)) # ((\inst13|s_debounceCnt\(19) & \inst13|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datab => \inst13|s_debounceCnt\(21),
	datac => \inst13|s_debounceCnt\(19),
	datad => \inst13|LessThan0~4_combout\,
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X62_Y36_N18
\inst13|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~2_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~5_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X61_Y36_N0
\inst13|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~3_combout\ = (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|Add0~12_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt~3_combout\);

-- Location: FF_X61_Y36_N1
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~3_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X60_Y36_N24
\inst13|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst13|s_debounceCnt\(7) & (\inst13|Add0~13\ & VCC)) # (!\inst13|s_debounceCnt\(7) & (!\inst13|Add0~13\))
-- \inst13|Add0~15\ = CARRY((!\inst13|s_debounceCnt\(7) & !\inst13|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

-- Location: LCCOMB_X61_Y36_N30
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|Add0~14_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~14_combout\,
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X61_Y36_N31
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X62_Y36_N16
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[18]~2_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~16_combout\,
	datad => \inst13|s_debounceCnt[18]~2_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X62_Y36_N17
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X62_Y36_N10
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (!\inst13|s_debounceCnt\(8) & (!\inst13|s_debounceCnt\(9) & (!\inst13|s_debounceCnt\(10) & !\inst13|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datab => \inst13|s_debounceCnt\(9),
	datac => \inst13|s_debounceCnt\(10),
	datad => \inst13|s_debounceCnt\(7),
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X62_Y36_N8
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(11) & (!\inst13|s_debounceCnt\(19) & (!\inst13|s_debounceCnt\(14) & !\inst13|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|s_debounceCnt\(19),
	datac => \inst13|s_debounceCnt\(14),
	datad => \inst13|s_debounceCnt\(18),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X61_Y36_N16
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(20) & (!\inst13|s_debounceCnt\(12) & (!\inst13|s_debounceCnt\(13) & !\inst13|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datab => \inst13|s_debounceCnt\(12),
	datac => \inst13|s_debounceCnt\(13),
	datad => \inst13|s_debounceCnt\(21),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X61_Y35_N8
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(15) & (!\inst13|s_debounceCnt\(16) & (!\inst13|s_debounceCnt\(6) & !\inst13|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(15),
	datab => \inst13|s_debounceCnt\(16),
	datac => \inst13|s_debounceCnt\(6),
	datad => \inst13|s_debounceCnt\(17),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X62_Y36_N20
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_pulsedOut~4_combout\ & (\inst13|s_pulsedOut~5_combout\ & (\inst13|s_pulsedOut~3_combout\ & \inst13|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~4_combout\,
	datab => \inst13|s_pulsedOut~5_combout\,
	datac => \inst13|s_pulsedOut~3_combout\,
	datad => \inst13|s_pulsedOut~2_combout\,
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X62_Y36_N24
\inst13|s_debounceCnt[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~29_combout\ = (\inst13|s_debounceCnt\(5)) # ((\inst13|s_debounceCnt\(0)) # ((!\inst13|s_pulsedOut~6_combout\) # (!\inst13|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_pulsedOut~7_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_debounceCnt[18]~29_combout\);

-- Location: LCCOMB_X62_Y36_N30
\inst13|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~4_combout\ = ((\inst13|s_debounceCnt\(22)) # ((\inst13|s_debounceCnt[18]~29_combout\) # (!\inst13|s_previousIn~q\))) # (!\inst13|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[18]~29_combout\,
	combout => \inst13|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X60_Y35_N20
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

-- Location: LCCOMB_X61_Y36_N18
\inst13|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~10_combout\ = (\inst13|s_debounceCnt[18]~4_combout\ & (\inst13|s_debounceCnt[18]~5_combout\ & \inst13|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[18]~4_combout\,
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	datad => \inst13|Add0~42_combout\,
	combout => \inst13|s_debounceCnt[21]~10_combout\);

-- Location: FF_X61_Y36_N19
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

-- Location: LCCOMB_X60_Y35_N22
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

-- Location: LCCOMB_X62_Y36_N2
\inst13|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~27_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~5_combout\)))) # (!\inst13|s_debounceCnt\(22) & ((\inst13|s_debounceCnt[18]~29_combout\) # ((!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_debounceCnt[18]~29_combout\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X62_Y36_N28
\inst13|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~28_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt[22]~27_combout\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|Add0~44_combout\,
	datad => \inst13|s_debounceCnt[22]~27_combout\,
	combout => \inst13|s_debounceCnt[22]~28_combout\);

-- Location: FF_X62_Y36_N29
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

-- Location: LCCOMB_X61_Y36_N26
\inst13|s_debounceCnt[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~5_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~5_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[18]~5_combout\);

-- Location: LCCOMB_X60_Y36_N10
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|s_debounceCnt\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: LCCOMB_X61_Y36_N22
\inst13|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~26_combout\ = (\inst13|s_debounceCnt[18]~5_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	datad => \inst13|Add0~0_combout\,
	combout => \inst13|s_debounceCnt~26_combout\);

-- Location: FF_X61_Y36_N23
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~26_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X60_Y36_N12
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

-- Location: LCCOMB_X60_Y36_N2
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|Add0~2_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~2_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X60_Y36_N3
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X60_Y36_N14
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|s_debounceCnt\(2) & ((GND) # (!\inst13|Add0~3\))) # (!\inst13|s_debounceCnt\(2) & (\inst13|Add0~3\ $ (GND)))
-- \inst13|Add0~5\ = CARRY((\inst13|s_debounceCnt\(2)) # (!\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X61_Y36_N4
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|Add0~4_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~4_combout\,
	datac => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X61_Y36_N5
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X60_Y36_N16
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

-- Location: LCCOMB_X60_Y36_N8
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|Add0~6_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~6_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X60_Y36_N9
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X60_Y36_N18
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

-- Location: LCCOMB_X60_Y36_N6
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|Add0~8_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~8_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X60_Y36_N7
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X60_Y36_N0
\inst13|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~25_combout\ = (\inst13|Add0~10_combout\ & \inst13|s_debounceCnt[18]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~10_combout\,
	datad => \inst13|s_debounceCnt[18]~5_combout\,
	combout => \inst13|s_debounceCnt~25_combout\);

-- Location: FF_X60_Y36_N1
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~25_combout\,
	ena => \inst13|s_debounceCnt[18]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X62_Y36_N26
\inst13|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~9_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_debounceCnt\(0) & (\inst13|s_dirtyIn~q\ & !\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|s_debounceCnt\(22),
	combout => \inst13|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X62_Y36_N6
\inst13|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~10_combout\ = (!\inst13|s_debounceCnt\(5) & (\inst13|s_pulsedOut~7_combout\ & (\inst13|s_pulsedOut~9_combout\ & \inst13|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_pulsedOut~7_combout\,
	datac => \inst13|s_pulsedOut~9_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_pulsedOut~10_combout\);

-- Location: FF_X62_Y36_N7
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

-- Location: LCCOMB_X65_Y47_N10
\inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = \inst12|s_debounceCnt\(0) $ (VCC)
-- \inst12|Add0~1\ = CARRY(\inst12|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(0),
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

-- Location: FF_X68_Y46_N21
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

-- Location: LCCOMB_X67_Y46_N14
\inst12|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_previousIn~feeder_combout\ = \inst12|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_dirtyIn~q\,
	combout => \inst12|s_previousIn~feeder_combout\);

-- Location: FF_X67_Y46_N15
\inst12|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_previousIn~q\);

-- Location: LCCOMB_X66_Y46_N10
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (!\inst12|s_debounceCnt\(2) & (!\inst12|s_debounceCnt\(4) & (!\inst12|s_debounceCnt\(1) & !\inst12|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(2),
	datab => \inst12|s_debounceCnt\(4),
	datac => \inst12|s_debounceCnt\(1),
	datad => \inst12|s_debounceCnt\(3),
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X65_Y47_N20
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

-- Location: LCCOMB_X65_Y47_N22
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

-- Location: LCCOMB_X68_Y46_N4
\inst12|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[1]~4_combout\ = (((\inst12|s_debounceCnt\(22)) # (\inst12|s_debounceCnt[1]~29_combout\)) # (!\inst12|s_dirtyIn~q\)) # (!\inst12|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_debounceCnt[1]~29_combout\,
	combout => \inst12|s_debounceCnt[1]~4_combout\);

-- Location: LCCOMB_X65_Y47_N24
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

-- Location: LCCOMB_X65_Y47_N26
\inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~16_combout\ = (\inst12|s_debounceCnt\(8) & ((GND) # (!\inst12|Add0~15\))) # (!\inst12|s_debounceCnt\(8) & (\inst12|Add0~15\ $ (GND)))
-- \inst12|Add0~17\ = CARRY((\inst12|s_debounceCnt\(8)) # (!\inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst12|Add0~15\,
	combout => \inst12|Add0~16_combout\,
	cout => \inst12|Add0~17\);

-- Location: LCCOMB_X68_Y46_N14
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~16_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X68_Y46_N15
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X65_Y47_N28
\inst12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~18_combout\ = (\inst12|s_debounceCnt\(9) & (\inst12|Add0~17\ & VCC)) # (!\inst12|s_debounceCnt\(9) & (!\inst12|Add0~17\))
-- \inst12|Add0~19\ = CARRY((!\inst12|s_debounceCnt\(9) & !\inst12|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst12|Add0~17\,
	combout => \inst12|Add0~18_combout\,
	cout => \inst12|Add0~19\);

-- Location: LCCOMB_X68_Y46_N0
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~18_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X68_Y46_N1
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X65_Y47_N30
\inst12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~20_combout\ = (\inst12|s_debounceCnt\(10) & ((GND) # (!\inst12|Add0~19\))) # (!\inst12|s_debounceCnt\(10) & (\inst12|Add0~19\ $ (GND)))
-- \inst12|Add0~21\ = CARRY((\inst12|s_debounceCnt\(10)) # (!\inst12|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst12|Add0~19\,
	combout => \inst12|Add0~20_combout\,
	cout => \inst12|Add0~21\);

-- Location: LCCOMB_X66_Y46_N24
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|Add0~20_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~20_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X66_Y46_N25
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X65_Y46_N0
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

-- Location: LCCOMB_X68_Y46_N28
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~22_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X68_Y46_N29
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X65_Y46_N2
\inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~24_combout\ = (\inst12|s_debounceCnt\(12) & ((GND) # (!\inst12|Add0~23\))) # (!\inst12|s_debounceCnt\(12) & (\inst12|Add0~23\ $ (GND)))
-- \inst12|Add0~25\ = CARRY((\inst12|s_debounceCnt\(12)) # (!\inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst12|Add0~23\,
	combout => \inst12|Add0~24_combout\,
	cout => \inst12|Add0~25\);

-- Location: LCCOMB_X67_Y46_N2
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~24_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X67_Y46_N3
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X65_Y46_N4
\inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~26_combout\ = (\inst12|s_debounceCnt\(13) & (\inst12|Add0~25\ & VCC)) # (!\inst12|s_debounceCnt\(13) & (!\inst12|Add0~25\))
-- \inst12|Add0~27\ = CARRY((!\inst12|s_debounceCnt\(13) & !\inst12|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst12|Add0~25\,
	combout => \inst12|Add0~26_combout\,
	cout => \inst12|Add0~27\);

-- Location: LCCOMB_X67_Y46_N20
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~26_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X67_Y46_N21
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X65_Y46_N6
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

-- Location: LCCOMB_X68_Y46_N2
\inst12|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~18_combout\ = (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt~18_combout\);

-- Location: FF_X68_Y46_N3
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~18_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X65_Y46_N8
\inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~30_combout\ = (\inst12|s_debounceCnt\(15) & (\inst12|Add0~29\ & VCC)) # (!\inst12|s_debounceCnt\(15) & (!\inst12|Add0~29\))
-- \inst12|Add0~31\ = CARRY((!\inst12|s_debounceCnt\(15) & !\inst12|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst12|Add0~29\,
	combout => \inst12|Add0~30_combout\,
	cout => \inst12|Add0~31\);

-- Location: LCCOMB_X67_Y46_N12
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|Add0~30_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~30_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X67_Y46_N13
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X65_Y46_N10
\inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~32_combout\ = (\inst12|s_debounceCnt\(16) & ((GND) # (!\inst12|Add0~31\))) # (!\inst12|s_debounceCnt\(16) & (\inst12|Add0~31\ $ (GND)))
-- \inst12|Add0~33\ = CARRY((\inst12|s_debounceCnt\(16)) # (!\inst12|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst12|Add0~31\,
	combout => \inst12|Add0~32_combout\,
	cout => \inst12|Add0~33\);

-- Location: LCCOMB_X67_Y46_N6
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~32_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X67_Y46_N7
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X65_Y46_N12
\inst12|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~34_combout\ = (\inst12|s_debounceCnt\(17) & (\inst12|Add0~33\ & VCC)) # (!\inst12|s_debounceCnt\(17) & (!\inst12|Add0~33\))
-- \inst12|Add0~35\ = CARRY((!\inst12|s_debounceCnt\(17) & !\inst12|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst12|Add0~33\,
	combout => \inst12|Add0~34_combout\,
	cout => \inst12|Add0~35\);

-- Location: LCCOMB_X67_Y46_N16
\inst12|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~8_combout\ = (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~34_combout\,
	combout => \inst12|s_debounceCnt~8_combout\);

-- Location: FF_X67_Y46_N17
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~8_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X65_Y46_N14
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

-- Location: LCCOMB_X68_Y46_N12
\inst12|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~19_combout\ = (\inst12|s_debounceCnt[1]~4_combout\ & (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt[1]~4_combout\,
	datac => \inst12|Add0~36_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt[18]~19_combout\);

-- Location: FF_X68_Y46_N13
\inst12|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(18));

-- Location: LCCOMB_X65_Y46_N16
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

-- Location: LCCOMB_X68_Y46_N22
\inst12|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~20_combout\ = (\inst12|s_debounceCnt[1]~4_combout\ & (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt[1]~4_combout\,
	datac => \inst12|Add0~38_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt[19]~20_combout\);

-- Location: FF_X68_Y46_N23
\inst12|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(19));

-- Location: LCCOMB_X65_Y46_N18
\inst12|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~40_combout\ = (\inst12|s_debounceCnt\(20) & ((GND) # (!\inst12|Add0~39\))) # (!\inst12|s_debounceCnt\(20) & (\inst12|Add0~39\ $ (GND)))
-- \inst12|Add0~41\ = CARRY((\inst12|s_debounceCnt\(20)) # (!\inst12|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst12|Add0~39\,
	combout => \inst12|Add0~40_combout\,
	cout => \inst12|Add0~41\);

-- Location: LCCOMB_X67_Y46_N10
\inst12|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~9_combout\ = (\inst12|s_debounceCnt[1]~4_combout\ & (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt[1]~4_combout\,
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~40_combout\,
	combout => \inst12|s_debounceCnt[20]~9_combout\);

-- Location: FF_X67_Y46_N11
\inst12|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(20));

-- Location: LCCOMB_X65_Y46_N20
\inst12|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~42_combout\ = (\inst12|s_debounceCnt\(21) & (\inst12|Add0~41\ & VCC)) # (!\inst12|s_debounceCnt\(21) & (!\inst12|Add0~41\))
-- \inst12|Add0~43\ = CARRY((!\inst12|s_debounceCnt\(21) & !\inst12|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst12|Add0~41\,
	combout => \inst12|Add0~42_combout\,
	cout => \inst12|Add0~43\);

-- Location: LCCOMB_X67_Y46_N8
\inst12|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~10_combout\ = (\inst12|s_debounceCnt[1]~4_combout\ & (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt[1]~4_combout\,
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~42_combout\,
	combout => \inst12|s_debounceCnt[21]~10_combout\);

-- Location: FF_X67_Y46_N9
\inst12|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(21));

-- Location: LCCOMB_X67_Y46_N26
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (!\inst12|s_debounceCnt\(21) & !\inst12|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt\(21),
	datad => \inst12|s_debounceCnt\(20),
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X67_Y46_N4
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (!\inst12|s_debounceCnt\(12) & !\inst12|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(12),
	datad => \inst12|s_debounceCnt\(13),
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y46_N2
\inst12|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~8_combout\ = (!\inst12|s_debounceCnt\(5) & \inst12|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~7_combout\,
	combout => \inst12|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X66_Y46_N20
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(7)) # ((\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(7),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_pulsedOut~8_combout\,
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y46_N14
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(10)) # ((\inst12|s_debounceCnt\(8) & (\inst12|s_debounceCnt\(9) & \inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datab => \inst12|s_debounceCnt\(10),
	datac => \inst12|s_debounceCnt\(9),
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y46_N18
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(14) & (((\inst12|s_debounceCnt\(11) & \inst12|LessThan0~1_combout\)) # (!\inst12|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(14),
	datab => \inst12|LessThan0~2_combout\,
	datac => \inst12|s_debounceCnt\(11),
	datad => \inst12|LessThan0~1_combout\,
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X67_Y46_N24
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|s_debounceCnt\(16)) # ((\inst12|s_debounceCnt\(17)) # ((\inst12|s_debounceCnt\(15)) # (\inst12|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(16),
	datab => \inst12|s_debounceCnt\(17),
	datac => \inst12|s_debounceCnt\(15),
	datad => \inst12|LessThan0~3_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X67_Y46_N28
\inst12|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~6_combout\ = ((\inst12|s_debounceCnt\(19) & (\inst12|s_debounceCnt\(18) & \inst12|LessThan0~4_combout\))) # (!\inst12|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(18),
	datac => \inst12|LessThan0~5_combout\,
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~6_combout\);

-- Location: LCCOMB_X68_Y46_N18
\inst12|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[1]~2_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X68_Y46_N26
\inst12|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~3_combout\ = (\inst12|s_debounceCnt[1]~2_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~12_combout\,
	datad => \inst12|s_debounceCnt[1]~2_combout\,
	combout => \inst12|s_debounceCnt~3_combout\);

-- Location: FF_X68_Y46_N27
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~3_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X67_Y46_N0
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|s_debounceCnt[1]~5_combout\ & \inst12|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[1]~5_combout\,
	datad => \inst12|Add0~14_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X67_Y46_N1
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X68_Y46_N30
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (!\inst12|s_debounceCnt\(7) & (!\inst12|s_debounceCnt\(9) & (!\inst12|s_debounceCnt\(8) & !\inst12|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(7),
	datab => \inst12|s_debounceCnt\(9),
	datac => \inst12|s_debounceCnt\(8),
	datad => \inst12|s_debounceCnt\(10),
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X68_Y46_N24
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(19) & (!\inst12|s_debounceCnt\(11) & (!\inst12|s_debounceCnt\(18) & !\inst12|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(11),
	datac => \inst12|s_debounceCnt\(18),
	datad => \inst12|s_debounceCnt\(14),
	combout => \inst12|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X68_Y46_N8
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(6) & (!\inst12|s_debounceCnt\(16) & (!\inst12|s_debounceCnt\(17) & !\inst12|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(6),
	datab => \inst12|s_debounceCnt\(16),
	datac => \inst12|s_debounceCnt\(17),
	datad => \inst12|s_debounceCnt\(15),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X67_Y46_N30
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(20) & (!\inst12|s_debounceCnt\(12) & (!\inst12|s_debounceCnt\(21) & !\inst12|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(20),
	datab => \inst12|s_debounceCnt\(12),
	datac => \inst12|s_debounceCnt\(21),
	datad => \inst12|s_debounceCnt\(13),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X68_Y46_N6
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (\inst12|s_pulsedOut~4_combout\ & (\inst12|s_pulsedOut~5_combout\ & (\inst12|s_pulsedOut~2_combout\ & \inst12|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~4_combout\,
	datab => \inst12|s_pulsedOut~5_combout\,
	datac => \inst12|s_pulsedOut~2_combout\,
	datad => \inst12|s_pulsedOut~3_combout\,
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X68_Y46_N10
\inst12|s_debounceCnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[1]~29_combout\ = (\inst12|s_debounceCnt\(0)) # (((\inst12|s_debounceCnt\(5)) # (!\inst12|s_pulsedOut~6_combout\)) # (!\inst12|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_pulsedOut~7_combout\,
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|s_debounceCnt[1]~29_combout\);

-- Location: LCCOMB_X66_Y46_N8
\inst12|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~27_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~6_combout\)))) # (!\inst12|s_debounceCnt\(22) & (((\inst12|s_debounceCnt[1]~29_combout\)) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_debounceCnt[1]~29_combout\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X65_Y46_N22
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

-- Location: LCCOMB_X66_Y46_N6
\inst12|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~28_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_debounceCnt[22]~27_combout\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt[22]~27_combout\,
	datad => \inst12|Add0~44_combout\,
	combout => \inst12|s_debounceCnt[22]~28_combout\);

-- Location: FF_X66_Y46_N7
\inst12|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(22));

-- Location: LCCOMB_X67_Y46_N22
\inst12|s_debounceCnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[1]~5_combout\ = (\inst12|s_previousIn~q\ & (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_dirtyIn~q\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[1]~5_combout\);

-- Location: LCCOMB_X66_Y46_N0
\inst12|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~26_combout\ = (\inst12|Add0~0_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~0_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~26_combout\);

-- Location: FF_X66_Y46_N1
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~26_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X65_Y47_N12
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

-- Location: LCCOMB_X66_Y46_N22
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|Add0~2_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~2_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X66_Y46_N23
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X65_Y47_N14
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

-- Location: LCCOMB_X66_Y46_N12
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~4_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: FF_X66_Y46_N13
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X65_Y47_N16
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

-- Location: LCCOMB_X66_Y46_N18
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|Add0~6_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~6_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X66_Y46_N19
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X65_Y47_N18
\inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|s_debounceCnt\(4) & ((GND) # (!\inst12|Add0~7\))) # (!\inst12|s_debounceCnt\(4) & (\inst12|Add0~7\ $ (GND)))
-- \inst12|Add0~9\ = CARRY((\inst12|s_debounceCnt\(4)) # (!\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X66_Y46_N16
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|Add0~8_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~8_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X66_Y46_N17
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X66_Y46_N28
\inst12|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~25_combout\ = (\inst12|Add0~10_combout\ & \inst12|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~10_combout\,
	datad => \inst12|s_debounceCnt[1]~5_combout\,
	combout => \inst12|s_debounceCnt~25_combout\);

-- Location: FF_X66_Y46_N29
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~25_combout\,
	ena => \inst12|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X68_Y46_N20
\inst12|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~9_combout\ = (\inst12|s_debounceCnt\(0) & (!\inst12|s_debounceCnt\(22) & (\inst12|s_dirtyIn~q\ & \inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_dirtyIn~q\,
	datad => \inst12|s_previousIn~q\,
	combout => \inst12|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X68_Y46_N16
\inst12|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~10_combout\ = (!\inst12|s_debounceCnt\(5) & (\inst12|s_pulsedOut~9_combout\ & (\inst12|s_pulsedOut~7_combout\ & \inst12|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(5),
	datab => \inst12|s_pulsedOut~9_combout\,
	datac => \inst12|s_pulsedOut~7_combout\,
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|s_pulsedOut~10_combout\);

-- Location: FF_X68_Y46_N17
\inst12|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_pulsedOut~q\);

-- Location: LCCOMB_X83_Y41_N10
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|s_debounceCnt\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X83_Y41_N12
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

-- Location: LCCOMB_X81_Y40_N4
\inst10|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~23_combout\ = (\inst10|Add0~2_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~2_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~23_combout\);

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

-- Location: FF_X84_Y40_N15
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

-- Location: FF_X84_Y40_N3
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

-- Location: LCCOMB_X84_Y40_N2
\inst10|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~3_combout\ = (\inst10|s_debounceCnt\(22)) # (((\inst10|s_debounceCnt[18]~2_combout\) # (!\inst10|s_previousIn~q\)) # (!\inst10|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_dirtyIn~q\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[18]~2_combout\,
	combout => \inst10|s_debounceCnt[18]~3_combout\);

-- Location: FF_X81_Y40_N5
\inst10|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~23_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(1));

-- Location: LCCOMB_X83_Y41_N14
\inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|s_debounceCnt\(2) & ((GND) # (!\inst10|Add0~3\))) # (!\inst10|s_debounceCnt\(2) & (\inst10|Add0~3\ $ (GND)))
-- \inst10|Add0~5\ = CARRY((\inst10|s_debounceCnt\(2)) # (!\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCCOMB_X81_Y40_N6
\inst10|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~24_combout\ = (\inst10|Add0~4_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~4_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~24_combout\);

-- Location: FF_X81_Y40_N7
\inst10|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~24_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(2));

-- Location: LCCOMB_X83_Y41_N16
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

-- Location: LCCOMB_X81_Y40_N28
\inst10|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~21_combout\ = (\inst10|Add0~6_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~6_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~21_combout\);

-- Location: FF_X81_Y40_N29
\inst10|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~21_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(3));

-- Location: LCCOMB_X83_Y41_N18
\inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|s_debounceCnt\(4) & ((GND) # (!\inst10|Add0~7\))) # (!\inst10|s_debounceCnt\(4) & (\inst10|Add0~7\ $ (GND)))
-- \inst10|Add0~9\ = CARRY((\inst10|s_debounceCnt\(4)) # (!\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X81_Y40_N10
\inst10|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~22_combout\ = (\inst10|Add0~8_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~8_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~22_combout\);

-- Location: FF_X81_Y40_N11
\inst10|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~22_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(4));

-- Location: LCCOMB_X83_Y41_N20
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

-- Location: LCCOMB_X81_Y40_N30
\inst10|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~20_combout\ = (\inst10|Add0~10_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~10_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~20_combout\);

-- Location: FF_X81_Y40_N31
\inst10|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~20_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(5));

-- Location: LCCOMB_X81_Y40_N12
\inst10|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~5_combout\ = (!\inst10|s_debounceCnt\(1) & !\inst10|s_debounceCnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_debounceCnt\(1),
	datad => \inst10|s_debounceCnt\(2),
	combout => \inst10|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X81_Y40_N14
\inst10|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~6_combout\ = (!\inst10|s_debounceCnt\(4) & (!\inst10|s_debounceCnt\(3) & (!\inst10|s_debounceCnt\(5) & \inst10|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(4),
	datab => \inst10|s_debounceCnt\(3),
	datac => \inst10|s_debounceCnt\(5),
	datad => \inst10|s_pulsedOut~5_combout\,
	combout => \inst10|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X83_Y40_N0
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

-- Location: LCCOMB_X83_Y40_N2
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

-- Location: LCCOMB_X84_Y40_N30
\inst10|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~10_combout\ = (\inst10|Add0~24_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~24_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~10_combout\);

-- Location: FF_X84_Y40_N31
\inst10|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~10_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(12));

-- Location: LCCOMB_X83_Y40_N4
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

-- Location: LCCOMB_X84_Y40_N4
\inst10|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~11_combout\ = (\inst10|Add0~26_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~26_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~11_combout\);

-- Location: FF_X84_Y40_N5
\inst10|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~11_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(13));

-- Location: LCCOMB_X83_Y40_N6
\inst10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~28_combout\ = (\inst10|s_debounceCnt\(14) & ((GND) # (!\inst10|Add0~27\))) # (!\inst10|s_debounceCnt\(14) & (\inst10|Add0~27\ $ (GND)))
-- \inst10|Add0~29\ = CARRY((\inst10|s_debounceCnt\(14)) # (!\inst10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst10|Add0~27\,
	combout => \inst10|Add0~28_combout\,
	cout => \inst10|Add0~29\);

-- Location: LCCOMB_X83_Y40_N24
\inst10|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~17_combout\ = (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~28_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~28_combout\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt~17_combout\);

-- Location: FF_X83_Y40_N25
\inst10|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~17_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(14));

-- Location: LCCOMB_X83_Y40_N8
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

-- Location: LCCOMB_X84_Y40_N18
\inst10|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~5_combout\ = (\inst10|Add0~30_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~30_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~5_combout\);

-- Location: FF_X84_Y40_N19
\inst10|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~5_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(15));

-- Location: LCCOMB_X83_Y40_N10
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

-- Location: LCCOMB_X84_Y40_N16
\inst10|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~6_combout\ = (\inst10|Add0~32_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~32_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~6_combout\);

-- Location: FF_X84_Y40_N17
\inst10|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~6_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(16));

-- Location: LCCOMB_X83_Y40_N12
\inst10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~34_combout\ = (\inst10|s_debounceCnt\(17) & (\inst10|Add0~33\ & VCC)) # (!\inst10|s_debounceCnt\(17) & (!\inst10|Add0~33\))
-- \inst10|Add0~35\ = CARRY((!\inst10|s_debounceCnt\(17) & !\inst10|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst10|Add0~33\,
	combout => \inst10|Add0~34_combout\,
	cout => \inst10|Add0~35\);

-- Location: LCCOMB_X84_Y40_N8
\inst10|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~7_combout\ = (\inst10|Add0~34_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~34_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~7_combout\);

-- Location: FF_X84_Y40_N9
\inst10|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~7_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(17));

-- Location: LCCOMB_X83_Y40_N14
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

-- Location: LCCOMB_X84_Y40_N20
\inst10|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~18_combout\ = (\inst10|s_debounceCnt[18]~3_combout\ & (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~36_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_previousIn~q\,
	datab => \inst10|s_debounceCnt[18]~3_combout\,
	datac => \inst10|Add0~36_combout\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt[18]~18_combout\);

-- Location: FF_X84_Y40_N21
\inst10|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(18));

-- Location: LCCOMB_X83_Y40_N16
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

-- Location: LCCOMB_X83_Y40_N26
\inst10|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[19]~19_combout\ = (\inst10|s_debounceCnt[18]~3_combout\ & (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~38_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[18]~3_combout\,
	datab => \inst10|Add0~38_combout\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt[19]~19_combout\);

-- Location: FF_X83_Y40_N27
\inst10|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(19));

-- Location: LCCOMB_X83_Y40_N18
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

-- Location: LCCOMB_X83_Y40_N28
\inst10|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[20]~8_combout\ = (\inst10|s_debounceCnt[18]~3_combout\ & (\inst10|Add0~40_combout\ & \inst10|s_debounceCnt[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[18]~3_combout\,
	datab => \inst10|Add0~40_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt[20]~8_combout\);

-- Location: FF_X83_Y40_N29
\inst10|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(20));

-- Location: LCCOMB_X83_Y40_N20
\inst10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~42_combout\ = (\inst10|s_debounceCnt\(21) & (\inst10|Add0~41\ & VCC)) # (!\inst10|s_debounceCnt\(21) & (!\inst10|Add0~41\))
-- \inst10|Add0~43\ = CARRY((!\inst10|s_debounceCnt\(21) & !\inst10|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst10|Add0~41\,
	combout => \inst10|Add0~42_combout\,
	cout => \inst10|Add0~43\);

-- Location: LCCOMB_X83_Y40_N30
\inst10|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[21]~9_combout\ = (\inst10|s_debounceCnt[18]~3_combout\ & (\inst10|s_debounceCnt[18]~4_combout\ & \inst10|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[18]~3_combout\,
	datab => \inst10|s_debounceCnt[18]~4_combout\,
	datad => \inst10|Add0~42_combout\,
	combout => \inst10|s_debounceCnt[21]~9_combout\);

-- Location: FF_X83_Y40_N31
\inst10|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(21));

-- Location: LCCOMB_X84_Y40_N12
\inst10|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~3_combout\ = (\inst10|s_debounceCnt\(16)) # ((\inst10|s_debounceCnt\(17)) # (\inst10|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(16),
	datac => \inst10|s_debounceCnt\(17),
	datad => \inst10|s_debounceCnt\(15),
	combout => \inst10|LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y40_N12
\inst10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~0_combout\ = (\inst10|s_debounceCnt\(7)) # ((\inst10|s_debounceCnt\(6) & ((\inst10|s_debounceCnt\(0)) # (!\inst10|s_pulsedOut~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(7),
	datab => \inst10|s_debounceCnt\(6),
	datac => \inst10|s_debounceCnt\(0),
	datad => \inst10|s_pulsedOut~6_combout\,
	combout => \inst10|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y40_N2
\inst10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~1_combout\ = (\inst10|s_debounceCnt\(10)) # ((\inst10|s_debounceCnt\(9) & (\inst10|s_debounceCnt\(8) & \inst10|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(9),
	datab => \inst10|s_debounceCnt\(10),
	datac => \inst10|s_debounceCnt\(8),
	datad => \inst10|LessThan0~0_combout\,
	combout => \inst10|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y40_N16
\inst10|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~2_combout\ = (\inst10|s_debounceCnt\(13)) # ((\inst10|s_debounceCnt\(12)) # ((\inst10|s_debounceCnt\(11) & \inst10|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(11),
	datab => \inst10|s_debounceCnt\(13),
	datac => \inst10|s_debounceCnt\(12),
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y40_N18
\inst10|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~4_combout\ = (\inst10|s_debounceCnt\(18) & ((\inst10|LessThan0~3_combout\) # ((\inst10|s_debounceCnt\(14) & \inst10|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(14),
	datab => \inst10|s_debounceCnt\(18),
	datac => \inst10|LessThan0~3_combout\,
	datad => \inst10|LessThan0~2_combout\,
	combout => \inst10|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y40_N20
\inst10|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~5_combout\ = (\inst10|s_debounceCnt\(21)) # ((\inst10|s_debounceCnt\(20)) # ((\inst10|s_debounceCnt\(19) & \inst10|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(21),
	datab => \inst10|s_debounceCnt\(19),
	datac => \inst10|s_debounceCnt\(20),
	datad => \inst10|LessThan0~4_combout\,
	combout => \inst10|LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y40_N10
\inst10|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~0_combout\ = (\inst10|s_dirtyIn~q\ & ((!\inst10|LessThan0~5_combout\) # (!\inst10|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datac => \inst10|s_dirtyIn~q\,
	datad => \inst10|LessThan0~5_combout\,
	combout => \inst10|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X83_Y41_N22
\inst10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = (\inst10|s_debounceCnt\(6) & ((GND) # (!\inst10|Add0~11\))) # (!\inst10|s_debounceCnt\(6) & (\inst10|Add0~11\ $ (GND)))
-- \inst10|Add0~13\ = CARRY((\inst10|s_debounceCnt\(6)) # (!\inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: LCCOMB_X82_Y40_N0
\inst10|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~1_combout\ = (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~12_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[18]~0_combout\,
	datab => \inst10|s_previousIn~q\,
	datad => \inst10|Add0~12_combout\,
	combout => \inst10|s_debounceCnt~1_combout\);

-- Location: FF_X82_Y40_N1
\inst10|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~1_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(6));

-- Location: LCCOMB_X83_Y41_N24
\inst10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|s_debounceCnt\(7) & (\inst10|Add0~13\ & VCC)) # (!\inst10|s_debounceCnt\(7) & (!\inst10|Add0~13\))
-- \inst10|Add0~15\ = CARRY((!\inst10|s_debounceCnt\(7) & !\inst10|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: LCCOMB_X82_Y40_N26
\inst10|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~12_combout\ = (\inst10|Add0~14_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~14_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~12_combout\);

-- Location: FF_X82_Y40_N27
\inst10|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~12_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(7));

-- Location: LCCOMB_X83_Y41_N26
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

-- Location: LCCOMB_X82_Y40_N8
\inst10|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~13_combout\ = (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~16_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~16_combout\,
	datab => \inst10|s_previousIn~q\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y40_N9
\inst10|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~13_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(8));

-- Location: LCCOMB_X83_Y41_N28
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

-- Location: LCCOMB_X82_Y40_N30
\inst10|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~14_combout\ = (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~18_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~18_combout\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt~14_combout\);

-- Location: FF_X82_Y40_N31
\inst10|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~14_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(9));

-- Location: LCCOMB_X83_Y41_N30
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

-- Location: LCCOMB_X82_Y40_N28
\inst10|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~15_combout\ = (\inst10|Add0~20_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~20_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~15_combout\);

-- Location: FF_X82_Y40_N29
\inst10|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~15_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(10));

-- Location: LCCOMB_X84_Y40_N6
\inst10|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~16_combout\ = (\inst10|s_debounceCnt[18]~0_combout\ & ((\inst10|Add0~22_combout\) # (!\inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_previousIn~q\,
	datac => \inst10|Add0~22_combout\,
	datad => \inst10|s_debounceCnt[18]~0_combout\,
	combout => \inst10|s_debounceCnt~16_combout\);

-- Location: FF_X84_Y40_N7
\inst10|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~16_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(11));

-- Location: LCCOMB_X84_Y40_N22
\inst10|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~3_combout\ = (!\inst10|s_debounceCnt\(11) & (!\inst10|s_debounceCnt\(14) & (!\inst10|s_debounceCnt\(19) & !\inst10|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(11),
	datab => \inst10|s_debounceCnt\(14),
	datac => \inst10|s_debounceCnt\(19),
	datad => \inst10|s_debounceCnt\(18),
	combout => \inst10|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X84_Y40_N24
\inst10|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~1_combout\ = (!\inst10|s_debounceCnt\(12) & (!\inst10|s_debounceCnt\(21) & (!\inst10|s_debounceCnt\(13) & !\inst10|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(12),
	datab => \inst10|s_debounceCnt\(21),
	datac => \inst10|s_debounceCnt\(13),
	datad => \inst10|s_debounceCnt\(20),
	combout => \inst10|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X82_Y40_N14
\inst10|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~2_combout\ = (!\inst10|s_debounceCnt\(9) & (!\inst10|s_debounceCnt\(10) & (!\inst10|s_debounceCnt\(8) & !\inst10|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(9),
	datab => \inst10|s_debounceCnt\(10),
	datac => \inst10|s_debounceCnt\(8),
	datad => \inst10|s_debounceCnt\(7),
	combout => \inst10|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X84_Y40_N0
\inst10|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~0_combout\ = (!\inst10|s_debounceCnt\(16) & (!\inst10|s_debounceCnt\(17) & (!\inst10|s_debounceCnt\(6) & !\inst10|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(16),
	datab => \inst10|s_debounceCnt\(17),
	datac => \inst10|s_debounceCnt\(6),
	datad => \inst10|s_debounceCnt\(15),
	combout => \inst10|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X84_Y40_N10
\inst10|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~4_combout\ = (\inst10|s_pulsedOut~3_combout\ & (\inst10|s_pulsedOut~1_combout\ & (\inst10|s_pulsedOut~2_combout\ & \inst10|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_pulsedOut~3_combout\,
	datab => \inst10|s_pulsedOut~1_combout\,
	datac => \inst10|s_pulsedOut~2_combout\,
	datad => \inst10|s_pulsedOut~0_combout\,
	combout => \inst10|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X84_Y40_N28
\inst10|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~2_combout\ = (\inst10|s_debounceCnt\(0)) # ((!\inst10|s_pulsedOut~4_combout\) # (!\inst10|s_pulsedOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(0),
	datac => \inst10|s_pulsedOut~6_combout\,
	datad => \inst10|s_pulsedOut~4_combout\,
	combout => \inst10|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X82_Y40_N22
\inst10|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[22]~26_combout\ = (\inst10|s_debounceCnt\(22) & (((!\inst10|LessThan0~5_combout\)))) # (!\inst10|s_debounceCnt\(22) & ((\inst10|s_debounceCnt[18]~2_combout\) # ((!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_debounceCnt[18]~2_combout\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|LessThan0~5_combout\,
	combout => \inst10|s_debounceCnt[22]~26_combout\);

-- Location: LCCOMB_X83_Y40_N22
\inst10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~44_combout\ = \inst10|s_debounceCnt\(22) $ (\inst10|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_debounceCnt\(22),
	cin => \inst10|Add0~43\,
	combout => \inst10|Add0~44_combout\);

-- Location: LCCOMB_X82_Y40_N6
\inst10|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[22]~27_combout\ = (\inst10|s_debounceCnt[22]~26_combout\ & (\inst10|s_dirtyIn~q\ & ((\inst10|Add0~44_combout\) # (!\inst10|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt[22]~26_combout\,
	datab => \inst10|s_dirtyIn~q\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|Add0~44_combout\,
	combout => \inst10|s_debounceCnt[22]~27_combout\);

-- Location: FF_X82_Y40_N7
\inst10|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(22));

-- Location: LCCOMB_X82_Y40_N24
\inst10|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt[18]~4_combout\ = (\inst10|s_dirtyIn~q\ & (\inst10|s_previousIn~q\ & ((!\inst10|LessThan0~5_combout\) # (!\inst10|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(22),
	datab => \inst10|s_dirtyIn~q\,
	datac => \inst10|s_previousIn~q\,
	datad => \inst10|LessThan0~5_combout\,
	combout => \inst10|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X82_Y40_N4
\inst10|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_debounceCnt~25_combout\ = (\inst10|Add0~0_combout\ & \inst10|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~0_combout\,
	datad => \inst10|s_debounceCnt[18]~4_combout\,
	combout => \inst10|s_debounceCnt~25_combout\);

-- Location: FF_X82_Y40_N5
\inst10|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_debounceCnt~25_combout\,
	ena => \inst10|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_debounceCnt\(0));

-- Location: LCCOMB_X84_Y40_N14
\inst10|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~7_combout\ = (\inst10|s_debounceCnt\(0) & (!\inst10|s_debounceCnt\(22) & (\inst10|s_dirtyIn~q\ & \inst10|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_debounceCnt\(0),
	datab => \inst10|s_debounceCnt\(22),
	datac => \inst10|s_dirtyIn~q\,
	datad => \inst10|s_previousIn~q\,
	combout => \inst10|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X84_Y40_N26
\inst10|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_pulsedOut~8_combout\ = (\inst10|s_pulsedOut~7_combout\ & (\inst10|s_pulsedOut~6_combout\ & \inst10|s_pulsedOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_pulsedOut~7_combout\,
	datac => \inst10|s_pulsedOut~6_combout\,
	datad => \inst10|s_pulsedOut~4_combout\,
	combout => \inst10|s_pulsedOut~8_combout\);

-- Location: FF_X84_Y40_N27
\inst10|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_pulsedOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_pulsedOut~q\);

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

-- Location: FF_X74_Y50_N5
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

-- Location: LCCOMB_X73_Y50_N12
\inst11|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_previousIn~feeder_combout\ = \inst11|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_dirtyIn~q\,
	combout => \inst11|s_previousIn~feeder_combout\);

-- Location: FF_X73_Y50_N13
\inst11|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_previousIn~q\);

-- Location: LCCOMB_X74_Y49_N10
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

-- Location: LCCOMB_X75_Y50_N30
\inst11|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~26_combout\ = (\inst11|s_debounceCnt[20]~5_combout\ & \inst11|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	datad => \inst11|Add0~0_combout\,
	combout => \inst11|s_debounceCnt~26_combout\);

-- Location: LCCOMB_X73_Y50_N22
\inst11|s_debounceCnt[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~4_combout\ = (((\inst11|s_debounceCnt\(22)) # (\inst11|s_debounceCnt[20]~29_combout\)) # (!\inst11|s_dirtyIn~q\)) # (!\inst11|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_dirtyIn~q\,
	datac => \inst11|s_debounceCnt\(22),
	datad => \inst11|s_debounceCnt[20]~29_combout\,
	combout => \inst11|s_debounceCnt[20]~4_combout\);

-- Location: FF_X75_Y50_N31
\inst11|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~26_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(0));

-- Location: LCCOMB_X74_Y49_N12
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|s_debounceCnt\(1) & (\inst11|Add0~1\ & VCC)) # (!\inst11|s_debounceCnt\(1) & (!\inst11|Add0~1\))
-- \inst11|Add0~3\ = CARRY((!\inst11|s_debounceCnt\(1) & !\inst11|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X75_Y50_N24
\inst11|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~21_combout\ = (\inst11|s_debounceCnt[20]~5_combout\ & \inst11|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	datad => \inst11|Add0~2_combout\,
	combout => \inst11|s_debounceCnt~21_combout\);

-- Location: FF_X75_Y50_N25
\inst11|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~21_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(1));

-- Location: LCCOMB_X74_Y49_N14
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

-- Location: LCCOMB_X75_Y50_N6
\inst11|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~22_combout\ = (\inst11|Add0~4_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~4_combout\,
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~22_combout\);

-- Location: FF_X75_Y50_N7
\inst11|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~22_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y49_N16
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|s_debounceCnt\(3) & (\inst11|Add0~5\ & VCC)) # (!\inst11|s_debounceCnt\(3) & (!\inst11|Add0~5\))
-- \inst11|Add0~7\ = CARRY((!\inst11|s_debounceCnt\(3) & !\inst11|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X75_Y50_N4
\inst11|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~23_combout\ = (\inst11|Add0~6_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~6_combout\,
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~23_combout\);

-- Location: FF_X75_Y50_N5
\inst11|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~23_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y49_N18
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|s_debounceCnt\(4) & ((GND) # (!\inst11|Add0~7\))) # (!\inst11|s_debounceCnt\(4) & (\inst11|Add0~7\ $ (GND)))
-- \inst11|Add0~9\ = CARRY((\inst11|s_debounceCnt\(4)) # (!\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X74_Y49_N20
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|s_debounceCnt\(5) & (\inst11|Add0~9\ & VCC)) # (!\inst11|s_debounceCnt\(5) & (!\inst11|Add0~9\))
-- \inst11|Add0~11\ = CARRY((!\inst11|s_debounceCnt\(5) & !\inst11|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X75_Y50_N22
\inst11|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~25_combout\ = (\inst11|Add0~10_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~10_combout\,
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~25_combout\);

-- Location: FF_X75_Y50_N23
\inst11|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~25_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(5));

-- Location: LCCOMB_X74_Y49_N22
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|s_debounceCnt\(6) & ((GND) # (!\inst11|Add0~11\))) # (!\inst11|s_debounceCnt\(6) & (\inst11|Add0~11\ $ (GND)))
-- \inst11|Add0~13\ = CARRY((\inst11|s_debounceCnt\(6)) # (!\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X74_Y48_N4
\inst11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|s_debounceCnt\(13) & (\inst11|Add0~25\ & VCC)) # (!\inst11|s_debounceCnt\(13) & (!\inst11|Add0~25\))
-- \inst11|Add0~27\ = CARRY((!\inst11|s_debounceCnt\(13) & !\inst11|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: LCCOMB_X74_Y48_N6
\inst11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|s_debounceCnt\(14) & ((GND) # (!\inst11|Add0~27\))) # (!\inst11|s_debounceCnt\(14) & (\inst11|Add0~27\ $ (GND)))
-- \inst11|Add0~29\ = CARRY((\inst11|s_debounceCnt\(14)) # (!\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: LCCOMB_X74_Y48_N28
\inst11|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~18_combout\ = (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~28_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~28_combout\,
	datab => \inst11|s_previousIn~q\,
	datad => \inst11|s_debounceCnt[20]~2_combout\,
	combout => \inst11|s_debounceCnt~18_combout\);

-- Location: FF_X74_Y48_N29
\inst11|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~18_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(14));

-- Location: LCCOMB_X74_Y48_N8
\inst11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|s_debounceCnt\(15) & (\inst11|Add0~29\ & VCC)) # (!\inst11|s_debounceCnt\(15) & (!\inst11|Add0~29\))
-- \inst11|Add0~31\ = CARRY((!\inst11|s_debounceCnt\(15) & !\inst11|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: LCCOMB_X74_Y50_N0
\inst11|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~6_combout\ = (\inst11|Add0~30_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~30_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~6_combout\);

-- Location: FF_X74_Y50_N1
\inst11|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~6_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(15));

-- Location: LCCOMB_X74_Y48_N10
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

-- Location: LCCOMB_X74_Y48_N24
\inst11|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~7_combout\ = (\inst11|Add0~32_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~32_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~7_combout\);

-- Location: FF_X74_Y48_N25
\inst11|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~7_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(16));

-- Location: LCCOMB_X74_Y48_N12
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

-- Location: LCCOMB_X74_Y50_N26
\inst11|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~8_combout\ = (\inst11|Add0~34_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~34_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~8_combout\);

-- Location: FF_X74_Y50_N27
\inst11|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~8_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y48_N14
\inst11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|s_debounceCnt\(18) & ((GND) # (!\inst11|Add0~35\))) # (!\inst11|s_debounceCnt\(18) & (\inst11|Add0~35\ $ (GND)))
-- \inst11|Add0~37\ = CARRY((\inst11|s_debounceCnt\(18)) # (!\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: LCCOMB_X74_Y50_N8
\inst11|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[18]~19_combout\ = (\inst11|s_debounceCnt[20]~4_combout\ & (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~36_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt[20]~4_combout\,
	datac => \inst11|s_debounceCnt[20]~2_combout\,
	datad => \inst11|Add0~36_combout\,
	combout => \inst11|s_debounceCnt[18]~19_combout\);

-- Location: FF_X74_Y50_N9
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

-- Location: LCCOMB_X74_Y48_N16
\inst11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|s_debounceCnt\(19) & (\inst11|Add0~37\ & VCC)) # (!\inst11|s_debounceCnt\(19) & (!\inst11|Add0~37\))
-- \inst11|Add0~39\ = CARRY((!\inst11|s_debounceCnt\(19) & !\inst11|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: LCCOMB_X74_Y50_N18
\inst11|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[19]~20_combout\ = (\inst11|s_debounceCnt[20]~4_combout\ & (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~38_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt[20]~4_combout\,
	datac => \inst11|s_debounceCnt[20]~2_combout\,
	datad => \inst11|Add0~38_combout\,
	combout => \inst11|s_debounceCnt[19]~20_combout\);

-- Location: FF_X74_Y50_N19
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

-- Location: LCCOMB_X74_Y48_N18
\inst11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|s_debounceCnt\(20) & ((GND) # (!\inst11|Add0~39\))) # (!\inst11|s_debounceCnt\(20) & (\inst11|Add0~39\ $ (GND)))
-- \inst11|Add0~41\ = CARRY((\inst11|s_debounceCnt\(20)) # (!\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: LCCOMB_X74_Y50_N28
\inst11|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~9_combout\ = (\inst11|s_debounceCnt[20]~4_combout\ & (\inst11|Add0~40_combout\ & \inst11|s_debounceCnt[20]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt[20]~4_combout\,
	datac => \inst11|Add0~40_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt[20]~9_combout\);

-- Location: FF_X74_Y50_N29
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

-- Location: LCCOMB_X74_Y48_N20
\inst11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|s_debounceCnt\(21) & (\inst11|Add0~41\ & VCC)) # (!\inst11|s_debounceCnt\(21) & (!\inst11|Add0~41\))
-- \inst11|Add0~43\ = CARRY((!\inst11|s_debounceCnt\(21) & !\inst11|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: LCCOMB_X74_Y48_N30
\inst11|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[21]~10_combout\ = (\inst11|s_debounceCnt[20]~4_combout\ & (\inst11|Add0~42_combout\ & \inst11|s_debounceCnt[20]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt[20]~4_combout\,
	datac => \inst11|Add0~42_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt[21]~10_combout\);

-- Location: FF_X74_Y48_N31
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

-- Location: LCCOMB_X73_Y50_N20
\inst11|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~5_combout\ = (!\inst11|s_debounceCnt\(21) & !\inst11|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(21),
	datad => \inst11|s_debounceCnt\(20),
	combout => \inst11|LessThan0~5_combout\);

-- Location: LCCOMB_X74_Y50_N4
\inst11|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~2_combout\ = (!\inst11|s_debounceCnt\(13) & !\inst11|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(13),
	datad => \inst11|s_debounceCnt\(12),
	combout => \inst11|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y50_N16
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

-- Location: LCCOMB_X75_Y50_N20
\inst11|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (\inst11|s_debounceCnt\(7)) # ((\inst11|s_debounceCnt\(6) & ((\inst11|s_debounceCnt\(0)) # (!\inst11|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(0),
	datab => \inst11|s_debounceCnt\(7),
	datac => \inst11|s_debounceCnt\(6),
	datad => \inst11|s_pulsedOut~8_combout\,
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y50_N2
\inst11|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (\inst11|s_debounceCnt\(10)) # ((\inst11|s_debounceCnt\(9) & (\inst11|s_debounceCnt\(8) & \inst11|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(10),
	datab => \inst11|s_debounceCnt\(9),
	datac => \inst11|s_debounceCnt\(8),
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y50_N24
\inst11|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~3_combout\ = (\inst11|s_debounceCnt\(14) & (((\inst11|s_debounceCnt\(11) & \inst11|LessThan0~1_combout\)) # (!\inst11|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(14),
	datab => \inst11|s_debounceCnt\(11),
	datac => \inst11|LessThan0~2_combout\,
	datad => \inst11|LessThan0~1_combout\,
	combout => \inst11|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y50_N6
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

-- Location: LCCOMB_X74_Y50_N12
\inst11|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~6_combout\ = ((\inst11|s_debounceCnt\(19) & (\inst11|s_debounceCnt\(18) & \inst11|LessThan0~4_combout\))) # (!\inst11|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(19),
	datab => \inst11|LessThan0~5_combout\,
	datac => \inst11|s_debounceCnt\(18),
	datad => \inst11|LessThan0~4_combout\,
	combout => \inst11|LessThan0~6_combout\);

-- Location: LCCOMB_X74_Y50_N14
\inst11|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~2_combout\ = (\inst11|s_dirtyIn~q\ & ((!\inst11|LessThan0~6_combout\) # (!\inst11|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(22),
	datac => \inst11|s_dirtyIn~q\,
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X75_Y50_N0
\inst11|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~3_combout\ = (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~12_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datac => \inst11|Add0~12_combout\,
	datad => \inst11|s_debounceCnt[20]~2_combout\,
	combout => \inst11|s_debounceCnt~3_combout\);

-- Location: FF_X75_Y50_N1
\inst11|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~3_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(6));

-- Location: LCCOMB_X74_Y49_N24
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

-- Location: LCCOMB_X75_Y50_N14
\inst11|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~13_combout\ = (\inst11|s_debounceCnt[20]~5_combout\ & \inst11|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	datad => \inst11|Add0~14_combout\,
	combout => \inst11|s_debounceCnt~13_combout\);

-- Location: FF_X75_Y50_N15
\inst11|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~13_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(7));

-- Location: LCCOMB_X74_Y49_N26
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

-- Location: LCCOMB_X75_Y50_N8
\inst11|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~14_combout\ = (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~16_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datac => \inst11|Add0~16_combout\,
	datad => \inst11|s_debounceCnt[20]~2_combout\,
	combout => \inst11|s_debounceCnt~14_combout\);

-- Location: FF_X75_Y50_N9
\inst11|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~14_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y49_N28
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

-- Location: LCCOMB_X75_Y50_N18
\inst11|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~15_combout\ = (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~18_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datac => \inst11|Add0~18_combout\,
	datad => \inst11|s_debounceCnt[20]~2_combout\,
	combout => \inst11|s_debounceCnt~15_combout\);

-- Location: FF_X75_Y50_N19
\inst11|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~15_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(9));

-- Location: LCCOMB_X74_Y49_N30
\inst11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|s_debounceCnt\(10) & ((GND) # (!\inst11|Add0~19\))) # (!\inst11|s_debounceCnt\(10) & (\inst11|Add0~19\ $ (GND)))
-- \inst11|Add0~21\ = CARRY((\inst11|s_debounceCnt\(10)) # (!\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: LCCOMB_X75_Y50_N28
\inst11|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~16_combout\ = (\inst11|Add0~20_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~20_combout\,
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~16_combout\);

-- Location: FF_X75_Y50_N29
\inst11|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~16_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(10));

-- Location: LCCOMB_X74_Y48_N0
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

-- Location: LCCOMB_X74_Y50_N2
\inst11|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~17_combout\ = (\inst11|s_debounceCnt[20]~2_combout\ & ((\inst11|Add0~22_combout\) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|Add0~22_combout\,
	datac => \inst11|s_debounceCnt[20]~2_combout\,
	combout => \inst11|s_debounceCnt~17_combout\);

-- Location: FF_X74_Y50_N3
\inst11|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~17_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(11));

-- Location: LCCOMB_X74_Y48_N2
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

-- Location: LCCOMB_X74_Y50_N10
\inst11|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~11_combout\ = (\inst11|Add0~24_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~24_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~11_combout\);

-- Location: FF_X74_Y50_N11
\inst11|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~11_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(12));

-- Location: LCCOMB_X74_Y50_N20
\inst11|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~12_combout\ = (\inst11|Add0~26_combout\ & \inst11|s_debounceCnt[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~26_combout\,
	datad => \inst11|s_debounceCnt[20]~5_combout\,
	combout => \inst11|s_debounceCnt~12_combout\);

-- Location: FF_X74_Y50_N21
\inst11|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~12_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(13));

-- Location: LCCOMB_X73_Y50_N26
\inst11|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~3_combout\ = (!\inst11|s_debounceCnt\(13) & (!\inst11|s_debounceCnt\(20) & (!\inst11|s_debounceCnt\(12) & !\inst11|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(13),
	datab => \inst11|s_debounceCnt\(20),
	datac => \inst11|s_debounceCnt\(12),
	datad => \inst11|s_debounceCnt\(21),
	combout => \inst11|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X73_Y50_N8
\inst11|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~5_combout\ = (!\inst11|s_debounceCnt\(18) & (!\inst11|s_debounceCnt\(19) & (!\inst11|s_debounceCnt\(11) & !\inst11|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(18),
	datab => \inst11|s_debounceCnt\(19),
	datac => \inst11|s_debounceCnt\(11),
	datad => \inst11|s_debounceCnt\(14),
	combout => \inst11|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X75_Y50_N10
\inst11|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~4_combout\ = (!\inst11|s_debounceCnt\(8) & (!\inst11|s_debounceCnt\(7) & (!\inst11|s_debounceCnt\(10) & !\inst11|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(8),
	datab => \inst11|s_debounceCnt\(7),
	datac => \inst11|s_debounceCnt\(10),
	datad => \inst11|s_debounceCnt\(9),
	combout => \inst11|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X73_Y50_N28
\inst11|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~2_combout\ = (!\inst11|s_debounceCnt\(15) & (!\inst11|s_debounceCnt\(17) & (!\inst11|s_debounceCnt\(6) & !\inst11|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(15),
	datab => \inst11|s_debounceCnt\(17),
	datac => \inst11|s_debounceCnt\(6),
	datad => \inst11|s_debounceCnt\(16),
	combout => \inst11|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X73_Y50_N10
\inst11|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~6_combout\ = (\inst11|s_pulsedOut~3_combout\ & (\inst11|s_pulsedOut~5_combout\ & (\inst11|s_pulsedOut~4_combout\ & \inst11|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~3_combout\,
	datab => \inst11|s_pulsedOut~5_combout\,
	datac => \inst11|s_pulsedOut~4_combout\,
	datad => \inst11|s_pulsedOut~2_combout\,
	combout => \inst11|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X73_Y50_N16
\inst11|s_debounceCnt[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~29_combout\ = (\inst11|s_debounceCnt\(0)) # ((\inst11|s_debounceCnt\(5)) # ((!\inst11|s_pulsedOut~6_combout\) # (!\inst11|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(0),
	datab => \inst11|s_debounceCnt\(5),
	datac => \inst11|s_pulsedOut~7_combout\,
	datad => \inst11|s_pulsedOut~6_combout\,
	combout => \inst11|s_debounceCnt[20]~29_combout\);

-- Location: LCCOMB_X74_Y50_N30
\inst11|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[22]~27_combout\ = (\inst11|s_debounceCnt\(22) & (((!\inst11|LessThan0~6_combout\)))) # (!\inst11|s_debounceCnt\(22) & (((\inst11|s_debounceCnt[20]~29_combout\)) # (!\inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt\(22),
	datac => \inst11|s_debounceCnt[20]~29_combout\,
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X74_Y48_N22
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

-- Location: LCCOMB_X74_Y50_N22
\inst11|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[22]~28_combout\ = (\inst11|s_dirtyIn~q\ & (\inst11|s_debounceCnt[22]~27_combout\ & ((\inst11|Add0~44_combout\) # (!\inst11|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_dirtyIn~q\,
	datac => \inst11|s_debounceCnt[22]~27_combout\,
	datad => \inst11|Add0~44_combout\,
	combout => \inst11|s_debounceCnt[22]~28_combout\);

-- Location: FF_X74_Y50_N23
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

-- Location: LCCOMB_X74_Y50_N16
\inst11|s_debounceCnt[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt[20]~5_combout\ = (\inst11|s_previousIn~q\ & (\inst11|s_dirtyIn~q\ & ((!\inst11|LessThan0~6_combout\) # (!\inst11|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_previousIn~q\,
	datab => \inst11|s_debounceCnt\(22),
	datac => \inst11|s_dirtyIn~q\,
	datad => \inst11|LessThan0~6_combout\,
	combout => \inst11|s_debounceCnt[20]~5_combout\);

-- Location: LCCOMB_X75_Y50_N26
\inst11|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_debounceCnt~24_combout\ = (\inst11|s_debounceCnt[20]~5_combout\ & \inst11|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|s_debounceCnt[20]~5_combout\,
	datad => \inst11|Add0~8_combout\,
	combout => \inst11|s_debounceCnt~24_combout\);

-- Location: FF_X75_Y50_N27
\inst11|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_debounceCnt~24_combout\,
	ena => \inst11|s_debounceCnt[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_debounceCnt\(4));

-- Location: LCCOMB_X75_Y50_N12
\inst11|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~7_combout\ = (!\inst11|s_debounceCnt\(4) & (!\inst11|s_debounceCnt\(1) & (!\inst11|s_debounceCnt\(3) & !\inst11|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(4),
	datab => \inst11|s_debounceCnt\(1),
	datac => \inst11|s_debounceCnt\(3),
	datad => \inst11|s_debounceCnt\(2),
	combout => \inst11|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X73_Y50_N18
\inst11|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~9_combout\ = (\inst11|s_debounceCnt\(0) & (\inst11|s_dirtyIn~q\ & (!\inst11|s_debounceCnt\(22) & \inst11|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_debounceCnt\(0),
	datab => \inst11|s_dirtyIn~q\,
	datac => \inst11|s_debounceCnt\(22),
	datad => \inst11|s_previousIn~q\,
	combout => \inst11|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X72_Y50_N4
\inst11|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_pulsedOut~10_combout\ = (\inst11|s_pulsedOut~7_combout\ & (!\inst11|s_debounceCnt\(5) & (\inst11|s_pulsedOut~6_combout\ & \inst11|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~7_combout\,
	datab => \inst11|s_debounceCnt\(5),
	datac => \inst11|s_pulsedOut~6_combout\,
	datad => \inst11|s_pulsedOut~9_combout\,
	combout => \inst11|s_pulsedOut~10_combout\);

-- Location: FF_X72_Y50_N5
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

-- Location: LCCOMB_X67_Y40_N10
\inst19|NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|NS~1_combout\ = (\inst12|s_pulsedOut~q\) # ((\inst13|s_pulsedOut~q\) # ((\inst10|s_pulsedOut~q\) # (\inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst10|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst19|NS~1_combout\);

-- Location: LCCOMB_X70_Y40_N20
\inst22|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector0~2_combout\ = (!\inst22|PS.E0~q\ & !\inst19|NS~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|PS.E0~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector0~2_combout\);

-- Location: LCCOMB_X70_Y40_N14
\inst22|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|PS~18_combout\ = (\inst6|PS.CL~q\ & (!\inst22|Selector0~2_combout\ & ((!\inst28|s_led~q\) # (!\inst22|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CL~q\,
	datab => \inst22|Selector0~1_combout\,
	datac => \inst28|s_led~q\,
	datad => \inst22|Selector0~2_combout\,
	combout => \inst22|PS~18_combout\);

-- Location: FF_X70_Y40_N15
\inst22|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E0~q\);

-- Location: LCCOMB_X70_Y40_N28
\inst22|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector1~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst22|PS.E1~q\ & !\inst19|NS~1_combout\)) # (!\inst22|PS.E0~q\))) # (!\inst13|s_pulsedOut~q\ & (((\inst22|PS.E1~q\ & !\inst19|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E0~q\,
	datac => \inst22|PS.E1~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector1~0_combout\);

-- Location: FF_X70_Y40_N29
\inst22|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector1~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E1~q\);

-- Location: LCCOMB_X70_Y40_N22
\inst22|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector2~0_combout\ = (\inst13|s_pulsedOut~q\ & (\inst22|PS.E1~q\)) # (!\inst13|s_pulsedOut~q\ & (((!\inst22|PS.E0~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E1~q\,
	datac => \inst22|PS.E0~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst22|Selector2~0_combout\);

-- Location: LCCOMB_X70_Y40_N18
\inst22|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector2~1_combout\ = (\inst22|Selector2~0_combout\) # ((\inst22|PS.E2~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Selector2~0_combout\,
	datac => \inst22|PS.E2~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector2~1_combout\);

-- Location: FF_X70_Y40_N19
\inst22|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector2~1_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E2~q\);

-- Location: LCCOMB_X70_Y40_N10
\inst22|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector3~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst22|PS.E2~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst22|PS.E1~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E1~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst22|PS.E2~q\,
	combout => \inst22|Selector3~0_combout\);

-- Location: LCCOMB_X70_Y40_N24
\inst22|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector3~1_combout\ = (\inst22|Selector3~0_combout\) # ((\inst22|PS.E3~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Selector3~0_combout\,
	datac => \inst22|PS.E3~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector3~1_combout\);

-- Location: FF_X70_Y40_N25
\inst22|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector3~1_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E3~q\);

-- Location: LCCOMB_X70_Y40_N30
\inst22|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector4~0_combout\ = (!\inst13|s_pulsedOut~q\ & (!\inst22|PS.E0~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E0~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst22|Selector4~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\inst22|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector4~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst22|PS.E3~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst12|s_pulsedOut~q\ & \inst22|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E3~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst22|PS.E2~q\,
	combout => \inst22|Selector4~1_combout\);

-- Location: LCCOMB_X70_Y40_N26
\inst22|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector4~2_combout\ = (\inst22|Selector4~0_combout\) # ((\inst22|Selector4~1_combout\) # ((\inst22|PS.E4~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Selector4~0_combout\,
	datab => \inst22|Selector4~1_combout\,
	datac => \inst22|PS.E4~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector4~2_combout\);

-- Location: FF_X70_Y40_N27
\inst22|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector4~2_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E4~q\);

-- Location: LCCOMB_X70_Y40_N6
\inst22|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector5~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst22|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst22|PS.E3~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E3~q\,
	datac => \inst22|PS.E4~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst22|Selector5~1_combout\);

-- Location: LCCOMB_X70_Y40_N4
\inst22|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector5~0_combout\ = (!\inst13|s_pulsedOut~q\ & (\inst22|PS.E1~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E1~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst22|Selector5~0_combout\);

-- Location: LCCOMB_X70_Y40_N8
\inst22|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector5~2_combout\ = (\inst22|Selector5~1_combout\) # ((\inst22|Selector5~0_combout\) # ((\inst22|PS.E5~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Selector5~1_combout\,
	datab => \inst22|Selector5~0_combout\,
	datac => \inst22|PS.E5~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst22|Selector5~2_combout\);

-- Location: FF_X70_Y40_N9
\inst22|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector5~2_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E5~q\);

-- Location: LCCOMB_X70_Y40_N12
\inst22|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector0~0_combout\ = (!\inst22|PS.E4~q\ & (!\inst22|PS.E1~q\ & (\inst22|PS.E0~q\ & !\inst22|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E4~q\,
	datab => \inst22|PS.E1~q\,
	datac => \inst22|PS.E0~q\,
	datad => \inst22|PS.E3~q\,
	combout => \inst22|Selector0~0_combout\);

-- Location: LCCOMB_X70_Y40_N2
\inst22|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector0~1_combout\ = (!\inst22|PS.E2~q\ & (!\inst22|PS.E5~q\ & \inst22|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|PS.E2~q\,
	datac => \inst22|PS.E5~q\,
	datad => \inst22|Selector0~0_combout\,
	combout => \inst22|Selector0~1_combout\);

-- Location: LCCOMB_X65_Y41_N20
\inst23|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector0~2_combout\ = (!\inst23|PS.E0~q\ & !\inst19|NS~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|PS.E0~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst23|Selector0~2_combout\);

-- Location: LCCOMB_X65_Y41_N26
\inst23|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|PS~18_combout\ = (\inst6|PS.CC~q\ & (!\inst23|Selector0~2_combout\ & ((!\inst23|Selector0~1_combout\) # (!\inst28|s_led~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst23|Selector0~1_combout\,
	datac => \inst6|PS.CC~q\,
	datad => \inst23|Selector0~2_combout\,
	combout => \inst23|PS~18_combout\);

-- Location: FF_X65_Y41_N27
\inst23|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E0~q\);

-- Location: LCCOMB_X65_Y41_N12
\inst23|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector1~0_combout\ = (\inst23|PS.E0~q\ & (((\inst23|PS.E1~q\ & !\inst19|NS~1_combout\)))) # (!\inst23|PS.E0~q\ & ((\inst13|s_pulsedOut~q\) # ((\inst23|PS.E1~q\ & !\inst19|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E0~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst23|PS.E1~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst23|Selector1~0_combout\);

-- Location: FF_X65_Y41_N13
\inst23|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector1~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E1~q\);

-- Location: LCCOMB_X65_Y41_N22
\inst23|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector2~0_combout\ = (\inst13|s_pulsedOut~q\ & (\inst23|PS.E1~q\)) # (!\inst13|s_pulsedOut~q\ & (((!\inst23|PS.E0~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E1~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst23|PS.E0~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst23|Selector2~0_combout\);

-- Location: LCCOMB_X65_Y41_N6
\inst23|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector2~1_combout\ = (\inst23|Selector2~0_combout\) # ((\inst23|PS.E2~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Selector2~0_combout\,
	datac => \inst23|PS.E2~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst23|Selector2~1_combout\);

-- Location: FF_X65_Y41_N7
\inst23|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector2~1_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E2~q\);

-- Location: LCCOMB_X65_Y41_N18
\inst23|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector3~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst23|PS.E2~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst23|PS.E1~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E1~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst23|PS.E2~q\,
	combout => \inst23|Selector3~0_combout\);

-- Location: LCCOMB_X65_Y40_N6
\inst23|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector3~1_combout\ = (\inst23|Selector3~0_combout\) # ((!\inst19|NS~1_combout\ & \inst23|PS.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~1_combout\,
	datac => \inst23|PS.E3~q\,
	datad => \inst23|Selector3~0_combout\,
	combout => \inst23|Selector3~1_combout\);

-- Location: FF_X65_Y40_N7
\inst23|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector3~1_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E3~q\);

-- Location: LCCOMB_X65_Y41_N10
\inst23|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector4~0_combout\ = (!\inst23|PS.E0~q\ & (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E0~q\,
	datab => \inst12|s_pulsedOut~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst23|Selector4~0_combout\);

-- Location: LCCOMB_X65_Y41_N0
\inst23|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector4~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst23|PS.E3~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst12|s_pulsedOut~q\ & \inst23|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E3~q\,
	datab => \inst12|s_pulsedOut~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst23|PS.E2~q\,
	combout => \inst23|Selector4~1_combout\);

-- Location: LCCOMB_X65_Y41_N28
\inst23|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector4~2_combout\ = (\inst23|Selector4~0_combout\) # ((\inst23|Selector4~1_combout\) # ((\inst23|PS.E4~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Selector4~0_combout\,
	datab => \inst23|Selector4~1_combout\,
	datac => \inst23|PS.E4~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst23|Selector4~2_combout\);

-- Location: FF_X65_Y41_N29
\inst23|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector4~2_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E4~q\);

-- Location: LCCOMB_X65_Y41_N16
\inst23|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector5~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst23|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst23|PS.E3~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E3~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst23|PS.E4~q\,
	combout => \inst23|Selector5~1_combout\);

-- Location: LCCOMB_X66_Y41_N18
\inst23|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector5~0_combout\ = (!\inst13|s_pulsedOut~q\ & (\inst23|PS.E1~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst23|PS.E1~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst23|Selector5~0_combout\);

-- Location: LCCOMB_X65_Y41_N4
\inst23|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector5~2_combout\ = (\inst23|Selector5~1_combout\) # ((\inst23|Selector5~0_combout\) # ((!\inst19|NS~1_combout\ & \inst23|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~1_combout\,
	datab => \inst23|Selector5~1_combout\,
	datac => \inst23|PS.E5~q\,
	datad => \inst23|Selector5~0_combout\,
	combout => \inst23|Selector5~2_combout\);

-- Location: FF_X65_Y41_N5
\inst23|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector5~2_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E5~q\);

-- Location: LCCOMB_X65_Y41_N24
\inst23|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector0~0_combout\ = (!\inst23|PS.E1~q\ & (!\inst23|PS.E4~q\ & (\inst23|PS.E0~q\ & !\inst23|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E1~q\,
	datab => \inst23|PS.E4~q\,
	datac => \inst23|PS.E0~q\,
	datad => \inst23|PS.E3~q\,
	combout => \inst23|Selector0~0_combout\);

-- Location: LCCOMB_X65_Y41_N14
\inst23|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector0~1_combout\ = (!\inst23|PS.E2~q\ & (!\inst23|PS.E5~q\ & \inst23|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E2~q\,
	datac => \inst23|PS.E5~q\,
	datad => \inst23|Selector0~0_combout\,
	combout => \inst23|Selector0~1_combout\);

-- Location: LCCOMB_X66_Y40_N0
\inst21|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector0~2_combout\ = (\inst28|s_led~q\ & \inst21|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|s_led~q\,
	datad => \inst21|Selector0~1_combout\,
	combout => \inst21|Selector0~2_combout\);

-- Location: LCCOMB_X66_Y40_N10
\inst21|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|PS~21_combout\ = (\inst6|PS.CQ~q\ & (!\inst21|Selector0~2_combout\ & ((\inst19|NS~1_combout\) # (\inst21|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.CQ~q\,
	datab => \inst19|NS~1_combout\,
	datac => \inst21|PS.E0~q\,
	datad => \inst21|Selector0~2_combout\,
	combout => \inst21|PS~21_combout\);

-- Location: FF_X66_Y40_N11
\inst21|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|PS~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E0~q\);

-- Location: LCCOMB_X66_Y40_N26
\inst21|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector1~0_combout\ = (\inst21|PS.E0~q\ & (!\inst19|NS~1_combout\ & (\inst21|PS.E1~q\))) # (!\inst21|PS.E0~q\ & ((\inst13|s_pulsedOut~q\) # ((!\inst19|NS~1_combout\ & \inst21|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E0~q\,
	datab => \inst19|NS~1_combout\,
	datac => \inst21|PS.E1~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst21|Selector1~0_combout\);

-- Location: FF_X66_Y40_N27
\inst21|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector1~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E1~q\);

-- Location: LCCOMB_X66_Y40_N22
\inst21|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector2~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((!\inst21|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst21|PS.E1~q\,
	datad => \inst21|PS.E0~q\,
	combout => \inst21|Selector2~0_combout\);

-- Location: LCCOMB_X66_Y40_N28
\inst21|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector2~1_combout\ = (\inst21|Selector2~0_combout\) # ((!\inst19|NS~1_combout\ & \inst21|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector2~0_combout\,
	datab => \inst19|NS~1_combout\,
	datac => \inst21|PS.E2~q\,
	combout => \inst21|Selector2~1_combout\);

-- Location: FF_X66_Y40_N29
\inst21|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector2~1_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E2~q\);

-- Location: LCCOMB_X62_Y40_N28
\inst21|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector3~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E2~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst21|PS.E1~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E1~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst21|PS.E2~q\,
	combout => \inst21|Selector3~0_combout\);

-- Location: LCCOMB_X62_Y40_N8
\inst21|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector3~1_combout\ = (\inst21|Selector3~0_combout\) # ((\inst21|PS.E3~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|Selector3~0_combout\,
	datac => \inst21|PS.E3~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst21|Selector3~1_combout\);

-- Location: FF_X62_Y40_N9
\inst21|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector3~1_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E3~q\);

-- Location: LCCOMB_X66_Y40_N12
\inst21|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector4~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E3~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst21|PS.E2~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst21|PS.E2~q\,
	datac => \inst21|PS.E3~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst21|Selector4~1_combout\);

-- Location: LCCOMB_X67_Y40_N28
\inst21|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector4~0_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst21|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst21|PS.E0~q\,
	combout => \inst21|Selector4~0_combout\);

-- Location: LCCOMB_X66_Y40_N8
\inst21|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector4~2_combout\ = (\inst21|Selector4~1_combout\) # ((\inst21|Selector4~0_combout\) # ((!\inst19|NS~1_combout\ & \inst21|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector4~1_combout\,
	datab => \inst19|NS~1_combout\,
	datac => \inst21|PS.E4~q\,
	datad => \inst21|Selector4~0_combout\,
	combout => \inst21|Selector4~2_combout\);

-- Location: FF_X66_Y40_N9
\inst21|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector4~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E4~q\);

-- Location: LCCOMB_X62_Y40_N0
\inst21|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector5~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & (\inst21|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst21|PS.E3~q\,
	datac => \inst21|PS.E4~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst21|Selector5~1_combout\);

-- Location: LCCOMB_X62_Y40_N18
\inst21|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector5~0_combout\ = (\inst21|PS.E1~q\ & (!\inst13|s_pulsedOut~q\ & (!\inst12|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E1~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst21|Selector5~0_combout\);

-- Location: LCCOMB_X62_Y40_N6
\inst21|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector5~2_combout\ = (\inst21|Selector5~1_combout\) # ((\inst21|Selector5~0_combout\) # ((!\inst19|NS~1_combout\ & \inst21|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~1_combout\,
	datab => \inst21|Selector5~1_combout\,
	datac => \inst21|PS.E5~q\,
	datad => \inst21|Selector5~0_combout\,
	combout => \inst21|Selector5~2_combout\);

-- Location: FF_X62_Y40_N7
\inst21|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector5~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E5~q\);

-- Location: LCCOMB_X62_Y40_N22
\inst21|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector6~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst21|PS.E5~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst21|PS.E4~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E5~q\,
	datab => \inst21|PS.E4~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst21|Selector6~1_combout\);

-- Location: LCCOMB_X62_Y40_N20
\inst21|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector6~0_combout\ = (!\inst12|s_pulsedOut~q\ & (\inst21|PS.E2~q\ & (!\inst13|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst21|PS.E2~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst21|Selector6~0_combout\);

-- Location: LCCOMB_X62_Y40_N24
\inst21|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector6~2_combout\ = (\inst21|Selector6~1_combout\) # ((\inst21|Selector6~0_combout\) # ((\inst21|PS.E6~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector6~1_combout\,
	datab => \inst21|Selector6~0_combout\,
	datac => \inst21|PS.E6~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst21|Selector6~2_combout\);

-- Location: FF_X62_Y40_N25
\inst21|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector6~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E6~q\);

-- Location: LCCOMB_X62_Y40_N26
\inst21|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector7~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E6~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst21|PS.E5~q\ & (\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E5~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst21|PS.E6~q\,
	combout => \inst21|Selector7~1_combout\);

-- Location: LCCOMB_X62_Y40_N4
\inst21|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector7~0_combout\ = (\inst21|PS.E3~q\ & (!\inst13|s_pulsedOut~q\ & (!\inst12|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E3~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst21|Selector7~0_combout\);

-- Location: LCCOMB_X62_Y40_N2
\inst21|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector7~2_combout\ = (\inst21|Selector7~1_combout\) # ((\inst21|Selector7~0_combout\) # ((\inst21|PS.E7~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector7~1_combout\,
	datab => \inst21|Selector7~0_combout\,
	datac => \inst21|PS.E7~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst21|Selector7~2_combout\);

-- Location: FF_X62_Y40_N3
\inst21|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector7~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E7~q\);

-- Location: LCCOMB_X62_Y40_N10
\inst21|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector0~0_combout\ = (!\inst21|PS.E5~q\ & (!\inst21|PS.E7~q\ & (!\inst21|PS.E3~q\ & !\inst21|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E5~q\,
	datab => \inst21|PS.E7~q\,
	datac => \inst21|PS.E3~q\,
	datad => \inst21|PS.E6~q\,
	combout => \inst21|Selector0~0_combout\);

-- Location: LCCOMB_X62_Y40_N30
\inst21|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector8~0_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (\inst21|PS.E4~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst21|PS.E4~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst21|Selector8~0_combout\);

-- Location: LCCOMB_X62_Y40_N16
\inst21|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector8~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst21|PS.E7~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst12|s_pulsedOut~q\ & \inst21|PS.E6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E7~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst21|PS.E6~q\,
	combout => \inst21|Selector8~1_combout\);

-- Location: LCCOMB_X62_Y40_N12
\inst21|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector8~2_combout\ = (\inst21|Selector8~0_combout\) # ((\inst21|Selector8~1_combout\) # ((\inst21|PS.E8~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector8~0_combout\,
	datab => \inst21|Selector8~1_combout\,
	datac => \inst21|PS.E8~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst21|Selector8~2_combout\);

-- Location: FF_X62_Y40_N13
\inst21|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector8~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E8~q\);

-- Location: LCCOMB_X66_Y40_N24
\inst21|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr0~0_combout\ = (\inst21|PS.E0~q\ & (!\inst21|PS.E1~q\ & !\inst21|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E0~q\,
	datac => \inst21|PS.E1~q\,
	datad => \inst21|PS.E2~q\,
	combout => \inst21|WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y40_N18
\inst21|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector0~1_combout\ = (\inst21|Selector0~0_combout\ & (!\inst21|PS.E4~q\ & (!\inst21|PS.E8~q\ & \inst21|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector0~0_combout\,
	datab => \inst21|PS.E4~q\,
	datac => \inst21|PS.E8~q\,
	datad => \inst21|WideOr0~0_combout\,
	combout => \inst21|Selector0~1_combout\);

-- Location: LCCOMB_X69_Y41_N10
\inst19|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector2~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E1~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((!\inst19|PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E1~q\,
	datac => \inst19|PS.E0~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector2~0_combout\);

-- Location: LCCOMB_X69_Y41_N8
\inst19|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector2~1_combout\ = (\inst19|Selector2~0_combout\) # ((\inst19|PS.E2~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector2~0_combout\,
	datac => \inst19|PS.E2~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector2~1_combout\);

-- Location: FF_X69_Y41_N9
\inst19|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector2~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E2~q\);

-- Location: LCCOMB_X69_Y41_N0
\inst19|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector4~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E3~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((\inst19|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E3~q\,
	datac => \inst19|PS.E2~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector4~1_combout\);

-- Location: LCCOMB_X67_Y41_N24
\inst19|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector4~0_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst19|PS.E0~q\ & (!\inst13|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E0~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst19|Selector4~0_combout\);

-- Location: LCCOMB_X68_Y41_N0
\inst19|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector4~2_combout\ = (\inst19|Selector4~1_combout\) # ((\inst19|Selector4~0_combout\) # ((!\inst19|NS~1_combout\ & \inst19|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~1_combout\,
	datab => \inst19|Selector4~1_combout\,
	datac => \inst19|PS.E4~q\,
	datad => \inst19|Selector4~0_combout\,
	combout => \inst19|Selector4~2_combout\);

-- Location: FF_X68_Y41_N1
\inst19|PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector4~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E4~q\);

-- Location: LCCOMB_X66_Y41_N28
\inst19|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector5~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E4~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst19|PS.E3~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst19|PS.E3~q\,
	datac => \inst19|PS.E4~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector5~1_combout\);

-- Location: LCCOMB_X66_Y41_N26
\inst19|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector5~0_combout\ = (\inst19|PS.E1~q\ & (!\inst13|s_pulsedOut~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E1~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector5~0_combout\);

-- Location: LCCOMB_X66_Y41_N24
\inst19|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector5~2_combout\ = (\inst19|Selector5~1_combout\) # ((\inst19|Selector5~0_combout\) # ((\inst19|PS.E5~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector5~1_combout\,
	datab => \inst19|Selector5~0_combout\,
	datac => \inst19|PS.E5~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector5~2_combout\);

-- Location: FF_X66_Y41_N25
\inst19|PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector5~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E5~q\);

-- Location: LCCOMB_X66_Y41_N4
\inst19|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector6~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E5~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((\inst19|PS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst19|PS.E4~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector6~1_combout\);

-- Location: LCCOMB_X69_Y41_N22
\inst19|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector6~0_combout\ = (!\inst12|s_pulsedOut~q\ & (\inst19|PS.E2~q\ & (\inst11|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E2~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector6~0_combout\);

-- Location: LCCOMB_X68_Y41_N2
\inst19|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector6~2_combout\ = (\inst19|Selector6~1_combout\) # ((\inst19|Selector6~0_combout\) # ((!\inst19|NS~1_combout\ & \inst19|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~1_combout\,
	datab => \inst19|Selector6~1_combout\,
	datac => \inst19|PS.E6~q\,
	datad => \inst19|Selector6~0_combout\,
	combout => \inst19|Selector6~2_combout\);

-- Location: FF_X68_Y41_N3
\inst19|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector6~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E6~q\);

-- Location: LCCOMB_X66_Y41_N10
\inst19|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector8~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst19|PS.E7~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst19|PS.E6~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E7~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst19|PS.E6~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector8~1_combout\);

-- Location: LCCOMB_X66_Y41_N20
\inst19|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector8~0_combout\ = (!\inst13|s_pulsedOut~q\ & (\inst19|PS.E4~q\ & (\inst11|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst19|PS.E4~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector8~0_combout\);

-- Location: LCCOMB_X66_Y41_N12
\inst19|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector8~2_combout\ = (\inst19|Selector8~1_combout\) # ((\inst19|Selector8~0_combout\) # ((\inst19|PS.E8~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector8~1_combout\,
	datab => \inst19|Selector8~0_combout\,
	datac => \inst19|PS.E8~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector8~2_combout\);

-- Location: FF_X66_Y41_N13
\inst19|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector8~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E8~q\);

-- Location: LCCOMB_X66_Y41_N22
\inst19|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector9~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E8~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & ((\inst19|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E8~q\,
	datac => \inst19|PS.E7~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector9~1_combout\);

-- Location: LCCOMB_X66_Y41_N16
\inst19|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector9~0_combout\ = (!\inst12|s_pulsedOut~q\ & (\inst19|PS.E5~q\ & (\inst11|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst11|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector9~0_combout\);

-- Location: LCCOMB_X66_Y41_N14
\inst19|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector9~2_combout\ = (\inst19|Selector9~1_combout\) # ((\inst19|Selector9~0_combout\) # ((\inst19|PS.E9~q\ & !\inst19|NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector9~1_combout\,
	datab => \inst19|Selector9~0_combout\,
	datac => \inst19|PS.E9~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector9~2_combout\);

-- Location: FF_X66_Y41_N15
\inst19|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector9~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E9~q\);

-- Location: LCCOMB_X67_Y40_N0
\inst19|NS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|NS~3_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & \inst11|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst19|NS~3_combout\);

-- Location: LCCOMB_X67_Y41_N26
\inst19|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector13~0_combout\ = (\inst19|PS.E9~q\ & ((\inst19|NS~3_combout\) # ((\inst19|PS.E13~q\ & !\inst28|s_led~q\)))) # (!\inst19|PS.E9~q\ & (\inst19|PS.E13~q\ & (!\inst28|s_led~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E9~q\,
	datab => \inst19|PS.E13~q\,
	datac => \inst28|s_led~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst19|Selector13~0_combout\);

-- Location: LCCOMB_X67_Y40_N12
\inst19|NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|NS~0_combout\ = (!\inst12|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (\inst10|s_pulsedOut~q\ & !\inst11|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst10|s_pulsedOut~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst19|NS~0_combout\);

-- Location: LCCOMB_X67_Y41_N14
\inst19|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector13~1_combout\ = (\inst19|Selector13~0_combout\) # ((\inst19|PS.E3~q\ & \inst19|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E3~q\,
	datac => \inst19|Selector13~0_combout\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector13~1_combout\);

-- Location: FF_X67_Y41_N15
\inst19|PS.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector13~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E13~q\);

-- Location: LCCOMB_X69_Y41_N12
\inst19|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector11~0_combout\ = (!\inst28|s_led~q\ & \inst19|PS.E11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|s_led~q\,
	datad => \inst19|PS.E11~q\,
	combout => \inst19|Selector11~0_combout\);

-- Location: LCCOMB_X67_Y40_N18
\inst19|NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|NS~2_combout\ = (!\inst13|s_pulsedOut~q\ & \inst12|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|NS~2_combout\);

-- Location: LCCOMB_X69_Y41_N2
\inst19|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector11~1_combout\ = (\inst19|PS.E9~q\ & ((\inst19|NS~2_combout\) # ((\inst19|PS.E7~q\ & \inst19|NS~3_combout\)))) # (!\inst19|PS.E9~q\ & (\inst19|PS.E7~q\ & ((\inst19|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E9~q\,
	datab => \inst19|PS.E7~q\,
	datac => \inst19|NS~2_combout\,
	datad => \inst19|NS~3_combout\,
	combout => \inst19|Selector11~1_combout\);

-- Location: LCCOMB_X69_Y41_N6
\inst19|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector11~2_combout\ = (\inst19|Selector11~0_combout\) # ((\inst19|Selector11~1_combout\) # ((\inst19|PS.E1~q\ & \inst19|NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector11~0_combout\,
	datab => \inst19|PS.E1~q\,
	datac => \inst19|NS~0_combout\,
	datad => \inst19|Selector11~1_combout\,
	combout => \inst19|Selector11~2_combout\);

-- Location: FF_X69_Y41_N7
\inst19|PS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector11~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E11~q\);

-- Location: LCCOMB_X69_Y41_N18
\inst19|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector17~0_combout\ = (\inst28|s_led~q\ & (\inst19|NS~0_combout\ & ((\inst19|PS.E7~q\)))) # (!\inst28|s_led~q\ & ((\inst19|PS.E17~q\) # ((\inst19|NS~0_combout\ & \inst19|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst19|NS~0_combout\,
	datac => \inst19|PS.E17~q\,
	datad => \inst19|PS.E7~q\,
	combout => \inst19|Selector17~0_combout\);

-- Location: FF_X69_Y41_N19
\inst19|PS.E17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector17~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E17~q\);

-- Location: LCCOMB_X69_Y41_N14
\inst19|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector19~0_combout\ = (\inst19|PS.E9~q\ & ((\inst19|NS~0_combout\) # ((\inst19|PS.E19~q\ & !\inst28|s_led~q\)))) # (!\inst19|PS.E9~q\ & (((\inst19|PS.E19~q\ & !\inst28|s_led~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E9~q\,
	datab => \inst19|NS~0_combout\,
	datac => \inst19|PS.E19~q\,
	datad => \inst28|s_led~q\,
	combout => \inst19|Selector19~0_combout\);

-- Location: FF_X69_Y41_N15
\inst19|PS.E19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector19~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E19~q\);

-- Location: LCCOMB_X67_Y41_N30
\inst19|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector15~0_combout\ = (\inst28|s_led~q\ & (\inst19|PS.E5~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst19|PS.E15~q\) # ((\inst19|PS.E5~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst19|PS.E15~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector15~0_combout\);

-- Location: FF_X67_Y41_N31
\inst19|PS.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector15~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E15~q\);

-- Location: LCCOMB_X68_Y41_N22
\inst19|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr7~0_combout\ = (\inst19|PS.E11~q\) # ((\inst19|PS.E17~q\) # ((\inst19|PS.E19~q\) # (\inst19|PS.E15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E11~q\,
	datab => \inst19|PS.E17~q\,
	datac => \inst19|PS.E19~q\,
	datad => \inst19|PS.E15~q\,
	combout => \inst19|WideOr7~0_combout\);

-- Location: LCCOMB_X68_Y41_N6
\inst19|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector16~0_combout\ = (\inst28|s_led~q\ & (\inst19|PS.E6~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst19|PS.E16~q\) # ((\inst19|PS.E6~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst19|PS.E6~q\,
	datac => \inst19|PS.E16~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector16~0_combout\);

-- Location: FF_X68_Y41_N7
\inst19|PS.E16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector16~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E16~q\);

-- Location: LCCOMB_X68_Y41_N18
\inst19|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector12~0_combout\ = (\inst19|PS.E8~q\ & ((\inst19|NS~3_combout\) # ((\inst19|PS.E12~q\ & !\inst28|s_led~q\)))) # (!\inst19|PS.E8~q\ & (\inst19|PS.E12~q\ & (!\inst28|s_led~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E8~q\,
	datab => \inst19|PS.E12~q\,
	datac => \inst28|s_led~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst19|Selector12~0_combout\);

-- Location: LCCOMB_X68_Y41_N4
\inst19|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector12~1_combout\ = (\inst19|Selector12~0_combout\) # ((\inst19|NS~0_combout\ & \inst19|PS.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~0_combout\,
	datac => \inst19|PS.E2~q\,
	datad => \inst19|Selector12~0_combout\,
	combout => \inst19|Selector12~1_combout\);

-- Location: FF_X68_Y41_N5
\inst19|PS.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector12~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E12~q\);

-- Location: LCCOMB_X67_Y41_N28
\inst19|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector14~0_combout\ = (\inst28|s_led~q\ & (\inst19|PS.E4~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst19|PS.E14~q\) # ((\inst19|PS.E4~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst19|PS.E4~q\,
	datac => \inst19|PS.E14~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector14~0_combout\);

-- Location: FF_X67_Y41_N29
\inst19|PS.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector14~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E14~q\);

-- Location: LCCOMB_X67_Y41_N8
\inst19|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector10~1_combout\ = (\inst28|s_led~q\ & (((!\inst19|PS.E0~q\ & \inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst19|PS.E10~q\) # ((!\inst19|PS.E0~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst19|PS.E10~q\,
	datac => \inst19|PS.E0~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector10~1_combout\);

-- Location: LCCOMB_X67_Y41_N10
\inst19|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector10~0_combout\ = (\inst12|s_pulsedOut~q\ & (\inst19|PS.E8~q\)) # (!\inst12|s_pulsedOut~q\ & (((\inst19|PS.E6~q\ & \inst11|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E8~q\,
	datac => \inst19|PS.E6~q\,
	datad => \inst11|s_pulsedOut~q\,
	combout => \inst19|Selector10~0_combout\);

-- Location: LCCOMB_X67_Y41_N0
\inst19|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector10~2_combout\ = (\inst19|Selector10~1_combout\) # ((\inst13|s_pulsedOut~q\ & (\inst19|PS.E9~q\)) # (!\inst13|s_pulsedOut~q\ & ((\inst19|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E9~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst19|Selector10~1_combout\,
	datad => \inst19|Selector10~0_combout\,
	combout => \inst19|Selector10~2_combout\);

-- Location: FF_X67_Y41_N1
\inst19|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector10~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E10~q\);

-- Location: LCCOMB_X67_Y41_N6
\inst19|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr2~1_combout\ = (!\inst19|PS.E14~q\ & !\inst19|PS.E10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PS.E14~q\,
	datad => \inst19|PS.E10~q\,
	combout => \inst19|WideOr2~1_combout\);

-- Location: LCCOMB_X68_Y41_N12
\inst19|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector18~0_combout\ = (\inst19|PS.E8~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst19|PS.E18~q\)))) # (!\inst19|PS.E8~q\ & (!\inst28|s_led~q\ & (\inst19|PS.E18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E8~q\,
	datab => \inst28|s_led~q\,
	datac => \inst19|PS.E18~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst19|Selector18~0_combout\);

-- Location: FF_X68_Y41_N13
\inst19|PS.E18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector18~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E18~q\);

-- Location: LCCOMB_X68_Y41_N10
\inst19|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr5~0_combout\ = (!\inst19|PS.E16~q\ & (!\inst19|PS.E12~q\ & (\inst19|WideOr2~1_combout\ & !\inst19|PS.E18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E16~q\,
	datab => \inst19|PS.E12~q\,
	datac => \inst19|WideOr2~1_combout\,
	datad => \inst19|PS.E18~q\,
	combout => \inst19|WideOr5~0_combout\);

-- Location: LCCOMB_X68_Y41_N16
\inst19|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector0~0_combout\ = (\inst28|s_led~q\ & ((\inst19|PS.E13~q\) # ((\inst19|WideOr7~0_combout\) # (!\inst19|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E13~q\,
	datab => \inst28|s_led~q\,
	datac => \inst19|WideOr7~0_combout\,
	datad => \inst19|WideOr5~0_combout\,
	combout => \inst19|Selector0~0_combout\);

-- Location: LCCOMB_X69_Y41_N4
\inst19|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|PS~22_combout\ = (!\inst19|Selector0~0_combout\ & (\inst6|PS.CP~q\ & ((\inst19|PS.E0~q\) # (\inst19|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector0~0_combout\,
	datab => \inst6|PS.CP~q\,
	datac => \inst19|PS.E0~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|PS~22_combout\);

-- Location: FF_X69_Y41_N5
\inst19|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|PS~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E0~q\);

-- Location: LCCOMB_X69_Y41_N16
\inst19|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector1~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E1~q\ & !\inst19|NS~1_combout\)) # (!\inst19|PS.E0~q\))) # (!\inst13|s_pulsedOut~q\ & (((\inst19|PS.E1~q\ & !\inst19|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst19|PS.E0~q\,
	datac => \inst19|PS.E1~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector1~0_combout\);

-- Location: FF_X69_Y41_N17
\inst19|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector1~0_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E1~q\);

-- Location: LCCOMB_X69_Y41_N24
\inst19|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector3~0_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst19|PS.E2~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & (\inst19|PS.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst19|PS.E1~q\,
	datac => \inst19|PS.E2~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst19|Selector3~0_combout\);

-- Location: LCCOMB_X69_Y41_N20
\inst19|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector3~1_combout\ = (\inst19|Selector3~0_combout\) # ((\inst19|PS.E3~q\ & !\inst19|NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Selector3~0_combout\,
	datac => \inst19|PS.E3~q\,
	datad => \inst19|NS~1_combout\,
	combout => \inst19|Selector3~1_combout\);

-- Location: FF_X69_Y41_N21
\inst19|PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector3~1_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E3~q\);

-- Location: LCCOMB_X67_Y41_N12
\inst19|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector7~0_combout\ = (\inst19|PS.E3~q\ & (\inst11|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & !\inst12|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E3~q\,
	datab => \inst11|s_pulsedOut~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector7~0_combout\);

-- Location: LCCOMB_X67_Y41_N2
\inst19|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector7~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst19|PS.E6~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst19|PS.E5~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E6~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst19|Selector7~1_combout\);

-- Location: LCCOMB_X67_Y41_N20
\inst19|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Selector7~2_combout\ = (\inst19|Selector7~0_combout\) # ((\inst19|Selector7~1_combout\) # ((!\inst19|NS~1_combout\ & \inst19|PS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Selector7~0_combout\,
	datab => \inst19|NS~1_combout\,
	datac => \inst19|PS.E7~q\,
	datad => \inst19|Selector7~1_combout\,
	combout => \inst19|Selector7~2_combout\);

-- Location: FF_X67_Y41_N21
\inst19|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst19|Selector7~2_combout\,
	sclr => \inst6|ALT_INV_PS.CP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PS.E7~q\);

-- Location: LCCOMB_X66_Y41_N6
\inst19|WideOr27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr27~1_combout\ = (!\inst19|PS.E1~q\ & (!\inst19|PS.E5~q\ & (!\inst19|PS.E9~q\ & !\inst19|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E1~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst19|PS.E9~q\,
	datad => \inst19|PS.E3~q\,
	combout => \inst19|WideOr27~1_combout\);

-- Location: LCCOMB_X68_Y41_N24
\inst19|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr27~0_combout\ = (\inst19|PS.E0~q\ & (!\inst19|PS.E6~q\ & (!\inst19|PS.E2~q\ & !\inst19|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E0~q\,
	datab => \inst19|PS.E6~q\,
	datac => \inst19|PS.E2~q\,
	datad => \inst19|PS.E4~q\,
	combout => \inst19|WideOr27~0_combout\);

-- Location: LCCOMB_X67_Y41_N22
\inst19|WideOr27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr27~2_combout\ = (!\inst19|PS.E7~q\ & (!\inst19|PS.E8~q\ & (\inst19|WideOr27~1_combout\ & \inst19|WideOr27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E7~q\,
	datab => \inst19|PS.E8~q\,
	datac => \inst19|WideOr27~1_combout\,
	datad => \inst19|WideOr27~0_combout\,
	combout => \inst19|WideOr27~2_combout\);

-- Location: LCCOMB_X39_Y38_N24
\inst8|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~0_combout\ = (\inst22|Selector0~1_combout\) # ((\inst23|Selector0~1_combout\) # ((\inst21|Selector0~1_combout\) # (\inst19|WideOr27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Selector0~1_combout\,
	datab => \inst23|Selector0~1_combout\,
	datac => \inst21|Selector0~1_combout\,
	datad => \inst19|WideOr27~2_combout\,
	combout => \inst8|process_0~0_combout\);

-- Location: FF_X39_Y38_N25
\inst8|ledOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst8|process_0~0_combout\,
	sclr => \inst28|s_led~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|ledOut~q\);

-- Location: FF_X47_Y42_N21
\inst28|s_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|s_led~1_combout\,
	asdata => \inst8|ledOut~q\,
	sload => \inst28|ALT_INV_s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|s_en~q\);

-- Location: LCCOMB_X47_Y42_N30
\inst28|cnt[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[17]~38_combout\ = (!\inst28|Equal2~10_combout\) # (!\inst28|s_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|s_en~q\,
	datad => \inst28|Equal2~10_combout\,
	combout => \inst28|cnt[17]~38_combout\);

-- Location: LCCOMB_X47_Y42_N28
\inst28|cnt[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[17]~39_combout\ = ((\inst28|Equal1~1_combout\ & \inst28|Equal0~10_combout\)) # (!\inst28|s_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|Equal1~1_combout\,
	datac => \inst28|s_en~q\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|cnt[17]~39_combout\);

-- Location: FF_X46_Y42_N1
\inst28|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[0]~32_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(0));

-- Location: LCCOMB_X46_Y42_N2
\inst28|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[1]~34_combout\ = (\inst28|cnt\(1) & (!\inst28|cnt[0]~33\)) # (!\inst28|cnt\(1) & ((\inst28|cnt[0]~33\) # (GND)))
-- \inst28|cnt[1]~35\ = CARRY((!\inst28|cnt[0]~33\) # (!\inst28|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(1),
	datad => VCC,
	cin => \inst28|cnt[0]~33\,
	combout => \inst28|cnt[1]~34_combout\,
	cout => \inst28|cnt[1]~35\);

-- Location: FF_X46_Y42_N3
\inst28|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[1]~34_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(1));

-- Location: LCCOMB_X46_Y42_N4
\inst28|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[2]~36_combout\ = (\inst28|cnt\(2) & (\inst28|cnt[1]~35\ $ (GND))) # (!\inst28|cnt\(2) & (!\inst28|cnt[1]~35\ & VCC))
-- \inst28|cnt[2]~37\ = CARRY((\inst28|cnt\(2) & !\inst28|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(2),
	datad => VCC,
	cin => \inst28|cnt[1]~35\,
	combout => \inst28|cnt[2]~36_combout\,
	cout => \inst28|cnt[2]~37\);

-- Location: FF_X46_Y42_N5
\inst28|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[2]~36_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(2));

-- Location: LCCOMB_X46_Y42_N6
\inst28|cnt[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[3]~40_combout\ = (\inst28|cnt\(3) & (!\inst28|cnt[2]~37\)) # (!\inst28|cnt\(3) & ((\inst28|cnt[2]~37\) # (GND)))
-- \inst28|cnt[3]~41\ = CARRY((!\inst28|cnt[2]~37\) # (!\inst28|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(3),
	datad => VCC,
	cin => \inst28|cnt[2]~37\,
	combout => \inst28|cnt[3]~40_combout\,
	cout => \inst28|cnt[3]~41\);

-- Location: FF_X46_Y42_N7
\inst28|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[3]~40_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(3));

-- Location: LCCOMB_X46_Y42_N8
\inst28|cnt[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[4]~42_combout\ = (\inst28|cnt\(4) & (\inst28|cnt[3]~41\ $ (GND))) # (!\inst28|cnt\(4) & (!\inst28|cnt[3]~41\ & VCC))
-- \inst28|cnt[4]~43\ = CARRY((\inst28|cnt\(4) & !\inst28|cnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(4),
	datad => VCC,
	cin => \inst28|cnt[3]~41\,
	combout => \inst28|cnt[4]~42_combout\,
	cout => \inst28|cnt[4]~43\);

-- Location: FF_X46_Y42_N9
\inst28|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[4]~42_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(4));

-- Location: LCCOMB_X46_Y42_N10
\inst28|cnt[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[5]~44_combout\ = (\inst28|cnt\(5) & (!\inst28|cnt[4]~43\)) # (!\inst28|cnt\(5) & ((\inst28|cnt[4]~43\) # (GND)))
-- \inst28|cnt[5]~45\ = CARRY((!\inst28|cnt[4]~43\) # (!\inst28|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(5),
	datad => VCC,
	cin => \inst28|cnt[4]~43\,
	combout => \inst28|cnt[5]~44_combout\,
	cout => \inst28|cnt[5]~45\);

-- Location: FF_X46_Y42_N11
\inst28|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[5]~44_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(5));

-- Location: LCCOMB_X46_Y42_N12
\inst28|cnt[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[6]~46_combout\ = (\inst28|cnt\(6) & (\inst28|cnt[5]~45\ $ (GND))) # (!\inst28|cnt\(6) & (!\inst28|cnt[5]~45\ & VCC))
-- \inst28|cnt[6]~47\ = CARRY((\inst28|cnt\(6) & !\inst28|cnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(6),
	datad => VCC,
	cin => \inst28|cnt[5]~45\,
	combout => \inst28|cnt[6]~46_combout\,
	cout => \inst28|cnt[6]~47\);

-- Location: FF_X46_Y42_N13
\inst28|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[6]~46_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(6));

-- Location: LCCOMB_X46_Y42_N14
\inst28|cnt[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[7]~48_combout\ = (\inst28|cnt\(7) & (!\inst28|cnt[6]~47\)) # (!\inst28|cnt\(7) & ((\inst28|cnt[6]~47\) # (GND)))
-- \inst28|cnt[7]~49\ = CARRY((!\inst28|cnt[6]~47\) # (!\inst28|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(7),
	datad => VCC,
	cin => \inst28|cnt[6]~47\,
	combout => \inst28|cnt[7]~48_combout\,
	cout => \inst28|cnt[7]~49\);

-- Location: FF_X46_Y42_N15
\inst28|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[7]~48_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(7));

-- Location: LCCOMB_X46_Y42_N16
\inst28|cnt[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[8]~50_combout\ = (\inst28|cnt\(8) & (\inst28|cnt[7]~49\ $ (GND))) # (!\inst28|cnt\(8) & (!\inst28|cnt[7]~49\ & VCC))
-- \inst28|cnt[8]~51\ = CARRY((\inst28|cnt\(8) & !\inst28|cnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(8),
	datad => VCC,
	cin => \inst28|cnt[7]~49\,
	combout => \inst28|cnt[8]~50_combout\,
	cout => \inst28|cnt[8]~51\);

-- Location: FF_X46_Y42_N17
\inst28|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[8]~50_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(8));

-- Location: LCCOMB_X46_Y42_N18
\inst28|cnt[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[9]~52_combout\ = (\inst28|cnt\(9) & (!\inst28|cnt[8]~51\)) # (!\inst28|cnt\(9) & ((\inst28|cnt[8]~51\) # (GND)))
-- \inst28|cnt[9]~53\ = CARRY((!\inst28|cnt[8]~51\) # (!\inst28|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(9),
	datad => VCC,
	cin => \inst28|cnt[8]~51\,
	combout => \inst28|cnt[9]~52_combout\,
	cout => \inst28|cnt[9]~53\);

-- Location: FF_X46_Y42_N19
\inst28|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[9]~52_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(9));

-- Location: LCCOMB_X46_Y42_N20
\inst28|cnt[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[10]~54_combout\ = (\inst28|cnt\(10) & (\inst28|cnt[9]~53\ $ (GND))) # (!\inst28|cnt\(10) & (!\inst28|cnt[9]~53\ & VCC))
-- \inst28|cnt[10]~55\ = CARRY((\inst28|cnt\(10) & !\inst28|cnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(10),
	datad => VCC,
	cin => \inst28|cnt[9]~53\,
	combout => \inst28|cnt[10]~54_combout\,
	cout => \inst28|cnt[10]~55\);

-- Location: FF_X46_Y42_N21
\inst28|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[10]~54_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(10));

-- Location: LCCOMB_X46_Y42_N22
\inst28|cnt[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[11]~56_combout\ = (\inst28|cnt\(11) & (!\inst28|cnt[10]~55\)) # (!\inst28|cnt\(11) & ((\inst28|cnt[10]~55\) # (GND)))
-- \inst28|cnt[11]~57\ = CARRY((!\inst28|cnt[10]~55\) # (!\inst28|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(11),
	datad => VCC,
	cin => \inst28|cnt[10]~55\,
	combout => \inst28|cnt[11]~56_combout\,
	cout => \inst28|cnt[11]~57\);

-- Location: FF_X46_Y42_N23
\inst28|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[11]~56_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(11));

-- Location: LCCOMB_X46_Y42_N24
\inst28|cnt[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[12]~58_combout\ = (\inst28|cnt\(12) & (\inst28|cnt[11]~57\ $ (GND))) # (!\inst28|cnt\(12) & (!\inst28|cnt[11]~57\ & VCC))
-- \inst28|cnt[12]~59\ = CARRY((\inst28|cnt\(12) & !\inst28|cnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(12),
	datad => VCC,
	cin => \inst28|cnt[11]~57\,
	combout => \inst28|cnt[12]~58_combout\,
	cout => \inst28|cnt[12]~59\);

-- Location: FF_X46_Y42_N25
\inst28|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[12]~58_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(12));

-- Location: LCCOMB_X46_Y42_N26
\inst28|cnt[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[13]~60_combout\ = (\inst28|cnt\(13) & (!\inst28|cnt[12]~59\)) # (!\inst28|cnt\(13) & ((\inst28|cnt[12]~59\) # (GND)))
-- \inst28|cnt[13]~61\ = CARRY((!\inst28|cnt[12]~59\) # (!\inst28|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(13),
	datad => VCC,
	cin => \inst28|cnt[12]~59\,
	combout => \inst28|cnt[13]~60_combout\,
	cout => \inst28|cnt[13]~61\);

-- Location: FF_X46_Y42_N27
\inst28|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[13]~60_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(13));

-- Location: LCCOMB_X46_Y42_N28
\inst28|cnt[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[14]~62_combout\ = (\inst28|cnt\(14) & (\inst28|cnt[13]~61\ $ (GND))) # (!\inst28|cnt\(14) & (!\inst28|cnt[13]~61\ & VCC))
-- \inst28|cnt[14]~63\ = CARRY((\inst28|cnt\(14) & !\inst28|cnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(14),
	datad => VCC,
	cin => \inst28|cnt[13]~61\,
	combout => \inst28|cnt[14]~62_combout\,
	cout => \inst28|cnt[14]~63\);

-- Location: FF_X46_Y42_N29
\inst28|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[14]~62_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(14));

-- Location: LCCOMB_X46_Y42_N30
\inst28|cnt[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[15]~64_combout\ = (\inst28|cnt\(15) & (!\inst28|cnt[14]~63\)) # (!\inst28|cnt\(15) & ((\inst28|cnt[14]~63\) # (GND)))
-- \inst28|cnt[15]~65\ = CARRY((!\inst28|cnt[14]~63\) # (!\inst28|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(15),
	datad => VCC,
	cin => \inst28|cnt[14]~63\,
	combout => \inst28|cnt[15]~64_combout\,
	cout => \inst28|cnt[15]~65\);

-- Location: FF_X46_Y42_N31
\inst28|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[15]~64_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(15));

-- Location: LCCOMB_X46_Y41_N0
\inst28|cnt[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[16]~66_combout\ = (\inst28|cnt\(16) & (\inst28|cnt[15]~65\ $ (GND))) # (!\inst28|cnt\(16) & (!\inst28|cnt[15]~65\ & VCC))
-- \inst28|cnt[16]~67\ = CARRY((\inst28|cnt\(16) & !\inst28|cnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(16),
	datad => VCC,
	cin => \inst28|cnt[15]~65\,
	combout => \inst28|cnt[16]~66_combout\,
	cout => \inst28|cnt[16]~67\);

-- Location: FF_X46_Y41_N1
\inst28|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[16]~66_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(16));

-- Location: LCCOMB_X46_Y41_N2
\inst28|cnt[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[17]~68_combout\ = (\inst28|cnt\(17) & (!\inst28|cnt[16]~67\)) # (!\inst28|cnt\(17) & ((\inst28|cnt[16]~67\) # (GND)))
-- \inst28|cnt[17]~69\ = CARRY((!\inst28|cnt[16]~67\) # (!\inst28|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(17),
	datad => VCC,
	cin => \inst28|cnt[16]~67\,
	combout => \inst28|cnt[17]~68_combout\,
	cout => \inst28|cnt[17]~69\);

-- Location: FF_X46_Y41_N3
\inst28|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[17]~68_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(17));

-- Location: LCCOMB_X46_Y41_N4
\inst28|cnt[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[18]~70_combout\ = (\inst28|cnt\(18) & (\inst28|cnt[17]~69\ $ (GND))) # (!\inst28|cnt\(18) & (!\inst28|cnt[17]~69\ & VCC))
-- \inst28|cnt[18]~71\ = CARRY((\inst28|cnt\(18) & !\inst28|cnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(18),
	datad => VCC,
	cin => \inst28|cnt[17]~69\,
	combout => \inst28|cnt[18]~70_combout\,
	cout => \inst28|cnt[18]~71\);

-- Location: FF_X46_Y41_N5
\inst28|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[18]~70_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(18));

-- Location: LCCOMB_X46_Y41_N6
\inst28|cnt[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[19]~72_combout\ = (\inst28|cnt\(19) & (!\inst28|cnt[18]~71\)) # (!\inst28|cnt\(19) & ((\inst28|cnt[18]~71\) # (GND)))
-- \inst28|cnt[19]~73\ = CARRY((!\inst28|cnt[18]~71\) # (!\inst28|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(19),
	datad => VCC,
	cin => \inst28|cnt[18]~71\,
	combout => \inst28|cnt[19]~72_combout\,
	cout => \inst28|cnt[19]~73\);

-- Location: FF_X46_Y41_N7
\inst28|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[19]~72_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(19));

-- Location: LCCOMB_X46_Y41_N8
\inst28|cnt[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[20]~74_combout\ = (\inst28|cnt\(20) & (\inst28|cnt[19]~73\ $ (GND))) # (!\inst28|cnt\(20) & (!\inst28|cnt[19]~73\ & VCC))
-- \inst28|cnt[20]~75\ = CARRY((\inst28|cnt\(20) & !\inst28|cnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(20),
	datad => VCC,
	cin => \inst28|cnt[19]~73\,
	combout => \inst28|cnt[20]~74_combout\,
	cout => \inst28|cnt[20]~75\);

-- Location: FF_X46_Y41_N9
\inst28|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[20]~74_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(20));

-- Location: LCCOMB_X46_Y41_N10
\inst28|cnt[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[21]~76_combout\ = (\inst28|cnt\(21) & (!\inst28|cnt[20]~75\)) # (!\inst28|cnt\(21) & ((\inst28|cnt[20]~75\) # (GND)))
-- \inst28|cnt[21]~77\ = CARRY((!\inst28|cnt[20]~75\) # (!\inst28|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(21),
	datad => VCC,
	cin => \inst28|cnt[20]~75\,
	combout => \inst28|cnt[21]~76_combout\,
	cout => \inst28|cnt[21]~77\);

-- Location: FF_X46_Y41_N11
\inst28|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[21]~76_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(21));

-- Location: LCCOMB_X46_Y41_N12
\inst28|cnt[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[22]~78_combout\ = (\inst28|cnt\(22) & (\inst28|cnt[21]~77\ $ (GND))) # (!\inst28|cnt\(22) & (!\inst28|cnt[21]~77\ & VCC))
-- \inst28|cnt[22]~79\ = CARRY((\inst28|cnt\(22) & !\inst28|cnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(22),
	datad => VCC,
	cin => \inst28|cnt[21]~77\,
	combout => \inst28|cnt[22]~78_combout\,
	cout => \inst28|cnt[22]~79\);

-- Location: FF_X46_Y41_N13
\inst28|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[22]~78_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(22));

-- Location: LCCOMB_X46_Y41_N14
\inst28|cnt[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[23]~80_combout\ = (\inst28|cnt\(23) & (!\inst28|cnt[22]~79\)) # (!\inst28|cnt\(23) & ((\inst28|cnt[22]~79\) # (GND)))
-- \inst28|cnt[23]~81\ = CARRY((!\inst28|cnt[22]~79\) # (!\inst28|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(23),
	datad => VCC,
	cin => \inst28|cnt[22]~79\,
	combout => \inst28|cnt[23]~80_combout\,
	cout => \inst28|cnt[23]~81\);

-- Location: FF_X46_Y41_N15
\inst28|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[23]~80_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(23));

-- Location: LCCOMB_X46_Y41_N16
\inst28|cnt[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[24]~82_combout\ = (\inst28|cnt\(24) & (\inst28|cnt[23]~81\ $ (GND))) # (!\inst28|cnt\(24) & (!\inst28|cnt[23]~81\ & VCC))
-- \inst28|cnt[24]~83\ = CARRY((\inst28|cnt\(24) & !\inst28|cnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(24),
	datad => VCC,
	cin => \inst28|cnt[23]~81\,
	combout => \inst28|cnt[24]~82_combout\,
	cout => \inst28|cnt[24]~83\);

-- Location: FF_X46_Y41_N17
\inst28|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[24]~82_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(24));

-- Location: LCCOMB_X46_Y41_N18
\inst28|cnt[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[25]~84_combout\ = (\inst28|cnt\(25) & (!\inst28|cnt[24]~83\)) # (!\inst28|cnt\(25) & ((\inst28|cnt[24]~83\) # (GND)))
-- \inst28|cnt[25]~85\ = CARRY((!\inst28|cnt[24]~83\) # (!\inst28|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(25),
	datad => VCC,
	cin => \inst28|cnt[24]~83\,
	combout => \inst28|cnt[25]~84_combout\,
	cout => \inst28|cnt[25]~85\);

-- Location: FF_X46_Y41_N19
\inst28|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[25]~84_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(25));

-- Location: LCCOMB_X46_Y41_N20
\inst28|cnt[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[26]~86_combout\ = (\inst28|cnt\(26) & (\inst28|cnt[25]~85\ $ (GND))) # (!\inst28|cnt\(26) & (!\inst28|cnt[25]~85\ & VCC))
-- \inst28|cnt[26]~87\ = CARRY((\inst28|cnt\(26) & !\inst28|cnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(26),
	datad => VCC,
	cin => \inst28|cnt[25]~85\,
	combout => \inst28|cnt[26]~86_combout\,
	cout => \inst28|cnt[26]~87\);

-- Location: FF_X46_Y41_N21
\inst28|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[26]~86_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(26));

-- Location: LCCOMB_X46_Y41_N22
\inst28|cnt[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[27]~88_combout\ = (\inst28|cnt\(27) & (!\inst28|cnt[26]~87\)) # (!\inst28|cnt\(27) & ((\inst28|cnt[26]~87\) # (GND)))
-- \inst28|cnt[27]~89\ = CARRY((!\inst28|cnt[26]~87\) # (!\inst28|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(27),
	datad => VCC,
	cin => \inst28|cnt[26]~87\,
	combout => \inst28|cnt[27]~88_combout\,
	cout => \inst28|cnt[27]~89\);

-- Location: FF_X46_Y41_N23
\inst28|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[27]~88_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(27));

-- Location: LCCOMB_X46_Y41_N24
\inst28|cnt[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[28]~90_combout\ = (\inst28|cnt\(28) & (\inst28|cnt[27]~89\ $ (GND))) # (!\inst28|cnt\(28) & (!\inst28|cnt[27]~89\ & VCC))
-- \inst28|cnt[28]~91\ = CARRY((\inst28|cnt\(28) & !\inst28|cnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(28),
	datad => VCC,
	cin => \inst28|cnt[27]~89\,
	combout => \inst28|cnt[28]~90_combout\,
	cout => \inst28|cnt[28]~91\);

-- Location: FF_X46_Y41_N25
\inst28|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[28]~90_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(28));

-- Location: LCCOMB_X46_Y41_N26
\inst28|cnt[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[29]~92_combout\ = (\inst28|cnt\(29) & (!\inst28|cnt[28]~91\)) # (!\inst28|cnt\(29) & ((\inst28|cnt[28]~91\) # (GND)))
-- \inst28|cnt[29]~93\ = CARRY((!\inst28|cnt[28]~91\) # (!\inst28|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(29),
	datad => VCC,
	cin => \inst28|cnt[28]~91\,
	combout => \inst28|cnt[29]~92_combout\,
	cout => \inst28|cnt[29]~93\);

-- Location: FF_X46_Y41_N27
\inst28|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[29]~92_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(29));

-- Location: LCCOMB_X46_Y41_N28
\inst28|cnt[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[30]~94_combout\ = (\inst28|cnt\(30) & (\inst28|cnt[29]~93\ $ (GND))) # (!\inst28|cnt\(30) & (!\inst28|cnt[29]~93\ & VCC))
-- \inst28|cnt[30]~95\ = CARRY((\inst28|cnt\(30) & !\inst28|cnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(30),
	datad => VCC,
	cin => \inst28|cnt[29]~93\,
	combout => \inst28|cnt[30]~94_combout\,
	cout => \inst28|cnt[30]~95\);

-- Location: FF_X46_Y41_N29
\inst28|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[30]~94_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(30));

-- Location: LCCOMB_X46_Y41_N30
\inst28|cnt[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[31]~96_combout\ = \inst28|cnt\(31) $ (\inst28|cnt[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(31),
	cin => \inst28|cnt[30]~95\,
	combout => \inst28|cnt[31]~96_combout\);

-- Location: FF_X46_Y41_N31
\inst28|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst28|cnt[31]~96_combout\,
	sclr => \inst28|cnt[17]~38_combout\,
	ena => \inst28|cnt[17]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(31));

-- Location: LCCOMB_X47_Y41_N26
\inst28|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~9_combout\ = (\inst28|cnt\(31)) # ((\inst28|cnt\(30)) # ((\inst28|cnt\(29)) # (\inst28|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(31),
	datab => \inst28|cnt\(30),
	datac => \inst28|cnt\(29),
	datad => \inst28|cnt\(28),
	combout => \inst28|Equal2~9_combout\);

-- Location: LCCOMB_X47_Y41_N16
\inst28|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~8_combout\ = (\inst28|cnt\(24)) # ((\inst28|cnt\(27)) # ((\inst28|cnt\(25)) # (\inst28|cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(24),
	datab => \inst28|cnt\(27),
	datac => \inst28|cnt\(25),
	datad => \inst28|cnt\(26),
	combout => \inst28|Equal2~8_combout\);

-- Location: LCCOMB_X47_Y42_N12
\inst28|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~1_combout\ = (\inst28|cnt\(7)) # ((\inst28|cnt\(5)) # ((\inst28|cnt\(6)) # (\inst28|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(7),
	datab => \inst28|cnt\(5),
	datac => \inst28|cnt\(6),
	datad => \inst28|cnt\(4),
	combout => \inst28|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y42_N2
\inst28|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~0_combout\ = (\inst28|cnt\(3)) # ((\inst28|cnt\(2)) # ((!\inst28|cnt\(1)) # (!\inst28|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(3),
	datab => \inst28|cnt\(2),
	datac => \inst28|cnt\(0),
	datad => \inst28|cnt\(1),
	combout => \inst28|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y42_N20
\inst28|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~2_combout\ = (\inst28|cnt\(10)) # ((\inst28|cnt\(9)) # ((\inst28|cnt\(11)) # (\inst28|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(10),
	datab => \inst28|cnt\(9),
	datac => \inst28|cnt\(11),
	datad => \inst28|cnt\(8),
	combout => \inst28|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y42_N18
\inst28|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~3_combout\ = (\inst28|cnt\(13)) # ((\inst28|cnt\(14)) # ((\inst28|cnt\(15)) # (\inst28|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(13),
	datab => \inst28|cnt\(14),
	datac => \inst28|cnt\(15),
	datad => \inst28|cnt\(12),
	combout => \inst28|Equal2~3_combout\);

-- Location: LCCOMB_X47_Y42_N8
\inst28|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~4_combout\ = (\inst28|Equal2~1_combout\) # ((\inst28|Equal2~0_combout\) # ((\inst28|Equal2~2_combout\) # (\inst28|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal2~1_combout\,
	datab => \inst28|Equal2~0_combout\,
	datac => \inst28|Equal2~2_combout\,
	datad => \inst28|Equal2~3_combout\,
	combout => \inst28|Equal2~4_combout\);

-- Location: LCCOMB_X47_Y41_N2
\inst28|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~6_combout\ = (\inst28|cnt\(22)) # ((\inst28|cnt\(23)) # ((\inst28|cnt\(21)) # (\inst28|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(22),
	datab => \inst28|cnt\(23),
	datac => \inst28|cnt\(21),
	datad => \inst28|cnt\(20),
	combout => \inst28|Equal2~6_combout\);

-- Location: LCCOMB_X47_Y41_N0
\inst28|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~5_combout\ = (\inst28|cnt\(16)) # ((\inst28|cnt\(19)) # ((\inst28|cnt\(18)) # (\inst28|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(16),
	datab => \inst28|cnt\(19),
	datac => \inst28|cnt\(18),
	datad => \inst28|cnt\(17),
	combout => \inst28|Equal2~5_combout\);

-- Location: LCCOMB_X47_Y42_N6
\inst28|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~7_combout\ = (\inst28|Equal2~6_combout\) # (\inst28|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst28|Equal2~6_combout\,
	datad => \inst28|Equal2~5_combout\,
	combout => \inst28|Equal2~7_combout\);

-- Location: LCCOMB_X47_Y42_N24
\inst28|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|Equal2~10_combout\ = (\inst28|Equal2~9_combout\) # ((\inst28|Equal2~8_combout\) # ((\inst28|Equal2~4_combout\) # (\inst28|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal2~9_combout\,
	datab => \inst28|Equal2~8_combout\,
	datac => \inst28|Equal2~4_combout\,
	datad => \inst28|Equal2~7_combout\,
	combout => \inst28|Equal2~10_combout\);

-- Location: LCCOMB_X47_Y40_N30
\inst28|s_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|s_led~0_combout\ = \inst28|s_led~q\ $ (((!\inst28|Equal2~10_combout\ & (\inst28|Equal1~1_combout\ & \inst28|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|Equal2~10_combout\,
	datab => \inst28|Equal1~1_combout\,
	datac => \inst28|s_led~q\,
	datad => \inst28|Equal0~10_combout\,
	combout => \inst28|s_led~0_combout\);

-- Location: FF_X47_Y40_N31
\inst28|s_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst28|s_led~0_combout\,
	sclr => \inst28|ALT_INV_s_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|s_led~q\);

-- Location: LCCOMB_X33_Y38_N10
\inst29|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector0~0_combout\ = (\inst8|ledOut~q\) # (\inst29|PS.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ledOut~q\,
	datad => \inst29|PS.E1~q\,
	combout => \inst29|Selector0~0_combout\);

-- Location: FF_X33_Y38_N27
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

-- Location: LCCOMB_X33_Y38_N26
\inst29|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector1~0_combout\ = (\inst8|ledOut~q\ & (((!\inst28|s_led~q\ & \inst29|PS.E1~q\)) # (!\inst29|PS.E0~q\))) # (!\inst8|ledOut~q\ & (!\inst28|s_led~q\ & ((\inst29|PS.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ledOut~q\,
	datab => \inst28|s_led~q\,
	datac => \inst29|PS.E0~q\,
	datad => \inst29|PS.E1~q\,
	combout => \inst29|Selector1~0_combout\);

-- Location: LCCOMB_X34_Y38_N10
\inst29|PS.E1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|PS.E1~feeder_combout\ = \inst29|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|Selector1~0_combout\,
	combout => \inst29|PS.E1~feeder_combout\);

-- Location: FF_X34_Y38_N11
\inst29|PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|PS.E1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|PS.E1~q\);

-- Location: LCCOMB_X39_Y38_N20
\inst29|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector2~0_combout\ = (\inst28|s_led~q\ & ((\inst29|PS.E1~q\) # ((\inst29|PS.E2~q\ & \inst8|ledOut~q\)))) # (!\inst28|s_led~q\ & (((\inst29|PS.E2~q\ & \inst8|ledOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst29|PS.E1~q\,
	datac => \inst29|PS.E2~q\,
	datad => \inst8|ledOut~q\,
	combout => \inst29|Selector2~0_combout\);

-- Location: LCCOMB_X39_Y38_N30
\inst29|PS.E2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|PS.E2~feeder_combout\ = \inst29|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|Selector2~0_combout\,
	combout => \inst29|PS.E2~feeder_combout\);

-- Location: FF_X39_Y38_N31
\inst29|PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst29|PS.E2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|PS.E2~q\);

-- Location: LCCOMB_X39_Y38_N28
\inst29|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~0_combout\ = (\inst28|s_led~q\ & (!\inst29|PS.E1~q\ & ((\inst8|ledOut~q\) # (!\inst29|PS.E2~q\)))) # (!\inst28|s_led~q\ & (((\inst8|ledOut~q\) # (!\inst29|PS.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst29|PS.E1~q\,
	datac => \inst29|PS.E2~q\,
	datad => \inst8|ledOut~q\,
	combout => \inst29|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y38_N20
\inst29|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|led~combout\ = (\inst29|Selector4~0_combout\ & ((\inst29|PS.E1~q\))) # (!\inst29|Selector4~0_combout\ & (\inst29|led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|led~combout\,
	datac => \inst29|Selector4~0_combout\,
	datad => \inst29|PS.E1~q\,
	combout => \inst29|led~combout\);

-- Location: FF_X35_Y40_N31
\inst15|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~6_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(0));

-- Location: LCCOMB_X34_Y40_N2
\inst15|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~2_combout\ = (\inst15|cont\(1) & (!\inst15|Add0~1\)) # (!\inst15|cont\(1) & ((\inst15|Add0~1\) # (GND)))
-- \inst15|Add0~3\ = CARRY((!\inst15|Add0~1\) # (!\inst15|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(1),
	datad => VCC,
	cin => \inst15|Add0~1\,
	combout => \inst15|Add0~2_combout\,
	cout => \inst15|Add0~3\);

-- Location: FF_X34_Y40_N3
\inst15|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~2_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(1));

-- Location: LCCOMB_X34_Y40_N4
\inst15|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~4_combout\ = (\inst15|cont\(2) & (\inst15|Add0~3\ $ (GND))) # (!\inst15|cont\(2) & (!\inst15|Add0~3\ & VCC))
-- \inst15|Add0~5\ = CARRY((\inst15|cont\(2) & !\inst15|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(2),
	datad => VCC,
	cin => \inst15|Add0~3\,
	combout => \inst15|Add0~4_combout\,
	cout => \inst15|Add0~5\);

-- Location: FF_X34_Y40_N5
\inst15|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~4_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(2));

-- Location: LCCOMB_X34_Y40_N6
\inst15|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~6_combout\ = (\inst15|cont\(3) & (!\inst15|Add0~5\)) # (!\inst15|cont\(3) & ((\inst15|Add0~5\) # (GND)))
-- \inst15|Add0~7\ = CARRY((!\inst15|Add0~5\) # (!\inst15|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(3),
	datad => VCC,
	cin => \inst15|Add0~5\,
	combout => \inst15|Add0~6_combout\,
	cout => \inst15|Add0~7\);

-- Location: FF_X34_Y40_N7
\inst15|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~6_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(3));

-- Location: LCCOMB_X34_Y40_N8
\inst15|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~8_combout\ = (\inst15|cont\(4) & (\inst15|Add0~7\ $ (GND))) # (!\inst15|cont\(4) & (!\inst15|Add0~7\ & VCC))
-- \inst15|Add0~9\ = CARRY((\inst15|cont\(4) & !\inst15|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(4),
	datad => VCC,
	cin => \inst15|Add0~7\,
	combout => \inst15|Add0~8_combout\,
	cout => \inst15|Add0~9\);

-- Location: LCCOMB_X35_Y40_N22
\inst15|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~5_combout\ = (\inst15|Add0~8_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Equal0~9_combout\,
	datad => \inst15|Add0~8_combout\,
	combout => \inst15|cont~5_combout\);

-- Location: FF_X35_Y40_N23
\inst15|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~5_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(4));

-- Location: LCCOMB_X34_Y40_N10
\inst15|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~10_combout\ = (\inst15|cont\(5) & (!\inst15|Add0~9\)) # (!\inst15|cont\(5) & ((\inst15|Add0~9\) # (GND)))
-- \inst15|Add0~11\ = CARRY((!\inst15|Add0~9\) # (!\inst15|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(5),
	datad => VCC,
	cin => \inst15|Add0~9\,
	combout => \inst15|Add0~10_combout\,
	cout => \inst15|Add0~11\);

-- Location: FF_X34_Y40_N11
\inst15|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~10_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(5));

-- Location: LCCOMB_X34_Y40_N12
\inst15|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~12_combout\ = (\inst15|cont\(6) & (\inst15|Add0~11\ $ (GND))) # (!\inst15|cont\(6) & (!\inst15|Add0~11\ & VCC))
-- \inst15|Add0~13\ = CARRY((\inst15|cont\(6) & !\inst15|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(6),
	datad => VCC,
	cin => \inst15|Add0~11\,
	combout => \inst15|Add0~12_combout\,
	cout => \inst15|Add0~13\);

-- Location: LCCOMB_X35_Y40_N28
\inst15|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~4_combout\ = (\inst15|Add0~12_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Equal0~9_combout\,
	datad => \inst15|Add0~12_combout\,
	combout => \inst15|cont~4_combout\);

-- Location: FF_X35_Y40_N29
\inst15|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~4_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(6));

-- Location: LCCOMB_X34_Y40_N14
\inst15|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~14_combout\ = (\inst15|cont\(7) & (!\inst15|Add0~13\)) # (!\inst15|cont\(7) & ((\inst15|Add0~13\) # (GND)))
-- \inst15|Add0~15\ = CARRY((!\inst15|Add0~13\) # (!\inst15|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(7),
	datad => VCC,
	cin => \inst15|Add0~13\,
	combout => \inst15|Add0~14_combout\,
	cout => \inst15|Add0~15\);

-- Location: FF_X34_Y40_N15
\inst15|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~14_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(7));

-- Location: LCCOMB_X34_Y40_N16
\inst15|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~16_combout\ = (\inst15|cont\(8) & (\inst15|Add0~15\ $ (GND))) # (!\inst15|cont\(8) & (!\inst15|Add0~15\ & VCC))
-- \inst15|Add0~17\ = CARRY((\inst15|cont\(8) & !\inst15|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(8),
	datad => VCC,
	cin => \inst15|Add0~15\,
	combout => \inst15|Add0~16_combout\,
	cout => \inst15|Add0~17\);

-- Location: LCCOMB_X35_Y40_N8
\inst15|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~3_combout\ = (\inst15|Add0~16_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Add0~16_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|cont~3_combout\);

-- Location: FF_X35_Y40_N9
\inst15|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~3_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(8));

-- Location: LCCOMB_X34_Y40_N18
\inst15|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~18_combout\ = (\inst15|cont\(9) & (!\inst15|Add0~17\)) # (!\inst15|cont\(9) & ((\inst15|Add0~17\) # (GND)))
-- \inst15|Add0~19\ = CARRY((!\inst15|Add0~17\) # (!\inst15|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(9),
	datad => VCC,
	cin => \inst15|Add0~17\,
	combout => \inst15|Add0~18_combout\,
	cout => \inst15|Add0~19\);

-- Location: LCCOMB_X35_Y40_N26
\inst15|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~2_combout\ = (\inst15|Add0~18_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Equal0~9_combout\,
	datad => \inst15|Add0~18_combout\,
	combout => \inst15|cont~2_combout\);

-- Location: FF_X35_Y40_N27
\inst15|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~2_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(9));

-- Location: LCCOMB_X34_Y40_N20
\inst15|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~20_combout\ = (\inst15|cont\(10) & (\inst15|Add0~19\ $ (GND))) # (!\inst15|cont\(10) & (!\inst15|Add0~19\ & VCC))
-- \inst15|Add0~21\ = CARRY((\inst15|cont\(10) & !\inst15|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(10),
	datad => VCC,
	cin => \inst15|Add0~19\,
	combout => \inst15|Add0~20_combout\,
	cout => \inst15|Add0~21\);

-- Location: FF_X34_Y40_N21
\inst15|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~20_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(10));

-- Location: LCCOMB_X34_Y40_N22
\inst15|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~22_combout\ = (\inst15|cont\(11) & (!\inst15|Add0~21\)) # (!\inst15|cont\(11) & ((\inst15|Add0~21\) # (GND)))
-- \inst15|Add0~23\ = CARRY((!\inst15|Add0~21\) # (!\inst15|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(11),
	datad => VCC,
	cin => \inst15|Add0~21\,
	combout => \inst15|Add0~22_combout\,
	cout => \inst15|Add0~23\);

-- Location: FF_X34_Y40_N23
\inst15|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~22_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(11));

-- Location: LCCOMB_X34_Y40_N24
\inst15|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~24_combout\ = (\inst15|cont\(12) & (\inst15|Add0~23\ $ (GND))) # (!\inst15|cont\(12) & (!\inst15|Add0~23\ & VCC))
-- \inst15|Add0~25\ = CARRY((\inst15|cont\(12) & !\inst15|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(12),
	datad => VCC,
	cin => \inst15|Add0~23\,
	combout => \inst15|Add0~24_combout\,
	cout => \inst15|Add0~25\);

-- Location: FF_X34_Y40_N25
\inst15|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~24_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(12));

-- Location: LCCOMB_X34_Y40_N26
\inst15|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~26_combout\ = (\inst15|cont\(13) & (!\inst15|Add0~25\)) # (!\inst15|cont\(13) & ((\inst15|Add0~25\) # (GND)))
-- \inst15|Add0~27\ = CARRY((!\inst15|Add0~25\) # (!\inst15|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(13),
	datad => VCC,
	cin => \inst15|Add0~25\,
	combout => \inst15|Add0~26_combout\,
	cout => \inst15|Add0~27\);

-- Location: FF_X34_Y40_N27
\inst15|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~26_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(13));

-- Location: LCCOMB_X34_Y40_N28
\inst15|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~28_combout\ = (\inst15|cont\(14) & (\inst15|Add0~27\ $ (GND))) # (!\inst15|cont\(14) & (!\inst15|Add0~27\ & VCC))
-- \inst15|Add0~29\ = CARRY((\inst15|cont\(14) & !\inst15|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(14),
	datad => VCC,
	cin => \inst15|Add0~27\,
	combout => \inst15|Add0~28_combout\,
	cout => \inst15|Add0~29\);

-- Location: LCCOMB_X35_Y40_N18
\inst15|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~1_combout\ = (\inst15|Add0~28_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Equal0~9_combout\,
	datad => \inst15|Add0~28_combout\,
	combout => \inst15|cont~1_combout\);

-- Location: FF_X35_Y40_N19
\inst15|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~1_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(14));

-- Location: LCCOMB_X35_Y40_N12
\inst15|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~5_combout\ = (!\inst15|cont\(13) & (!\inst15|cont\(12) & (\inst15|cont\(14) & \inst15|cont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(13),
	datab => \inst15|cont\(12),
	datac => \inst15|cont\(14),
	datad => \inst15|cont\(15),
	combout => \inst15|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y40_N14
\inst15|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~6_combout\ = (\inst15|cont\(9) & (!\inst15|cont\(11) & (\inst15|cont\(8) & !\inst15|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(9),
	datab => \inst15|cont\(11),
	datac => \inst15|cont\(8),
	datad => \inst15|cont\(10),
	combout => \inst15|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y40_N4
\inst15|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~7_combout\ = (!\inst15|cont\(7) & (\inst15|cont\(6) & (\inst15|cont\(4) & !\inst15|cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(7),
	datab => \inst15|cont\(6),
	datac => \inst15|cont\(4),
	datad => \inst15|cont\(5),
	combout => \inst15|Equal0~7_combout\);

-- Location: LCCOMB_X35_Y40_N16
\inst15|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~8_combout\ = (!\inst15|cont\(0) & (!\inst15|cont\(2) & (!\inst15|cont\(3) & !\inst15|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(0),
	datab => \inst15|cont\(2),
	datac => \inst15|cont\(3),
	datad => \inst15|cont\(1),
	combout => \inst15|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y40_N10
\inst15|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~9_combout\ = (\inst15|Equal0~5_combout\ & (\inst15|Equal0~6_combout\ & (\inst15|Equal0~7_combout\ & \inst15|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~5_combout\,
	datab => \inst15|Equal0~6_combout\,
	datac => \inst15|Equal0~7_combout\,
	datad => \inst15|Equal0~8_combout\,
	combout => \inst15|Equal0~9_combout\);

-- Location: LCCOMB_X34_Y40_N30
\inst15|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~30_combout\ = (\inst15|cont\(15) & (!\inst15|Add0~29\)) # (!\inst15|cont\(15) & ((\inst15|Add0~29\) # (GND)))
-- \inst15|Add0~31\ = CARRY((!\inst15|Add0~29\) # (!\inst15|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(15),
	datad => VCC,
	cin => \inst15|Add0~29\,
	combout => \inst15|Add0~30_combout\,
	cout => \inst15|Add0~31\);

-- Location: LCCOMB_X35_Y40_N24
\inst15|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cont~0_combout\ = (\inst15|Add0~30_combout\ & ((!\inst15|Equal0~9_combout\) # (!\inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datac => \inst15|Equal0~9_combout\,
	datad => \inst15|Add0~30_combout\,
	combout => \inst15|cont~0_combout\);

-- Location: FF_X35_Y40_N25
\inst15|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cont~0_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(15));

-- Location: LCCOMB_X34_Y39_N0
\inst15|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~32_combout\ = (\inst15|cont\(16) & (\inst15|Add0~31\ $ (GND))) # (!\inst15|cont\(16) & (!\inst15|Add0~31\ & VCC))
-- \inst15|Add0~33\ = CARRY((\inst15|cont\(16) & !\inst15|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(16),
	datad => VCC,
	cin => \inst15|Add0~31\,
	combout => \inst15|Add0~32_combout\,
	cout => \inst15|Add0~33\);

-- Location: FF_X34_Y39_N1
\inst15|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~32_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(16));

-- Location: LCCOMB_X34_Y39_N2
\inst15|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~34_combout\ = (\inst15|cont\(17) & (!\inst15|Add0~33\)) # (!\inst15|cont\(17) & ((\inst15|Add0~33\) # (GND)))
-- \inst15|Add0~35\ = CARRY((!\inst15|Add0~33\) # (!\inst15|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(17),
	datad => VCC,
	cin => \inst15|Add0~33\,
	combout => \inst15|Add0~34_combout\,
	cout => \inst15|Add0~35\);

-- Location: FF_X34_Y39_N3
\inst15|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~34_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(17));

-- Location: LCCOMB_X34_Y39_N4
\inst15|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~36_combout\ = (\inst15|cont\(18) & (\inst15|Add0~35\ $ (GND))) # (!\inst15|cont\(18) & (!\inst15|Add0~35\ & VCC))
-- \inst15|Add0~37\ = CARRY((\inst15|cont\(18) & !\inst15|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(18),
	datad => VCC,
	cin => \inst15|Add0~35\,
	combout => \inst15|Add0~36_combout\,
	cout => \inst15|Add0~37\);

-- Location: FF_X34_Y39_N5
\inst15|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~36_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(18));

-- Location: LCCOMB_X34_Y39_N6
\inst15|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~38_combout\ = (\inst15|cont\(19) & (!\inst15|Add0~37\)) # (!\inst15|cont\(19) & ((\inst15|Add0~37\) # (GND)))
-- \inst15|Add0~39\ = CARRY((!\inst15|Add0~37\) # (!\inst15|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(19),
	datad => VCC,
	cin => \inst15|Add0~37\,
	combout => \inst15|Add0~38_combout\,
	cout => \inst15|Add0~39\);

-- Location: FF_X34_Y39_N7
\inst15|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~38_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(19));

-- Location: LCCOMB_X34_Y39_N8
\inst15|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~40_combout\ = (\inst15|cont\(20) & (\inst15|Add0~39\ $ (GND))) # (!\inst15|cont\(20) & (!\inst15|Add0~39\ & VCC))
-- \inst15|Add0~41\ = CARRY((\inst15|cont\(20) & !\inst15|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(20),
	datad => VCC,
	cin => \inst15|Add0~39\,
	combout => \inst15|Add0~40_combout\,
	cout => \inst15|Add0~41\);

-- Location: FF_X34_Y39_N9
\inst15|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~40_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(20));

-- Location: LCCOMB_X34_Y39_N10
\inst15|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~42_combout\ = (\inst15|cont\(21) & (!\inst15|Add0~41\)) # (!\inst15|cont\(21) & ((\inst15|Add0~41\) # (GND)))
-- \inst15|Add0~43\ = CARRY((!\inst15|Add0~41\) # (!\inst15|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(21),
	datad => VCC,
	cin => \inst15|Add0~41\,
	combout => \inst15|Add0~42_combout\,
	cout => \inst15|Add0~43\);

-- Location: FF_X34_Y39_N11
\inst15|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~42_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(21));

-- Location: LCCOMB_X34_Y39_N12
\inst15|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~44_combout\ = (\inst15|cont\(22) & (\inst15|Add0~43\ $ (GND))) # (!\inst15|cont\(22) & (!\inst15|Add0~43\ & VCC))
-- \inst15|Add0~45\ = CARRY((\inst15|cont\(22) & !\inst15|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(22),
	datad => VCC,
	cin => \inst15|Add0~43\,
	combout => \inst15|Add0~44_combout\,
	cout => \inst15|Add0~45\);

-- Location: FF_X34_Y39_N13
\inst15|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~44_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(22));

-- Location: LCCOMB_X34_Y39_N14
\inst15|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~46_combout\ = (\inst15|cont\(23) & (!\inst15|Add0~45\)) # (!\inst15|cont\(23) & ((\inst15|Add0~45\) # (GND)))
-- \inst15|Add0~47\ = CARRY((!\inst15|Add0~45\) # (!\inst15|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(23),
	datad => VCC,
	cin => \inst15|Add0~45\,
	combout => \inst15|Add0~46_combout\,
	cout => \inst15|Add0~47\);

-- Location: FF_X34_Y39_N15
\inst15|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~46_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(23));

-- Location: LCCOMB_X34_Y39_N16
\inst15|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~48_combout\ = (\inst15|cont\(24) & (\inst15|Add0~47\ $ (GND))) # (!\inst15|cont\(24) & (!\inst15|Add0~47\ & VCC))
-- \inst15|Add0~49\ = CARRY((\inst15|cont\(24) & !\inst15|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(24),
	datad => VCC,
	cin => \inst15|Add0~47\,
	combout => \inst15|Add0~48_combout\,
	cout => \inst15|Add0~49\);

-- Location: FF_X34_Y39_N17
\inst15|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~48_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(24));

-- Location: LCCOMB_X34_Y39_N18
\inst15|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~50_combout\ = (\inst15|cont\(25) & (!\inst15|Add0~49\)) # (!\inst15|cont\(25) & ((\inst15|Add0~49\) # (GND)))
-- \inst15|Add0~51\ = CARRY((!\inst15|Add0~49\) # (!\inst15|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(25),
	datad => VCC,
	cin => \inst15|Add0~49\,
	combout => \inst15|Add0~50_combout\,
	cout => \inst15|Add0~51\);

-- Location: FF_X34_Y39_N19
\inst15|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~50_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(25));

-- Location: LCCOMB_X34_Y39_N20
\inst15|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~52_combout\ = (\inst15|cont\(26) & (\inst15|Add0~51\ $ (GND))) # (!\inst15|cont\(26) & (!\inst15|Add0~51\ & VCC))
-- \inst15|Add0~53\ = CARRY((\inst15|cont\(26) & !\inst15|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(26),
	datad => VCC,
	cin => \inst15|Add0~51\,
	combout => \inst15|Add0~52_combout\,
	cout => \inst15|Add0~53\);

-- Location: FF_X34_Y39_N21
\inst15|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~52_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(26));

-- Location: LCCOMB_X34_Y39_N22
\inst15|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~54_combout\ = (\inst15|cont\(27) & (!\inst15|Add0~53\)) # (!\inst15|cont\(27) & ((\inst15|Add0~53\) # (GND)))
-- \inst15|Add0~55\ = CARRY((!\inst15|Add0~53\) # (!\inst15|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(27),
	datad => VCC,
	cin => \inst15|Add0~53\,
	combout => \inst15|Add0~54_combout\,
	cout => \inst15|Add0~55\);

-- Location: FF_X34_Y39_N23
\inst15|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~54_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(27));

-- Location: LCCOMB_X34_Y39_N24
\inst15|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~56_combout\ = (\inst15|cont\(28) & (\inst15|Add0~55\ $ (GND))) # (!\inst15|cont\(28) & (!\inst15|Add0~55\ & VCC))
-- \inst15|Add0~57\ = CARRY((\inst15|cont\(28) & !\inst15|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(28),
	datad => VCC,
	cin => \inst15|Add0~55\,
	combout => \inst15|Add0~56_combout\,
	cout => \inst15|Add0~57\);

-- Location: FF_X34_Y39_N25
\inst15|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~56_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(28));

-- Location: LCCOMB_X34_Y39_N26
\inst15|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~58_combout\ = (\inst15|cont\(29) & (!\inst15|Add0~57\)) # (!\inst15|cont\(29) & ((\inst15|Add0~57\) # (GND)))
-- \inst15|Add0~59\ = CARRY((!\inst15|Add0~57\) # (!\inst15|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(29),
	datad => VCC,
	cin => \inst15|Add0~57\,
	combout => \inst15|Add0~58_combout\,
	cout => \inst15|Add0~59\);

-- Location: FF_X34_Y39_N27
\inst15|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~58_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(29));

-- Location: LCCOMB_X34_Y39_N28
\inst15|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~60_combout\ = (\inst15|cont\(30) & (\inst15|Add0~59\ $ (GND))) # (!\inst15|cont\(30) & (!\inst15|Add0~59\ & VCC))
-- \inst15|Add0~61\ = CARRY((\inst15|cont\(30) & !\inst15|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cont\(30),
	datad => VCC,
	cin => \inst15|Add0~59\,
	combout => \inst15|Add0~60_combout\,
	cout => \inst15|Add0~61\);

-- Location: FF_X34_Y39_N29
\inst15|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~60_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(30));

-- Location: LCCOMB_X34_Y39_N30
\inst15|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~62_combout\ = \inst15|cont\(31) $ (\inst15|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(31),
	cin => \inst15|Add0~61\,
	combout => \inst15|Add0~62_combout\);

-- Location: FF_X34_Y39_N31
\inst15|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add0~62_combout\,
	ena => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cont\(31));

-- Location: LCCOMB_X33_Y39_N12
\inst15|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~0_combout\ = (!\inst15|cont\(31) & (!\inst15|cont\(30) & (!\inst15|cont\(28) & !\inst15|cont\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(31),
	datab => \inst15|cont\(30),
	datac => \inst15|cont\(28),
	datad => \inst15|cont\(29),
	combout => \inst15|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y39_N18
\inst15|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~1_combout\ = (!\inst15|cont\(26) & (!\inst15|cont\(25) & (!\inst15|cont\(27) & !\inst15|cont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(26),
	datab => \inst15|cont\(25),
	datac => \inst15|cont\(27),
	datad => \inst15|cont\(24),
	combout => \inst15|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y39_N8
\inst15|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~2_combout\ = (!\inst15|cont\(22) & (!\inst15|cont\(21) & (!\inst15|cont\(23) & !\inst15|cont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(22),
	datab => \inst15|cont\(21),
	datac => \inst15|cont\(23),
	datad => \inst15|cont\(20),
	combout => \inst15|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y39_N2
\inst15|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~3_combout\ = (!\inst15|cont\(19) & (!\inst15|cont\(16) & (!\inst15|cont\(17) & !\inst15|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cont\(19),
	datab => \inst15|cont\(16),
	datac => \inst15|cont\(17),
	datad => \inst15|cont\(18),
	combout => \inst15|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y39_N24
\inst15|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~4_combout\ = (\inst15|Equal0~0_combout\ & (\inst15|Equal0~1_combout\ & (\inst15|Equal0~2_combout\ & \inst15|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~0_combout\,
	datab => \inst15|Equal0~1_combout\,
	datac => \inst15|Equal0~2_combout\,
	datad => \inst15|Equal0~3_combout\,
	combout => \inst15|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y38_N4
\inst15|var_seg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[6]~7_combout\ = (\inst15|Equal0~4_combout\ & (\inst15|Equal0~9_combout\ & (\inst15|Equal3~1_combout\ $ (!\inst15|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal3~1_combout\,
	datab => \inst15|Equal1~1_combout\,
	datac => \inst15|Equal0~4_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|var_seg[6]~7_combout\);

-- Location: LCCOMB_X33_Y38_N12
\inst15|var_seg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[0]~8_combout\ = (\inst15|var_seg\(0) & (!\inst15|var_seg[6]~7_combout\ & VCC)) # (!\inst15|var_seg\(0) & (\inst15|var_seg[6]~7_combout\))
-- \inst15|var_seg[0]~9\ = CARRY((!\inst15|var_seg\(0) & \inst15|var_seg[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(0),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	combout => \inst15|var_seg[0]~8_combout\,
	cout => \inst15|var_seg[0]~9\);

-- Location: FF_X33_Y38_N13
\inst15|var_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[0]~8_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(0));

-- Location: LCCOMB_X33_Y38_N14
\inst15|var_seg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[1]~10_combout\ = ((\inst15|var_seg\(1) $ (\inst15|var_seg[6]~7_combout\ $ (\inst15|var_seg[0]~9\)))) # (GND)
-- \inst15|var_seg[1]~11\ = CARRY((\inst15|var_seg\(1) & ((!\inst15|var_seg[0]~9\) # (!\inst15|var_seg[6]~7_combout\))) # (!\inst15|var_seg\(1) & (!\inst15|var_seg[6]~7_combout\ & !\inst15|var_seg[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(1),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	cin => \inst15|var_seg[0]~9\,
	combout => \inst15|var_seg[1]~10_combout\,
	cout => \inst15|var_seg[1]~11\);

-- Location: FF_X33_Y38_N15
\inst15|var_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[1]~10_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(1));

-- Location: LCCOMB_X33_Y38_N16
\inst15|var_seg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[2]~12_combout\ = (\inst15|var_seg\(2) & ((\inst15|var_seg[6]~7_combout\ & (!\inst15|var_seg[1]~11\)) # (!\inst15|var_seg[6]~7_combout\ & (\inst15|var_seg[1]~11\ & VCC)))) # (!\inst15|var_seg\(2) & ((\inst15|var_seg[6]~7_combout\ & 
-- ((\inst15|var_seg[1]~11\) # (GND))) # (!\inst15|var_seg[6]~7_combout\ & (!\inst15|var_seg[1]~11\))))
-- \inst15|var_seg[2]~13\ = CARRY((\inst15|var_seg\(2) & (\inst15|var_seg[6]~7_combout\ & !\inst15|var_seg[1]~11\)) # (!\inst15|var_seg\(2) & ((\inst15|var_seg[6]~7_combout\) # (!\inst15|var_seg[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(2),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	cin => \inst15|var_seg[1]~11\,
	combout => \inst15|var_seg[2]~12_combout\,
	cout => \inst15|var_seg[2]~13\);

-- Location: FF_X33_Y38_N17
\inst15|var_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[2]~12_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(2));

-- Location: LCCOMB_X33_Y38_N18
\inst15|var_seg[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[3]~14_combout\ = ((\inst15|var_seg\(3) $ (\inst15|var_seg[6]~7_combout\ $ (\inst15|var_seg[2]~13\)))) # (GND)
-- \inst15|var_seg[3]~15\ = CARRY((\inst15|var_seg\(3) & ((!\inst15|var_seg[2]~13\) # (!\inst15|var_seg[6]~7_combout\))) # (!\inst15|var_seg\(3) & (!\inst15|var_seg[6]~7_combout\ & !\inst15|var_seg[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(3),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	cin => \inst15|var_seg[2]~13\,
	combout => \inst15|var_seg[3]~14_combout\,
	cout => \inst15|var_seg[3]~15\);

-- Location: FF_X33_Y38_N19
\inst15|var_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[3]~14_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(3));

-- Location: LCCOMB_X33_Y38_N20
\inst15|var_seg[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[4]~16_combout\ = (\inst15|var_seg\(4) & ((\inst15|var_seg[6]~7_combout\ & (!\inst15|var_seg[3]~15\)) # (!\inst15|var_seg[6]~7_combout\ & (\inst15|var_seg[3]~15\ & VCC)))) # (!\inst15|var_seg\(4) & ((\inst15|var_seg[6]~7_combout\ & 
-- ((\inst15|var_seg[3]~15\) # (GND))) # (!\inst15|var_seg[6]~7_combout\ & (!\inst15|var_seg[3]~15\))))
-- \inst15|var_seg[4]~17\ = CARRY((\inst15|var_seg\(4) & (\inst15|var_seg[6]~7_combout\ & !\inst15|var_seg[3]~15\)) # (!\inst15|var_seg\(4) & ((\inst15|var_seg[6]~7_combout\) # (!\inst15|var_seg[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(4),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	cin => \inst15|var_seg[3]~15\,
	combout => \inst15|var_seg[4]~16_combout\,
	cout => \inst15|var_seg[4]~17\);

-- Location: FF_X33_Y38_N21
\inst15|var_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[4]~16_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(4));

-- Location: LCCOMB_X33_Y38_N22
\inst15|var_seg[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[5]~18_combout\ = ((\inst15|var_seg\(5) $ (\inst15|var_seg[6]~7_combout\ $ (\inst15|var_seg[4]~17\)))) # (GND)
-- \inst15|var_seg[5]~19\ = CARRY((\inst15|var_seg\(5) & ((!\inst15|var_seg[4]~17\) # (!\inst15|var_seg[6]~7_combout\))) # (!\inst15|var_seg\(5) & (!\inst15|var_seg[6]~7_combout\ & !\inst15|var_seg[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(5),
	datab => \inst15|var_seg[6]~7_combout\,
	datad => VCC,
	cin => \inst15|var_seg[4]~17\,
	combout => \inst15|var_seg[5]~18_combout\,
	cout => \inst15|var_seg[5]~19\);

-- Location: FF_X33_Y38_N23
\inst15|var_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[5]~18_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(5));

-- Location: LCCOMB_X33_Y38_N8
\inst15|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal3~0_combout\ = (((!\inst15|var_seg\(2)) # (!\inst15|var_seg\(1))) # (!\inst15|var_seg\(3))) # (!\inst15|var_seg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(0),
	datab => \inst15|var_seg\(3),
	datac => \inst15|var_seg\(1),
	datad => \inst15|var_seg\(2),
	combout => \inst15|Equal3~0_combout\);

-- Location: LCCOMB_X33_Y38_N24
\inst15|var_seg[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_seg[6]~20_combout\ = \inst15|var_seg\(6) $ (\inst15|var_seg[5]~19\ $ (!\inst15|var_seg[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|var_seg\(6),
	datad => \inst15|var_seg[6]~7_combout\,
	cin => \inst15|var_seg[5]~19\,
	combout => \inst15|var_seg[6]~20_combout\);

-- Location: FF_X33_Y38_N25
\inst15|var_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|var_seg[6]~20_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_seg\(6));

-- Location: LCCOMB_X33_Y38_N30
\inst15|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal3~1_combout\ = (((\inst15|Equal3~0_combout\) # (!\inst15|var_seg\(6))) # (!\inst15|var_seg\(4))) # (!\inst15|var_seg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_seg\(5),
	datab => \inst15|var_seg\(4),
	datac => \inst15|Equal3~0_combout\,
	datad => \inst15|var_seg\(6),
	combout => \inst15|Equal3~1_combout\);

-- Location: LCCOMB_X32_Y38_N14
\inst15|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~0_combout\ = \inst15|var_milseg\(0) $ (GND)
-- \inst15|Add1~1\ = CARRY(!\inst15|var_milseg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_milseg\(0),
	datad => VCC,
	combout => \inst15|Add1~0_combout\,
	cout => \inst15|Add1~1\);

-- Location: LCCOMB_X33_Y38_N6
\inst15|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~19_combout\ = (\inst15|Equal1~1_combout\ & (!\inst15|Equal3~1_combout\)) # (!\inst15|Equal1~1_combout\ & ((!\inst15|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datac => \inst15|Equal3~1_combout\,
	datad => \inst15|Add1~0_combout\,
	combout => \inst15|Add1~19_combout\);

-- Location: LCCOMB_X34_Y38_N14
\inst15|var_milseg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|var_milseg[3]~0_combout\ = (\inst29|led~combout\ & (\inst15|Equal0~4_combout\ & \inst15|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|led~combout\,
	datac => \inst15|Equal0~4_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|var_milseg[3]~0_combout\);

-- Location: FF_X33_Y38_N7
\inst15|var_milseg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~19_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(0));

-- Location: LCCOMB_X32_Y38_N16
\inst15|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~2_combout\ = (\inst15|var_milseg\(1) & (!\inst15|Add1~1\)) # (!\inst15|var_milseg\(1) & (\inst15|Add1~1\ & VCC))
-- \inst15|Add1~3\ = CARRY((\inst15|var_milseg\(1) & !\inst15|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|var_milseg\(1),
	datad => VCC,
	cin => \inst15|Add1~1\,
	combout => \inst15|Add1~2_combout\,
	cout => \inst15|Add1~3\);

-- Location: LCCOMB_X33_Y38_N28
\inst15|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~18_combout\ = (\inst15|Equal1~1_combout\ & (!\inst15|Equal3~1_combout\)) # (!\inst15|Equal1~1_combout\ & ((!\inst15|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal3~1_combout\,
	datac => \inst15|Add1~2_combout\,
	datad => \inst15|Equal1~1_combout\,
	combout => \inst15|Add1~18_combout\);

-- Location: FF_X33_Y38_N29
\inst15|var_milseg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~18_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(1));

-- Location: LCCOMB_X32_Y38_N18
\inst15|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~4_combout\ = (\inst15|var_milseg\(2) & ((GND) # (!\inst15|Add1~3\))) # (!\inst15|var_milseg\(2) & (\inst15|Add1~3\ $ (GND)))
-- \inst15|Add1~5\ = CARRY((\inst15|var_milseg\(2)) # (!\inst15|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|var_milseg\(2),
	datad => VCC,
	cin => \inst15|Add1~3\,
	combout => \inst15|Add1~4_combout\,
	cout => \inst15|Add1~5\);

-- Location: LCCOMB_X33_Y38_N0
\inst15|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~20_combout\ = (\inst15|Add1~4_combout\ & !\inst15|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Add1~4_combout\,
	datad => \inst15|Equal1~1_combout\,
	combout => \inst15|Add1~20_combout\);

-- Location: FF_X33_Y38_N1
\inst15|var_milseg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~20_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(2));

-- Location: LCCOMB_X32_Y38_N20
\inst15|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~6_combout\ = (\inst15|var_milseg\(3) & (\inst15|Add1~5\ & VCC)) # (!\inst15|var_milseg\(3) & (!\inst15|Add1~5\))
-- \inst15|Add1~7\ = CARRY((!\inst15|var_milseg\(3) & !\inst15|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_milseg\(3),
	datad => VCC,
	cin => \inst15|Add1~5\,
	combout => \inst15|Add1~6_combout\,
	cout => \inst15|Add1~7\);

-- Location: LCCOMB_X34_Y38_N22
\inst15|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~17_combout\ = (!\inst15|Equal1~1_combout\ & \inst15|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datad => \inst15|Add1~6_combout\,
	combout => \inst15|Add1~17_combout\);

-- Location: FF_X34_Y38_N23
\inst15|var_milseg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~17_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(3));

-- Location: LCCOMB_X32_Y38_N22
\inst15|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~8_combout\ = (\inst15|var_milseg\(4) & ((GND) # (!\inst15|Add1~7\))) # (!\inst15|var_milseg\(4) & (\inst15|Add1~7\ $ (GND)))
-- \inst15|Add1~9\ = CARRY((\inst15|var_milseg\(4)) # (!\inst15|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|var_milseg\(4),
	datad => VCC,
	cin => \inst15|Add1~7\,
	combout => \inst15|Add1~8_combout\,
	cout => \inst15|Add1~9\);

-- Location: LCCOMB_X34_Y38_N2
\inst15|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~16_combout\ = (!\inst15|Equal1~1_combout\ & \inst15|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datad => \inst15|Add1~8_combout\,
	combout => \inst15|Add1~16_combout\);

-- Location: FF_X34_Y38_N3
\inst15|var_milseg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~16_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(4));

-- Location: LCCOMB_X32_Y38_N24
\inst15|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~10_combout\ = (\inst15|var_milseg\(5) & (!\inst15|Add1~9\)) # (!\inst15|var_milseg\(5) & (\inst15|Add1~9\ & VCC))
-- \inst15|Add1~11\ = CARRY((\inst15|var_milseg\(5) & !\inst15|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_milseg\(5),
	datad => VCC,
	cin => \inst15|Add1~9\,
	combout => \inst15|Add1~10_combout\,
	cout => \inst15|Add1~11\);

-- Location: LCCOMB_X34_Y38_N16
\inst15|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~15_combout\ = (\inst15|Equal1~1_combout\ & ((!\inst15|Equal3~1_combout\))) # (!\inst15|Equal1~1_combout\ & (!\inst15|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datac => \inst15|Add1~10_combout\,
	datad => \inst15|Equal3~1_combout\,
	combout => \inst15|Add1~15_combout\);

-- Location: FF_X34_Y38_N17
\inst15|var_milseg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~15_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(5));

-- Location: LCCOMB_X32_Y38_N26
\inst15|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~12_combout\ = \inst15|Add1~11\ $ (!\inst15|var_milseg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst15|var_milseg\(6),
	cin => \inst15|Add1~11\,
	combout => \inst15|Add1~12_combout\);

-- Location: LCCOMB_X34_Y38_N30
\inst15|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add1~14_combout\ = (\inst15|Equal1~1_combout\ & ((!\inst15|Equal3~1_combout\))) # (!\inst15|Equal1~1_combout\ & (!\inst15|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datac => \inst15|Add1~12_combout\,
	datad => \inst15|Equal3~1_combout\,
	combout => \inst15|Add1~14_combout\);

-- Location: FF_X34_Y38_N31
\inst15|var_milseg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add1~14_combout\,
	ena => \inst15|var_milseg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|var_milseg\(6));

-- Location: LCCOMB_X34_Y38_N24
\inst15|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal1~0_combout\ = (\inst15|var_milseg\(6) & (!\inst15|var_milseg\(4) & (!\inst15|var_milseg\(3) & \inst15|var_milseg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_milseg\(6),
	datab => \inst15|var_milseg\(4),
	datac => \inst15|var_milseg\(3),
	datad => \inst15|var_milseg\(5),
	combout => \inst15|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y38_N28
\inst15|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal1~1_combout\ = (!\inst15|var_milseg\(2) & (\inst15|var_milseg\(1) & (\inst15|var_milseg\(0) & \inst15|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|var_milseg\(2),
	datab => \inst15|var_milseg\(1),
	datac => \inst15|var_milseg\(0),
	datad => \inst15|Equal1~0_combout\,
	combout => \inst15|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y38_N6
\inst15|cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cnt[0]~0_combout\ = (\inst15|Equal1~1_combout\ & (\inst15|Equal0~4_combout\ & \inst15|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal1~1_combout\,
	datac => \inst15|Equal0~4_combout\,
	datad => \inst15|Equal0~9_combout\,
	combout => \inst15|cnt[0]~0_combout\);

-- Location: LCCOMB_X35_Y38_N0
\inst15|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~0_combout\ = \inst15|cnt\(0) $ (VCC)
-- \inst15|Add3~1\ = CARRY(\inst15|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(0),
	datad => VCC,
	combout => \inst15|Add3~0_combout\,
	cout => \inst15|Add3~1\);

-- Location: FF_X35_Y38_N1
\inst15|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~0_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(0));

-- Location: LCCOMB_X35_Y38_N2
\inst15|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~2_combout\ = (\inst15|cnt\(1) & (!\inst15|Add3~1\)) # (!\inst15|cnt\(1) & ((\inst15|Add3~1\) # (GND)))
-- \inst15|Add3~3\ = CARRY((!\inst15|Add3~1\) # (!\inst15|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(1),
	datad => VCC,
	cin => \inst15|Add3~1\,
	combout => \inst15|Add3~2_combout\,
	cout => \inst15|Add3~3\);

-- Location: LCCOMB_X36_Y38_N2
\inst15|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|cnt~1_combout\ = (\inst15|Add3~2_combout\ & !\inst15|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add3~2_combout\,
	datad => \inst15|Equal2~10_combout\,
	combout => \inst15|cnt~1_combout\);

-- Location: FF_X36_Y38_N3
\inst15|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|cnt~1_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(1));

-- Location: LCCOMB_X35_Y38_N4
\inst15|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~4_combout\ = (\inst15|cnt\(2) & (\inst15|Add3~3\ $ (GND))) # (!\inst15|cnt\(2) & (!\inst15|Add3~3\ & VCC))
-- \inst15|Add3~5\ = CARRY((\inst15|cnt\(2) & !\inst15|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(2),
	datad => VCC,
	cin => \inst15|Add3~3\,
	combout => \inst15|Add3~4_combout\,
	cout => \inst15|Add3~5\);

-- Location: FF_X35_Y38_N5
\inst15|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~4_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(2));

-- Location: LCCOMB_X35_Y38_N6
\inst15|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~6_combout\ = (\inst15|cnt\(3) & (!\inst15|Add3~5\)) # (!\inst15|cnt\(3) & ((\inst15|Add3~5\) # (GND)))
-- \inst15|Add3~7\ = CARRY((!\inst15|Add3~5\) # (!\inst15|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(3),
	datad => VCC,
	cin => \inst15|Add3~5\,
	combout => \inst15|Add3~6_combout\,
	cout => \inst15|Add3~7\);

-- Location: FF_X35_Y38_N7
\inst15|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~6_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(3));

-- Location: LCCOMB_X35_Y38_N8
\inst15|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~8_combout\ = (\inst15|cnt\(4) & (\inst15|Add3~7\ $ (GND))) # (!\inst15|cnt\(4) & (!\inst15|Add3~7\ & VCC))
-- \inst15|Add3~9\ = CARRY((\inst15|cnt\(4) & !\inst15|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(4),
	datad => VCC,
	cin => \inst15|Add3~7\,
	combout => \inst15|Add3~8_combout\,
	cout => \inst15|Add3~9\);

-- Location: FF_X35_Y38_N9
\inst15|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~8_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(4));

-- Location: LCCOMB_X35_Y38_N10
\inst15|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~10_combout\ = (\inst15|cnt\(5) & (!\inst15|Add3~9\)) # (!\inst15|cnt\(5) & ((\inst15|Add3~9\) # (GND)))
-- \inst15|Add3~11\ = CARRY((!\inst15|Add3~9\) # (!\inst15|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(5),
	datad => VCC,
	cin => \inst15|Add3~9\,
	combout => \inst15|Add3~10_combout\,
	cout => \inst15|Add3~11\);

-- Location: FF_X35_Y38_N11
\inst15|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~10_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(5));

-- Location: LCCOMB_X35_Y38_N12
\inst15|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~12_combout\ = (\inst15|cnt\(6) & (\inst15|Add3~11\ $ (GND))) # (!\inst15|cnt\(6) & (!\inst15|Add3~11\ & VCC))
-- \inst15|Add3~13\ = CARRY((\inst15|cnt\(6) & !\inst15|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(6),
	datad => VCC,
	cin => \inst15|Add3~11\,
	combout => \inst15|Add3~12_combout\,
	cout => \inst15|Add3~13\);

-- Location: FF_X35_Y38_N13
\inst15|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~12_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(6));

-- Location: LCCOMB_X35_Y38_N14
\inst15|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~14_combout\ = (\inst15|cnt\(7) & (!\inst15|Add3~13\)) # (!\inst15|cnt\(7) & ((\inst15|Add3~13\) # (GND)))
-- \inst15|Add3~15\ = CARRY((!\inst15|Add3~13\) # (!\inst15|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(7),
	datad => VCC,
	cin => \inst15|Add3~13\,
	combout => \inst15|Add3~14_combout\,
	cout => \inst15|Add3~15\);

-- Location: FF_X35_Y38_N15
\inst15|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~14_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(7));

-- Location: LCCOMB_X35_Y38_N16
\inst15|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~16_combout\ = (\inst15|cnt\(8) & (\inst15|Add3~15\ $ (GND))) # (!\inst15|cnt\(8) & (!\inst15|Add3~15\ & VCC))
-- \inst15|Add3~17\ = CARRY((\inst15|cnt\(8) & !\inst15|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(8),
	datad => VCC,
	cin => \inst15|Add3~15\,
	combout => \inst15|Add3~16_combout\,
	cout => \inst15|Add3~17\);

-- Location: FF_X35_Y38_N17
\inst15|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~16_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(8));

-- Location: LCCOMB_X35_Y38_N18
\inst15|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~18_combout\ = (\inst15|cnt\(9) & (!\inst15|Add3~17\)) # (!\inst15|cnt\(9) & ((\inst15|Add3~17\) # (GND)))
-- \inst15|Add3~19\ = CARRY((!\inst15|Add3~17\) # (!\inst15|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(9),
	datad => VCC,
	cin => \inst15|Add3~17\,
	combout => \inst15|Add3~18_combout\,
	cout => \inst15|Add3~19\);

-- Location: FF_X35_Y38_N19
\inst15|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~18_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(9));

-- Location: LCCOMB_X35_Y38_N20
\inst15|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~20_combout\ = (\inst15|cnt\(10) & (\inst15|Add3~19\ $ (GND))) # (!\inst15|cnt\(10) & (!\inst15|Add3~19\ & VCC))
-- \inst15|Add3~21\ = CARRY((\inst15|cnt\(10) & !\inst15|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(10),
	datad => VCC,
	cin => \inst15|Add3~19\,
	combout => \inst15|Add3~20_combout\,
	cout => \inst15|Add3~21\);

-- Location: FF_X35_Y38_N21
\inst15|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~20_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(10));

-- Location: LCCOMB_X35_Y38_N22
\inst15|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~22_combout\ = (\inst15|cnt\(11) & (!\inst15|Add3~21\)) # (!\inst15|cnt\(11) & ((\inst15|Add3~21\) # (GND)))
-- \inst15|Add3~23\ = CARRY((!\inst15|Add3~21\) # (!\inst15|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(11),
	datad => VCC,
	cin => \inst15|Add3~21\,
	combout => \inst15|Add3~22_combout\,
	cout => \inst15|Add3~23\);

-- Location: FF_X35_Y38_N23
\inst15|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~22_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(11));

-- Location: LCCOMB_X36_Y38_N4
\inst15|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~6_combout\ = (!\inst15|cnt\(10) & (!\inst15|cnt\(9) & (!\inst15|cnt\(8) & !\inst15|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(10),
	datab => \inst15|cnt\(9),
	datac => \inst15|cnt\(8),
	datad => \inst15|cnt\(11),
	combout => \inst15|Equal2~6_combout\);

-- Location: LCCOMB_X35_Y38_N24
\inst15|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~24_combout\ = (\inst15|cnt\(12) & (\inst15|Add3~23\ $ (GND))) # (!\inst15|cnt\(12) & (!\inst15|Add3~23\ & VCC))
-- \inst15|Add3~25\ = CARRY((\inst15|cnt\(12) & !\inst15|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(12),
	datad => VCC,
	cin => \inst15|Add3~23\,
	combout => \inst15|Add3~24_combout\,
	cout => \inst15|Add3~25\);

-- Location: FF_X35_Y38_N25
\inst15|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~24_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(12));

-- Location: LCCOMB_X35_Y38_N26
\inst15|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~26_combout\ = (\inst15|cnt\(13) & (!\inst15|Add3~25\)) # (!\inst15|cnt\(13) & ((\inst15|Add3~25\) # (GND)))
-- \inst15|Add3~27\ = CARRY((!\inst15|Add3~25\) # (!\inst15|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(13),
	datad => VCC,
	cin => \inst15|Add3~25\,
	combout => \inst15|Add3~26_combout\,
	cout => \inst15|Add3~27\);

-- Location: FF_X35_Y38_N27
\inst15|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~26_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(13));

-- Location: LCCOMB_X35_Y38_N28
\inst15|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~28_combout\ = (\inst15|cnt\(14) & (\inst15|Add3~27\ $ (GND))) # (!\inst15|cnt\(14) & (!\inst15|Add3~27\ & VCC))
-- \inst15|Add3~29\ = CARRY((\inst15|cnt\(14) & !\inst15|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(14),
	datad => VCC,
	cin => \inst15|Add3~27\,
	combout => \inst15|Add3~28_combout\,
	cout => \inst15|Add3~29\);

-- Location: FF_X35_Y38_N29
\inst15|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~28_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(14));

-- Location: LCCOMB_X35_Y38_N30
\inst15|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~30_combout\ = (\inst15|cnt\(15) & (!\inst15|Add3~29\)) # (!\inst15|cnt\(15) & ((\inst15|Add3~29\) # (GND)))
-- \inst15|Add3~31\ = CARRY((!\inst15|Add3~29\) # (!\inst15|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(15),
	datad => VCC,
	cin => \inst15|Add3~29\,
	combout => \inst15|Add3~30_combout\,
	cout => \inst15|Add3~31\);

-- Location: FF_X35_Y38_N31
\inst15|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~30_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(15));

-- Location: LCCOMB_X36_Y38_N18
\inst15|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~5_combout\ = (!\inst15|cnt\(14) & (!\inst15|cnt\(12) & (!\inst15|cnt\(13) & !\inst15|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(14),
	datab => \inst15|cnt\(12),
	datac => \inst15|cnt\(13),
	datad => \inst15|cnt\(15),
	combout => \inst15|Equal2~5_combout\);

-- Location: LCCOMB_X36_Y38_N12
\inst15|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~8_combout\ = (!\inst15|cnt\(3) & !\inst15|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(3),
	datac => \inst15|cnt\(2),
	combout => \inst15|Equal2~8_combout\);

-- Location: LCCOMB_X36_Y38_N6
\inst15|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~7_combout\ = (!\inst15|cnt\(4) & (!\inst15|cnt\(5) & (!\inst15|cnt\(6) & !\inst15|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(4),
	datab => \inst15|cnt\(5),
	datac => \inst15|cnt\(6),
	datad => \inst15|cnt\(7),
	combout => \inst15|Equal2~7_combout\);

-- Location: LCCOMB_X36_Y38_N8
\inst15|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~9_combout\ = (\inst15|Equal2~8_combout\ & (!\inst15|cnt\(1) & (\inst15|cnt\(0) & \inst15|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal2~8_combout\,
	datab => \inst15|cnt\(1),
	datac => \inst15|cnt\(0),
	datad => \inst15|Equal2~7_combout\,
	combout => \inst15|Equal2~9_combout\);

-- Location: LCCOMB_X35_Y37_N0
\inst15|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~32_combout\ = (\inst15|cnt\(16) & (\inst15|Add3~31\ $ (GND))) # (!\inst15|cnt\(16) & (!\inst15|Add3~31\ & VCC))
-- \inst15|Add3~33\ = CARRY((\inst15|cnt\(16) & !\inst15|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(16),
	datad => VCC,
	cin => \inst15|Add3~31\,
	combout => \inst15|Add3~32_combout\,
	cout => \inst15|Add3~33\);

-- Location: FF_X35_Y37_N1
\inst15|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~32_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(16));

-- Location: LCCOMB_X35_Y37_N2
\inst15|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~34_combout\ = (\inst15|cnt\(17) & (!\inst15|Add3~33\)) # (!\inst15|cnt\(17) & ((\inst15|Add3~33\) # (GND)))
-- \inst15|Add3~35\ = CARRY((!\inst15|Add3~33\) # (!\inst15|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(17),
	datad => VCC,
	cin => \inst15|Add3~33\,
	combout => \inst15|Add3~34_combout\,
	cout => \inst15|Add3~35\);

-- Location: FF_X35_Y37_N3
\inst15|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~34_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(17));

-- Location: LCCOMB_X35_Y37_N4
\inst15|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~36_combout\ = (\inst15|cnt\(18) & (\inst15|Add3~35\ $ (GND))) # (!\inst15|cnt\(18) & (!\inst15|Add3~35\ & VCC))
-- \inst15|Add3~37\ = CARRY((\inst15|cnt\(18) & !\inst15|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(18),
	datad => VCC,
	cin => \inst15|Add3~35\,
	combout => \inst15|Add3~36_combout\,
	cout => \inst15|Add3~37\);

-- Location: FF_X35_Y37_N5
\inst15|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~36_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(18));

-- Location: LCCOMB_X35_Y37_N6
\inst15|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~38_combout\ = (\inst15|cnt\(19) & (!\inst15|Add3~37\)) # (!\inst15|cnt\(19) & ((\inst15|Add3~37\) # (GND)))
-- \inst15|Add3~39\ = CARRY((!\inst15|Add3~37\) # (!\inst15|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(19),
	datad => VCC,
	cin => \inst15|Add3~37\,
	combout => \inst15|Add3~38_combout\,
	cout => \inst15|Add3~39\);

-- Location: FF_X35_Y37_N7
\inst15|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~38_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(19));

-- Location: LCCOMB_X36_Y37_N10
\inst15|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~3_combout\ = (!\inst15|cnt\(16) & (!\inst15|cnt\(18) & (!\inst15|cnt\(19) & !\inst15|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(16),
	datab => \inst15|cnt\(18),
	datac => \inst15|cnt\(19),
	datad => \inst15|cnt\(17),
	combout => \inst15|Equal2~3_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst15|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~40_combout\ = (\inst15|cnt\(20) & (\inst15|Add3~39\ $ (GND))) # (!\inst15|cnt\(20) & (!\inst15|Add3~39\ & VCC))
-- \inst15|Add3~41\ = CARRY((\inst15|cnt\(20) & !\inst15|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(20),
	datad => VCC,
	cin => \inst15|Add3~39\,
	combout => \inst15|Add3~40_combout\,
	cout => \inst15|Add3~41\);

-- Location: FF_X35_Y37_N9
\inst15|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~40_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(20));

-- Location: LCCOMB_X35_Y37_N10
\inst15|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~42_combout\ = (\inst15|cnt\(21) & (!\inst15|Add3~41\)) # (!\inst15|cnt\(21) & ((\inst15|Add3~41\) # (GND)))
-- \inst15|Add3~43\ = CARRY((!\inst15|Add3~41\) # (!\inst15|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(21),
	datad => VCC,
	cin => \inst15|Add3~41\,
	combout => \inst15|Add3~42_combout\,
	cout => \inst15|Add3~43\);

-- Location: FF_X35_Y37_N11
\inst15|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~42_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(21));

-- Location: LCCOMB_X35_Y37_N12
\inst15|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~44_combout\ = (\inst15|cnt\(22) & (\inst15|Add3~43\ $ (GND))) # (!\inst15|cnt\(22) & (!\inst15|Add3~43\ & VCC))
-- \inst15|Add3~45\ = CARRY((\inst15|cnt\(22) & !\inst15|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(22),
	datad => VCC,
	cin => \inst15|Add3~43\,
	combout => \inst15|Add3~44_combout\,
	cout => \inst15|Add3~45\);

-- Location: FF_X35_Y37_N13
\inst15|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~44_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(22));

-- Location: LCCOMB_X35_Y37_N14
\inst15|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~46_combout\ = (\inst15|cnt\(23) & (!\inst15|Add3~45\)) # (!\inst15|cnt\(23) & ((\inst15|Add3~45\) # (GND)))
-- \inst15|Add3~47\ = CARRY((!\inst15|Add3~45\) # (!\inst15|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(23),
	datad => VCC,
	cin => \inst15|Add3~45\,
	combout => \inst15|Add3~46_combout\,
	cout => \inst15|Add3~47\);

-- Location: FF_X35_Y37_N15
\inst15|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~46_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(23));

-- Location: LCCOMB_X35_Y37_N16
\inst15|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~48_combout\ = (\inst15|cnt\(24) & (\inst15|Add3~47\ $ (GND))) # (!\inst15|cnt\(24) & (!\inst15|Add3~47\ & VCC))
-- \inst15|Add3~49\ = CARRY((\inst15|cnt\(24) & !\inst15|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(24),
	datad => VCC,
	cin => \inst15|Add3~47\,
	combout => \inst15|Add3~48_combout\,
	cout => \inst15|Add3~49\);

-- Location: FF_X35_Y37_N17
\inst15|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~48_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(24));

-- Location: LCCOMB_X35_Y37_N18
\inst15|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~50_combout\ = (\inst15|cnt\(25) & (!\inst15|Add3~49\)) # (!\inst15|cnt\(25) & ((\inst15|Add3~49\) # (GND)))
-- \inst15|Add3~51\ = CARRY((!\inst15|Add3~49\) # (!\inst15|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(25),
	datad => VCC,
	cin => \inst15|Add3~49\,
	combout => \inst15|Add3~50_combout\,
	cout => \inst15|Add3~51\);

-- Location: FF_X35_Y37_N19
\inst15|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~50_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(25));

-- Location: LCCOMB_X35_Y37_N20
\inst15|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~52_combout\ = (\inst15|cnt\(26) & (\inst15|Add3~51\ $ (GND))) # (!\inst15|cnt\(26) & (!\inst15|Add3~51\ & VCC))
-- \inst15|Add3~53\ = CARRY((\inst15|cnt\(26) & !\inst15|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(26),
	datad => VCC,
	cin => \inst15|Add3~51\,
	combout => \inst15|Add3~52_combout\,
	cout => \inst15|Add3~53\);

-- Location: FF_X35_Y37_N21
\inst15|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~52_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(26));

-- Location: LCCOMB_X35_Y37_N22
\inst15|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~54_combout\ = (\inst15|cnt\(27) & (!\inst15|Add3~53\)) # (!\inst15|cnt\(27) & ((\inst15|Add3~53\) # (GND)))
-- \inst15|Add3~55\ = CARRY((!\inst15|Add3~53\) # (!\inst15|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(27),
	datad => VCC,
	cin => \inst15|Add3~53\,
	combout => \inst15|Add3~54_combout\,
	cout => \inst15|Add3~55\);

-- Location: FF_X35_Y37_N23
\inst15|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~54_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(27));

-- Location: LCCOMB_X36_Y37_N18
\inst15|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~1_combout\ = (!\inst15|cnt\(26) & (!\inst15|cnt\(25) & (!\inst15|cnt\(24) & !\inst15|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(26),
	datab => \inst15|cnt\(25),
	datac => \inst15|cnt\(24),
	datad => \inst15|cnt\(27),
	combout => \inst15|Equal2~1_combout\);

-- Location: LCCOMB_X35_Y37_N24
\inst15|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~56_combout\ = (\inst15|cnt\(28) & (\inst15|Add3~55\ $ (GND))) # (!\inst15|cnt\(28) & (!\inst15|Add3~55\ & VCC))
-- \inst15|Add3~57\ = CARRY((\inst15|cnt\(28) & !\inst15|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(28),
	datad => VCC,
	cin => \inst15|Add3~55\,
	combout => \inst15|Add3~56_combout\,
	cout => \inst15|Add3~57\);

-- Location: FF_X35_Y37_N25
\inst15|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~56_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(28));

-- Location: LCCOMB_X35_Y37_N26
\inst15|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~58_combout\ = (\inst15|cnt\(29) & (!\inst15|Add3~57\)) # (!\inst15|cnt\(29) & ((\inst15|Add3~57\) # (GND)))
-- \inst15|Add3~59\ = CARRY((!\inst15|Add3~57\) # (!\inst15|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(29),
	datad => VCC,
	cin => \inst15|Add3~57\,
	combout => \inst15|Add3~58_combout\,
	cout => \inst15|Add3~59\);

-- Location: FF_X35_Y37_N27
\inst15|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~58_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(29));

-- Location: LCCOMB_X35_Y37_N28
\inst15|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~60_combout\ = (\inst15|cnt\(30) & (\inst15|Add3~59\ $ (GND))) # (!\inst15|cnt\(30) & (!\inst15|Add3~59\ & VCC))
-- \inst15|Add3~61\ = CARRY((\inst15|cnt\(30) & !\inst15|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt\(30),
	datad => VCC,
	cin => \inst15|Add3~59\,
	combout => \inst15|Add3~60_combout\,
	cout => \inst15|Add3~61\);

-- Location: FF_X35_Y37_N29
\inst15|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~60_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(30));

-- Location: LCCOMB_X35_Y37_N30
\inst15|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add3~62_combout\ = \inst15|cnt\(31) $ (\inst15|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(31),
	cin => \inst15|Add3~61\,
	combout => \inst15|Add3~62_combout\);

-- Location: FF_X35_Y37_N31
\inst15|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|Add3~62_combout\,
	clrn => \inst29|led~combout\,
	ena => \inst15|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|cnt\(31));

-- Location: LCCOMB_X36_Y37_N8
\inst15|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~0_combout\ = (!\inst15|cnt\(31) & (!\inst15|cnt\(28) & (!\inst15|cnt\(29) & !\inst15|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(31),
	datab => \inst15|cnt\(28),
	datac => \inst15|cnt\(29),
	datad => \inst15|cnt\(30),
	combout => \inst15|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y37_N28
\inst15|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~2_combout\ = (!\inst15|cnt\(22) & (!\inst15|cnt\(23) & (!\inst15|cnt\(21) & !\inst15|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|cnt\(22),
	datab => \inst15|cnt\(23),
	datac => \inst15|cnt\(21),
	datad => \inst15|cnt\(20),
	combout => \inst15|Equal2~2_combout\);

-- Location: LCCOMB_X36_Y37_N0
\inst15|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~4_combout\ = (\inst15|Equal2~3_combout\ & (\inst15|Equal2~1_combout\ & (\inst15|Equal2~0_combout\ & \inst15|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal2~3_combout\,
	datab => \inst15|Equal2~1_combout\,
	datac => \inst15|Equal2~0_combout\,
	datad => \inst15|Equal2~2_combout\,
	combout => \inst15|Equal2~4_combout\);

-- Location: LCCOMB_X36_Y38_N10
\inst15|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal2~10_combout\ = (\inst15|Equal2~6_combout\ & (\inst15|Equal2~5_combout\ & (\inst15|Equal2~9_combout\ & \inst15|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal2~6_combout\,
	datab => \inst15|Equal2~5_combout\,
	datac => \inst15|Equal2~9_combout\,
	datad => \inst15|Equal2~4_combout\,
	combout => \inst15|Equal2~10_combout\);

-- Location: LCCOMB_X36_Y38_N20
\inst15|s_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|s_led~0_combout\ = \inst15|s_led~q\ $ (((\inst15|cnt[0]~0_combout\ & \inst15|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|cnt[0]~0_combout\,
	datac => \inst15|s_led~q\,
	datad => \inst15|Equal2~10_combout\,
	combout => \inst15|s_led~0_combout\);

-- Location: FF_X36_Y38_N21
\inst15|s_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst15|s_led~0_combout\,
	clrn => \inst29|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|s_led~q\);

-- Location: LCCOMB_X72_Y40_N22
\inst5|sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~1_combout\ = (!\inst6|PS.CP~q\ & (!\inst6|PS.CC~q\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PS.CP~q\,
	datac => \inst6|PS.CC~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst5|sel~1_combout\);

-- Location: FF_X72_Y40_N3
\inst5|sel[1]\ : dffeas
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
	q => \inst5|sel\(1));

-- Location: LCCOMB_X72_Y40_N8
\inst5|sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~0_combout\ = (!\inst6|PS.CP~q\ & (!\inst6|PS.CL~q\ & \inst6|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PS.CP~q\,
	datac => \inst6|PS.CL~q\,
	datad => \inst6|PS.E0~q\,
	combout => \inst5|sel~0_combout\);

-- Location: FF_X72_Y40_N9
\inst5|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel\(0));

-- Location: LCCOMB_X73_Y40_N22
\inst5|sel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel~2_combout\ = (\inst6|PS.E0~q\ & (!\inst6|PS.CQ~q\ & (!\inst6|PS.CC~q\ & !\inst6|PS.CL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PS.E0~q\,
	datab => \inst6|PS.CQ~q\,
	datac => \inst6|PS.CC~q\,
	datad => \inst6|PS.CL~q\,
	combout => \inst5|sel~2_combout\);

-- Location: FF_X72_Y40_N21
\inst5|sel[2]\ : dffeas
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
	q => \inst5|sel\(2));

-- Location: LCCOMB_X72_Y40_N2
\inst14|mo[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[1]~3_combout\ = (\inst5|sel\(2)) # ((\inst5|sel\(0) & \inst5|sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sel\(0),
	datac => \inst5|sel\(1),
	datad => \inst5|sel\(2),
	combout => \inst14|mo[1]~3_combout\);

-- Location: LCCOMB_X72_Y40_N20
\inst14|mo[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[1]~1_combout\ = (\inst5|sel\(0) & !\inst5|sel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sel\(0),
	datac => \inst5|sel\(2),
	combout => \inst14|mo[1]~1_combout\);

-- Location: LCCOMB_X65_Y40_N28
\inst23|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector13~0_combout\ = (\inst23|PS.E3~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E13~q\)))) # (!\inst23|PS.E3~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E3~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E13~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector13~0_combout\);

-- Location: FF_X65_Y40_N29
\inst23|PS.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector13~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E13~q\);

-- Location: LCCOMB_X65_Y40_N30
\inst23|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector14~0_combout\ = (\inst23|PS.E4~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E14~q\)))) # (!\inst23|PS.E4~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E4~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E14~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector14~0_combout\);

-- Location: FF_X65_Y40_N31
\inst23|PS.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector14~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E14~q\);

-- Location: LCCOMB_X65_Y40_N20
\inst23|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector8~0_combout\ = (\inst23|PS.E4~q\ & ((\inst19|NS~3_combout\) # ((\inst23|PS.E8~q\ & !\inst28|s_led~q\)))) # (!\inst23|PS.E4~q\ & (((\inst23|PS.E8~q\ & !\inst28|s_led~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E4~q\,
	datab => \inst19|NS~3_combout\,
	datac => \inst23|PS.E8~q\,
	datad => \inst28|s_led~q\,
	combout => \inst23|Selector8~0_combout\);

-- Location: FF_X65_Y40_N21
\inst23|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector8~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E8~q\);

-- Location: LCCOMB_X65_Y41_N8
\inst23|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector6~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst23|PS.E5~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst12|s_pulsedOut~q\ & (\inst23|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst23|PS.E4~q\,
	datac => \inst23|PS.E5~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst23|Selector6~1_combout\);

-- Location: LCCOMB_X65_Y41_N2
\inst23|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector6~0_combout\ = (\inst19|NS~3_combout\ & ((\inst23|PS.E3~q\) # (\inst23|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E3~q\,
	datac => \inst19|NS~3_combout\,
	datad => \inst23|PS.E2~q\,
	combout => \inst23|Selector6~0_combout\);

-- Location: LCCOMB_X65_Y41_N30
\inst23|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector6~2_combout\ = (\inst23|Selector6~1_combout\) # ((\inst23|Selector6~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst23|Selector6~1_combout\,
	datac => \inst23|PS.E6~q\,
	datad => \inst23|Selector6~0_combout\,
	combout => \inst23|Selector6~2_combout\);

-- Location: FF_X65_Y41_N31
\inst23|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector6~2_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E6~q\);

-- Location: LCCOMB_X65_Y40_N18
\inst23|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr3~0_combout\ = (!\inst23|PS.E14~q\ & (!\inst23|PS.E8~q\ & (!\inst23|PS.E6~q\ & !\inst23|PS.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E14~q\,
	datab => \inst23|PS.E8~q\,
	datac => \inst23|PS.E6~q\,
	datad => \inst23|PS.E4~q\,
	combout => \inst23|WideOr3~0_combout\);

-- Location: LCCOMB_X67_Y40_N20
\inst23|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector11~0_combout\ = (\inst23|PS.E1~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E11~q\)))) # (!\inst23|PS.E1~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E1~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E11~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector11~0_combout\);

-- Location: FF_X67_Y40_N21
\inst23|PS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector11~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E11~q\);

-- Location: LCCOMB_X67_Y40_N14
\inst23|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr3~combout\ = (\inst23|PS.E13~q\) # (((\inst23|PS.E1~q\) # (\inst23|PS.E11~q\)) # (!\inst23|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E13~q\,
	datab => \inst23|WideOr3~0_combout\,
	datac => \inst23|PS.E1~q\,
	datad => \inst23|PS.E11~q\,
	combout => \inst23|WideOr3~combout\);

-- Location: LCCOMB_X66_Y40_N6
\inst21|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector14~0_combout\ = (\inst28|s_led~q\ & (\inst21|PS.E4~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst21|PS.E14~q\) # ((\inst21|PS.E4~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst21|PS.E4~q\,
	datac => \inst21|PS.E14~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector14~0_combout\);

-- Location: FF_X66_Y40_N7
\inst21|PS.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector14~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E14~q\);

-- Location: LCCOMB_X63_Y40_N24
\inst21|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector16~0_combout\ = (\inst28|s_led~q\ & (\inst21|PS.E6~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst21|PS.E16~q\) # ((\inst21|PS.E6~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst21|PS.E6~q\,
	datac => \inst21|PS.E16~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector16~0_combout\);

-- Location: FF_X63_Y40_N25
\inst21|PS.E16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector16~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E16~q\);

-- Location: LCCOMB_X66_Y40_N30
\inst21|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr3~0_combout\ = (\inst21|PS.E14~q\) # ((\inst21|PS.E2~q\) # ((\inst21|PS.E4~q\) # (\inst21|PS.E16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E14~q\,
	datab => \inst21|PS.E2~q\,
	datac => \inst21|PS.E4~q\,
	datad => \inst21|PS.E16~q\,
	combout => \inst21|WideOr3~0_combout\);

-- Location: LCCOMB_X66_Y40_N14
\inst21|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector11~0_combout\ = (\inst28|s_led~q\ & (((\inst19|NS~3_combout\ & \inst21|PS.E7~q\)))) # (!\inst28|s_led~q\ & ((\inst21|PS.E11~q\) # ((\inst19|NS~3_combout\ & \inst21|PS.E7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst21|PS.E11~q\,
	datac => \inst19|NS~3_combout\,
	datad => \inst21|PS.E7~q\,
	combout => \inst21|Selector11~0_combout\);

-- Location: LCCOMB_X66_Y40_N16
\inst21|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector11~1_combout\ = (\inst21|Selector11~0_combout\) # ((\inst21|PS.E1~q\ & \inst19|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E1~q\,
	datac => \inst21|Selector11~0_combout\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector11~1_combout\);

-- Location: FF_X66_Y40_N17
\inst21|PS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector11~1_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E11~q\);

-- Location: LCCOMB_X62_Y40_N14
\inst21|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector9~0_combout\ = (\inst11|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & (!\inst12|s_pulsedOut~q\ & \inst21|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst12|s_pulsedOut~q\,
	datad => \inst21|PS.E5~q\,
	combout => \inst21|Selector9~0_combout\);

-- Location: LCCOMB_X63_Y40_N28
\inst21|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector9~1_combout\ = (\inst13|s_pulsedOut~q\ & (((\inst21|PS.E8~q\)))) # (!\inst13|s_pulsedOut~q\ & (\inst21|PS.E7~q\ & ((\inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E7~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst21|PS.E8~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst21|Selector9~1_combout\);

-- Location: LCCOMB_X63_Y40_N6
\inst21|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector9~2_combout\ = (\inst21|Selector9~0_combout\) # ((\inst21|Selector9~1_combout\) # ((!\inst28|s_led~q\ & \inst21|PS.E9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector9~0_combout\,
	datab => \inst28|s_led~q\,
	datac => \inst21|PS.E9~q\,
	datad => \inst21|Selector9~1_combout\,
	combout => \inst21|Selector9~2_combout\);

-- Location: FF_X63_Y40_N7
\inst21|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector9~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E9~q\);

-- Location: LCCOMB_X66_Y40_N4
\inst21|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector17~0_combout\ = (\inst21|PS.E7~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst21|PS.E17~q\)))) # (!\inst21|PS.E7~q\ & (!\inst28|s_led~q\ & (\inst21|PS.E17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E7~q\,
	datab => \inst28|s_led~q\,
	datac => \inst21|PS.E17~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector17~0_combout\);

-- Location: FF_X66_Y40_N5
\inst21|PS.E17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector17~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E17~q\);

-- Location: LCCOMB_X66_Y40_N20
\inst21|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr3~1_combout\ = (!\inst21|PS.E1~q\ & (!\inst21|PS.E9~q\ & (!\inst21|PS.E17~q\ & !\inst21|PS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E1~q\,
	datab => \inst21|PS.E9~q\,
	datac => \inst21|PS.E17~q\,
	datad => \inst21|PS.E7~q\,
	combout => \inst21|WideOr3~1_combout\);

-- Location: LCCOMB_X67_Y40_N24
\inst21|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr3~combout\ = (\inst21|WideOr3~0_combout\) # ((\inst21|PS.E11~q\) # (!\inst21|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|WideOr3~0_combout\,
	datac => \inst21|PS.E11~q\,
	datad => \inst21|WideOr3~1_combout\,
	combout => \inst21|WideOr3~combout\);

-- Location: LCCOMB_X72_Y40_N30
\inst14|mo[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo[1]~2_combout\ = (!\inst5|sel\(0) & ((!\inst5|sel\(2)) # (!\inst5|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sel\(0),
	datac => \inst5|sel\(1),
	datad => \inst5|sel\(2),
	combout => \inst14|mo[1]~2_combout\);

-- Location: LCCOMB_X67_Y41_N16
\inst19|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr3~0_combout\ = (\inst19|PS.E15~q\) # ((\inst19|PS.E10~q\) # ((\inst19|PS.E8~q\) # (\inst19|PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E15~q\,
	datab => \inst19|PS.E10~q\,
	datac => \inst19|PS.E8~q\,
	datad => \inst19|PS.E5~q\,
	combout => \inst19|WideOr3~0_combout\);

-- Location: LCCOMB_X69_Y41_N26
\inst19|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr0~0_combout\ = (!\inst19|PS.E3~q\ & (\inst19|PS.E0~q\ & !\inst19|PS.E17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PS.E3~q\,
	datac => \inst19|PS.E0~q\,
	datad => \inst19|PS.E17~q\,
	combout => \inst19|WideOr0~0_combout\);

-- Location: LCCOMB_X69_Y41_N28
\inst19|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr0~1_combout\ = (!\inst19|PS.E2~q\ & (\inst19|WideOr0~0_combout\ & !\inst19|PS.E18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PS.E2~q\,
	datac => \inst19|WideOr0~0_combout\,
	datad => \inst19|PS.E18~q\,
	combout => \inst19|WideOr0~1_combout\);

-- Location: LCCOMB_X68_Y41_N30
\inst19|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr3~1_combout\ = (\inst19|PS.E12~q\) # ((\inst19|WideOr3~0_combout\) # (!\inst19|WideOr0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PS.E12~q\,
	datac => \inst19|WideOr3~0_combout\,
	datad => \inst19|WideOr0~1_combout\,
	combout => \inst19|WideOr3~1_combout\);

-- Location: LCCOMB_X69_Y40_N4
\inst22|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector13~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E3~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E13~q\) # ((\inst22|PS.E3~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E3~q\,
	datac => \inst22|PS.E13~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector13~0_combout\);

-- Location: FF_X69_Y40_N5
\inst22|PS.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector13~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E13~q\);

-- Location: LCCOMB_X69_Y40_N22
\inst22|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector11~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E1~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E11~q\) # ((\inst22|PS.E1~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E1~q\,
	datac => \inst22|PS.E11~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector11~0_combout\);

-- Location: FF_X69_Y40_N23
\inst22|PS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector11~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E11~q\);

-- Location: LCCOMB_X70_Y40_N16
\inst22|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector6~1_combout\ = (\inst13|s_pulsedOut~q\ & (\inst22|PS.E5~q\)) # (!\inst13|s_pulsedOut~q\ & (((\inst22|PS.E4~q\ & \inst12|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst22|PS.E5~q\,
	datac => \inst22|PS.E4~q\,
	datad => \inst12|s_pulsedOut~q\,
	combout => \inst22|Selector6~1_combout\);

-- Location: LCCOMB_X69_Y40_N10
\inst22|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector6~0_combout\ = (\inst19|NS~3_combout\ & ((\inst22|PS.E3~q\) # (\inst22|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|PS.E3~q\,
	datac => \inst19|NS~3_combout\,
	datad => \inst22|PS.E2~q\,
	combout => \inst22|Selector6~0_combout\);

-- Location: LCCOMB_X69_Y40_N16
\inst22|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector6~2_combout\ = (\inst22|Selector6~1_combout\) # ((\inst22|Selector6~0_combout\) # ((!\inst28|s_led~q\ & \inst22|PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|Selector6~1_combout\,
	datac => \inst22|PS.E6~q\,
	datad => \inst22|Selector6~0_combout\,
	combout => \inst22|Selector6~2_combout\);

-- Location: FF_X69_Y40_N17
\inst22|PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector6~2_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E6~q\);

-- Location: LCCOMB_X69_Y40_N8
\inst22|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector8~0_combout\ = (\inst22|PS.E4~q\ & ((\inst19|NS~3_combout\) # ((!\inst28|s_led~q\ & \inst22|PS.E8~q\)))) # (!\inst22|PS.E4~q\ & (!\inst28|s_led~q\ & (\inst22|PS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E4~q\,
	datab => \inst28|s_led~q\,
	datac => \inst22|PS.E8~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst22|Selector8~0_combout\);

-- Location: FF_X69_Y40_N9
\inst22|PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector8~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E8~q\);

-- Location: LCCOMB_X69_Y40_N18
\inst22|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector14~0_combout\ = (\inst22|PS.E4~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst22|PS.E14~q\)))) # (!\inst22|PS.E4~q\ & (!\inst28|s_led~q\ & (\inst22|PS.E14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E4~q\,
	datab => \inst28|s_led~q\,
	datac => \inst22|PS.E14~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector14~0_combout\);

-- Location: FF_X69_Y40_N19
\inst22|PS.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector14~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E14~q\);

-- Location: LCCOMB_X69_Y40_N0
\inst22|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr3~0_combout\ = (!\inst22|PS.E4~q\ & (!\inst22|PS.E6~q\ & (!\inst22|PS.E8~q\ & !\inst22|PS.E14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E4~q\,
	datab => \inst22|PS.E6~q\,
	datac => \inst22|PS.E8~q\,
	datad => \inst22|PS.E14~q\,
	combout => \inst22|WideOr3~0_combout\);

-- Location: LCCOMB_X68_Y40_N6
\inst22|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr3~combout\ = (\inst22|PS.E13~q\) # ((\inst22|PS.E11~q\) # ((\inst22|PS.E1~q\) # (!\inst22|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E13~q\,
	datab => \inst22|PS.E11~q\,
	datac => \inst22|WideOr3~0_combout\,
	datad => \inst22|PS.E1~q\,
	combout => \inst22|WideOr3~combout\);

-- Location: LCCOMB_X68_Y40_N20
\inst14|mo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~13_combout\ = (\inst14|mo[1]~2_combout\ & ((\inst14|mo[1]~3_combout\ & (!\inst19|WideOr3~1_combout\)) # (!\inst14|mo[1]~3_combout\ & ((!\inst22|WideOr3~combout\))))) # (!\inst14|mo[1]~2_combout\ & (((\inst14|mo[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~2_combout\,
	datab => \inst19|WideOr3~1_combout\,
	datac => \inst14|mo[1]~3_combout\,
	datad => \inst22|WideOr3~combout\,
	combout => \inst14|mo~13_combout\);

-- Location: LCCOMB_X68_Y40_N18
\inst14|mo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~14_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~13_combout\ & ((!\inst21|WideOr3~combout\))) # (!\inst14|mo~13_combout\ & (!\inst23|WideOr3~combout\)))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|WideOr3~combout\,
	datab => \inst21|WideOr3~combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~13_combout\,
	combout => \inst14|mo~14_combout\);

-- Location: LCCOMB_X68_Y40_N8
\inst14|mo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~15_combout\ = (\inst14|mo~14_combout\ & ((\inst5|sel\(1)) # ((\inst14|mo[1]~3_combout\) # (\inst14|mo[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~14_combout\,
	combout => \inst14|mo~15_combout\);

-- Location: FF_X68_Y40_N9
\inst14|mo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(2));

-- Location: LCCOMB_X80_Y40_N26
\inst16|mo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~4_combout\ = (\inst15|s_led~q\) # (\inst14|mo\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(2),
	combout => \inst16|mo~4_combout\);

-- Location: FF_X80_Y40_N27
\inst16|mo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(2));

-- Location: LCCOMB_X72_Y40_N24
\inst14|mo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~0_combout\ = (\inst5|sel\(2) & ((\inst5|sel\(1)) # (\inst5|sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sel\(1),
	datac => \inst5|sel\(0),
	datad => \inst5|sel\(2),
	combout => \inst14|mo~0_combout\);

-- Location: FF_X72_Y40_N25
\inst14|mo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(6));

-- Location: LCCOMB_X80_Y40_N16
\inst16|mo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~0_combout\ = (\inst15|s_led~q\) # (\inst14|mo\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(6),
	combout => \inst16|mo~0_combout\);

-- Location: FF_X80_Y40_N17
\inst16|mo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(6));

-- Location: LCCOMB_X65_Y40_N0
\inst23|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector15~0_combout\ = (\inst23|PS.E5~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E15~q\)))) # (!\inst23|PS.E5~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E5~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E15~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector15~0_combout\);

-- Location: FF_X65_Y40_N1
\inst23|PS.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector15~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E15~q\);

-- Location: LCCOMB_X65_Y40_N14
\inst23|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr0~0_combout\ = (\inst23|PS.E14~q\) # ((\inst23|PS.E15~q\) # (\inst23|PS.E13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E14~q\,
	datab => \inst23|PS.E15~q\,
	datad => \inst23|PS.E13~q\,
	combout => \inst23|WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y40_N2
\inst21|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector18~0_combout\ = (\inst28|s_led~q\ & (\inst21|PS.E8~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst21|PS.E18~q\) # ((\inst21|PS.E8~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst21|PS.E8~q\,
	datac => \inst21|PS.E18~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector18~0_combout\);

-- Location: FF_X66_Y40_N3
\inst21|PS.E18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector18~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E18~q\);

-- Location: LCCOMB_X67_Y40_N30
\inst21|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr0~combout\ = (\inst21|PS.E18~q\) # ((\inst21|PS.E17~q\) # ((\inst21|PS.E16~q\) # (!\inst21|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E18~q\,
	datab => \inst21|PS.E17~q\,
	datac => \inst21|PS.E16~q\,
	datad => \inst21|WideOr0~0_combout\,
	combout => \inst21|WideOr0~combout\);

-- Location: LCCOMB_X69_Y40_N12
\inst22|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector15~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E5~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E15~q\) # ((\inst22|PS.E5~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E5~q\,
	datac => \inst22|PS.E15~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector15~0_combout\);

-- Location: FF_X69_Y40_N13
\inst22|PS.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector15~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E15~q\);

-- Location: LCCOMB_X68_Y40_N24
\inst22|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr0~0_combout\ = (\inst22|PS.E14~q\) # ((\inst22|PS.E15~q\) # (\inst22|PS.E13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|PS.E14~q\,
	datac => \inst22|PS.E15~q\,
	datad => \inst22|PS.E13~q\,
	combout => \inst22|WideOr0~0_combout\);

-- Location: LCCOMB_X69_Y41_N30
\inst19|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr0~combout\ = (\inst19|PS.E1~q\) # ((\inst19|PS.E19~q\) # (!\inst19|WideOr0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PS.E1~q\,
	datac => \inst19|PS.E19~q\,
	datad => \inst19|WideOr0~1_combout\,
	combout => \inst19|WideOr0~combout\);

-- Location: LCCOMB_X72_Y40_N16
\inst14|mo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~4_combout\ = (\inst14|mo[1]~3_combout\ & (((\inst19|WideOr0~combout\)) # (!\inst14|mo[1]~2_combout\))) # (!\inst14|mo[1]~3_combout\ & (\inst14|mo[1]~2_combout\ & (\inst22|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~3_combout\,
	datab => \inst14|mo[1]~2_combout\,
	datac => \inst22|WideOr0~0_combout\,
	datad => \inst19|WideOr0~combout\,
	combout => \inst14|mo~4_combout\);

-- Location: LCCOMB_X72_Y40_N10
\inst14|mo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~5_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~4_combout\ & ((\inst21|WideOr0~combout\))) # (!\inst14|mo~4_combout\ & (\inst23|WideOr0~0_combout\)))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|WideOr0~0_combout\,
	datab => \inst21|WideOr0~combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~4_combout\,
	combout => \inst14|mo~5_combout\);

-- Location: LCCOMB_X72_Y40_N6
\inst14|mo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~6_combout\ = (\inst14|mo~5_combout\ & ((\inst14|mo[1]~1_combout\) # ((\inst14|mo[1]~3_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~1_combout\,
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst5|sel\(1),
	datad => \inst14|mo~5_combout\,
	combout => \inst14|mo~6_combout\);

-- Location: FF_X72_Y40_N7
\inst14|mo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(5));

-- Location: LCCOMB_X80_Y40_N6
\inst16|mo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~1_combout\ = (\inst15|s_led~q\) # (\inst14|mo\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(5),
	combout => \inst16|mo~1_combout\);

-- Location: FF_X80_Y40_N7
\inst16|mo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(5));

-- Location: LCCOMB_X63_Y40_N26
\inst21|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector15~0_combout\ = (\inst28|s_led~q\ & (\inst21|PS.E5~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst21|PS.E15~q\) # ((\inst21|PS.E5~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst21|PS.E5~q\,
	datac => \inst21|PS.E15~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector15~0_combout\);

-- Location: FF_X63_Y40_N27
\inst21|PS.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector15~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E15~q\);

-- Location: LCCOMB_X63_Y40_N4
\inst21|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector13~0_combout\ = (\inst21|PS.E3~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst21|PS.E13~q\)))) # (!\inst21|PS.E3~q\ & (!\inst28|s_led~q\ & (\inst21|PS.E13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E3~q\,
	datab => \inst28|s_led~q\,
	datac => \inst21|PS.E13~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst21|Selector13~0_combout\);

-- Location: FF_X63_Y40_N5
\inst21|PS.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector13~0_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E13~q\);

-- Location: LCCOMB_X63_Y40_N0
\inst21|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr1~0_combout\ = (!\inst21|PS.E15~q\ & (!\inst21|PS.E13~q\ & (!\inst21|PS.E5~q\ & !\inst21|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E15~q\,
	datab => \inst21|PS.E13~q\,
	datac => \inst21|PS.E5~q\,
	datad => \inst21|PS.E3~q\,
	combout => \inst21|WideOr1~0_combout\);

-- Location: LCCOMB_X67_Y40_N4
\inst21|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr1~combout\ = (\inst21|PS.E14~q\) # ((\inst21|PS.E4~q\) # (!\inst21|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|PS.E14~q\,
	datac => \inst21|WideOr1~0_combout\,
	datad => \inst21|PS.E4~q\,
	combout => \inst21|WideOr1~combout\);

-- Location: LCCOMB_X65_Y40_N16
\inst23|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector10~0_combout\ = (\inst28|s_led~q\ & (!\inst23|PS.E0~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst23|PS.E10~q\) # ((!\inst23|PS.E0~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst23|PS.E0~q\,
	datac => \inst23|PS.E10~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector10~0_combout\);

-- Location: FF_X65_Y40_N17
\inst23|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector10~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E10~q\);

-- Location: LCCOMB_X65_Y40_N10
\inst23|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector12~0_combout\ = (\inst23|PS.E2~q\ & ((\inst19|NS~0_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E12~q\)))) # (!\inst23|PS.E2~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E2~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E12~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst23|Selector12~0_combout\);

-- Location: FF_X65_Y40_N11
\inst23|PS.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector12~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E12~q\);

-- Location: LCCOMB_X65_Y40_N8
\inst23|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr1~0_combout\ = (!\inst23|PS.E2~q\ & (!\inst23|PS.E10~q\ & (\inst23|PS.E0~q\ & !\inst23|PS.E12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E2~q\,
	datab => \inst23|PS.E10~q\,
	datac => \inst23|PS.E0~q\,
	datad => \inst23|PS.E12~q\,
	combout => \inst23|WideOr1~0_combout\);

-- Location: LCCOMB_X67_Y40_N26
\inst23|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr1~combout\ = (\inst23|PS.E11~q\) # ((\inst23|PS.E1~q\) # (!\inst23|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|PS.E11~q\,
	datac => \inst23|PS.E1~q\,
	datad => \inst23|WideOr1~0_combout\,
	combout => \inst23|WideOr1~combout\);

-- Location: LCCOMB_X69_Y40_N6
\inst22|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector10~0_combout\ = (\inst28|s_led~q\ & (!\inst22|PS.E0~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E10~q\) # ((!\inst22|PS.E0~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E0~q\,
	datac => \inst22|PS.E10~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector10~0_combout\);

-- Location: FF_X69_Y40_N7
\inst22|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector10~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E10~q\);

-- Location: LCCOMB_X69_Y40_N20
\inst22|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector12~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E2~q\ & ((\inst19|NS~0_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E12~q\) # ((\inst22|PS.E2~q\ & \inst19|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E2~q\,
	datac => \inst22|PS.E12~q\,
	datad => \inst19|NS~0_combout\,
	combout => \inst22|Selector12~0_combout\);

-- Location: FF_X69_Y40_N21
\inst22|PS.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector12~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E12~q\);

-- Location: LCCOMB_X69_Y40_N28
\inst22|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr1~0_combout\ = (!\inst22|PS.E10~q\ & (!\inst22|PS.E12~q\ & (\inst22|PS.E0~q\ & !\inst22|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E10~q\,
	datab => \inst22|PS.E12~q\,
	datac => \inst22|PS.E0~q\,
	datad => \inst22|PS.E2~q\,
	combout => \inst22|WideOr1~0_combout\);

-- Location: LCCOMB_X68_Y40_N26
\inst22|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr1~combout\ = ((\inst22|PS.E11~q\) # (\inst22|PS.E1~q\)) # (!\inst22|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|WideOr1~0_combout\,
	datac => \inst22|PS.E11~q\,
	datad => \inst22|PS.E1~q\,
	combout => \inst22|WideOr1~combout\);

-- Location: LCCOMB_X67_Y41_N18
\inst19|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr1~0_combout\ = (\inst19|PS.E6~q\) # ((\inst19|PS.E4~q\) # ((\inst19|PS.E14~q\) # (!\inst19|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E6~q\,
	datab => \inst19|PS.E4~q\,
	datac => \inst19|PS.E0~q\,
	datad => \inst19|PS.E14~q\,
	combout => \inst19|WideOr1~0_combout\);

-- Location: LCCOMB_X67_Y41_N4
\inst19|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr1~combout\ = (\inst19|PS.E16~q\) # ((\inst19|PS.E5~q\) # ((\inst19|PS.E15~q\) # (\inst19|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E16~q\,
	datab => \inst19|PS.E5~q\,
	datac => \inst19|PS.E15~q\,
	datad => \inst19|WideOr1~0_combout\,
	combout => \inst19|WideOr1~combout\);

-- Location: LCCOMB_X68_Y40_N0
\inst14|mo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~7_combout\ = (\inst14|mo[1]~3_combout\ & (((\inst19|WideOr1~combout\) # (!\inst14|mo[1]~2_combout\)))) # (!\inst14|mo[1]~3_combout\ & (\inst22|WideOr1~combout\ & (\inst14|mo[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|WideOr1~combout\,
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~2_combout\,
	datad => \inst19|WideOr1~combout\,
	combout => \inst14|mo~7_combout\);

-- Location: LCCOMB_X68_Y40_N2
\inst14|mo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~8_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~7_combout\ & (\inst21|WideOr1~combout\)) # (!\inst14|mo~7_combout\ & ((\inst23|WideOr1~combout\))))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~1_combout\,
	datab => \inst21|WideOr1~combout\,
	datac => \inst23|WideOr1~combout\,
	datad => \inst14|mo~7_combout\,
	combout => \inst14|mo~8_combout\);

-- Location: LCCOMB_X68_Y40_N4
\inst14|mo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~9_combout\ = (\inst14|mo~8_combout\ & ((\inst5|sel\(1)) # ((\inst14|mo[1]~3_combout\) # (\inst14|mo[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~8_combout\,
	combout => \inst14|mo~9_combout\);

-- Location: FF_X68_Y40_N5
\inst14|mo[4]\ : dffeas
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
	q => \inst14|mo\(4));

-- Location: LCCOMB_X80_Y40_N20
\inst16|mo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~2_combout\ = (\inst14|mo\(4)) # (\inst15|s_led~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo\(4),
	datac => \inst15|s_led~q\,
	combout => \inst16|mo~2_combout\);

-- Location: FF_X80_Y40_N21
\inst16|mo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(4));

-- Location: LCCOMB_X81_Y44_N4
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst16|mo\(4) $ (VCC)
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst16|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(4),
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X81_Y44_N6
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst16|mo\(5) & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst16|mo\(5) & 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst16|mo\(5) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(5),
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X81_Y44_N8
\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst16|mo\(6) & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst16|mo\(6) & 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst16|mo\(6) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(6),
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X81_Y44_N10
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

-- Location: LCCOMB_X81_Y44_N20
\inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\inst16|mo\(6) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(6),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X81_Y44_N2
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

-- Location: LCCOMB_X81_Y44_N12
\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\inst16|mo\(5) & \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(5),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X81_Y44_N14
\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X80_Y40_N14
\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|mo\(4),
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X81_Y44_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X65_Y40_N26
\inst23|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector7~0_combout\ = (\inst23|PS.E5~q\ & ((\inst19|NS~2_combout\) # ((!\inst28|s_led~q\ & \inst23|PS.E7~q\)))) # (!\inst23|PS.E5~q\ & (!\inst28|s_led~q\ & (\inst23|PS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E5~q\,
	datab => \inst28|s_led~q\,
	datac => \inst23|PS.E7~q\,
	datad => \inst19|NS~2_combout\,
	combout => \inst23|Selector7~0_combout\);

-- Location: FF_X65_Y40_N27
\inst23|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector7~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E7~q\);

-- Location: LCCOMB_X65_Y40_N2
\inst23|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr2~0_combout\ = (\inst23|PS.E2~q\) # ((\inst23|PS.E10~q\) # ((\inst23|PS.E5~q\) # (\inst23|PS.E13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E2~q\,
	datab => \inst23|PS.E10~q\,
	datac => \inst23|PS.E5~q\,
	datad => \inst23|PS.E13~q\,
	combout => \inst23|WideOr2~0_combout\);

-- Location: LCCOMB_X65_Y40_N24
\inst23|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr2~combout\ = (\inst23|PS.E7~q\) # ((\inst23|PS.E6~q\) # (\inst23|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E7~q\,
	datac => \inst23|PS.E6~q\,
	datad => \inst23|WideOr2~0_combout\,
	combout => \inst23|WideOr2~combout\);

-- Location: LCCOMB_X69_Y40_N30
\inst22|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector7~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E5~q\ & ((\inst19|NS~2_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E7~q\) # ((\inst22|PS.E5~q\ & \inst19|NS~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E5~q\,
	datac => \inst22|PS.E7~q\,
	datad => \inst19|NS~2_combout\,
	combout => \inst22|Selector7~0_combout\);

-- Location: FF_X69_Y40_N31
\inst22|PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector7~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E7~q\);

-- Location: LCCOMB_X69_Y40_N14
\inst22|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr2~0_combout\ = (\inst22|PS.E10~q\) # ((\inst22|PS.E5~q\) # ((\inst22|PS.E13~q\) # (\inst22|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E10~q\,
	datab => \inst22|PS.E5~q\,
	datac => \inst22|PS.E13~q\,
	datad => \inst22|PS.E2~q\,
	combout => \inst22|WideOr2~0_combout\);

-- Location: LCCOMB_X68_Y40_N12
\inst22|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr2~combout\ = (\inst22|PS.E7~q\) # ((\inst22|WideOr2~0_combout\) # (\inst22|PS.E6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E7~q\,
	datac => \inst22|WideOr2~0_combout\,
	datad => \inst22|PS.E6~q\,
	combout => \inst22|WideOr2~combout\);

-- Location: LCCOMB_X68_Y41_N14
\inst19|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr2~0_combout\ = ((\inst19|PS.E17~q\) # ((\inst19|PS.E3~q\) # (\inst19|PS.E6~q\))) # (!\inst19|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E0~q\,
	datab => \inst19|PS.E17~q\,
	datac => \inst19|PS.E3~q\,
	datad => \inst19|PS.E6~q\,
	combout => \inst19|WideOr2~0_combout\);

-- Location: LCCOMB_X68_Y41_N20
\inst19|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr2~combout\ = (\inst19|PS.E9~q\) # ((\inst19|WideOr2~0_combout\) # ((\inst19|PS.E11~q\) # (!\inst19|WideOr2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E9~q\,
	datab => \inst19|WideOr2~0_combout\,
	datac => \inst19|WideOr2~1_combout\,
	datad => \inst19|PS.E11~q\,
	combout => \inst19|WideOr2~combout\);

-- Location: LCCOMB_X68_Y40_N14
\inst14|mo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~10_combout\ = (\inst14|mo[1]~3_combout\ & (((!\inst19|WideOr2~combout\) # (!\inst14|mo[1]~2_combout\)))) # (!\inst14|mo[1]~3_combout\ & (!\inst22|WideOr2~combout\ & (\inst14|mo[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|WideOr2~combout\,
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~2_combout\,
	datad => \inst19|WideOr2~combout\,
	combout => \inst14|mo~10_combout\);

-- Location: LCCOMB_X63_Y40_N30
\inst21|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector10~0_combout\ = (\inst21|PS.E10~q\ & !\inst28|s_led~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|PS.E10~q\,
	datac => \inst28|s_led~q\,
	combout => \inst21|Selector10~0_combout\);

-- Location: LCCOMB_X63_Y40_N20
\inst21|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector10~1_combout\ = (\inst19|NS~2_combout\ & ((\inst21|PS.E8~q\) # ((\inst21|PS.E6~q\ & \inst19|NS~3_combout\)))) # (!\inst19|NS~2_combout\ & (\inst21|PS.E6~q\ & ((\inst19|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|NS~2_combout\,
	datab => \inst21|PS.E6~q\,
	datac => \inst21|PS.E8~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst21|Selector10~1_combout\);

-- Location: LCCOMB_X63_Y40_N8
\inst21|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector10~2_combout\ = (\inst21|Selector10~0_combout\) # ((\inst21|Selector10~1_combout\) # ((!\inst21|PS.E0~q\ & \inst19|NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Selector10~0_combout\,
	datab => \inst21|PS.E0~q\,
	datac => \inst19|NS~0_combout\,
	datad => \inst21|Selector10~1_combout\,
	combout => \inst21|Selector10~2_combout\);

-- Location: FF_X63_Y40_N9
\inst21|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector10~2_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E10~q\);

-- Location: LCCOMB_X63_Y40_N2
\inst21|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr2~0_combout\ = (\inst21|PS.E2~q\) # ((\inst21|PS.E5~q\) # ((\inst21|PS.E13~q\) # (\inst21|PS.E16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E2~q\,
	datab => \inst21|PS.E5~q\,
	datac => \inst21|PS.E13~q\,
	datad => \inst21|PS.E16~q\,
	combout => \inst21|WideOr2~0_combout\);

-- Location: LCCOMB_X63_Y40_N16
\inst21|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr2~combout\ = (\inst21|PS.E9~q\) # ((\inst21|PS.E8~q\) # ((\inst21|PS.E10~q\) # (\inst21|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E9~q\,
	datab => \inst21|PS.E8~q\,
	datac => \inst21|PS.E10~q\,
	datad => \inst21|WideOr2~0_combout\,
	combout => \inst21|WideOr2~combout\);

-- Location: LCCOMB_X68_Y40_N16
\inst14|mo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~11_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~10_combout\ & ((!\inst21|WideOr2~combout\))) # (!\inst14|mo~10_combout\ & (!\inst23|WideOr2~combout\)))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|WideOr2~combout\,
	datab => \inst14|mo[1]~1_combout\,
	datac => \inst14|mo~10_combout\,
	datad => \inst21|WideOr2~combout\,
	combout => \inst14|mo~11_combout\);

-- Location: LCCOMB_X68_Y40_N10
\inst14|mo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~12_combout\ = (\inst14|mo~11_combout\ & ((\inst5|sel\(1)) # ((\inst14|mo[1]~3_combout\) # (\inst14|mo[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~11_combout\,
	combout => \inst14|mo~12_combout\);

-- Location: FF_X68_Y40_N11
\inst14|mo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(3));

-- Location: LCCOMB_X80_Y40_N24
\inst16|mo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~3_combout\ = (!\inst15|s_led~q\ & \inst14|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(3),
	combout => \inst16|mo~3_combout\);

-- Location: FF_X80_Y40_N25
\inst16|mo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(3));

-- Location: LCCOMB_X84_Y44_N2
\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst16|mo\(3),
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X84_Y44_N8
\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst16|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst16|mo\(3),
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X81_Y44_N22
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

-- Location: LCCOMB_X81_Y44_N24
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

-- Location: LCCOMB_X81_Y44_N26
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

-- Location: LCCOMB_X81_Y44_N28
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

-- Location: LCCOMB_X81_Y44_N30
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

-- Location: LCCOMB_X85_Y44_N12
\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X81_Y44_N18
\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst16|mo\(6))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(6),
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X81_Y44_N16
\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst16|mo\(5)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst16|mo\(5),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\);

-- Location: LCCOMB_X85_Y44_N2
\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X84_Y44_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst16|mo\(4)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst16|mo\(4),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\);

-- Location: LCCOMB_X85_Y44_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X84_Y44_N12
\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\inst16|mo\(3) & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X84_Y44_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X84_Y44_N14
\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst16|mo\(2) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X84_Y44_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\inst16|mo\(2) & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X85_Y44_N14
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

-- Location: LCCOMB_X85_Y44_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X85_Y44_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X85_Y44_N20
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X85_Y44_N22
\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (GND))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X85_Y44_N24
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

-- Location: LCCOMB_X86_Y44_N22
\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ = (\inst16|mo\(2) & \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(2),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\);

-- Location: LCCOMB_X86_Y44_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\);

-- Location: LCCOMB_X63_Y40_N22
\inst21|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr4~0_combout\ = (\inst21|PS.E7~q\) # ((\inst21|PS.E6~q\) # ((\inst21|PS.E15~q\) # (\inst21|PS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E7~q\,
	datab => \inst21|PS.E6~q\,
	datac => \inst21|PS.E15~q\,
	datad => \inst21|PS.E3~q\,
	combout => \inst21|WideOr4~0_combout\);

-- Location: LCCOMB_X63_Y40_N18
\inst21|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector12~0_combout\ = (\inst21|PS.E12~q\ & (((\inst21|PS.E8~q\ & \inst19|NS~3_combout\)) # (!\inst28|s_led~q\))) # (!\inst21|PS.E12~q\ & (\inst21|PS.E8~q\ & ((\inst19|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E12~q\,
	datab => \inst21|PS.E8~q\,
	datac => \inst28|s_led~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst21|Selector12~0_combout\);

-- Location: LCCOMB_X63_Y40_N10
\inst21|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|Selector12~1_combout\ = (\inst21|Selector12~0_combout\) # ((\inst21|PS.E2~q\ & \inst19|NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|PS.E2~q\,
	datac => \inst19|NS~0_combout\,
	datad => \inst21|Selector12~0_combout\,
	combout => \inst21|Selector12~1_combout\);

-- Location: FF_X63_Y40_N11
\inst21|PS.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst21|Selector12~1_combout\,
	sclr => \inst6|ALT_INV_PS.CQ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|PS.E12~q\);

-- Location: LCCOMB_X63_Y40_N12
\inst21|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr4~1_combout\ = (\inst21|PS.E12~q\) # ((\inst21|PS.E16~q\) # ((\inst21|PS.E11~q\) # (\inst21|PS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E12~q\,
	datab => \inst21|PS.E16~q\,
	datac => \inst21|PS.E11~q\,
	datad => \inst21|PS.E2~q\,
	combout => \inst21|WideOr4~1_combout\);

-- Location: LCCOMB_X63_Y40_N14
\inst21|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr4~combout\ = (\inst21|WideOr4~0_combout\) # (\inst21|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|WideOr4~0_combout\,
	datad => \inst21|WideOr4~1_combout\,
	combout => \inst21|WideOr4~combout\);

-- Location: LCCOMB_X65_Y40_N4
\inst23|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Selector9~0_combout\ = (\inst23|PS.E5~q\ & ((\inst19|NS~3_combout\) # ((\inst23|PS.E9~q\ & !\inst28|s_led~q\)))) # (!\inst23|PS.E5~q\ & (((\inst23|PS.E9~q\ & !\inst28|s_led~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E5~q\,
	datab => \inst19|NS~3_combout\,
	datac => \inst23|PS.E9~q\,
	datad => \inst28|s_led~q\,
	combout => \inst23|Selector9~0_combout\);

-- Location: FF_X65_Y40_N5
\inst23|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst23|Selector9~0_combout\,
	sclr => \inst6|ALT_INV_PS.CC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|PS.E9~q\);

-- Location: LCCOMB_X65_Y40_N12
\inst23|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr4~0_combout\ = (\inst23|PS.E3~q\) # ((\inst23|PS.E13~q\) # ((\inst23|PS.E4~q\) # (!\inst23|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E3~q\,
	datab => \inst23|PS.E13~q\,
	datac => \inst23|PS.E0~q\,
	datad => \inst23|PS.E4~q\,
	combout => \inst23|WideOr4~0_combout\);

-- Location: LCCOMB_X65_Y40_N22
\inst23|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr4~combout\ = (\inst23|PS.E12~q\) # ((\inst23|PS.E8~q\) # ((\inst23|PS.E9~q\) # (\inst23|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|PS.E12~q\,
	datab => \inst23|PS.E8~q\,
	datac => \inst23|PS.E9~q\,
	datad => \inst23|WideOr4~0_combout\,
	combout => \inst23|WideOr4~combout\);

-- Location: LCCOMB_X69_Y40_N26
\inst22|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Selector9~0_combout\ = (\inst28|s_led~q\ & (\inst22|PS.E5~q\ & ((\inst19|NS~3_combout\)))) # (!\inst28|s_led~q\ & ((\inst22|PS.E9~q\) # ((\inst22|PS.E5~q\ & \inst19|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|s_led~q\,
	datab => \inst22|PS.E5~q\,
	datac => \inst22|PS.E9~q\,
	datad => \inst19|NS~3_combout\,
	combout => \inst22|Selector9~0_combout\);

-- Location: FF_X69_Y40_N27
\inst22|PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst22|Selector9~0_combout\,
	sclr => \inst6|ALT_INV_PS.CL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|PS.E9~q\);

-- Location: LCCOMB_X69_Y40_N2
\inst22|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr4~0_combout\ = (\inst22|PS.E4~q\) # ((\inst22|PS.E13~q\) # ((\inst22|PS.E3~q\) # (!\inst22|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E4~q\,
	datab => \inst22|PS.E13~q\,
	datac => \inst22|PS.E0~q\,
	datad => \inst22|PS.E3~q\,
	combout => \inst22|WideOr4~0_combout\);

-- Location: LCCOMB_X69_Y40_N24
\inst22|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|WideOr4~combout\ = (\inst22|PS.E9~q\) # ((\inst22|PS.E12~q\) # ((\inst22|PS.E8~q\) # (\inst22|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|PS.E9~q\,
	datab => \inst22|PS.E12~q\,
	datac => \inst22|PS.E8~q\,
	datad => \inst22|WideOr4~0_combout\,
	combout => \inst22|WideOr4~combout\);

-- Location: LCCOMB_X68_Y41_N8
\inst19|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr4~0_combout\ = (\inst19|PS.E16~q\) # ((\inst19|PS.E7~q\) # ((\inst19|PS.E12~q\) # (\inst19|PS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E16~q\,
	datab => \inst19|PS.E7~q\,
	datac => \inst19|PS.E12~q\,
	datad => \inst19|PS.E8~q\,
	combout => \inst19|WideOr4~0_combout\);

-- Location: LCCOMB_X68_Y41_N26
\inst19|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr4~1_combout\ = (\inst19|PS.E13~q\) # ((\inst19|PS.E4~q\) # ((\inst19|WideOr4~0_combout\) # (!\inst19|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E13~q\,
	datab => \inst19|PS.E4~q\,
	datac => \inst19|WideOr4~0_combout\,
	datad => \inst19|WideOr0~0_combout\,
	combout => \inst19|WideOr4~1_combout\);

-- Location: LCCOMB_X72_Y40_N28
\inst14|mo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~16_combout\ = (\inst14|mo[1]~3_combout\ & (((\inst19|WideOr4~1_combout\)) # (!\inst14|mo[1]~2_combout\))) # (!\inst14|mo[1]~3_combout\ & (\inst14|mo[1]~2_combout\ & (\inst22|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~3_combout\,
	datab => \inst14|mo[1]~2_combout\,
	datac => \inst22|WideOr4~combout\,
	datad => \inst19|WideOr4~1_combout\,
	combout => \inst14|mo~16_combout\);

-- Location: LCCOMB_X72_Y40_N18
\inst14|mo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~17_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~16_combout\ & (\inst21|WideOr4~combout\)) # (!\inst14|mo~16_combout\ & ((\inst23|WideOr4~combout\))))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|WideOr4~combout\,
	datab => \inst23|WideOr4~combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst14|mo~16_combout\,
	combout => \inst14|mo~17_combout\);

-- Location: LCCOMB_X72_Y40_N4
\inst14|mo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~18_combout\ = (\inst14|mo~17_combout\ & ((\inst14|mo[1]~1_combout\) # ((\inst14|mo[1]~3_combout\) # (\inst5|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~1_combout\,
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst5|sel\(1),
	datad => \inst14|mo~17_combout\,
	combout => \inst14|mo~18_combout\);

-- Location: FF_X72_Y40_N5
\inst14|mo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(1));

-- Location: LCCOMB_X80_Y40_N28
\inst16|mo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~5_combout\ = (\inst15|s_led~q\) # (\inst14|mo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(1),
	combout => \inst16|mo~5_combout\);

-- Location: FF_X80_Y40_N29
\inst16|mo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(1));

-- Location: LCCOMB_X86_Y44_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\ = (\inst16|mo\(1) & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(1),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\);

-- Location: LCCOMB_X86_Y44_N2
\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\ = (\inst16|mo\(1) & \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(1),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\);

-- Location: LCCOMB_X86_Y44_N8
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\,
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X86_Y44_N10
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X85_Y44_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\);

-- Location: LCCOMB_X85_Y44_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X85_Y44_N8
\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\) # 
-- ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[31]~69_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\);

-- Location: LCCOMB_X85_Y44_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\);

-- Location: LCCOMB_X85_Y44_N10
\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[30]~70_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\);

-- Location: LCCOMB_X85_Y44_N30
\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\);

-- Location: LCCOMB_X84_Y44_N10
\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst16|mo\(3)))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst16|mo\(3),
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\);

-- Location: LCCOMB_X86_Y44_N24
\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\);

-- Location: LCCOMB_X86_Y44_N12
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\)))))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X86_Y44_N14
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~67_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y44_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\) # ((\inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~66_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X86_Y44_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~65_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X86_Y44_N20
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

-- Location: LCCOMB_X86_Y44_N4
\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\);

-- Location: LCCOMB_X86_Y44_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst16|mo\(1))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(1),
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\);

-- Location: LCCOMB_X86_Y44_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\) # 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~71_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\);

-- Location: LCCOMB_X86_Y45_N4
\inst1|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~0_combout\ = (\inst6|EnableBin~combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ $ 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\,
	combout => \inst1|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X85_Y44_N0
\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\);

-- Location: LCCOMB_X86_Y44_N30
\inst1|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~1_combout\ = (\inst6|EnableBin~combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\)) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst6|EnableBin~combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst1|decOut_n~1_combout\);

-- Location: LCCOMB_X67_Y40_N22
\inst14|mo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~19_combout\ = (\inst23|WideOr3~0_combout\ & \inst23|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|WideOr3~0_combout\,
	datad => \inst23|WideOr1~0_combout\,
	combout => \inst14|mo~19_combout\);

-- Location: LCCOMB_X68_Y41_N28
\inst19|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideOr5~combout\ = (\inst19|PS.E8~q\) # ((!\inst19|WideOr5~0_combout\) # (!\inst19|WideOr27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PS.E8~q\,
	datab => \inst19|WideOr27~0_combout\,
	datad => \inst19|WideOr5~0_combout\,
	combout => \inst19|WideOr5~combout\);

-- Location: LCCOMB_X68_Y40_N28
\inst14|mo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~20_combout\ = (\inst22|WideOr3~0_combout\ & (\inst22|WideOr1~0_combout\ & ((\inst5|sel\(1)) # (\inst14|mo[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sel\(1),
	datab => \inst22|WideOr3~0_combout\,
	datac => \inst14|mo[1]~1_combout\,
	datad => \inst22|WideOr1~0_combout\,
	combout => \inst14|mo~20_combout\);

-- Location: LCCOMB_X68_Y40_N30
\inst14|mo~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~21_combout\ = (\inst14|mo[1]~3_combout\ & (((!\inst14|mo[1]~2_combout\)) # (!\inst19|WideOr5~combout\))) # (!\inst14|mo[1]~3_combout\ & (((\inst14|mo[1]~2_combout\ & \inst14|mo~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|WideOr5~combout\,
	datab => \inst14|mo[1]~3_combout\,
	datac => \inst14|mo[1]~2_combout\,
	datad => \inst14|mo~20_combout\,
	combout => \inst14|mo~21_combout\);

-- Location: LCCOMB_X67_Y40_N8
\inst21|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|WideOr5~combout\ = (\inst21|PS.E11~q\) # ((!\inst21|WideOr3~1_combout\) # (!\inst21|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|PS.E11~q\,
	datac => \inst21|WideOr1~0_combout\,
	datad => \inst21|WideOr3~1_combout\,
	combout => \inst21|WideOr5~combout\);

-- Location: LCCOMB_X68_Y40_N22
\inst14|mo~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|mo~22_combout\ = (\inst14|mo[1]~1_combout\ & ((\inst14|mo~21_combout\ & ((!\inst21|WideOr5~combout\))) # (!\inst14|mo~21_combout\ & (\inst14|mo~19_combout\)))) # (!\inst14|mo[1]~1_combout\ & (((\inst14|mo~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|mo[1]~1_combout\,
	datab => \inst14|mo~19_combout\,
	datac => \inst14|mo~21_combout\,
	datad => \inst21|WideOr5~combout\,
	combout => \inst14|mo~22_combout\);

-- Location: FF_X68_Y40_N23
\inst14|mo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|mo~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|mo\(0));

-- Location: LCCOMB_X80_Y40_N2
\inst16|mo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|mo~6_combout\ = (\inst15|s_led~q\) # (\inst14|mo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|s_led~q\,
	datad => \inst14|mo\(0),
	combout => \inst16|mo~6_combout\);

-- Location: FF_X80_Y40_N3
\inst16|mo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst16|mo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|mo\(0));

-- Location: LCCOMB_X91_Y48_N4
\inst1|decOut_n[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~2_combout\ = ((\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\) # ((!\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ & \inst16|mo\(0)))) # (!\inst1|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst16|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\,
	combout => \inst1|decOut_n[5]~2_combout\);

-- Location: LCCOMB_X91_Y48_N22
\inst1|decOut_n[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~3_combout\ = ((\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\) # (\inst16|mo\(0))) # (!\inst1|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst16|mo\(0),
	combout => \inst1|decOut_n[4]~3_combout\);

-- Location: LCCOMB_X91_Y48_N0
\inst1|decOut_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~4_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ $ (((\inst16|mo\(0) & !\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\)))) # (!\inst1|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst16|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\,
	combout => \inst1|decOut_n[3]~4_combout\);

-- Location: LCCOMB_X91_Y48_N26
\inst1|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~5_combout\ = ((\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\) # (!\inst16|mo\(0))))) # (!\inst1|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst16|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\,
	combout => \inst1|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X91_Y48_N28
\inst1|decOut_n[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~6_combout\ = ((\inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\ & ((\inst16|mo\(0)) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\)))) # (!\inst1|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[44]~63_combout\,
	datac => \inst16|mo\(0),
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[43]~62_combout\,
	combout => \inst1|decOut_n[1]~6_combout\);

-- Location: LCCOMB_X80_Y40_N8
\inst|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~2_combout\ = (\inst16|mo\(2)) # ((\inst16|mo\(1) & !\inst16|mo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(1),
	datac => \inst16|mo\(2),
	datad => \inst16|mo\(4),
	combout => \inst|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X80_Y40_N22
\inst|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~3_combout\ = (\inst|decOut_n[6]~2_combout\ & (\inst16|mo\(3) & (\inst16|mo\(5) $ (!\inst16|mo\(4))))) # (!\inst|decOut_n[6]~2_combout\ & (!\inst16|mo\(5) & (\inst16|mo\(4) & !\inst16|mo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(5),
	datab => \inst16|mo\(4),
	datac => \inst|decOut_n[6]~2_combout\,
	datad => \inst16|mo\(3),
	combout => \inst|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X85_Y40_N12
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst16|mo\(4) $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst16|mo\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(4),
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X85_Y40_N14
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst16|mo\(5) & (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst16|mo\(5) & 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst16|mo\(5) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(5),
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X85_Y40_N16
\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst16|mo\(6) & (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst16|mo\(6) & 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst16|mo\(6) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(6),
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X85_Y40_N18
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

-- Location: LCCOMB_X81_Y40_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\inst16|mo\(6) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(6),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X85_Y40_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X85_Y40_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X85_Y40_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\inst16|mo\(5) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(5),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X85_Y40_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X85_Y40_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\inst16|mo\(4) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|mo\(4),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X85_Y40_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\inst16|mo\(3) & !\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(3),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X85_Y40_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\inst16|mo\(3) & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(3),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X85_Y40_N2
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X85_Y40_N4
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X85_Y40_N6
\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X85_Y40_N8
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

-- Location: LCCOMB_X85_Y40_N10
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

-- Location: LCCOMB_X85_Y39_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst16|mo\(5))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(5),
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X85_Y39_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X85_Y39_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X85_Y39_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst16|mo\(4)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|mo\(4),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X85_Y39_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X85_Y39_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst16|mo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst16|mo\(3),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X84_Y39_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\inst16|mo\(2) & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(2),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X84_Y39_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\inst16|mo\(2) & !\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|mo\(2),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X85_Y39_N14
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\)))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X85_Y39_N16
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

-- Location: LCCOMB_X85_Y39_N18
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X85_Y39_N20
\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y39_N22
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

-- Location: LCCOMB_X85_Y39_N12
\inst|decOut_n[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst16|mo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst16|mo\(4),
	combout => \inst|decOut_n[6]~4_combout\);

-- Location: LCCOMB_X85_Y39_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X85_Y39_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X85_Y39_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst16|mo\(3))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst16|mo\(3),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X85_Y39_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X86_Y37_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X86_Y37_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst16|mo\(2) & \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(2),
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X86_Y37_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst16|mo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst16|mo\(1),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X86_Y37_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst16|mo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst16|mo\(1),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X86_Y37_N22
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

-- Location: LCCOMB_X86_Y37_N24
\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X86_Y37_N26
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

-- Location: LCCOMB_X86_Y37_N28
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

-- Location: LCCOMB_X86_Y37_N30
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

-- Location: LCCOMB_X84_Y39_N28
\inst|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~5_combout\ = (\inst|decOut_n[6]~4_combout\ & (!\inst16|mo\(5) & \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~4_combout\,
	datac => \inst16|mo\(5),
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X84_Y39_N6
\inst|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~6_combout\ = (\inst6|EnableBin~combout\ & ((\inst16|mo\(6)) # ((\inst|decOut_n[6]~3_combout\) # (\inst|decOut_n[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|mo\(6),
	datab => \inst6|EnableBin~combout\,
	datac => \inst|decOut_n[6]~3_combout\,
	datad => \inst|decOut_n[6]~5_combout\,
	combout => \inst|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X86_Y37_N0
\inst|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~7_combout\ = (\inst6|EnableBin~combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|decOut_n~7_combout\);

-- Location: LCCOMB_X86_Y37_N10
\inst|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~8_combout\ = (\inst6|EnableBin~combout\ & (!\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|decOut_n~8_combout\);

-- Location: LCCOMB_X86_Y37_N16
\inst|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~9_combout\ = (\inst|decOut_n~7_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\inst|decOut_n~7_combout\ & (((!\inst|decOut_n~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|decOut_n~7_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|decOut_n~8_combout\,
	combout => \inst|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X86_Y37_N4
\inst|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~13_combout\ = (\inst6|EnableBin~combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EnableBin~combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|decOut_n~13_combout\);

-- Location: LCCOMB_X86_Y37_N18
\inst|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~10_combout\ = (\inst|decOut_n~7_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|decOut_n~8_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst|decOut_n~7_combout\ & (((\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst|decOut_n~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|decOut_n~7_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|decOut_n~8_combout\,
	combout => \inst|decOut_n[3]~10_combout\);

-- Location: LCCOMB_X86_Y37_N8
\inst|decOut_n[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~11_combout\ = (\inst|decOut_n~7_combout\ & (!\inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst|decOut_n~7_combout\ 
-- & (((!\inst|decOut_n~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|decOut_n~7_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|decOut_n~8_combout\,
	combout => \inst|decOut_n[2]~11_combout\);

-- Location: LCCOMB_X86_Y37_N6
\inst|decOut_n[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~12_combout\ = (!\inst|decOut_n~7_combout\ & ((!\inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst|decOut_n~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|decOut_n~7_combout\,
	combout => \inst|decOut_n[1]~12_combout\);

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

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


