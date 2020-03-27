-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "01/13/2020 19:51:06"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador8bits IS
    PORT (
	clock : IN std_logic;
	zera : IN std_logic;
	conta : IN std_logic;
	Q : OUT std_logic_vector(7 DOWNTO 0);
	rco : OUT std_logic
	);
END contador8bits;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rco	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zera	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- conta	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_zera : std_logic;
SIGNAL ww_conta : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rco : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \zera~input_o\ : std_logic;
SIGNAL \CONT1|IQ~0_combout\ : std_logic;
SIGNAL \conta~input_o\ : std_logic;
SIGNAL \CONT1|IQ[0]~1_combout\ : std_logic;
SIGNAL \CONT1|IQ~2_combout\ : std_logic;
SIGNAL \CONT1|IQ~3_combout\ : std_logic;
SIGNAL \CONT1|IQ~4_combout\ : std_logic;
SIGNAL \CONT2|IQ~0_combout\ : std_logic;
SIGNAL \CONT2|IQ[0]~1_combout\ : std_logic;
SIGNAL \CONT2|IQ~2_combout\ : std_logic;
SIGNAL \CONT2|IQ~3_combout\ : std_logic;
SIGNAL \CONT2|IQ~4_combout\ : std_logic;
SIGNAL \CONT1|Equal0~0_combout\ : std_logic;
SIGNAL \CONT2|rco~combout\ : std_logic;
SIGNAL \CONT2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_conta~input_o\ : std_logic;
SIGNAL \ALT_INV_zera~input_o\ : std_logic;
SIGNAL \CONT1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CONT2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_zera <= zera;
ww_conta <= conta;
Q <= ww_Q;
rco <= ww_rco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CONT1|ALT_INV_IQ\(0) <= NOT \CONT1|IQ\(0);
\ALT_INV_conta~input_o\ <= NOT \conta~input_o\;
\ALT_INV_zera~input_o\ <= NOT \zera~input_o\;
\CONT1|ALT_INV_Equal0~0_combout\ <= NOT \CONT1|Equal0~0_combout\;
\CONT2|ALT_INV_IQ\(3) <= NOT \CONT2|IQ\(3);
\CONT2|ALT_INV_IQ\(2) <= NOT \CONT2|IQ\(2);
\CONT2|ALT_INV_IQ\(1) <= NOT \CONT2|IQ\(1);
\CONT2|ALT_INV_IQ\(0) <= NOT \CONT2|IQ\(0);
\CONT1|ALT_INV_IQ\(3) <= NOT \CONT1|IQ\(3);
\CONT1|ALT_INV_IQ\(2) <= NOT \CONT1|IQ\(2);
\CONT1|ALT_INV_IQ\(1) <= NOT \CONT1|IQ\(1);

-- Location: IOOBUF_X0_Y20_N5
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT1|IQ\(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X0_Y20_N56
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT1|IQ\(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X0_Y20_N39
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT1|IQ\(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X0_Y18_N96
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT1|IQ\(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X0_Y21_N5
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT2|IQ\(0),
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X0_Y20_N22
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT2|IQ\(1),
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X0_Y19_N5
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT2|IQ\(2),
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X0_Y21_N56
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT2|IQ\(3),
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X0_Y21_N39
\rco~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT2|rco~combout\,
	devoe => ww_devoe,
	o => ww_rco);

-- Location: IOIBUF_X54_Y18_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y19_N55
\zera~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zera,
	o => \zera~input_o\);

-- Location: LABCELL_X1_Y20_N27
\CONT1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|IQ~0_combout\ = ( !\CONT1|IQ\(0) & ( \zera~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CONT1|ALT_INV_IQ\(0),
	dataf => \ALT_INV_zera~input_o\,
	combout => \CONT1|IQ~0_combout\);

-- Location: IOIBUF_X0_Y19_N38
\conta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_conta,
	o => \conta~input_o\);

-- Location: LABCELL_X1_Y20_N57
\CONT1|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|IQ[0]~1_combout\ = (!\zera~input_o\) # (\conta~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_zera~input_o\,
	datac => \ALT_INV_conta~input_o\,
	combout => \CONT1|IQ[0]~1_combout\);

-- Location: FF_X1_Y20_N29
\CONT1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT1|IQ~0_combout\,
	ena => \CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|IQ\(0));

