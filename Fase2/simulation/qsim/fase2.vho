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

-- DATE "06/01/2019 15:16:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FSMCafeC IS
    PORT (
	clk : IN std_logic;
	M5 : IN std_logic;
	M10 : IN std_logic;
	M20 : IN std_logic;
	M50 : IN std_logic;
	en : IN std_logic;
	led : OUT std_logic;
	money : OUT std_logic_vector(6 DOWNTO 0)
	);
END FSMCafeC;

ARCHITECTURE structure OF FSMCafeC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_M5 : std_logic;
SIGNAL ww_M10 : std_logic;
SIGNAL ww_M20 : std_logic;
SIGNAL ww_M50 : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_money : std_logic_vector(6 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \money[0]~output_o\ : std_logic;
SIGNAL \money[1]~output_o\ : std_logic;
SIGNAL \money[2]~output_o\ : std_logic;
SIGNAL \money[3]~output_o\ : std_logic;
SIGNAL \money[4]~output_o\ : std_logic;
SIGNAL \money[5]~output_o\ : std_logic;
SIGNAL \money[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \M50~input_o\ : std_logic;
SIGNAL \M20~input_o\ : std_logic;
SIGNAL \M5~input_o\ : std_logic;
SIGNAL \M10~input_o\ : std_logic;
SIGNAL \NS~0_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \PS~18_combout\ : std_logic;
SIGNAL \PS.E0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PS.E1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \PS.E2~q\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \PS.E3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \PS.E4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \PS.E5~q\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \NS~1_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \PS.E6~q\ : std_logic;
SIGNAL \NS~2_combout\ : std_logic;
SIGNAL \PS~19_combout\ : std_logic;
SIGNAL \PS.E14~q\ : std_logic;
SIGNAL \PS~20_combout\ : std_logic;
SIGNAL \PS.E8~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \PS~21_combout\ : std_logic;
SIGNAL \PS.E10~q\ : std_logic;
SIGNAL \PS~22_combout\ : std_logic;
SIGNAL \PS.E12~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \PS~23_combout\ : std_logic;
SIGNAL \PS.E13~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \PS~24_combout\ : std_logic;
SIGNAL \PS.E9~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \PS~25_combout\ : std_logic;
SIGNAL \PS.E11~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \PS.E7~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \PS~26_combout\ : std_logic;
SIGNAL \PS.E15~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_M5 <= M5;
ww_M10 <= M10;
ww_M20 <= M20;
ww_M50 <= M50;
ww_en <= en;
led <= ww_led;
money <= ww_money;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;
\ALT_INV_WideOr5~combout\ <= NOT \WideOr5~combout\;

\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

\money[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => \money[0]~output_o\);

\money[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \money[1]~output_o\);

\money[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \money[2]~output_o\);

\money[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \money[3]~output_o\);

\money[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \money[4]~output_o\);

\money[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \money[5]~output_o\);

\money[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \money[6]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\M50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M50,
	o => \M50~input_o\);

\M20~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M20,
	o => \M20~input_o\);

\M5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M5,
	o => \M5~input_o\);

\M10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M10,
	o => \M10~input_o\);

\NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS~0_combout\ = (\M50~input_o\) # ((\M20~input_o\) # ((\M5~input_o\) # (\M10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M50~input_o\,
	datab => \M20~input_o\,
	datac => \M5~input_o\,
	datad => \M10~input_o\,
	combout => \NS~0_combout\);

\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~18_combout\ = (\en~input_o\ & ((\PS.E0~q\) # (\NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.E0~q\,
	datac => \NS~0_combout\,
	datad => \en~input_o\,
	combout => \PS~18_combout\);

\PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E0~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\M5~input_o\ & (((\PS.E1~q\ & !\NS~0_combout\)) # (!\PS.E0~q\))) # (!\M5~input_o\ & (\PS.E1~q\ & ((!\NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5~input_o\,
	datab => \PS.E1~q\,
	datac => \PS.E0~q\,
	datad => \NS~0_combout\,
	combout => \Selector1~0_combout\);

\PS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E1~q\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\M5~input_o\ & (\PS.E1~q\)) # (!\M5~input_o\ & (((\M10~input_o\ & !\PS.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E1~q\,
	datab => \M5~input_o\,
	datac => \M10~input_o\,
	datad => \PS.E0~q\,
	combout => \Selector2~0_combout\);

\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\PS.E2~q\ & !\NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \PS.E2~q\,
	datad => \NS~0_combout\,
	combout => \Selector2~1_combout\);

\PS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~1_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E2~q\);

