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

-- DATE "01/21/2020 00:26:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	medidor_largura IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	liga : IN std_logic;
	sinal : IN std_logic;
	display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display5 : BUFFER std_logic_vector(6 DOWNTO 0);
	fim : BUFFER std_logic;
	pronto : BUFFER std_logic;
	db_largura : BUFFER std_logic_vector(7 DOWNTO 0);
	db_clock : BUFFER std_logic;
	db_zeraCont : BUFFER std_logic;
	db_contacont : BUFFER std_logic
	);
END medidor_largura;

-- Design Ports Information
-- display0[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_largura[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_clock	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_zeraCont	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_contacont	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF medidor_largura IS
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
SIGNAL ww_liga : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fim : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_db_largura : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_db_clock : std_logic;
SIGNAL ww_db_zeraCont : std_logic;
SIGNAL ww_db_contacont : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sinal~input_o\ : std_logic;
SIGNAL \liga~input_o\ : std_logic;
SIGNAL \UC|Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \UC|Ereg.CONTA~q\ : std_logic;
SIGNAL \UC|Eprox.FIM~0_combout\ : std_logic;
SIGNAL \UC|Ereg.FIM~q\ : std_logic;
SIGNAL \UC|Selector3~0_combout\ : std_logic;
SIGNAL \UC|Ereg.ESPERA~q\ : std_logic;
SIGNAL \UC|Selector0~0_combout\ : std_logic;
SIGNAL \UC|Ereg.INICIAL~q\ : std_logic;
SIGNAL \UC|Selector1~0_combout\ : std_logic;
SIGNAL \UC|Ereg.LIGADO~q\ : std_logic;
SIGNAL \CONT|CONT1|IQ[3]~1_combout\ : std_logic;
SIGNAL \CONT|CONT1|IQ~2_combout\ : std_logic;
SIGNAL \CONT|CONT1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT1|IQ~0_combout\ : std_logic;
SIGNAL \CONT|CONT1|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT1|IQ~3_combout\ : std_logic;
SIGNAL \CONT|CONT1|IQ~4_combout\ : std_logic;
SIGNAL \DIS0|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS0|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS0|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS0|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS0|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS0|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS0|sseg[6]~6_combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ~2_combout\ : std_logic;
SIGNAL \UC|WideNor0~0_combout\ : std_logic;
SIGNAL \CONT|CONT1|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DIS0|Equal15~0_combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ[1]~1_combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT2|IQ~0_combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT2|IQ~3_combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT2|IQ~4_combout\ : std_logic;
SIGNAL \DIS1|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS1|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS1|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS1|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS1|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS1|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS1|sseg[6]~6_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[2]~1_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[3]~2_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[4]~3_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[5]~4_combout\ : std_logic;
SIGNAL \DIS_EST|sseg[6]~5_combout\ : std_logic;
SIGNAL \CONT|CONT2|rco~combout\ : std_logic;
SIGNAL \CONT|CONT2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT|CONT1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sinal~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_liga~input_o\ : std_logic;
SIGNAL \UC|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \DIS0|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \DIS_EST|ALT_INV_sseg[3]~2_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \UC|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \UC|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \UC|ALT_INV_Ereg.LIGADO~q\ : std_logic;
SIGNAL \UC|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \DIS1|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \CONT|CONT2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIS0|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \CONT|CONT1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_liga <= liga;
ww_sinal <= sinal;
display0 <= ww_display0;
display1 <= ww_display1;
display5 <= ww_display5;
fim <= ww_fim;
pronto <= ww_pronto;
db_largura <= ww_db_largura;
db_clock <= ww_db_clock;
db_zeraCont <= ww_db_zeraCont;
db_contacont <= ww_db_contacont;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \CONT|CONT2|IQ[2]~DUPLICATE_q\;
\CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \CONT|CONT2|IQ[0]~DUPLICATE_q\;
\CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \CONT|CONT2|IQ[1]~DUPLICATE_q\;
\CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \CONT|CONT1|IQ[2]~DUPLICATE_q\;
\CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \CONT|CONT1|IQ[0]~DUPLICATE_q\;
\CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \CONT|CONT1|IQ[1]~DUPLICATE_q\;
\ALT_INV_sinal~input_o\ <= NOT \sinal~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_liga~input_o\ <= NOT \liga~input_o\;
\UC|ALT_INV_WideNor0~0_combout\ <= NOT \UC|WideNor0~0_combout\;
\DIS0|ALT_INV_Equal15~0_combout\ <= NOT \DIS0|Equal15~0_combout\;
\DIS_EST|ALT_INV_sseg[3]~2_combout\ <= NOT \DIS_EST|sseg[3]~2_combout\;
\UC|ALT_INV_Ereg.FIM~q\ <= NOT \UC|Ereg.FIM~q\;
\UC|ALT_INV_Ereg.ESPERA~q\ <= NOT \UC|Ereg.ESPERA~q\;
\UC|ALT_INV_Ereg.CONTA~q\ <= NOT \UC|Ereg.CONTA~q\;
\UC|ALT_INV_Ereg.LIGADO~q\ <= NOT \UC|Ereg.LIGADO~q\;
\UC|ALT_INV_Ereg.INICIAL~q\ <= NOT \UC|Ereg.INICIAL~q\;
\DIS1|ALT_INV_sseg[2]~2_combout\ <= NOT \DIS1|sseg[2]~2_combout\;
\CONT|CONT2|ALT_INV_IQ\(3) <= NOT \CONT|CONT2|IQ\(3);
\CONT|CONT2|ALT_INV_IQ\(2) <= NOT \CONT|CONT2|IQ\(2);
\CONT|CONT2|ALT_INV_IQ\(0) <= NOT \CONT|CONT2|IQ\(0);
\CONT|CONT2|ALT_INV_IQ\(1) <= NOT \CONT|CONT2|IQ\(1);
\DIS0|ALT_INV_sseg[2]~2_combout\ <= NOT \DIS0|sseg[2]~2_combout\;
\CONT|CONT1|ALT_INV_IQ\(3) <= NOT \CONT|CONT1|IQ\(3);
\CONT|CONT1|ALT_INV_IQ\(2) <= NOT \CONT|CONT1|IQ\(2);
\CONT|CONT1|ALT_INV_IQ\(0) <= NOT \CONT|CONT1|IQ\(0);
\CONT|CONT1|ALT_INV_IQ\(1) <= NOT \CONT|CONT1|IQ\(1);

-- Location: IOOBUF_X68_Y0_N2
\display0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(0));

-- Location: IOOBUF_X72_Y0_N2
\display0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_display0(1));

