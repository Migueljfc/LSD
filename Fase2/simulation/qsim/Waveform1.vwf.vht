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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/01/2019 15:16:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSMCafeC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSMCafeC_vhd_vec_tst IS
END FSMCafeC_vhd_vec_tst;
ARCHITECTURE FSMCafeC_arch OF FSMCafeC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL led : STD_LOGIC;
SIGNAL M5 : STD_LOGIC;
SIGNAL M10 : STD_LOGIC;
SIGNAL M20 : STD_LOGIC;
SIGNAL M50 : STD_LOGIC;
SIGNAL money : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT FSMCafeC
	PORT (
	clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	led : OUT STD_LOGIC;
	M5 : IN STD_LOGIC;
	M10 : IN STD_LOGIC;
	M20 : IN STD_LOGIC;
	M50 : IN STD_LOGIC;
	money : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FSMCafeC
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en => en,
	led => led,
	M5 => M5,
	M10 => M10,
	M20 => M20,
	M50 => M50,
	money => money
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
	WAIT FOR 160000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;

-- M5
t_prcs_M5: PROCESS
BEGIN
	M5 <= '0';
WAIT;
END PROCESS t_prcs_M5;

-- M10
t_prcs_M10: PROCESS
BEGIN
	M10 <= '0';
WAIT;
END PROCESS t_prcs_M10;

-- M20
t_prcs_M20: PROCESS
BEGIN
	M20 <= '0';
WAIT;
END PROCESS t_prcs_M20;

-- M50
t_prcs_M50: PROCESS
BEGIN
	M50 <= '0';
	WAIT FOR 10000 ps;
	M50 <= '1';
	WAIT FOR 60000 ps;
	M50 <= '0';
WAIT;
END PROCESS t_prcs_M50;
END FSMCafeC_arch;
