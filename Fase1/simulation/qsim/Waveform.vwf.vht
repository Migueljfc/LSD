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
-- Generated on "06/01/2019 00:25:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_vec_tst IS
END test_vhd_vec_tst;
ARCHITECTURE test_arch OF test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT test
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 25000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
	WAIT FOR 30000 ps;
	KEY(3) <= '1';
	WAIT FOR 80000 ps;
	KEY(3) <= '0';
	WAIT FOR 120000 ps;
	KEY(3) <= '1';
	WAIT FOR 40000 ps;
	KEY(3) <= '0';
	WAIT FOR 80000 ps;
	KEY(3) <= '1';
	WAIT FOR 80000 ps;
	KEY(3) <= '0';
	WAIT FOR 40000 ps;
	KEY(3) <= '1';
	WAIT FOR 40000 ps;
	KEY(3) <= '0';
	WAIT FOR 40000 ps;
	KEY(3) <= '1';
	WAIT FOR 40000 ps;
	KEY(3) <= '0';
	WAIT FOR 80000 ps;
	KEY(3) <= '1';
	WAIT FOR 40000 ps;
	KEY(3) <= '0';
	WAIT FOR 40000 ps;
	KEY(3) <= '1';
	WAIT FOR 40000 ps;
	KEY(3) <= '0';
	WAIT FOR 40000 ps;
	KEY(3) <= '1';
	WAIT FOR 80000 ps;
	KEY(3) <= '0';
	WAIT FOR 40000 ps;
	KEY(3) <= '1';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
	WAIT FOR 110000 ps;
	KEY(2) <= '1';
	WAIT FOR 60000 ps;
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
	WAIT FOR 80000 ps;
	KEY(1) <= '1';
	WAIT FOR 160000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 80000 ps;
	KEY(1) <= '1';
	WAIT FOR 120000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 160000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 80000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 80000 ps;
	KEY(0) <= '1';
	WAIT FOR 80000 ps;
	KEY(0) <= '0';
	WAIT FOR 120000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 80000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 80000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 80000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
	WAIT FOR 10000 ps;
	SW(4) <= '1';
	WAIT FOR 200000 ps;
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
	WAIT FOR 270000 ps;
	SW(3) <= '1';
	WAIT FOR 170000 ps;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 510000 ps;
	SW(2) <= '1';
	WAIT FOR 130000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
	WAIT FOR 670000 ps;
	SW(1) <= '1';
	WAIT FOR 90000 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
	WAIT FOR 670000 ps;
	SW(0) <= '1';
	WAIT FOR 90000 ps;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END test_arch;