-- Location: IOOBUF_X72_Y0_N36
\display0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|ALT_INV_sseg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_display0(2));

-- Location: IOOBUF_X70_Y0_N53
\display0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_display0(3));

-- Location: IOOBUF_X70_Y0_N19
\display0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_display0(4));

-- Location: IOOBUF_X89_Y8_N39
\display0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_display0(5));

-- Location: IOOBUF_X89_Y4_N45
\display0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_display0(6));

-- Location: IOOBUF_X72_Y0_N53
\display1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X89_Y4_N62
\display1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X89_Y8_N56
\display1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|ALT_INV_sseg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X89_Y8_N22
\display1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X72_Y0_N19
\display1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X70_Y0_N2
\display1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X89_Y4_N79
\display1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X68_Y0_N36
\display5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_display5(0));

-- Location: IOOBUF_X40_Y81_N2
\display5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display5(1));

-- Location: IOOBUF_X68_Y0_N19
\display5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|sseg[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_display5(2));

-- Location: IOOBUF_X70_Y0_N36
\display5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|ALT_INV_sseg[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_display5(3));

-- Location: IOOBUF_X89_Y9_N22
\display5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|sseg[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_display5(4));

-- Location: IOOBUF_X89_Y36_N22
\display5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|sseg[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_display5(5));

-- Location: IOOBUF_X89_Y8_N5
\display5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_EST|sseg[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_display5(6));

-- Location: IOOBUF_X68_Y0_N53
\fim~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT2|rco~combout\,
	devoe => ww_devoe,
	o => ww_fim);

-- Location: IOOBUF_X89_Y4_N96
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Ereg.FIM~q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOOBUF_X89_Y6_N39
\db_largura[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT1|IQ\(0),
	devoe => ww_devoe,
	o => ww_db_largura(0));

-- Location: IOOBUF_X89_Y9_N5
\db_largura[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT1|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_db_largura(1));