-- Location: LABCELL_X1_Y20_N54
\CONT1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|IQ~2_combout\ = ( \CONT1|IQ\(0) & ( (\zera~input_o\ & !\CONT1|IQ\(1)) ) ) # ( !\CONT1|IQ\(0) & ( (\zera~input_o\ & \CONT1|IQ\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_zera~input_o\,
	datad => \CONT1|ALT_INV_IQ\(1),
	dataf => \CONT1|ALT_INV_IQ\(0),
	combout => \CONT1|IQ~2_combout\);

-- Location: FF_X1_Y20_N56
\CONT1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT1|IQ~2_combout\,
	ena => \CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|IQ\(1));

-- Location: LABCELL_X1_Y20_N39
\CONT1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|IQ~3_combout\ = ( \CONT1|IQ\(0) & ( (\zera~input_o\ & (!\CONT1|IQ\(1) $ (!\CONT1|IQ\(2)))) ) ) # ( !\CONT1|IQ\(0) & ( (\zera~input_o\ & \CONT1|IQ\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT1|ALT_INV_IQ\(1),
	datac => \ALT_INV_zera~input_o\,
	datad => \CONT1|ALT_INV_IQ\(2),
	dataf => \CONT1|ALT_INV_IQ\(0),
	combout => \CONT1|IQ~3_combout\);

-- Location: FF_X1_Y20_N41
\CONT1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT1|IQ~3_combout\,
	ena => \CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|IQ\(2));

-- Location: LABCELL_X1_Y20_N48
\CONT1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|IQ~4_combout\ = ( \CONT1|IQ\(3) & ( \CONT1|IQ\(1) & ( (\zera~input_o\ & ((!\CONT1|IQ\(2)) # (!\CONT1|IQ\(0)))) ) ) ) # ( !\CONT1|IQ\(3) & ( \CONT1|IQ\(1) & ( (\zera~input_o\ & (\CONT1|IQ\(2) & \CONT1|IQ\(0))) ) ) ) # ( \CONT1|IQ\(3) & ( 
-- !\CONT1|IQ\(1) & ( \zera~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000001000000010101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zera~input_o\,
	datab => \CONT1|ALT_INV_IQ\(2),
	datac => \CONT1|ALT_INV_IQ\(0),
	datae => \CONT1|ALT_INV_IQ\(3),
	dataf => \CONT1|ALT_INV_IQ\(1),
	combout => \CONT1|IQ~4_combout\);

-- Location: FF_X1_Y20_N50
\CONT1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT1|IQ~4_combout\,
	ena => \CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|IQ\(3));

-- Location: LABCELL_X1_Y20_N12
\CONT2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|IQ~0_combout\ = (\zera~input_o\ & !\CONT2|IQ\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_zera~input_o\,
	datad => \CONT2|ALT_INV_IQ\(0),
	combout => \CONT2|IQ~0_combout\);

-- Location: LABCELL_X1_Y20_N30
\CONT2|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|IQ[0]~1_combout\ = ( \CONT1|IQ\(1) & ( \CONT1|IQ\(3) & ( (!\zera~input_o\) # ((\conta~input_o\ & (\CONT1|IQ\(0) & \CONT1|IQ\(2)))) ) ) ) # ( !\CONT1|IQ\(1) & ( \CONT1|IQ\(3) & ( !\zera~input_o\ ) ) ) # ( \CONT1|IQ\(1) & ( !\CONT1|IQ\(3) & ( 
-- !\zera~input_o\ ) ) ) # ( !\CONT1|IQ\(1) & ( !\CONT1|IQ\(3) & ( !\zera~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zera~input_o\,
	datab => \ALT_INV_conta~input_o\,
	datac => \CONT1|ALT_INV_IQ\(0),
	datad => \CONT1|ALT_INV_IQ\(2),
	datae => \CONT1|ALT_INV_IQ\(1),
	dataf => \CONT1|ALT_INV_IQ\(3),
	combout => \CONT2|IQ[0]~1_combout\);

-- Location: FF_X1_Y20_N14
\CONT2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT2|IQ~0_combout\,
	ena => \CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|IQ\(0));

-- Location: LABCELL_X1_Y20_N15
\CONT2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|IQ~2_combout\ = ( \CONT2|IQ\(0) & ( (\zera~input_o\ & !\CONT2|IQ\(1)) ) ) # ( !\CONT2|IQ\(0) & ( (\zera~input_o\ & \CONT2|IQ\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_zera~input_o\,
	datad => \CONT2|ALT_INV_IQ\(1),
	dataf => \CONT2|ALT_INV_IQ\(0),
	combout => \CONT2|IQ~2_combout\);

-- Location: FF_X1_Y20_N17
\CONT2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT2|IQ~2_combout\,
	ena => \CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|IQ\(1));

