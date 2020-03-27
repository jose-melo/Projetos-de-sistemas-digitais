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

-- DATE "01/26/2020 19:57:11"

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

ENTITY 	interface_leds_botoes_v2 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	iniciar : IN std_logic;
	resposta : IN std_logic;
	ligado : OUT std_logic;
	estimulo : OUT std_logic;
	pulso : OUT std_logic;
	erro : OUT std_logic;
	pronto : OUT std_logic;
	estado : OUT std_logic_vector(3 DOWNTO 0);
	db_clock : OUT std_logic;
	db_erro : OUT std_logic;
	db_estimulo : OUT std_logic
	);
END interface_leds_botoes_v2;

-- Design Ports Information
-- ligado	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estimulo	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_clock	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_erro	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estimulo	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF interface_leds_botoes_v2 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_resposta : std_logic;
SIGNAL ww_ligado : std_logic;
SIGNAL ww_estimulo : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_db_clock : std_logic;
SIGNAL ww_db_erro : std_logic;
SIGNAL ww_db_estimulo : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \FSM|Ereg.INICIAL~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSM|Ereg.INICIAL~q\ : std_logic;
SIGNAL \CONT_INICIO|IQ[0]~3_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|IQ~2_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|IQ[2]~1_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|IQ~0_combout\ : std_logic;
SIGNAL \CONT_INICIO|Equal0~0_combout\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.CONTANDO~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \FSM|Eprox.ESPERA~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ESPERA~q\ : std_logic;
SIGNAL \FSM|WideNor0~combout\ : std_logic;
SIGNAL \reset_interno~combout\ : std_logic;
SIGNAL \LATCH|iq~combout\ : std_logic;
SIGNAL \FSM|Ereg.ERRO~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ERRO~q\ : std_logic;
SIGNAL \FSM|Ereg.FIM~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.FIM~q\ : std_logic;
SIGNAL \FSM|WideNor1~combout\ : std_logic;
SIGNAL \FSM|WideOr4~combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \LATCH|ALT_INV_iq~combout\ : std_logic;
SIGNAL \ALT_INV_reset_interno~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \CONT_INICIO|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CONT_INICIO|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Ereg.ERRO~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Ereg.CONTANDO~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_iniciar <= iniciar;
ww_resposta <= resposta;
ligado <= ww_ligado;
estimulo <= ww_estimulo;
pulso <= ww_pulso;
erro <= ww_erro;
pronto <= ww_pronto;
estado <= ww_estado;
db_clock <= ww_db_clock;
db_erro <= ww_db_erro;
db_estimulo <= ww_db_estimulo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \CONT_INICIO|IQ[1]~DUPLICATE_q\;
\CONT_INICIO|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \CONT_INICIO|IQ[2]~DUPLICATE_q\;
\CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \CONT_INICIO|IQ[0]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\LATCH|ALT_INV_iq~combout\ <= NOT \LATCH|iq~combout\;
\ALT_INV_reset_interno~combout\ <= NOT \reset_interno~combout\;
\FSM|ALT_INV_Ereg.INICIAL~q\ <= NOT \FSM|Ereg.INICIAL~q\;
\CONT_INICIO|ALT_INV_Equal0~0_combout\ <= NOT \CONT_INICIO|Equal0~0_combout\;
\CONT_INICIO|ALT_INV_IQ\(1) <= NOT \CONT_INICIO|IQ\(1);
\CONT_INICIO|ALT_INV_IQ\(2) <= NOT \CONT_INICIO|IQ\(2);
\CONT_INICIO|ALT_INV_IQ\(3) <= NOT \CONT_INICIO|IQ\(3);
\CONT_INICIO|ALT_INV_IQ\(0) <= NOT \CONT_INICIO|IQ\(0);
\FSM|ALT_INV_Ereg.FIM~q\ <= NOT \FSM|Ereg.FIM~q\;
\FSM|ALT_INV_Ereg.ERRO~q\ <= NOT \FSM|Ereg.ERRO~q\;
\FSM|ALT_INV_Ereg.ESPERA~q\ <= NOT \FSM|Ereg.ESPERA~q\;
\FSM|ALT_INV_Ereg.ESTIMULO~q\ <= NOT \FSM|Ereg.ESTIMULO~q\;
\FSM|ALT_INV_Ereg.CONTANDO~q\ <= NOT \FSM|Ereg.CONTANDO~q\;