-- Location: IOOBUF_X89_Y36_N5
\db_largura[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT1|IQ[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_db_largura(2));

-- Location: IOOBUF_X89_Y36_N39
\db_largura[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT1|IQ\(3),
	devoe => ww_devoe,
	o => ww_db_largura(3));

-- Location: IOOBUF_X89_Y9_N56
\db_largura[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT2|IQ\(0),
	devoe => ww_devoe,
	o => ww_db_largura(4));

-- Location: IOOBUF_X89_Y6_N22
\db_largura[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT2|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_db_largura(5));

-- Location: IOOBUF_X89_Y6_N56
\db_largura[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT2|IQ[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_db_largura(6));

-- Location: IOOBUF_X89_Y36_N56
\db_largura[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONT|CONT2|IQ\(3),
	devoe => ww_devoe,
	o => ww_db_largura(7));

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X89_Y9_N39
\db_zeraCont~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => ww_db_zeraCont);

-- Location: IOOBUF_X89_Y6_N5
\db_contacont~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Ereg.CONTA~q\,
	devoe => ww_devoe,
	o => ww_db_contacont);

-- Location: IOIBUF_X89_Y35_N61
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

-- Location: IOIBUF_X89_Y35_N78
\sinal~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sinal,
	o => \sinal~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\liga~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_liga,
	o => \liga~input_o\);

-- Location: LABCELL_X88_Y9_N48
\UC|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Selector2~0_combout\ = ( \UC|Ereg.ESPERA~q\ & ( (\sinal~input_o\ & (((\UC|Ereg.CONTA~q\) # (\UC|Ereg.LIGADO~q\)) # (\liga~input_o\))) ) ) # ( !\UC|Ereg.ESPERA~q\ & ( (\sinal~input_o\ & ((\UC|Ereg.CONTA~q\) # (\UC|Ereg.LIGADO~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100010011001100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_liga~input_o\,
	datab => \ALT_INV_sinal~input_o\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \UC|Selector2~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y9_N50
\UC|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \UC|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|Ereg.CONTA~q\);

-- Location: LABCELL_X88_Y9_N45
\UC|Eprox.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Eprox.FIM~0_combout\ = ( \UC|Ereg.CONTA~q\ & ( !\sinal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sinal~input_o\,
	dataf => \UC|ALT_INV_Ereg.CONTA~q\,
	combout => \UC|Eprox.FIM~0_combout\);

-- Location: FF_X88_Y9_N47
\UC|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \UC|Eprox.FIM~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|Ereg.FIM~q\);

-- Location: LABCELL_X88_Y9_N39
\UC|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Selector3~0_combout\ = ( \sinal~input_o\ & ( \UC|Ereg.FIM~q\ ) ) # ( !\sinal~input_o\ & ( ((\liga~input_o\ & \UC|Ereg.ESPERA~q\)) # (\UC|Ereg.FIM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_Ereg.FIM~q\,
	datac => \ALT_INV_liga~input_o\,
	datad => \UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \ALT_INV_sinal~input_o\,
	combout => \UC|Selector3~0_combout\);

-- Location: FF_X88_Y9_N41
\UC|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \UC|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|Ereg.ESPERA~q\);

-- Location: LABCELL_X88_Y9_N51
\UC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Selector0~0_combout\ = ( \UC|Ereg.ESPERA~q\ & ( \liga~input_o\ ) ) # ( !\UC|Ereg.ESPERA~q\ & ( (\UC|Ereg.INICIAL~q\) # (\liga~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_liga~input_o\,
	datad => \UC|ALT_INV_Ereg.INICIAL~q\,
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \UC|Selector0~0_combout\);

-- Location: FF_X88_Y9_N53
\UC|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \UC|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|Ereg.INICIAL~q\);

-- Location: LABCELL_X88_Y9_N24
\UC|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Selector1~0_combout\ = ( \UC|Ereg.INICIAL~q\ & ( (!\sinal~input_o\ & \UC|Ereg.LIGADO~q\) ) ) # ( !\UC|Ereg.INICIAL~q\ & ( ((!\sinal~input_o\ & \UC|Ereg.LIGADO~q\)) # (\liga~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sinal~input_o\,
	datac => \ALT_INV_liga~input_o\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.INICIAL~q\,
	combout => \UC|Selector1~0_combout\);

