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

-- DATE "01/26/2020 20:03:53"

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
	estado : OUT std_logic_vector(6 DOWNTO 0);
	db_clock : OUT std_logic;
	db_erro : OUT std_logic;
	db_estimulo : OUT std_logic
	);
END interface_leds_botoes_v2;

-- Design Ports Information
-- ligado	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estimulo	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_clock	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_erro	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estimulo	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_estado : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_db_clock : std_logic;
SIGNAL ww_db_erro : std_logic;
SIGNAL ww_db_estimulo : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \FSM|Ereg.INICIAL~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSM|Ereg.INICIAL~q\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \CONT_INICIO|IQ[0]~3_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|IQ~2_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|IQ[2]~1_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ~0_combout\ : std_logic;
SIGNAL \CONT_INICIO|Equal0~0_combout\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.CONTANDO~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \FSM|Eprox.ESPERA~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ESPERA~q\ : std_logic;
SIGNAL \FSM|WideNor0~combout\ : std_logic;
SIGNAL \LATCH|iq~combout\ : std_logic;
SIGNAL \PULSE|pulso~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ERRO~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.ERRO~q\ : std_logic;
SIGNAL \FSM|Ereg.FIM~0_combout\ : std_logic;
SIGNAL \FSM|Ereg.FIM~q\ : std_logic;
SIGNAL \FSM|WideNor1~combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[2]~1_combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[3]~2_combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[4]~3_combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[5]~4_combout\ : std_logic;
SIGNAL \DISPLAY_ESTADOS|sseg[6]~5_combout\ : std_logic;
SIGNAL \CONT_INICIO|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \LATCH|ALT_INV_iq~combout\ : std_logic;
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
\CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \CONT_INICIO|IQ[0]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\LATCH|ALT_INV_iq~combout\ <= NOT \LATCH|iq~combout\;
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y16_N5
\pulso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PULSE|pulso~0_combout\,
	devoe => ww_devoe,
	o => ww_pulso);

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X54_Y16_N39
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X54_Y19_N5
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Ereg.ERRO~q\,
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X54_Y18_N79
\estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_estado(2));

-- Location: IOOBUF_X54_Y20_N5
\estado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_estado(3));

-- Location: IOOBUF_X54_Y18_N45
\estado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_estado(4));

-- Location: IOOBUF_X54_Y16_N56
\estado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_estado(5));

-- Location: IOOBUF_X54_Y19_N39
\estado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY_ESTADOS|sseg[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_estado(6));

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOIBUF_X54_Y20_N38
\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LABCELL_X53_Y18_N21
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

-- Location: IOIBUF_X54_Y17_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X53_Y18_N23
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

-- Location: IOIBUF_X54_Y17_N38
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: FF_X53_Y18_N43
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

-- Location: LABCELL_X53_Y18_N42
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

-- Location: FF_X53_Y18_N44
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

-- Location: FF_X53_Y18_N14
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