\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\PS.E0~q\ & (\en~input_o\ & (!\PS.E2~q\ & !\PS.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E0~q\,
	datab => \en~input_o\,
	datac => \PS.E2~q\,
	datad => \PS.E1~q\,
	combout => \led~0_combout\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\M5~input_o\ & (\PS.E2~q\)) # (!\M5~input_o\ & (((\PS.E1~q\ & \M10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E2~q\,
	datab => \PS.E1~q\,
	datac => \M10~input_o\,
	datad => \M5~input_o\,
	combout => \Selector3~0_combout\);

\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\PS.E3~q\ & !\NS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \PS.E3~q\,
	datad => \NS~0_combout\,
	combout => \Selector3~1_combout\);

\PS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~1_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E3~q\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\M10~input_o\ & (((\PS.E2~q\)))) # (!\M10~input_o\ & (\M20~input_o\ & (!\PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datab => \PS.E0~q\,
	datac => \M10~input_o\,
	datad => \PS.E2~q\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\M5~input_o\ & (\PS.E4~q\ & (!\NS~0_combout\))) # (!\M5~input_o\ & ((\Selector4~0_combout\) # ((\PS.E4~q\ & !\NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5~input_o\,
	datab => \PS.E4~q\,
	datac => \NS~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

\PS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E4~q\);

\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\PS.E1~q\ & (\M20~input_o\ & (!\M5~input_o\ & !\M10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E1~q\,
	datab => \M20~input_o\,
	datac => \M5~input_o\,
	datad => \M10~input_o\,
	combout => \Selector5~0_combout\);

\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\M5~input_o\ & (\PS.E4~q\)) # (!\M5~input_o\ & (((\PS.E3~q\ & \M10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E4~q\,
	datab => \PS.E3~q\,
	datac => \M10~input_o\,
	datad => \M5~input_o\,
	combout => \Selector5~1_combout\);

\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~0_combout\) # ((\Selector5~1_combout\) # ((\PS.E5~q\ & !\NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~1_combout\,
	datac => \PS.E5~q\,
	datad => \NS~0_combout\,
	combout => \Selector5~2_combout\);

\PS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector5~2_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E5~q\);

\led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\led~0_combout\ & (!\PS.E3~q\ & (!\PS.E4~q\ & !\PS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led~0_combout\,
	datab => \PS.E3~q\,
	datac => \PS.E4~q\,
	datad => \PS.E5~q\,
	combout => \led~1_combout\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\M5~input_o\ & (\PS.E5~q\)) # (!\M5~input_o\ & (((\PS.E4~q\ & \M10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E5~q\,
	datab => \PS.E4~q\,
	datac => \M10~input_o\,
	datad => \M5~input_o\,
	combout => \Selector6~0_combout\);

\NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS~1_combout\ = (\M20~input_o\ & (!\M5~input_o\ & !\M10~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datac => \M5~input_o\,
	datad => \M10~input_o\,
	combout => \NS~1_combout\);

\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\PS.E2~q\) # (\PS.E3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E2~q\,
	datab => \PS.E3~q\,
	combout => \Selector6~1_combout\);

\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\PS.E6~q\) # ((\Selector6~0_combout\) # ((\NS~1_combout\ & \Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E6~q\,
	datab => \Selector6~0_combout\,
	datac => \NS~1_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

\PS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~2_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E6~q\);

\NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS~2_combout\ = (\M50~input_o\ & (!\M20~input_o\ & (!\M5~input_o\ & !\M10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M50~input_o\,
	datab => \M20~input_o\,
	datac => \M5~input_o\,
	datad => \M10~input_o\,
	combout => \NS~2_combout\);

\PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~19_combout\ = (\PS.E14~q\) # ((\PS.E4~q\ & \NS~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E14~q\,
	datab => \PS.E4~q\,
	datac => \NS~2_combout\,
	combout => \PS~19_combout\);

\PS.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~19_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E14~q\);

\PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~20_combout\ = (\PS.E8~q\) # ((\PS.E4~q\ & \NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E8~q\,
	datab => \PS.E4~q\,
	datac => \NS~1_combout\,
	combout => \PS~20_combout\);

\PS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~20_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E8~q\);

\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\PS.E4~q\) # ((\PS.E6~q\) # ((\PS.E14~q\) # (\PS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E4~q\,
	datab => \PS.E6~q\,
	datac => \PS.E14~q\,
	datad => \PS.E8~q\,
	combout => \WideOr5~0_combout\);

\PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~21_combout\ = (\PS.E10~q\) # ((\NS~2_combout\ & !\PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E10~q\,
	datab => \NS~2_combout\,
	datad => \PS.E0~q\,
	combout => \PS~21_combout\);

\PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~21_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E10~q\);

\PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~22_combout\ = (\PS.E12~q\) # ((\PS.E2~q\ & \NS~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E12~q\,
	datab => \PS.E2~q\,
	datac => \NS~2_combout\,
	combout => \PS~22_combout\);

\PS.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~22_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E12~q\);

\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\PS.E0~q\ & (!\PS.E2~q\ & (!\PS.E10~q\ & !\PS.E12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E0~q\,
	datab => \PS.E2~q\,
	datac => \PS.E10~q\,
	datad => \PS.E12~q\,
	combout => \WideOr1~0_combout\);

WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\WideOr5~0_combout\) # (!\WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr5~combout\);

\PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~23_combout\ = (\PS.E13~q\) # ((\PS.E3~q\ & \NS~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E13~q\,
	datab => \PS.E3~q\,
	datac => \NS~2_combout\,
	combout => \PS~23_combout\);

\PS.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~23_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E13~q\);

\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\PS.E4~q\) # ((\PS.E8~q\) # ((\PS.E13~q\) # (!\PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E4~q\,
	datab => \PS.E8~q\,
	datac => \PS.E13~q\,
	datad => \PS.E0~q\,
	combout => \WideOr4~0_combout\);

\PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~24_combout\ = (\PS.E9~q\) # ((\PS.E5~q\ & \NS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E9~q\,
	datab => \PS.E5~q\,
	datac => \NS~1_combout\,
	combout => \PS~24_combout\);

\PS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~24_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E9~q\);

WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\PS.E3~q\) # ((\PS.E12~q\) # ((\WideOr4~0_combout\) # (\PS.E9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E3~q\,
	datab => \PS.E12~q\,
	datac => \WideOr4~0_combout\,
	datad => \PS.E9~q\,
	combout => \WideOr4~combout\);

\PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~25_combout\ = (\PS.E11~q\) # ((\PS.E1~q\ & \NS~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E11~q\,
	datab => \PS.E1~q\,
	datac => \NS~2_combout\,
	combout => \PS~25_combout\);

\PS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~25_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E11~q\);

\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\PS.E1~q\) # ((\PS.E6~q\) # ((\PS.E14~q\) # (\PS.E11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E1~q\,
	datab => \PS.E6~q\,
	datac => \PS.E14~q\,
	datad => \PS.E11~q\,
	combout => \WideOr3~0_combout\);

WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\PS.E4~q\) # ((\PS.E8~q\) # ((\PS.E13~q\) # (\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E4~q\,
	datab => \PS.E8~q\,
	datac => \PS.E13~q\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~combout\);

\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\PS.E2~q\) # ((\PS.E5~q\) # ((\PS.E10~q\) # (\PS.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E2~q\,
	datab => \PS.E5~q\,
	datac => \PS.E10~q\,
	datad => \PS.E6~q\,
	combout => \WideOr2~0_combout\);

\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\M5~input_o\ & (\PS.E3~q\)) # (!\M5~input_o\ & (((\PS.E5~q\ & \M10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E3~q\,
	datab => \PS.E5~q\,
	datac => \M10~input_o\,
	datad => \M5~input_o\,
	combout => \Selector7~0_combout\);

\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\PS.E7~q\) # (\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E7~q\,
	datab => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

\PS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector7~1_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E7~q\);

WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\PS.E13~q\) # ((\WideOr2~0_combout\) # (\PS.E7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E13~q\,
	datab => \WideOr2~0_combout\,
	datac => \PS.E7~q\,
	combout => \WideOr2~combout\);

WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\PS.E1~q\) # ((\PS.E11~q\) # (!\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E1~q\,
	datab => \PS.E11~q\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr1~combout\);

\PS~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~26_combout\ = (\PS.E15~q\) # ((\PS.E5~q\ & \NS~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E15~q\,
	datab => \PS.E5~q\,
	datac => \NS~2_combout\,
	combout => \PS~26_combout\);

\PS.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~26_combout\,
	sclr => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.E15~q\);

\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\PS.E14~q\) # ((\PS.E13~q\) # (\PS.E15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.E14~q\,
	datab => \PS.E13~q\,
	datac => \PS.E15~q\,
	combout => \WideOr0~0_combout\);

ww_led <= \led~output_o\;

ww_money(0) <= \money[0]~output_o\;

ww_money(1) <= \money[1]~output_o\;

ww_money(2) <= \money[2]~output_o\;

ww_money(3) <= \money[3]~output_o\;

ww_money(4) <= \money[4]~output_o\;

ww_money(5) <= \money[5]~output_o\;

ww_money(6) <= \money[6]~output_o\;
END structure;