-- Location: FF_X88_Y9_N26
\UC|Ereg.LIGADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \UC|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|Ereg.LIGADO~q\);

-- Location: LABCELL_X88_Y9_N27
\CONT|CONT1|IQ[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT1|IQ[3]~1_combout\ = ( \UC|Ereg.ESPERA~q\ ) # ( !\UC|Ereg.ESPERA~q\ & ( (\UC|Ereg.LIGADO~q\) # (\UC|Ereg.CONTA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.CONTA~q\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \CONT|CONT1|IQ[3]~1_combout\);

-- Location: FF_X88_Y9_N34
\CONT|CONT1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~2_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ\(0));

-- Location: LABCELL_X88_Y9_N33
\CONT|CONT1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT1|IQ~2_combout\ = ( !\UC|Ereg.ESPERA~q\ & ( (!\UC|Ereg.LIGADO~q\ & !\CONT|CONT1|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT1|ALT_INV_IQ\(0),
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \CONT|CONT1|IQ~2_combout\);

-- Location: FF_X88_Y9_N35
\CONT|CONT1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~2_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ[0]~DUPLICATE_q\);

-- Location: FF_X88_Y9_N20
\CONT|CONT1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~0_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ\(1));

-- Location: LABCELL_X88_Y9_N18
\CONT|CONT1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT1|IQ~0_combout\ = ( \CONT|CONT1|IQ\(0) & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & !\CONT|CONT1|IQ\(1))) ) ) # ( !\CONT|CONT1|IQ\(0) & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & \CONT|CONT1|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT1|ALT_INV_IQ\(1),
	dataf => \CONT|CONT1|ALT_INV_IQ\(0),
	combout => \CONT|CONT1|IQ~0_combout\);

-- Location: FF_X88_Y9_N19
\CONT|CONT1|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~0_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N21
\CONT|CONT1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT1|IQ~3_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & (!\CONT|CONT1|IQ[0]~DUPLICATE_q\ $ (!\CONT|CONT1|IQ\(2))))) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.ESPERA~q\ & 
-- (!\UC|Ereg.LIGADO~q\ & \CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT|CONT1|IQ~3_combout\);

-- Location: FF_X88_Y9_N22
\CONT|CONT1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~3_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ\(2));

-- Location: LABCELL_X88_Y9_N0
\CONT|CONT1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT1|IQ~4_combout\ = ( \CONT|CONT1|IQ\(3) & ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & ((!\CONT|CONT1|IQ[0]~DUPLICATE_q\) # (!\CONT|CONT1|IQ\(2))))) ) ) ) # ( !\CONT|CONT1|IQ\(3) & ( 
-- \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (\CONT|CONT1|IQ[0]~DUPLICATE_q\ & (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & \CONT|CONT1|IQ\(2)))) ) ) ) # ( \CONT|CONT1|IQ\(3) & ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.ESPERA~q\ & !\UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000010000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT1|ALT_INV_IQ\(2),
	datae => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT|CONT1|IQ~4_combout\);

-- Location: FF_X88_Y9_N2
\CONT|CONT1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~4_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ\(3));