-- Location: LABCELL_X1_Y20_N6
\CONT2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|IQ~3_combout\ = ( \CONT2|IQ\(0) & ( (\zera~input_o\ & (!\CONT2|IQ\(1) $ (!\CONT2|IQ\(2)))) ) ) # ( !\CONT2|IQ\(0) & ( (\zera~input_o\ & \CONT2|IQ\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zera~input_o\,
	datab => \CONT2|ALT_INV_IQ\(1),
	datad => \CONT2|ALT_INV_IQ\(2),
	dataf => \CONT2|ALT_INV_IQ\(0),
	combout => \CONT2|IQ~3_combout\);

-- Location: FF_X1_Y20_N8
\CONT2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT2|IQ~3_combout\,
	ena => \CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|IQ\(2));

-- Location: LABCELL_X1_Y20_N9
\CONT2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|IQ~4_combout\ = ( \CONT2|IQ\(0) & ( (\zera~input_o\ & (!\CONT2|IQ\(3) $ (((!\CONT2|IQ\(1)) # (!\CONT2|IQ\(2)))))) ) ) # ( !\CONT2|IQ\(0) & ( (\zera~input_o\ & \CONT2|IQ\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zera~input_o\,
	datab => \CONT2|ALT_INV_IQ\(1),
	datac => \CONT2|ALT_INV_IQ\(2),
	datad => \CONT2|ALT_INV_IQ\(3),
	dataf => \CONT2|ALT_INV_IQ\(0),
	combout => \CONT2|IQ~4_combout\);

-- Location: FF_X1_Y20_N11
\CONT2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT2|IQ~4_combout\,
	ena => \CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|IQ\(3));

-- Location: LABCELL_X1_Y20_N36
\CONT1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT1|Equal0~0_combout\ = ( \CONT1|IQ\(0) & ( (\CONT1|IQ\(1) & (\CONT1|IQ\(2) & \CONT1|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT1|ALT_INV_IQ\(1),
	datac => \CONT1|ALT_INV_IQ\(2),
	datad => \CONT1|ALT_INV_IQ\(3),
	dataf => \CONT1|ALT_INV_IQ\(0),
	combout => \CONT1|Equal0~0_combout\);

-- Location: LABCELL_X1_Y20_N42
\CONT2|rco\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT2|rco~combout\ = ( \CONT1|Equal0~0_combout\ & ( \CONT2|IQ\(3) & ( (\CONT2|IQ\(2) & (\CONT2|IQ\(0) & \CONT2|IQ\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT2|ALT_INV_IQ\(2),
	datac => \CONT2|ALT_INV_IQ\(0),
	datad => \CONT2|ALT_INV_IQ\(1),
	datae => \CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \CONT2|ALT_INV_IQ\(3),
	combout => \CONT2|rco~combout\);

-- Location: LABCELL_X31_Y38_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