-- Location: LABCELL_X53_Y18_N12
\CONT_INICIO|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ~2_combout\ = ( \CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( (!\CONT_INICIO|IQ\(1) & ((!\CONT_INICIO|IQ\(3)) # (\CONT_INICIO|IQ\(2)))) ) ) # ( !\CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( \CONT_INICIO|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ\(2),
	datac => \CONT_INICIO|ALT_INV_IQ\(3),
	datad => \CONT_INICIO|ALT_INV_IQ\(1),
	dataf => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \CONT_INICIO|IQ~2_combout\);

-- Location: FF_X53_Y18_N13
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

-- Location: LABCELL_X53_Y18_N30
\CONT_INICIO|IQ[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ[2]~1_combout\ = ( \CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( !\CONT_INICIO|IQ\(2) $ (((!\FSM|Ereg.CONTANDO~q\) # (!\CONT_INICIO|IQ[0]~DUPLICATE_q\))) ) ) # ( !\CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( \CONT_INICIO|IQ\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \CONT_INICIO|ALT_INV_IQ\(2),
	dataf => \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT_INICIO|IQ[2]~1_combout\);

-- Location: FF_X53_Y18_N32
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

-- Location: LABCELL_X53_Y18_N27
\CONT_INICIO|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|IQ~0_combout\ = ( \CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( !\CONT_INICIO|IQ\(3) $ (((!\CONT_INICIO|IQ\(2)) # (!\CONT_INICIO|IQ[0]~DUPLICATE_q\))) ) ) # ( !\CONT_INICIO|IQ[1]~DUPLICATE_q\ & ( (\CONT_INICIO|IQ\(3) & 
-- ((!\CONT_INICIO|IQ[0]~DUPLICATE_q\) # (\CONT_INICIO|IQ\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT_INICIO|ALT_INV_IQ\(2),
	datac => \CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \CONT_INICIO|ALT_INV_IQ\(3),
	dataf => \CONT_INICIO|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT_INICIO|IQ~0_combout\);

-- Location: FF_X53_Y18_N29
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

-- Location: LABCELL_X53_Y18_N39
\CONT_INICIO|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT_INICIO|Equal0~0_combout\ = ( !\CONT_INICIO|IQ\(1) & ( (\CONT_INICIO|IQ\(3) & (!\CONT_INICIO|IQ\(2) & \CONT_INICIO|IQ\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT_INICIO|ALT_INV_IQ\(3),
	datac => \CONT_INICIO|ALT_INV_IQ\(2),
	datad => \CONT_INICIO|ALT_INV_IQ\(0),
	dataf => \CONT_INICIO|ALT_INV_IQ\(1),
	combout => \CONT_INICIO|Equal0~0_combout\);

-- Location: LABCELL_X53_Y18_N57
\FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = ( \CONT_INICIO|Equal0~0_combout\ & ( (!\FSM|Ereg.INICIAL~q\ & \iniciar~input_o\) ) ) # ( !\CONT_INICIO|Equal0~0_combout\ & ( (!\FSM|Ereg.INICIAL~q\ & (((!\resposta~input_o\ & \FSM|Ereg.CONTANDO~q\)) # (\iniciar~input_o\))) # 
-- (\FSM|Ereg.INICIAL~q\ & (!\resposta~input_o\ & ((\FSM|Ereg.CONTANDO~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.INICIAL~q\,
	datab => \ALT_INV_resposta~input_o\,
	datac => \ALT_INV_iniciar~input_o\,
	datad => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Selector0~0_combout\);

-- Location: FF_X53_Y18_N59
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

-- Location: LABCELL_X53_Y18_N36
\FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = ( \CONT_INICIO|Equal0~0_combout\ & ( ((!\resposta~input_o\ & \FSM|Ereg.ESTIMULO~q\)) # (\FSM|Ereg.CONTANDO~q\) ) ) # ( !\CONT_INICIO|Equal0~0_combout\ & ( (!\resposta~input_o\ & \FSM|Ereg.ESTIMULO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \ALT_INV_resposta~input_o\,
	datad => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Selector2~0_combout\);

-- Location: FF_X53_Y18_N38
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

-- Location: LABCELL_X53_Y18_N54
\FSM|Eprox.ESPERA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Eprox.ESPERA~0_combout\ = ( \FSM|Ereg.ESTIMULO~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resposta~input_o\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \FSM|Eprox.ESPERA~0_combout\);

-- Location: FF_X53_Y18_N56
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

-- Location: LABCELL_X53_Y18_N33
\FSM|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor0~combout\ = ( \FSM|Ereg.ESTIMULO~q\ ) # ( !\FSM|Ereg.ESTIMULO~q\ & ( (\FSM|Ereg.ESPERA~q\) # (\FSM|Ereg.CONTANDO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \FSM|ALT_INV_Ereg.ESPERA~q\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \FSM|WideNor0~combout\);

-- Location: LABCELL_X53_Y18_N9
\LATCH|iq\ : cyclonev_lcell_comb
-- Equation(s):
-- \LATCH|iq~combout\ = ( \LATCH|iq~combout\ & ( !\reset~input_o\ ) ) # ( !\LATCH|iq~combout\ & ( (!\reset~input_o\ & \resposta~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_resposta~input_o\,
	dataf => \LATCH|ALT_INV_iq~combout\,
	combout => \LATCH|iq~combout\);

-- Location: LABCELL_X53_Y18_N15
\PULSE|pulso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PULSE|pulso~0_combout\ = ( \FSM|Ereg.ESTIMULO~q\ & ( !\LATCH|iq~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LATCH|ALT_INV_iq~combout\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \PULSE|pulso~0_combout\);

-- Location: LABCELL_X53_Y18_N18
\FSM|Ereg.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Ereg.ERRO~0_combout\ = ( \CONT_INICIO|Equal0~0_combout\ & ( \FSM|Ereg.ERRO~q\ ) ) # ( !\CONT_INICIO|Equal0~0_combout\ & ( ((\FSM|Ereg.CONTANDO~q\ & \resposta~input_o\)) # (\FSM|Ereg.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \ALT_INV_resposta~input_o\,
	datad => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \FSM|Ereg.ERRO~0_combout\);

-- Location: FF_X53_Y18_N20
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

-- Location: LABCELL_X53_Y18_N48
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

-- Location: FF_X53_Y18_N49
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

-- Location: LABCELL_X53_Y17_N51
\FSM|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor1~combout\ = ( \FSM|Ereg.FIM~q\ ) # ( !\FSM|Ereg.FIM~q\ & ( \FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ERRO~q\,
	datae => \FSM|ALT_INV_Ereg.FIM~q\,
	combout => \FSM|WideNor1~combout\);

-- Location: LABCELL_X53_Y18_N51
\DISPLAY_ESTADOS|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[0]~0_combout\ = ( \FSM|Ereg.CONTANDO~q\ & ( (!\FSM|Ereg.ERRO~q\ & ((!\FSM|Ereg.ESPERA~q\ & (!\FSM|Ereg.ESTIMULO~q\ & !\FSM|Ereg.FIM~q\)) # (\FSM|Ereg.ESPERA~q\ & ((!\FSM|Ereg.ESTIMULO~q\) # (!\FSM|Ereg.FIM~q\))))) ) ) # ( 
-- !\FSM|Ereg.CONTANDO~q\ & ( (\FSM|Ereg.ESPERA~q\ & !\FSM|Ereg.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011010100000000001101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ESPERA~q\,
	datab => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datac => \FSM|ALT_INV_Ereg.FIM~q\,
	datad => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	combout => \DISPLAY_ESTADOS|sseg[0]~0_combout\);

-- Location: LABCELL_X53_Y18_N45
\DISPLAY_ESTADOS|sseg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[2]~1_combout\ = ( \FSM|Ereg.ESPERA~q\ & ( (\FSM|Ereg.FIM~q\) # (\FSM|Ereg.ERRO~q\) ) ) # ( !\FSM|Ereg.ESPERA~q\ & ( ((\FSM|Ereg.ESTIMULO~q\ & (!\FSM|Ereg.FIM~q\ & !\FSM|Ereg.CONTANDO~q\))) # (\FSM|Ereg.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101011101010101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ERRO~q\,
	datab => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datac => \FSM|ALT_INV_Ereg.FIM~q\,
	datad => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \DISPLAY_ESTADOS|sseg[2]~1_combout\);

-- Location: LABCELL_X53_Y18_N24
\DISPLAY_ESTADOS|sseg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[3]~2_combout\ = ( \FSM|Ereg.ESPERA~q\ ) # ( !\FSM|Ereg.ESPERA~q\ & ( (\FSM|Ereg.ERRO~q\) # (\FSM|Ereg.CONTANDO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \DISPLAY_ESTADOS|sseg[3]~2_combout\);

-- Location: LABCELL_X53_Y18_N0
\DISPLAY_ESTADOS|sseg[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[4]~3_combout\ = ( \FSM|Ereg.ESTIMULO~q\ & ( (!\FSM|Ereg.ERRO~q\ & (!\FSM|Ereg.CONTANDO~q\ & (\FSM|Ereg.ESPERA~q\ & \FSM|Ereg.FIM~q\))) ) ) # ( !\FSM|Ereg.ESTIMULO~q\ & ( (!\FSM|Ereg.ERRO~q\ & (!\FSM|Ereg.FIM~q\ & 
-- ((\FSM|Ereg.ESPERA~q\) # (\FSM|Ereg.CONTANDO~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ERRO~q\,
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \FSM|ALT_INV_Ereg.ESPERA~q\,
	datad => \FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \DISPLAY_ESTADOS|sseg[4]~3_combout\);

-- Location: LABCELL_X53_Y18_N3
\DISPLAY_ESTADOS|sseg[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[5]~4_combout\ = ( \FSM|Ereg.ESPERA~q\ & ( (!\FSM|Ereg.ERRO~q\ & (\FSM|Ereg.FIM~q\ & ((!\FSM|Ereg.CONTANDO~q\) # (!\FSM|Ereg.ESTIMULO~q\)))) ) ) # ( !\FSM|Ereg.ESPERA~q\ & ( (!\FSM|Ereg.ERRO~q\ & (!\FSM|Ereg.FIM~q\ & 
-- ((\FSM|Ereg.ESTIMULO~q\) # (\FSM|Ereg.CONTANDO~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000001000001010000000001010000010000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ERRO~q\,
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \FSM|ALT_INV_Ereg.FIM~q\,
	datad => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \DISPLAY_ESTADOS|sseg[5]~4_combout\);

-- Location: LABCELL_X53_Y18_N6
\DISPLAY_ESTADOS|sseg[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_ESTADOS|sseg[6]~5_combout\ = ( \FSM|Ereg.ESPERA~q\ & ( (\FSM|Ereg.ESTIMULO~q\ & (!\FSM|Ereg.CONTANDO~q\ & (!\FSM|Ereg.ERRO~q\ & \FSM|Ereg.FIM~q\))) ) ) # ( !\FSM|Ereg.ESPERA~q\ & ( (!\FSM|Ereg.ESTIMULO~q\ & (!\FSM|Ereg.ERRO~q\ & 
-- !\FSM|Ereg.FIM~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datab => \FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \FSM|ALT_INV_Ereg.ERRO~q\,
	datad => \FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \DISPLAY_ESTADOS|sseg[6]~5_combout\);

-- Location: MLABCELL_X49_Y1_N3
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