-- Location: LABCELL_X88_Y8_N3
\DIS0|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[0]~0_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(2) & (\CONT|CONT1|IQ\(0) & \CONT|CONT1|IQ\(3))) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(2) & (\CONT|CONT1|IQ\(0) & !\CONT|CONT1|IQ\(3))) # 
-- (\CONT|CONT1|IQ\(2) & (!\CONT|CONT1|IQ\(0) $ (\CONT|CONT1|IQ\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(2),
	datac => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \DIS0|sseg[0]~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\DIS0|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[1]~1_combout\ = ( \CONT|CONT1|IQ\(2) & ( (!\CONT|CONT1|IQ[1]~DUPLICATE_q\ & (!\CONT|CONT1|IQ\(3) $ (!\CONT|CONT1|IQ\(0)))) # (\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ((!\CONT|CONT1|IQ\(0)) # (\CONT|CONT1|IQ\(3)))) ) ) # ( !\CONT|CONT1|IQ\(2) & ( 
-- (\CONT|CONT1|IQ[1]~DUPLICATE_q\ & (\CONT|CONT1|IQ\(3) & \CONT|CONT1|IQ\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \CONT|CONT1|ALT_INV_IQ\(3),
	datad => \CONT|CONT1|ALT_INV_IQ\(0),
	dataf => \CONT|CONT1|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[1]~1_combout\);

-- Location: LABCELL_X88_Y8_N57
\DIS0|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[2]~2_combout\ = ( \CONT|CONT1|IQ\(2) & ( (!\CONT|CONT1|IQ\(3)) # ((!\CONT|CONT1|IQ[1]~DUPLICATE_q\ & \CONT|CONT1|IQ\(0))) ) ) # ( !\CONT|CONT1|IQ\(2) & ( (!\CONT|CONT1|IQ[1]~DUPLICATE_q\) # ((\CONT|CONT1|IQ\(3)) # (\CONT|CONT1|IQ\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[2]~2_combout\);

-- Location: LABCELL_X88_Y8_N24
\DIS0|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[3]~3_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(2) & (!\CONT|CONT1|IQ\(0) & \CONT|CONT1|IQ\(3))) # (\CONT|CONT1|IQ\(2) & (\CONT|CONT1|IQ\(0))) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(3) & 
-- (!\CONT|CONT1|IQ\(2) $ (!\CONT|CONT1|IQ\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(2),
	datab => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \DIS0|sseg[3]~3_combout\);

-- Location: LABCELL_X88_Y8_N27
\DIS0|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[4]~4_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (\CONT|CONT1|IQ\(0) & !\CONT|CONT1|IQ\(3)) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(2) & (\CONT|CONT1|IQ\(0))) # (\CONT|CONT1|IQ\(2) & ((!\CONT|CONT1|IQ\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(2),
	datab => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \DIS0|sseg[4]~4_combout\);

-- Location: LABCELL_X88_Y8_N30
\DIS0|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[5]~5_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(3) & ((!\CONT|CONT1|IQ\(2)) # (\CONT|CONT1|IQ\(0)))) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (\CONT|CONT1|IQ\(0) & (!\CONT|CONT1|IQ\(2) $ (\CONT|CONT1|IQ\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(2),
	datab => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \DIS0|sseg[5]~5_combout\);

-- Location: LABCELL_X88_Y8_N33
\DIS0|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[6]~6_combout\ = ( \CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (\CONT|CONT1|IQ\(2) & (\CONT|CONT1|IQ\(0) & !\CONT|CONT1|IQ\(3))) ) ) # ( !\CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\CONT|CONT1|IQ\(2) & ((!\CONT|CONT1|IQ\(3)))) # (\CONT|CONT1|IQ\(2) & 
-- (!\CONT|CONT1|IQ\(0) & \CONT|CONT1|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(2),
	datab => \CONT|CONT1|ALT_INV_IQ\(0),
	datad => \CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \DIS0|sseg[6]~6_combout\);

-- Location: LABCELL_X88_Y9_N12
\CONT|CONT2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|IQ~2_combout\ = ( !\UC|Ereg.ESPERA~q\ & ( (!\UC|Ereg.LIGADO~q\ & !\CONT|CONT2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT2|ALT_INV_IQ\(0),
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \CONT|CONT2|IQ~2_combout\);

-- Location: LABCELL_X88_Y9_N42
\UC|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|WideNor0~0_combout\ = ( !\UC|Ereg.ESPERA~q\ & ( !\UC|Ereg.LIGADO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \UC|WideNor0~0_combout\);

-- Location: FF_X88_Y9_N23
\CONT|CONT1|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT1|IQ~3_combout\,
	ena => \CONT|CONT1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT1|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N30
\DIS0|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|Equal15~0_combout\ = ( \CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (\CONT|CONT1|IQ\(3) & (\CONT|CONT1|IQ\(1) & \CONT|CONT1|IQ[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT1|ALT_INV_IQ\(3),
	datac => \CONT|CONT1|ALT_INV_IQ\(1),
	datad => \CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\,
	dataf => \CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \DIS0|Equal15~0_combout\);

-- Location: LABCELL_X88_Y9_N57
\CONT|CONT2|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|IQ[1]~1_combout\ = ( \DIS0|Equal15~0_combout\ & ( (!\UC|WideNor0~0_combout\) # (\UC|Ereg.CONTA~q\) ) ) # ( !\DIS0|Equal15~0_combout\ & ( !\UC|WideNor0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.CONTA~q\,
	datac => \UC|ALT_INV_WideNor0~0_combout\,
	dataf => \DIS0|ALT_INV_Equal15~0_combout\,
	combout => \CONT|CONT2|IQ[1]~1_combout\);

-- Location: FF_X88_Y9_N13
\CONT|CONT2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~2_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ\(0));

-- Location: FF_X88_Y9_N14
\CONT|CONT2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~2_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ[0]~DUPLICATE_q\);

-- Location: FF_X88_Y9_N17
\CONT|CONT2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~3_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ\(2));

-- Location: FF_X88_Y9_N56
\CONT|CONT2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~0_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ\(1));

-- Location: LABCELL_X88_Y9_N54
\CONT|CONT2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|IQ~0_combout\ = ( \CONT|CONT2|IQ\(0) & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & !\CONT|CONT2|IQ\(1))) ) ) # ( !\CONT|CONT2|IQ\(0) & ( (!\UC|Ereg.ESPERA~q\ & (!\UC|Ereg.LIGADO~q\ & \CONT|CONT2|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \CONT|CONT2|ALT_INV_IQ\(1),
	dataf => \CONT|CONT2|ALT_INV_IQ\(0),
	combout => \CONT|CONT2|IQ~0_combout\);

-- Location: FF_X88_Y9_N55
\CONT|CONT2|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~0_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N15
\CONT|CONT2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|IQ~3_combout\ = ( \CONT|CONT2|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.LIGADO~q\ & (!\UC|Ereg.ESPERA~q\ & (!\CONT|CONT2|IQ[0]~DUPLICATE_q\ $ (!\CONT|CONT2|IQ\(2))))) ) ) # ( !\CONT|CONT2|IQ[1]~DUPLICATE_q\ & ( (!\UC|Ereg.LIGADO~q\ & 
-- (!\UC|Ereg.ESPERA~q\ & \CONT|CONT2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \CONT|CONT2|ALT_INV_IQ\(2),
	dataf => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \CONT|CONT2|IQ~3_combout\);

-- Location: FF_X88_Y9_N16
\CONT|CONT2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~3_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N6
\CONT|CONT2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|IQ~4_combout\ = ( \CONT|CONT2|IQ\(3) & ( \CONT|CONT2|IQ\(2) & ( (!\UC|Ereg.LIGADO~q\ & (!\UC|Ereg.ESPERA~q\ & ((!\CONT|CONT2|IQ\(1)) # (!\CONT|CONT2|IQ[0]~DUPLICATE_q\)))) ) ) ) # ( !\CONT|CONT2|IQ\(3) & ( \CONT|CONT2|IQ\(2) & ( 
-- (\CONT|CONT2|IQ\(1) & (\CONT|CONT2|IQ[0]~DUPLICATE_q\ & (!\UC|Ereg.LIGADO~q\ & !\UC|Ereg.ESPERA~q\))) ) ) ) # ( \CONT|CONT2|IQ\(3) & ( !\CONT|CONT2|IQ\(2) & ( (!\UC|Ereg.LIGADO~q\ & !\UC|Ereg.ESPERA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000010000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ\(1),
	datab => \CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \UC|ALT_INV_Ereg.ESPERA~q\,
	datae => \CONT|CONT2|ALT_INV_IQ\(3),
	dataf => \CONT|CONT2|ALT_INV_IQ\(2),
	combout => \CONT|CONT2|IQ~4_combout\);

-- Location: FF_X88_Y9_N7
\CONT|CONT2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONT|CONT2|IQ~4_combout\,
	ena => \CONT|CONT2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT|CONT2|IQ\(3));

-- Location: LABCELL_X88_Y8_N48
\DIS1|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[0]~0_combout\ = ( \CONT|CONT2|IQ\(3) & ( (\CONT|CONT2|IQ\(0) & (!\CONT|CONT2|IQ[2]~DUPLICATE_q\ $ (!\CONT|CONT2|IQ[1]~DUPLICATE_q\))) ) ) # ( !\CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[1]~DUPLICATE_q\ & (!\CONT|CONT2|IQ\(0) $ 
-- (!\CONT|CONT2|IQ[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT|CONT2|ALT_INV_IQ\(0),
	datac => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[0]~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\DIS1|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[1]~1_combout\ = ( \CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ\(0) & (\CONT|CONT2|IQ[2]~DUPLICATE_q\)) # (\CONT|CONT2|IQ\(0) & ((\CONT|CONT2|IQ[1]~DUPLICATE_q\))) ) ) # ( !\CONT|CONT2|IQ\(3) & ( (\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (!\CONT|CONT2|IQ\(0) 
-- $ (!\CONT|CONT2|IQ[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \CONT|CONT2|ALT_INV_IQ\(0),
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[1]~1_combout\);

-- Location: LABCELL_X88_Y8_N18
\DIS1|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[2]~2_combout\ = ( \CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[2]~DUPLICATE_q\) # ((\CONT|CONT2|IQ\(0) & !\CONT|CONT2|IQ[1]~DUPLICATE_q\)) ) ) # ( !\CONT|CONT2|IQ\(3) & ( ((!\CONT|CONT2|IQ[1]~DUPLICATE_q\) # (\CONT|CONT2|IQ[2]~DUPLICATE_q\)) # 
-- (\CONT|CONT2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT|CONT2|ALT_INV_IQ\(0),
	datac => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[2]~2_combout\);

-- Location: LABCELL_X88_Y8_N21
\DIS1|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[3]~3_combout\ = ( \CONT|CONT2|IQ\(3) & ( (\CONT|CONT2|IQ[1]~DUPLICATE_q\ & (!\CONT|CONT2|IQ[2]~DUPLICATE_q\ $ (\CONT|CONT2|IQ\(0)))) ) ) # ( !\CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (\CONT|CONT2|IQ\(0) & 
-- !\CONT|CONT2|IQ[1]~DUPLICATE_q\)) # (\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (!\CONT|CONT2|IQ\(0) $ (\CONT|CONT2|IQ[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \CONT|CONT2|ALT_INV_IQ\(0),
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[3]~3_combout\);

-- Location: LABCELL_X88_Y8_N12
\DIS1|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[4]~4_combout\ = ( \CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (\CONT|CONT2|IQ\(0) & !\CONT|CONT2|IQ[1]~DUPLICATE_q\)) ) ) # ( !\CONT|CONT2|IQ\(3) & ( ((\CONT|CONT2|IQ[2]~DUPLICATE_q\ & !\CONT|CONT2|IQ[1]~DUPLICATE_q\)) # 
-- (\CONT|CONT2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \CONT|CONT2|ALT_INV_IQ\(0),
	datac => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[4]~4_combout\);

-- Location: LABCELL_X88_Y8_N15
\DIS1|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[5]~5_combout\ = ( \CONT|CONT2|IQ\(3) & ( (\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (\CONT|CONT2|IQ\(0) & !\CONT|CONT2|IQ[1]~DUPLICATE_q\)) ) ) # ( !\CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[2]~DUPLICATE_q\ & ((\CONT|CONT2|IQ[1]~DUPLICATE_q\) # 
-- (\CONT|CONT2|IQ\(0)))) # (\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (\CONT|CONT2|IQ\(0) & \CONT|CONT2|IQ[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \CONT|CONT2|ALT_INV_IQ\(0),
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[5]~5_combout\);

