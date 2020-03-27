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

-- DATE "01/15/2020 09:30:41"

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

ENTITY 	contador_163 IS
    PORT (
	clock : IN std_logic;
	clr : IN std_logic;
	ld : IN std_logic;
	ent : IN std_logic;
	enp : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0);
	rco : OUT std_logic
	);
END contador_163;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rco	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enp	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_163 IS
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
SIGNAL ww_clr : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_ent : std_logic;
SIGNAL ww_enp : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rco : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \IQ~0_combout\ : std_logic;
SIGNAL \ent~input_o\ : std_logic;
SIGNAL \enp~input_o\ : std_logic;
SIGNAL \IQ[0]~1_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \IQ~2_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \IQ~3_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \IQ~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL IQ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_enp~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ld~input_o\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL \ALT_INV_ent~input_o\ : std_logic;
SIGNAL ALT_INV_IQ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_clr <= clr;
ww_ld <= ld;
ww_ent <= ent;
ww_enp <= enp;
ww_D <= D;
Q <= ww_Q;
rco <= ww_rco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_enp~input_o\ <= NOT \enp~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_ld~input_o\ <= NOT \ld~input_o\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
\ALT_INV_ent~input_o\ <= NOT \ent~input_o\;
ALT_INV_IQ(3) <= NOT IQ(3);
ALT_INV_IQ(2) <= NOT IQ(2);
ALT_INV_IQ(1) <= NOT IQ(1);
ALT_INV_IQ(0) <= NOT IQ(0);

-- Location: IOOBUF_X0_Y18_N45
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IQ(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X0_Y19_N22
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IQ(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X0_Y21_N56
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IQ(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X0_Y18_N79
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IQ(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X0_Y19_N5
\rco~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
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

-- Location: IOIBUF_X0_Y20_N38
\ld~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N55
\clr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LABCELL_X1_Y19_N18
\IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IQ~0_combout\ = ( IQ(0) & ( \clr~input_o\ & ( (!\ld~input_o\ & \D[0]~input_o\) ) ) ) # ( !IQ(0) & ( \clr~input_o\ & ( (\D[0]~input_o\) # (\ld~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ld~input_o\,
	datac => \ALT_INV_D[0]~input_o\,
	datae => ALT_INV_IQ(0),
	dataf => \ALT_INV_clr~input_o\,
	combout => \IQ~0_combout\);

-- Location: IOIBUF_X0_Y21_N38
\ent~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent,
	o => \ent~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\enp~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enp,
	o => \enp~input_o\);

-- Location: LABCELL_X1_Y19_N51
\IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IQ[0]~1_combout\ = ( \enp~input_o\ & ( (!\ld~input_o\) # ((!\clr~input_o\) # (\ent~input_o\)) ) ) # ( !\enp~input_o\ & ( (!\ld~input_o\) # (!\clr~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110111111101111111010111110101111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ld~input_o\,
	datab => \ALT_INV_ent~input_o\,
	datac => \ALT_INV_clr~input_o\,
	datae => \ALT_INV_enp~input_o\,
	combout => \IQ[0]~1_combout\);

-- Location: FF_X1_Y19_N20
\IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IQ~0_combout\,
	ena => \IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IQ(0));

-- Location: IOIBUF_X0_Y20_N4
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X1_Y19_N33
\IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IQ~2_combout\ = ( IQ(1) & ( IQ(0) & ( (\D[1]~input_o\ & (\clr~input_o\ & !\ld~input_o\)) ) ) ) # ( !IQ(1) & ( IQ(0) & ( (\clr~input_o\ & ((\ld~input_o\) # (\D[1]~input_o\))) ) ) ) # ( IQ(1) & ( !IQ(0) & ( (\clr~input_o\ & ((\ld~input_o\) # 
-- (\D[1]~input_o\))) ) ) ) # ( !IQ(1) & ( !IQ(0) & ( (\D[1]~input_o\ & (\clr~input_o\ & !\ld~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100110001001100010011000100110001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[1]~input_o\,
	datab => \ALT_INV_clr~input_o\,
	datac => \ALT_INV_ld~input_o\,
	datae => ALT_INV_IQ(1),
	dataf => ALT_INV_IQ(0),
	combout => \IQ~2_combout\);

-- Location: FF_X1_Y19_N35
\IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IQ~2_combout\,
	ena => \IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IQ(1));

-- Location: IOIBUF_X0_Y21_N4
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X1_Y19_N42
\IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IQ~3_combout\ = ( IQ(2) & ( IQ(0) & ( (\clr~input_o\ & ((!\ld~input_o\ & (\D[2]~input_o\)) # (\ld~input_o\ & ((!IQ(1)))))) ) ) ) # ( !IQ(2) & ( IQ(0) & ( (\clr~input_o\ & ((!\ld~input_o\ & (\D[2]~input_o\)) # (\ld~input_o\ & ((IQ(1)))))) ) ) ) # ( IQ(2) 
-- & ( !IQ(0) & ( (\clr~input_o\ & ((\D[2]~input_o\) # (\ld~input_o\))) ) ) ) # ( !IQ(2) & ( !IQ(0) & ( (!\ld~input_o\ & (\D[2]~input_o\ & \clr~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000111011100000000001001110000000001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ld~input_o\,
	datab => \ALT_INV_D[2]~input_o\,
	datac => ALT_INV_IQ(1),
	datad => \ALT_INV_clr~input_o\,
	datae => ALT_INV_IQ(2),
	dataf => ALT_INV_IQ(0),
	combout => \IQ~3_combout\);

-- Location: FF_X1_Y19_N44
\IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IQ~3_combout\,
	ena => \IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IQ(2));

-- Location: IOIBUF_X0_Y19_N38
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X1_Y19_N24
\IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IQ~4_combout\ = ( !\ld~input_o\ & ( ((\clr~input_o\ & (\D[3]~input_o\))) ) ) # ( \ld~input_o\ & ( (\clr~input_o\ & (!IQ(3) $ (((!IQ(0)) # ((!IQ(2)) # (!IQ(1))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IQ(0),
	datab => \ALT_INV_clr~input_o\,
	datac => ALT_INV_IQ(3),
	datad => ALT_INV_IQ(2),
	datae => \ALT_INV_ld~input_o\,
	dataf => ALT_INV_IQ(1),
	datag => \ALT_INV_D[3]~input_o\,
	combout => \IQ~4_combout\);

-- Location: FF_X1_Y19_N26
\IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IQ~4_combout\,
	ena => \IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IQ(3));

-- Location: LABCELL_X1_Y19_N36
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \ent~input_o\ & ( IQ(1) & ( (IQ(2) & (IQ(0) & IQ(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IQ(2),
	datab => ALT_INV_IQ(0),
	datac => ALT_INV_IQ(3),
	datae => \ALT_INV_ent~input_o\,
	dataf => ALT_INV_IQ(1),
	combout => \process_0~0_combout\);

-- Location: LABCELL_X41_Y36_N3
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