-- Location: IOOBUF_X0_Y20_N22
\ligado~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|WideNor0~combout\,
	devoe => ww_devoe,
	o => ww_ligado);

-- Location: IOOBUF_X0_Y19_N5
\estimulo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Ereg.ESTIMULO~q\,
	devoe => ww_devoe,
	o => ww_estimulo);

-- Location: IOOBUF_X0_Y20_N39
\pulso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LATCH|iq~combout\,
	devoe => ww_devoe,
	o => ww_pulso);

-- Location: IOOBUF_X0_Y21_N22
\erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Ereg.ERRO~q\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X0_Y21_N56
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|WideNor1~combout\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOOBUF_X0_Y19_N56
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|estado\(0),
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X0_Y19_N22
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|estado\(1),
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X0_Y20_N56
\estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_estado(2));

-- Location: IOOBUF_X0_Y21_N39
\estado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|WideNor1~combout\,
	devoe => ww_devoe,
	o => ww_estado(3));

-- Location: IOOBUF_X10_Y0_N42
\db_clock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_db_clock);

-- Location: IOOBUF_X0_Y21_N5
\db_erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Ereg.ERRO~q\,
	devoe => ww_devoe,
	o => ww_db_erro);

-- Location: IOOBUF_X0_Y19_N39
\db_estimulo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Ereg.ESTIMULO~q\,
	devoe => ww_devoe,
	o => ww_db_estimulo);

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

-- Location: IOIBUF_X0_Y18_N95
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LABCELL_X1_Y20_N48
\FSM|Ereg.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Ereg.INICIAL~0_combout\ = ( \iniciar~input_o\ ) # ( !\iniciar~input_o\ & ( \FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \ALT_INV_iniciar~input_o\,
	combout => \FSM|Ereg.INICIAL~0_combout\);

-- Location: IOIBUF_X0_Y20_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y20_N50
\FSM|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Ereg.INICIAL~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.INICIAL~q\);

-- Location: FF_X1_Y20_N7
\CONT_INICIO|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ[0]~3_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	ena => \FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ\(0));

-- Location: LABCELL_X1_Y20_N6
\CONT_INICIO|IQ[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ[0]~3_combout\ = !\CONT_INICIO|IQ\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CONT_INICIO|ALT_INV_IQ\(0),
	combout => \CONT_INICIO|IQ[0]~3_combout\);

-- Location: FF_X1_Y20_N8
\CONT_INICIO|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ[0]~3_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	ena => \FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ[0]~DUPLICATE_q\);

-- Location: FF_X1_Y20_N23
\CONT_INICIO|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ[2]~1_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ\(2));

-- Location: FF_X1_Y20_N14
\CONT_INICIO|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ~2_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	ena => \FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ\(1));