-- Location: LABCELL_X88_Y8_N0
\DIS1|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[6]~6_combout\ = ( \CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ\(0) & (!\CONT|CONT2|IQ[1]~DUPLICATE_q\ & \CONT|CONT2|IQ[2]~DUPLICATE_q\)) ) ) # ( !\CONT|CONT2|IQ\(3) & ( (!\CONT|CONT2|IQ[1]~DUPLICATE_q\ & ((!\CONT|CONT2|IQ[2]~DUPLICATE_q\))) # 
-- (\CONT|CONT2|IQ[1]~DUPLICATE_q\ & (\CONT|CONT2|IQ\(0) & \CONT|CONT2|IQ[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONT|CONT2|ALT_INV_IQ\(0),
	datac => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datad => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \DIS1|sseg[6]~6_combout\);

-- Location: LABCELL_X88_Y8_N45
\DIS_EST|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[0]~0_combout\ = ( \UC|Ereg.CONTA~q\ & ( (\UC|Ereg.INICIAL~q\ & \UC|Ereg.LIGADO~q\) ) ) # ( !\UC|Ereg.CONTA~q\ & ( (\UC|Ereg.INICIAL~q\ & ((!\UC|Ereg.ESPERA~q\) # (\UC|Ereg.LIGADO~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.INICIAL~q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.CONTA~q\,
	combout => \DIS_EST|sseg[0]~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\DIS_EST|sseg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[2]~1_combout\ = ( \UC|Ereg.INICIAL~q\ & ( (!\UC|Ereg.LIGADO~q\ & (((!\UC|Ereg.FIM~q\ & !\UC|Ereg.ESPERA~q\)) # (\UC|Ereg.CONTA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001111000000001000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.FIM~q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.CONTA~q\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.INICIAL~q\,
	combout => \DIS_EST|sseg[2]~1_combout\);

-- Location: LABCELL_X88_Y8_N6
\DIS_EST|sseg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[3]~2_combout\ = ( \UC|Ereg.ESPERA~q\ ) # ( !\UC|Ereg.ESPERA~q\ & ( (!\UC|Ereg.INICIAL~q\) # (\UC|Ereg.CONTA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UC|ALT_INV_Ereg.CONTA~q\,
	datad => \UC|ALT_INV_Ereg.INICIAL~q\,
	dataf => \UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \DIS_EST|sseg[3]~2_combout\);

-- Location: LABCELL_X88_Y9_N36
\DIS_EST|sseg[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[4]~3_combout\ = ( \UC|Ereg.INICIAL~q\ & ( ((!\UC|Ereg.CONTA~q\ & ((!\UC|Ereg.ESPERA~q\) # (\UC|Ereg.FIM~q\)))) # (\UC|Ereg.LIGADO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000111111111011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.ESPERA~q\,
	datab => \UC|ALT_INV_Ereg.FIM~q\,
	datac => \UC|ALT_INV_Ereg.CONTA~q\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.INICIAL~q\,
	combout => \DIS_EST|sseg[4]~3_combout\);

-- Location: LABCELL_X88_Y8_N39
\DIS_EST|sseg[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[5]~4_combout\ = ( \UC|Ereg.CONTA~q\ & ( \UC|Ereg.INICIAL~q\ ) ) # ( !\UC|Ereg.CONTA~q\ & ( (\UC|Ereg.INICIAL~q\ & (((!\UC|Ereg.FIM~q\ & !\UC|Ereg.ESPERA~q\)) # (\UC|Ereg.LIGADO~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001111000010000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.FIM~q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.INICIAL~q\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.CONTA~q\,
	combout => \DIS_EST|sseg[5]~4_combout\);

-- Location: LABCELL_X88_Y8_N42
\DIS_EST|sseg[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_EST|sseg[6]~5_combout\ = ( \UC|Ereg.CONTA~q\ & ( (!\UC|Ereg.INICIAL~q\) # (\UC|Ereg.LIGADO~q\) ) ) # ( !\UC|Ereg.CONTA~q\ & ( (!\UC|Ereg.INICIAL~q\) # (((!\UC|Ereg.ESPERA~q\ & !\UC|Ereg.FIM~q\)) # (\UC|Ereg.LIGADO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011111111111010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Ereg.INICIAL~q\,
	datab => \UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \UC|ALT_INV_Ereg.FIM~q\,
	datad => \UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \UC|ALT_INV_Ereg.CONTA~q\,
	combout => \DIS_EST|sseg[6]~5_combout\);

-- Location: LABCELL_X88_Y8_N9
\CONT|CONT2|rco\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONT|CONT2|rco~combout\ = ( \CONT|CONT2|IQ\(3) & ( (\CONT|CONT2|IQ[2]~DUPLICATE_q\ & (\DIS0|Equal15~0_combout\ & (\CONT|CONT2|IQ\(0) & \CONT|CONT2|IQ[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \DIS0|ALT_INV_Equal15~0_combout\,
	datac => \CONT|CONT2|ALT_INV_IQ\(0),
	datad => \CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \CONT|CONT2|ALT_INV_IQ\(3),
	combout => \CONT|CONT2|rco~combout\);

-- Location: LABCELL_X55_Y41_N3
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