-- Location: LABCELL_X1_Y20_N12
\CONT_INICIO|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ~2_combout\ = ( \CONT_INICIO|IQ\(0) & ( (!\CONT_INICIO|IQ\(1) & ((!\CONT_INICIO|IQ\(3)) # (\CONT_INICIO|IQ[2]~DUPLICATE_q\))) ) ) # ( !\CONT_INICIO|IQ\(0) & ( \CONT_INICIO|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ\(3),
	datac => \CONT_INICIO|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \CONT_INICIO|ALT_INV_IQ\(1),
	dataf => \CONT_INICIO|ALT_INV_IQ\(0),
	combout => \CONT_INICIO|IQ~2_combout\);

-- Location: FF_X1_Y20_N13
\CONT_INICIO|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ~2_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	ena => \FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y20_N21
\CONT_INICIO|IQ[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ[2]~1_combout\ = ( \CONT_INICIO|IQ\(2) & ( \CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( (!\CONT_INICIO|IQ[0]~DUPLICATE_q\) # (!\FSM|Ereg.CONTANDO~q\) ) ) ) # ( !\CONT_INICIO|IQ\(2) & ( \CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( 
-- (\CONT_INICIO|IQ[0]~DUPLICATE_q\ & \FSM|Ereg.CONTANDO~q\) ) ) ) # ( \CONT_INICIO|IQ\(2) & ( !\CONT_INICIO|IQ[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datae => \CONT_INICIO|ALT_INV_IQ\(2),
	dataf => \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT_INICIO|IQ[2]~1_combout\);

-- Location: FF_X1_Y20_N22
\CONT_INICIO|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ[2]~1_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y20_N9
\CONT_INICIO|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ~0_combout\ = ( \CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( !\CONT_INICIO|IQ\(3) $ (((!\CONT_INICIO|IQ[0]~DUPLICATE_q\) # (!\CONT_INICIO|IQ[2]~DUPLICATE_q\))) ) ) # ( !\CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( (\CONT_INICIO|IQ\(3) & 
-- ((!\CONT_INICIO|IQ[0]~DUPLICATE_q\) # (\CONT_INICIO|IQ[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	datac => \CONT_INICIO|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \CONT_INICIO|ALT_INV_IQ\(3),
	dataf => \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT_INICIO|IQ~0_combout\);

-- Location: FF_X1_Y20_N11
\CONT_INICIO|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT_INICIO|IQ~0_combout\,
	clrn => \FSM|Ereg.INICIAL~q\,
	ena => \FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT_INICIO|IQ\(3));

-- Location: LABCELL_X1_Y20_N33
\CONT_INICIO|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|Equal0~0_combout\ = ( !\CONT_INICIO|IQ\(2) & ( !\CONT_INICIO|IQ\(1) & ( (\CONT_INICIO|IQ\(3) & \CONT_INICIO|IQ[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ\(3),
	datac => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \CONT_INICIO|ALT_INV_IQ\(2),
	dataf => \CONT_INICIO|ALT_INV_IQ\(1),
	combout => \CONT_INICIO|Equal0~0_combout\);

-- Location: LABCELL_X1_Y20_N54
\FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = ( \CONT_INICIO|Equal0~0_combout\ & ( (\iniciar~input_o\ & !\FSM|Ereg.INICIAL~q\) ) ) # ( !\CONT_INICIO|Equal0~0_combout\ & ( (!\resposta~input_o\ & (((\iniciar~input_o\ & !\FSM|Ereg.INICIAL~q\)) # (\FSM|Ereg.CONTANDO~q\))) # 
-- (\resposta~input_o\ & (\iniciar~input_o\ & (!\FSM|Ereg.INICIAL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \ALT_INV_iniciar~input_o\,
	datac => \FSM|ALT_INV_Ereg.INICIAL~q\,
	datad => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Selector0~0_combout\);

-- Location: FF_X1_Y20_N56
\FSM|Ereg.CONTANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.CONTANDO~q\);

-- Location: LABCELL_X1_Y20_N36
\FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = ( \CONT_INICIO|Equal0~0_combout\ & ( ((!\resposta~input_o\ & \FSM|Ereg.ESTIMULO~q\)) # (\FSM|Ereg.CONTANDO~q\) ) ) # ( !\CONT_INICIO|Equal0~0_combout\ & ( (!\resposta~input_o\ & \FSM|Ereg.ESTIMULO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datac => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datad => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Selector2~0_combout\);

-- Location: FF_X1_Y20_N38
\FSM|Ereg.ESTIMULO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.ESTIMULO~q\);

-- Location: LABCELL_X1_Y20_N42
\FSM|Eprox.ESPERA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Eprox.ESPERA~0_combout\ = ( \FSM|Ereg.ESTIMULO~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \FSM|Eprox.ESPERA~0_combout\);

-- Location: FF_X1_Y20_N44
\FSM|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Eprox.ESPERA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.ESPERA~q\);

-- Location: LABCELL_X1_Y20_N15
\FSM|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor0~combout\ = ( \FSM|Ereg.ESTIMULO~q\ ) # ( !\FSM|Ereg.ESTIMULO~q\ & ( (\FSM|Ereg.CONTANDO~q\) # (\FSM|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ESPERA~q\,
	datac => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \FSM|WideNor0~combout\);

-- Location: LABCELL_X1_Y20_N51
reset_interno : cyclonev_lcell_comb
-- Equation(s):
-- \reset_interno~combout\ = (\reset~input_o\) # (\resposta~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datac => \ALT_INV_reset~input_o\,
	combout => \reset_interno~combout\);

-- Location: LABCELL_X1_Y20_N45
\LATCH|iq\ : cyclonev_lcell_comb
-- Equation(s):
-- \LATCH|iq~combout\ = ( \LATCH|iq~combout\ & ( !\FSM|Ereg.ESTIMULO~q\ ) ) # ( !\LATCH|iq~combout\ & ( (!\FSM|Ereg.ESTIMULO~q\ & \reset_interno~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datac => \ALT_INV_reset_interno~combout\,
	dataf => \LATCH|ALT_INV_iq~combout\,
	combout => \LATCH|iq~combout\);

-- Location: LABCELL_X1_Y20_N0
\FSM|Ereg.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Ereg.ERRO~0_combout\ = ( \FSM|Ereg.ERRO~q\ & ( \CONT_INICIO|Equal0~0_combout\ ) ) # ( \FSM|Ereg.ERRO~q\ & ( !\CONT_INICIO|Equal0~0_combout\ ) ) # ( !\FSM|Ereg.ERRO~q\ & ( !\CONT_INICIO|Equal0~0_combout\ & ( (\resposta~input_o\ & 
-- \FSM|Ereg.CONTANDO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datac => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datae => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Ereg.ERRO~0_combout\);

-- Location: FF_X1_Y20_N2
\FSM|Ereg.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Ereg.ERRO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.ERRO~q\);

-- Location: LABCELL_X1_Y20_N27
\FSM|Ereg.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Ereg.FIM~0_combout\ = ( \FSM|Ereg.ESPERA~q\ ) # ( !\FSM|Ereg.ESPERA~q\ & ( \FSM|Ereg.FIM~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \FSM|Ereg.FIM~0_combout\);

-- Location: FF_X1_Y20_N28
\FSM|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FSM|Ereg.FIM~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|Ereg.FIM~q\);

-- Location: LABCELL_X1_Y20_N24
\FSM|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor1~combout\ = ( \FSM|Ereg.FIM~q\ ) # ( !\FSM|Ereg.FIM~q\ & ( \FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.FIM~q\,
	combout => \FSM|WideNor1~combout\);

-- Location: LABCELL_X1_Y20_N57
\FSM|estado[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|estado\(0) = ( \FSM|Ereg.CONTANDO~q\ ) # ( !\FSM|Ereg.CONTANDO~q\ & ( \FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	combout => \FSM|estado\(0));

-- Location: LABCELL_X1_Y19_N39
\FSM|estado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|estado\(1) = ( \FSM|Ereg.ERRO~q\ & ( \FSM|Ereg.ESTIMULO~q\ ) ) # ( !\FSM|Ereg.ERRO~q\ & ( \FSM|Ereg.ESTIMULO~q\ ) ) # ( \FSM|Ereg.ERRO~q\ & ( !\FSM|Ereg.ESTIMULO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \FSM|estado\(1));

-- Location: LABCELL_X1_Y20_N39
\FSM|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr4~combout\ = ( \FSM|Ereg.ESPERA~q\ ) # ( !\FSM|Ereg.ESPERA~q\ & ( \FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \FSM|WideOr4~combout\);

-- Location: LABCELL_X32_Y38_N3
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


