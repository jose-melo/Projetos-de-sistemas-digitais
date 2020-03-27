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

-- DATE "02/18/2020 20:35:25"

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

ENTITY 	JogoReacao_v1 IS
    PORT (
	jogar : IN std_logic;
	resposta : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	ligado : OUT std_logic;
	pulso : OUT std_logic;
	estimulo : OUT std_logic;
	erro : OUT std_logic;
	pronto : OUT std_logic;
	tempo : OUT std_logic_vector(15 DOWNTO 0);
	db_PInter : OUT std_logic;
	db_PMed : OUT std_logic;
	db_estado_7 : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg : OUT std_logic_vector(27 DOWNTO 0)
	);
END JogoReacao_v1;

-- Design Ports Information
-- ligado	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estimulo	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[9]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[12]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_PInter	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_PMed	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db_estado_7[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[16]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[17]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[19]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[20]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[21]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[22]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[24]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[25]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[26]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida7seg[27]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogar	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JogoReacao_v1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_jogar : std_logic;
SIGNAL ww_resposta : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_ligado : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_estimulo : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_tempo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_db_PInter : std_logic;
SIGNAL ww_db_PMed : std_logic;
SIGNAL ww_db_estado_7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg : std_logic_vector(27 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \jogar~input_o\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset_in2~combout\ : std_logic;
SIGNAL \INTERFACE|LATCH|iq~combout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~1_sumout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.INICIAL~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.INICIAL~q\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.FIM~q\ : std_logic;
SIGNAL \INTERFACE|FSM|Eprox.ESPERA~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.ESPERA~q\ : std_logic;
SIGNAL \INTERFACE|FSM|Selector3~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|FSM|Eprox~1_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~14\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~17_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~18\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~21_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~22\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~25_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~26\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~29_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~30\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~33_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~34\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~37_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~38\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~41_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~42\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~45_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Equal0~1_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Selector0~1_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.CONTANDO~q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Equal0~2_combout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~2\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~9_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~10\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~13_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~46\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Add0~5_sumout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|Equal0~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Selector0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.INICIAL~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Selector1~0_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.LIGADO~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Selector2~1_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.CONTA~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Eprox.FIM~0_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.ESPERA~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Selector3~0_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ~3_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ~4_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ~2_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ~3_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ~2_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ~4_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ~2_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ~3_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ~4_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ~2_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ~3_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|IQ~4_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|Equal0~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \CONTROLADOR|Selector0~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.INICIAL~q\ : std_logic;
SIGNAL \CONTROLADOR|Eprox.LIGA1~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.LIGA1~q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|rco~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.ERRO~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|Ereg.ERRO~q\ : std_logic;
SIGNAL \CONTROLADOR|Selector1~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Selector1~1_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.LIGA~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Selector2~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.ERRO~1_combout\ : std_logic;
SIGNAL \CONTROLADOR|Eatual.ERRO~q\ : std_logic;
SIGNAL \MEDIDOR|UC|Ereg.FIM~q\ : std_logic;
SIGNAL \MEDIDOR|REG|IQ[5]~0_combout\ : std_logic;
SIGNAL \DIS0|sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|Selector14~0_combout\ : std_logic;
SIGNAL \MUX|Selector13~0_combout\ : std_logic;
SIGNAL \MUX|Selector12~0_combout\ : std_logic;
SIGNAL \DIS1|sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|Selector10~0_combout\ : std_logic;
SIGNAL \MUX|Selector9~0_combout\ : std_logic;
SIGNAL \MUX|Selector8~0_combout\ : std_logic;
SIGNAL \MEDIDOR|REG|IQ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \DIS2|sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|Selector6~0_combout\ : std_logic;
SIGNAL \MUX|Selector5~0_combout\ : std_logic;
SIGNAL \MUX|Selector4~0_combout\ : std_logic;
SIGNAL \DIS3|sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|Selector2~0_combout\ : std_logic;
SIGNAL \MUX|Selector1~0_combout\ : std_logic;
SIGNAL \MUX|Selector0~0_combout\ : std_logic;
SIGNAL \DIS_ESTADO|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS_ESTADO|sseg[3]~1_combout\ : std_logic;
SIGNAL \DIS_ESTADO|sseg[0]~2_combout\ : std_logic;
SIGNAL \DIS_ESTADO|sseg[5]~3_combout\ : std_logic;
SIGNAL \DIS_ESTADO|sseg[6]~4_combout\ : std_logic;
SIGNAL \DIS0|sseg[0]~1_combout\ : std_logic;
SIGNAL \DIS0|sseg[1]~2_combout\ : std_logic;
SIGNAL \DIS0|sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS0|sseg[3]~4_combout\ : std_logic;
SIGNAL \DIS0|sseg[4]~5_combout\ : std_logic;
SIGNAL \DIS0|sseg[5]~6_combout\ : std_logic;
SIGNAL \DIS0|sseg[6]~7_combout\ : std_logic;
SIGNAL \DIS1|sseg[0]~1_combout\ : std_logic;
SIGNAL \DIS1|sseg[1]~2_combout\ : std_logic;
SIGNAL \DIS1|sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS1|sseg[3]~4_combout\ : std_logic;
SIGNAL \DIS1|sseg[4]~5_combout\ : std_logic;
SIGNAL \DIS1|sseg[5]~6_combout\ : std_logic;
SIGNAL \DIS1|sseg[6]~7_combout\ : std_logic;
SIGNAL \DIS2|sseg[0]~1_combout\ : std_logic;
SIGNAL \DIS2|sseg[1]~2_combout\ : std_logic;
SIGNAL \DIS2|sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS2|sseg[3]~4_combout\ : std_logic;
SIGNAL \DIS2|sseg[4]~5_combout\ : std_logic;
SIGNAL \DIS2|sseg[5]~6_combout\ : std_logic;
SIGNAL \DIS2|sseg[6]~7_combout\ : std_logic;
SIGNAL \DIS3|sseg[0]~1_combout\ : std_logic;
SIGNAL \DIS3|sseg[1]~2_combout\ : std_logic;
SIGNAL \DIS3|sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS3|sseg[3]~4_combout\ : std_logic;
SIGNAL \DIS3|sseg[4]~5_combout\ : std_logic;
SIGNAL \DIS3|sseg[5]~6_combout\ : std_logic;
SIGNAL \DIS3|sseg[6]~7_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT4|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INTERFACE|CONT_INICIO|IQ\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MEDIDOR|REG|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MUX|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \DIS2|ALT_INV_sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \DIS1|ALT_INV_sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \DIS0|ALT_INV_sseg[6]~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.ERRO~q\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.LIGA~q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_IQ\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MEDIDOR|REG|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\ : std_logic;
SIGNAL \ALT_INV_reset_in2~combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIS3|ALT_INV_sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS2|ALT_INV_sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS1|ALT_INV_sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS0|ALT_INV_sseg[2]~3_combout\ : std_logic;
SIGNAL \DIS_ESTADO|ALT_INV_sseg[6]~4_combout\ : std_logic;
SIGNAL \DIS_ESTADO|ALT_INV_sseg[5]~3_combout\ : std_logic;
SIGNAL \DIS_ESTADO|ALT_INV_sseg[0]~2_combout\ : std_logic;
SIGNAL \DIS_ESTADO|ALT_INV_sseg[0]~0_combout\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \DIS3|ALT_INV_sseg[6]~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \MUX|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEDIDOR|REG|ALT_INV_IQ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_jogar~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \INTERFACE|LATCH|ALT_INV_iq~combout\ : std_logic;
SIGNAL \MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Eprox~1_combout\ : std_logic;
SIGNAL \INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ : std_logic;

BEGIN

ww_jogar <= jogar;
ww_resposta <= resposta;
ww_reset <= reset;
ww_clock <= clock;
ligado <= ww_ligado;
pulso <= ww_pulso;
estimulo <= ww_estimulo;
erro <= ww_erro;
pronto <= ww_pronto;
tempo <= ww_tempo;
db_PInter <= ww_db_PInter;
db_PMed <= ww_db_PMed;
db_estado_7 <= ww_db_estado_7;
saida7seg <= ww_saida7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MUX|ALT_INV_Selector6~0_combout\ <= NOT \MUX|Selector6~0_combout\;
\DIS2|ALT_INV_sseg[6]~0_combout\ <= NOT \DIS2|sseg[6]~0_combout\;
\MUX|ALT_INV_Selector8~0_combout\ <= NOT \MUX|Selector8~0_combout\;
\MUX|ALT_INV_Selector9~0_combout\ <= NOT \MUX|Selector9~0_combout\;
\MUX|ALT_INV_Selector10~0_combout\ <= NOT \MUX|Selector10~0_combout\;
\DIS1|ALT_INV_sseg[6]~0_combout\ <= NOT \DIS1|sseg[6]~0_combout\;
\MUX|ALT_INV_Selector12~0_combout\ <= NOT \MUX|Selector12~0_combout\;
\MUX|ALT_INV_Selector13~0_combout\ <= NOT \MUX|Selector13~0_combout\;
\MUX|ALT_INV_Selector14~0_combout\ <= NOT \MUX|Selector14~0_combout\;
\DIS0|ALT_INV_sseg[6]~0_combout\ <= NOT \DIS0|sseg[6]~0_combout\;
\CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ <= NOT \CONTROLADOR|Eatual.JOGOPRONTO~q\;
\CONTROLADOR|ALT_INV_Eatual.ERRO~q\ <= NOT \CONTROLADOR|Eatual.ERRO~q\;
\INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ <= NOT \INTERFACE|FSM|Ereg.ESTIMULO~q\;
\CONTROLADOR|ALT_INV_Eatual.LIGA~q\ <= NOT \CONTROLADOR|Eatual.LIGA~q\;
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(10) <= NOT \INTERFACE|CONT_INICIO|IQ\(10);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(9) <= NOT \INTERFACE|CONT_INICIO|IQ\(9);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(8) <= NOT \INTERFACE|CONT_INICIO|IQ\(8);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(7) <= NOT \INTERFACE|CONT_INICIO|IQ\(7);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(6) <= NOT \INTERFACE|CONT_INICIO|IQ\(6);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(5) <= NOT \INTERFACE|CONT_INICIO|IQ\(5);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(4) <= NOT \INTERFACE|CONT_INICIO|IQ\(4);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(3) <= NOT \INTERFACE|CONT_INICIO|IQ\(3);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(2) <= NOT \INTERFACE|CONT_INICIO|IQ\(2);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(1) <= NOT \INTERFACE|CONT_INICIO|IQ\(1);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(11) <= NOT \INTERFACE|CONT_INICIO|IQ\(11);
\INTERFACE|CONT_INICIO|ALT_INV_IQ\(0) <= NOT \INTERFACE|CONT_INICIO|IQ\(0);
\MEDIDOR|REG|ALT_INV_IQ\(15) <= NOT \MEDIDOR|REG|IQ\(15);
\MEDIDOR|REG|ALT_INV_IQ\(14) <= NOT \MEDIDOR|REG|IQ\(14);
\MEDIDOR|REG|ALT_INV_IQ\(13) <= NOT \MEDIDOR|REG|IQ\(13);
\MEDIDOR|REG|ALT_INV_IQ\(12) <= NOT \MEDIDOR|REG|IQ\(12);
\MEDIDOR|REG|ALT_INV_IQ\(11) <= NOT \MEDIDOR|REG|IQ\(11);
\MEDIDOR|REG|ALT_INV_IQ\(10) <= NOT \MEDIDOR|REG|IQ\(10);
\MEDIDOR|REG|ALT_INV_IQ\(9) <= NOT \MEDIDOR|REG|IQ\(9);
\MEDIDOR|REG|ALT_INV_IQ\(8) <= NOT \MEDIDOR|REG|IQ\(8);
\MEDIDOR|REG|ALT_INV_IQ\(7) <= NOT \MEDIDOR|REG|IQ\(7);
\MEDIDOR|REG|ALT_INV_IQ\(6) <= NOT \MEDIDOR|REG|IQ\(6);
\MEDIDOR|REG|ALT_INV_IQ\(5) <= NOT \MEDIDOR|REG|IQ\(5);
\MEDIDOR|REG|ALT_INV_IQ\(4) <= NOT \MEDIDOR|REG|IQ\(4);
\MEDIDOR|REG|ALT_INV_IQ\(3) <= NOT \MEDIDOR|REG|IQ\(3);
\MEDIDOR|REG|ALT_INV_IQ\(2) <= NOT \MEDIDOR|REG|IQ\(2);
\MEDIDOR|REG|ALT_INV_IQ\(1) <= NOT \MEDIDOR|REG|IQ\(1);
\MEDIDOR|REG|ALT_INV_IQ\(0) <= NOT \MEDIDOR|REG|IQ\(0);
\MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\ <= NOT \MEDIDOR|UC|Ereg.ESPERA~q\;
\MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\ <= NOT \MEDIDOR|UC|Ereg.CONTA~q\;
\INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\ <= NOT \INTERFACE|FSM|Ereg.ESPERA~q\;
\MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\ <= NOT \MEDIDOR|UC|Ereg.LIGADO~q\;
\CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\ <= NOT \CONTROLADOR|Eatual.ERRO~0_combout\;
\INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\ <= NOT \INTERFACE|CONT_INICIO|Equal0~1_combout\;
\INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\ <= NOT \INTERFACE|CONT_INICIO|Equal0~0_combout\;
\INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\ <= NOT \INTERFACE|FSM|Ereg.CONTANDO~q\;
\ALT_INV_reset_in2~combout\ <= NOT \reset_in2~combout\;
\MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\ <= NOT \MEDIDOR|CONT|CONT4|rco~0_combout\;
\MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\ <= NOT \MEDIDOR|CONT|CONT3|Equal0~0_combout\;
\MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3) <= NOT \MEDIDOR|CONT|CONT3|IQ\(3);
\MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2) <= NOT \MEDIDOR|CONT|CONT3|IQ\(2);
\MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1) <= NOT \MEDIDOR|CONT|CONT3|IQ\(1);
\MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0) <= NOT \MEDIDOR|CONT|CONT3|IQ\(0);
\MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\ <= NOT \MEDIDOR|CONT|CONT4|Equal0~0_combout\;
\MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3) <= NOT \MEDIDOR|CONT|CONT4|IQ\(3);
\MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2) <= NOT \MEDIDOR|CONT|CONT4|IQ\(2);
\MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1) <= NOT \MEDIDOR|CONT|CONT4|IQ\(1);
\MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0) <= NOT \MEDIDOR|CONT|CONT4|IQ\(0);
\MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\ <= NOT \MEDIDOR|CONT|CONT2|Equal0~0_combout\;
\MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3) <= NOT \MEDIDOR|CONT|CONT2|IQ\(3);
\MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2) <= NOT \MEDIDOR|CONT|CONT2|IQ\(2);
\MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1) <= NOT \MEDIDOR|CONT|CONT2|IQ\(1);
\MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0) <= NOT \MEDIDOR|CONT|CONT2|IQ\(0);
\MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\ <= NOT \MEDIDOR|CONT|CONT1|Equal0~0_combout\;
\MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3) <= NOT \MEDIDOR|CONT|CONT1|IQ\(3);
\MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2) <= NOT \MEDIDOR|CONT|CONT1|IQ\(2);
\MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1) <= NOT \MEDIDOR|CONT|CONT1|IQ\(1);
\MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0) <= NOT \MEDIDOR|CONT|CONT1|IQ\(0);
\DIS3|ALT_INV_sseg[2]~3_combout\ <= NOT \DIS3|sseg[2]~3_combout\;
\DIS2|ALT_INV_sseg[2]~3_combout\ <= NOT \DIS2|sseg[2]~3_combout\;
\DIS1|ALT_INV_sseg[2]~3_combout\ <= NOT \DIS1|sseg[2]~3_combout\;
\DIS0|ALT_INV_sseg[2]~3_combout\ <= NOT \DIS0|sseg[2]~3_combout\;
\DIS_ESTADO|ALT_INV_sseg[6]~4_combout\ <= NOT \DIS_ESTADO|sseg[6]~4_combout\;
\DIS_ESTADO|ALT_INV_sseg[5]~3_combout\ <= NOT \DIS_ESTADO|sseg[5]~3_combout\;
\DIS_ESTADO|ALT_INV_sseg[0]~2_combout\ <= NOT \DIS_ESTADO|sseg[0]~2_combout\;
\DIS_ESTADO|ALT_INV_sseg[0]~0_combout\ <= NOT \DIS_ESTADO|sseg[0]~0_combout\;
\CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ <= NOT \CONTROLADOR|Eatual.INICIAL~q\;
\CONTROLADOR|ALT_INV_Eatual.LIGA1~q\ <= NOT \CONTROLADOR|Eatual.LIGA1~q\;
\MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ <= NOT \MEDIDOR|UC|Ereg.FIM~q\;
\CONTROLADOR|ALT_INV_Selector1~0_combout\ <= NOT \CONTROLADOR|Selector1~0_combout\;
\INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ <= NOT \INTERFACE|FSM|Ereg.FIM~q\;
\INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ <= NOT \INTERFACE|FSM|Ereg.ERRO~q\;
\MUX|ALT_INV_Selector0~0_combout\ <= NOT \MUX|Selector0~0_combout\;
\MUX|ALT_INV_Selector1~0_combout\ <= NOT \MUX|Selector1~0_combout\;
\MUX|ALT_INV_Selector2~0_combout\ <= NOT \MUX|Selector2~0_combout\;
\DIS3|ALT_INV_sseg[6]~0_combout\ <= NOT \DIS3|sseg[6]~0_combout\;
\MUX|ALT_INV_Selector4~0_combout\ <= NOT \MUX|Selector4~0_combout\;
\MUX|ALT_INV_Selector5~0_combout\ <= NOT \MUX|Selector5~0_combout\;
\MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ <= NOT \MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\;
\MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\;
\MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\;
\MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\ <= NOT \MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\;
\INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ <= NOT \INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\;
\CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ <= NOT \CONTROLADOR|Eatual.ERRO~DUPLICATE_q\;
\INTERFACE|CONT_INICIO|ALT_INV_IQ[6]~DUPLICATE_q\ <= NOT \INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE_q\;
\INTERFACE|CONT_INICIO|ALT_INV_IQ[4]~DUPLICATE_q\ <= NOT \INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE_q\;
\INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\;
\MEDIDOR|REG|ALT_INV_IQ[8]~DUPLICATE_q\ <= NOT \MEDIDOR|REG|IQ[8]~DUPLICATE_q\;
\ALT_INV_jogar~input_o\ <= NOT \jogar~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\INTERFACE|LATCH|ALT_INV_iq~combout\ <= NOT \INTERFACE|LATCH|iq~combout\;
\MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ <= NOT \MEDIDOR|UC|Ereg.INICIAL~q\;
\INTERFACE|FSM|ALT_INV_Selector0~0_combout\ <= NOT \INTERFACE|FSM|Selector0~0_combout\;
\INTERFACE|FSM|ALT_INV_Eprox~1_combout\ <= NOT \INTERFACE|FSM|Eprox~1_combout\;
\INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ <= NOT \INTERFACE|FSM|Ereg.INICIAL~q\;

-- Location: IOOBUF_X0_Y18_N79
\ligado~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|Eatual.LIGA~q\,
	devoe => ww_devoe,
	o => ww_ligado);

-- Location: IOOBUF_X54_Y14_N96
\pulso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEDIDOR|UC|Selector2~0_combout\,
	devoe => ww_devoe,
	o => ww_pulso);

-- Location: IOOBUF_X54_Y14_N45
\estimulo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|FSM|Ereg.ESTIMULO~q\,
	devoe => ww_devoe,
	o => ww_estimulo);

-- Location: IOOBUF_X54_Y15_N5
\erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|Eatual.ERRO~q\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X0_Y20_N56
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|Eatual.JOGOPRONTO~q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOOBUF_X34_Y0_N53
\tempo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|ALT_INV_sseg[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(0));

-- Location: IOOBUF_X34_Y0_N36
\tempo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector14~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(1));

-- Location: IOOBUF_X36_Y0_N36
\tempo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector13~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(2));

-- Location: IOOBUF_X36_Y0_N2
\tempo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector12~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(3));

-- Location: IOOBUF_X54_Y14_N62
\tempo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|ALT_INV_sseg[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(4));

-- Location: IOOBUF_X36_Y0_N53
\tempo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector10~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(5));

-- Location: IOOBUF_X38_Y0_N2
\tempo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(6));

-- Location: IOOBUF_X54_Y14_N79
\tempo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector8~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(7));

-- Location: IOOBUF_X52_Y0_N36
\tempo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|ALT_INV_sseg[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(8));

-- Location: IOOBUF_X33_Y0_N59
\tempo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector6~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(9));

-- Location: IOOBUF_X50_Y0_N2
\tempo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector5~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(10));

-- Location: IOOBUF_X52_Y0_N19
\tempo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector4~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(11));

-- Location: IOOBUF_X44_Y0_N19
\tempo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|ALT_INV_sseg[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(12));

-- Location: IOOBUF_X29_Y0_N53
\tempo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector2~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(13));

-- Location: IOOBUF_X48_Y0_N59
\tempo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector1~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(14));

-- Location: IOOBUF_X43_Y0_N2
\tempo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Selector0~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(15));

-- Location: IOOBUF_X34_Y0_N2
\db_PInter~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|ALT_INV_Selector1~0_combout\,
	devoe => ww_devoe,
	o => ww_db_PInter);

-- Location: IOOBUF_X34_Y0_N19
\db_PMed~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_db_PMed);

-- Location: IOOBUF_X29_Y0_N2
\db_estado_7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_ESTADO|ALT_INV_sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_db_estado_7(0));

-- Location: IOOBUF_X22_Y0_N19
\db_estado_7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|Eatual.JOGOPRONTO~q\,
	devoe => ww_devoe,
	o => ww_db_estado_7(1));

-- Location: IOOBUF_X43_Y0_N19
\db_estado_7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROLADOR|Eatual.JOGOPRONTO~q\,
	devoe => ww_devoe,
	o => ww_db_estado_7(2));

-- Location: IOOBUF_X50_Y0_N19
\db_estado_7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_ESTADO|sseg[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_db_estado_7(3));

-- Location: IOOBUF_X0_Y21_N56
\db_estado_7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_ESTADO|ALT_INV_sseg[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_db_estado_7(4));

-- Location: IOOBUF_X0_Y21_N39
\db_estado_7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_ESTADO|ALT_INV_sseg[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_db_estado_7(5));

-- Location: IOOBUF_X44_Y0_N2
\db_estado_7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_ESTADO|ALT_INV_sseg[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_db_estado_7(6));

-- Location: IOOBUF_X52_Y0_N53
\saida7seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(0));

-- Location: IOOBUF_X51_Y0_N36
\saida7seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(1));

-- Location: IOOBUF_X48_Y0_N76
\saida7seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|ALT_INV_sseg[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(2));

-- Location: IOOBUF_X50_Y0_N36
\saida7seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(3));

-- Location: IOOBUF_X48_Y0_N93
\saida7seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(4));

-- Location: IOOBUF_X50_Y0_N53
\saida7seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(5));

-- Location: IOOBUF_X46_Y0_N36
\saida7seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS0|sseg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(6));

-- Location: IOOBUF_X44_Y0_N36
\saida7seg[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(7));

-- Location: IOOBUF_X40_Y0_N93
\saida7seg[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(8));

-- Location: IOOBUF_X44_Y0_N53
\saida7seg[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|ALT_INV_sseg[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(9));

-- Location: IOOBUF_X43_Y0_N36
\saida7seg[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(10));

-- Location: IOOBUF_X38_Y0_N36
\saida7seg[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(11));

-- Location: IOOBUF_X43_Y0_N53
\saida7seg[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(12));

-- Location: IOOBUF_X51_Y0_N53
\saida7seg[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS1|sseg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(13));

-- Location: IOOBUF_X48_Y0_N42
\saida7seg[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(14));

-- Location: IOOBUF_X38_Y0_N53
\saida7seg[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(15));

-- Location: IOOBUF_X22_Y0_N53
\saida7seg[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|ALT_INV_sseg[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(16));

-- Location: IOOBUF_X36_Y0_N19
\saida7seg[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(17));

-- Location: IOOBUF_X38_Y0_N19
\saida7seg[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(18));

-- Location: IOOBUF_X46_Y0_N53
\saida7seg[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(19));

-- Location: IOOBUF_X40_Y0_N76
\saida7seg[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS2|sseg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(20));

-- Location: IOOBUF_X40_Y0_N59
\saida7seg[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(21));

-- Location: IOOBUF_X46_Y0_N2
\saida7seg[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(22));

-- Location: IOOBUF_X40_Y0_N42
\saida7seg[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|ALT_INV_sseg[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(23));

-- Location: IOOBUF_X46_Y0_N19
\saida7seg[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(24));

-- Location: IOOBUF_X52_Y0_N2
\saida7seg[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(25));

-- Location: IOOBUF_X51_Y0_N2
\saida7seg[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(26));

-- Location: IOOBUF_X51_Y0_N19
\saida7seg[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS3|sseg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(27));

-- Location: IOIBUF_X54_Y18_N44
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

-- Location: IOIBUF_X52_Y45_N52
\jogar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogar,
	o => \jogar~input_o\);

-- Location: IOIBUF_X52_Y45_N1
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X43_Y4_N9
reset_in2 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_in2~combout\ = ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	combout => \reset_in2~combout\);

-- Location: MLABCELL_X42_Y4_N48
\INTERFACE|LATCH|iq\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|LATCH|iq~combout\ = ( \INTERFACE|LATCH|iq~combout\ & ( !\reset_in2~combout\ ) ) # ( !\INTERFACE|LATCH|iq~combout\ & ( (\resposta~input_o\ & !\reset_in2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	datad => \ALT_INV_reset_in2~combout\,
	dataf => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	combout => \INTERFACE|LATCH|iq~combout\);

-- Location: LABCELL_X41_Y4_N0
\INTERFACE|CONT_INICIO|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~1_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \INTERFACE|CONT_INICIO|Add0~2\ = CARRY(( \INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \INTERFACE|CONT_INICIO|Add0~1_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~2\);

-- Location: MLABCELL_X42_Y4_N12
\INTERFACE|FSM|Ereg.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Ereg.INICIAL~0_combout\ = ( \CONTROLADOR|Eatual.LIGA~q\ ) # ( !\CONTROLADOR|Eatual.LIGA~q\ & ( \INTERFACE|FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \INTERFACE|FSM|Ereg.INICIAL~0_combout\);

-- Location: FF_X42_Y4_N14
\INTERFACE|FSM|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Ereg.INICIAL~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.INICIAL~q\);

-- Location: FF_X42_Y4_N34
\INTERFACE|FSM|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Selector3~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.FIM~q\);

-- Location: MLABCELL_X42_Y4_N15
\INTERFACE|FSM|Eprox.ESPERA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Eprox.ESPERA~0_combout\ = ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \INTERFACE|FSM|Eprox.ESPERA~0_combout\);

-- Location: FF_X42_Y4_N16
\INTERFACE|FSM|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Eprox.ESPERA~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.ESPERA~q\);

-- Location: MLABCELL_X42_Y4_N33
\INTERFACE|FSM|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Selector3~0_combout\ = ( \INTERFACE|FSM|Ereg.ESPERA~q\ ) # ( !\INTERFACE|FSM|Ereg.ESPERA~q\ & ( (!\CONTROLADOR|Eatual.LIGA~q\ & \INTERFACE|FSM|Ereg.FIM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datad => \INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \INTERFACE|FSM|Selector3~0_combout\);

-- Location: FF_X42_Y4_N35
\INTERFACE|FSM|Ereg.FIM~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Selector3~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N45
\INTERFACE|FSM|Eprox~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Eprox~1_combout\ = ( \INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ ) # ( !\INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & ( !\INTERFACE|FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	combout => \INTERFACE|FSM|Eprox~1_combout\);

-- Location: MLABCELL_X42_Y4_N30
\INTERFACE|FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Selector0~0_combout\ = ( \INTERFACE|FSM|Ereg.INICIAL~q\ & ( (\CONTROLADOR|Eatual.LIGA~q\ & \INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\) ) ) # ( !\INTERFACE|FSM|Ereg.INICIAL~q\ & ( \CONTROLADOR|Eatual.LIGA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datac => \INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	combout => \INTERFACE|FSM|Selector0~0_combout\);

-- Location: LABCELL_X41_Y4_N6
\INTERFACE|CONT_INICIO|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~13_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(2) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~10\ ))
-- \INTERFACE|CONT_INICIO|Add0~14\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(2) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(2),
	cin => \INTERFACE|CONT_INICIO|Add0~10\,
	sumout => \INTERFACE|CONT_INICIO|Add0~13_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~14\);

-- Location: LABCELL_X41_Y4_N9
\INTERFACE|CONT_INICIO|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~17_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(3) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~14\ ))
-- \INTERFACE|CONT_INICIO|Add0~18\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(3) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(3),
	cin => \INTERFACE|CONT_INICIO|Add0~14\,
	sumout => \INTERFACE|CONT_INICIO|Add0~17_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~18\);

-- Location: FF_X41_Y4_N11
\INTERFACE|CONT_INICIO|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~17_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(3));

-- Location: LABCELL_X41_Y4_N12
\INTERFACE|CONT_INICIO|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~21_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE_q\ ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~18\ ))
-- \INTERFACE|CONT_INICIO|Add0~22\ = CARRY(( \INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE_q\ ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ[4]~DUPLICATE_q\,
	cin => \INTERFACE|CONT_INICIO|Add0~18\,
	sumout => \INTERFACE|CONT_INICIO|Add0~21_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~22\);

-- Location: FF_X41_Y4_N13
\INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~21_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ[4]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N15
\INTERFACE|CONT_INICIO|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~25_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(5) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~22\ ))
-- \INTERFACE|CONT_INICIO|Add0~26\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(5) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(5),
	cin => \INTERFACE|CONT_INICIO|Add0~22\,
	sumout => \INTERFACE|CONT_INICIO|Add0~25_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~26\);

-- Location: FF_X41_Y4_N17
\INTERFACE|CONT_INICIO|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~25_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(5));

-- Location: LABCELL_X41_Y4_N18
\INTERFACE|CONT_INICIO|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~29_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE_q\ ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~26\ ))
-- \INTERFACE|CONT_INICIO|Add0~30\ = CARRY(( \INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE_q\ ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ[6]~DUPLICATE_q\,
	cin => \INTERFACE|CONT_INICIO|Add0~26\,
	sumout => \INTERFACE|CONT_INICIO|Add0~29_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~30\);

-- Location: FF_X41_Y4_N20
\INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~29_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ[6]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N21
\INTERFACE|CONT_INICIO|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~33_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(7) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~30\ ))
-- \INTERFACE|CONT_INICIO|Add0~34\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(7) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(7),
	cin => \INTERFACE|CONT_INICIO|Add0~30\,
	sumout => \INTERFACE|CONT_INICIO|Add0~33_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~34\);

-- Location: FF_X41_Y4_N23
\INTERFACE|CONT_INICIO|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~33_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(7));

-- Location: LABCELL_X41_Y4_N24
\INTERFACE|CONT_INICIO|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~37_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(8) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~34\ ))
-- \INTERFACE|CONT_INICIO|Add0~38\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(8) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(8),
	cin => \INTERFACE|CONT_INICIO|Add0~34\,
	sumout => \INTERFACE|CONT_INICIO|Add0~37_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~38\);

-- Location: FF_X41_Y4_N26
\INTERFACE|CONT_INICIO|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~37_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(8));

-- Location: FF_X41_Y4_N19
\INTERFACE|CONT_INICIO|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~29_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(6));

-- Location: LABCELL_X41_Y4_N27
\INTERFACE|CONT_INICIO|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~41_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(9) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~38\ ))
-- \INTERFACE|CONT_INICIO|Add0~42\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(9) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(9),
	cin => \INTERFACE|CONT_INICIO|Add0~38\,
	sumout => \INTERFACE|CONT_INICIO|Add0~41_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~42\);

-- Location: FF_X41_Y4_N29
\INTERFACE|CONT_INICIO|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~41_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(9));

-- Location: LABCELL_X41_Y4_N30
\INTERFACE|CONT_INICIO|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~45_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(10) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~42\ ))
-- \INTERFACE|CONT_INICIO|Add0~46\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(10) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(10),
	cin => \INTERFACE|CONT_INICIO|Add0~42\,
	sumout => \INTERFACE|CONT_INICIO|Add0~45_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~46\);

-- Location: FF_X41_Y4_N31
\INTERFACE|CONT_INICIO|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~45_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(10));

-- Location: LABCELL_X41_Y4_N54
\INTERFACE|CONT_INICIO|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Equal0~1_combout\ = ( !\INTERFACE|CONT_INICIO|IQ\(10) & ( (\INTERFACE|CONT_INICIO|IQ\(8) & (!\INTERFACE|CONT_INICIO|IQ\(6) & (\INTERFACE|CONT_INICIO|IQ\(9) & \INTERFACE|CONT_INICIO|IQ\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(8),
	datab => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(6),
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(9),
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(7),
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(10),
	combout => \INTERFACE|CONT_INICIO|Equal0~1_combout\);

-- Location: MLABCELL_X42_Y4_N0
\INTERFACE|FSM|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Selector0~1_combout\ = ( \INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) & ( ((!\resposta~input_o\ & ((!\INTERFACE|CONT_INICIO|Equal0~1_combout\) # (!\INTERFACE|CONT_INICIO|Equal0~0_combout\)))) # 
-- (\INTERFACE|FSM|Selector0~0_combout\) ) ) ) # ( !\INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) & ( \INTERFACE|FSM|Selector0~0_combout\ ) ) ) # ( \INTERFACE|FSM|Ereg.CONTANDO~q\ & ( !\INTERFACE|CONT_INICIO|IQ\(0) & ( 
-- (!\resposta~input_o\) # (\INTERFACE|FSM|Selector0~0_combout\) ) ) ) # ( !\INTERFACE|FSM|Ereg.CONTANDO~q\ & ( !\INTERFACE|CONT_INICIO|IQ\(0) & ( \INTERFACE|FSM|Selector0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101110111011101100110011001100111011101110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \INTERFACE|FSM|ALT_INV_Selector0~0_combout\,
	datac => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\,
	datad => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\,
	datae => \INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	combout => \INTERFACE|FSM|Selector0~1_combout\);

-- Location: FF_X42_Y4_N2
\INTERFACE|FSM|Ereg.CONTANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Selector0~1_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.CONTANDO~q\);

-- Location: FF_X41_Y4_N1
\INTERFACE|CONT_INICIO|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~1_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(0));

-- Location: LABCELL_X41_Y4_N39
\INTERFACE|CONT_INICIO|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Equal0~2_combout\ = ( \INTERFACE|CONT_INICIO|Equal0~1_combout\ & ( \INTERFACE|CONT_INICIO|Equal0~0_combout\ & ( \INTERFACE|CONT_INICIO|IQ\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	datae => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\,
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\,
	combout => \INTERFACE|CONT_INICIO|Equal0~2_combout\);

-- Location: FF_X41_Y4_N2
\INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~1_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N3
\INTERFACE|CONT_INICIO|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~9_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(1) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~2\ ))
-- \INTERFACE|CONT_INICIO|Add0~10\ = CARRY(( \INTERFACE|CONT_INICIO|IQ\(1) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	cin => \INTERFACE|CONT_INICIO|Add0~2\,
	sumout => \INTERFACE|CONT_INICIO|Add0~9_sumout\,
	cout => \INTERFACE|CONT_INICIO|Add0~10\);

-- Location: FF_X41_Y4_N5
\INTERFACE|CONT_INICIO|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~9_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(1));

-- Location: FF_X41_Y4_N7
\INTERFACE|CONT_INICIO|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~13_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(2));

-- Location: FF_X41_Y4_N14
\INTERFACE|CONT_INICIO|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~21_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(4));

-- Location: LABCELL_X41_Y4_N33
\INTERFACE|CONT_INICIO|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Add0~5_sumout\ = SUM(( \INTERFACE|CONT_INICIO|IQ\(11) ) + ( GND ) + ( \INTERFACE|CONT_INICIO|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(11),
	cin => \INTERFACE|CONT_INICIO|Add0~46\,
	sumout => \INTERFACE|CONT_INICIO|Add0~5_sumout\);

-- Location: FF_X41_Y4_N35
\INTERFACE|CONT_INICIO|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|CONT_INICIO|Add0~5_sumout\,
	clrn => \INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	sclr => \INTERFACE|CONT_INICIO|Equal0~2_combout\,
	ena => \INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|CONT_INICIO|IQ\(11));

-- Location: LABCELL_X41_Y4_N48
\INTERFACE|CONT_INICIO|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|CONT_INICIO|Equal0~0_combout\ = ( \INTERFACE|CONT_INICIO|IQ\(1) & ( \INTERFACE|CONT_INICIO|IQ\(5) & ( (\INTERFACE|CONT_INICIO|IQ\(2) & (\INTERFACE|CONT_INICIO|IQ\(4) & (\INTERFACE|CONT_INICIO|IQ\(11) & !\INTERFACE|CONT_INICIO|IQ\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(2),
	datab => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(4),
	datac => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(11),
	datad => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(3),
	datae => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(5),
	combout => \INTERFACE|CONT_INICIO|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y4_N6
\INTERFACE|FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Selector2~0_combout\ = ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) & ( (!\resposta~input_o\) # ((\INTERFACE|CONT_INICIO|Equal0~0_combout\ & (\INTERFACE|FSM|Ereg.CONTANDO~q\ & 
-- \INTERFACE|CONT_INICIO|Equal0~1_combout\))) ) ) ) # ( !\INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) & ( (\INTERFACE|CONT_INICIO|Equal0~0_combout\ & (\INTERFACE|FSM|Ereg.CONTANDO~q\ & \INTERFACE|CONT_INICIO|Equal0~1_combout\)) ) ) ) # 
-- ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( !\INTERFACE|CONT_INICIO|IQ\(0) & ( !\resposta~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\,
	datac => \INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	datad => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\,
	datae => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	combout => \INTERFACE|FSM|Selector2~0_combout\);

-- Location: FF_X42_Y4_N8
\INTERFACE|FSM|Ereg.ESTIMULO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Selector2~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.ESTIMULO~q\);

-- Location: MLABCELL_X42_Y4_N39
\MEDIDOR|UC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Selector0~0_combout\ = ( \MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( \CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( (\MEDIDOR|UC|Ereg.INICIAL~q\) # (\CONTROLADOR|Eatual.LIGA1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	combout => \MEDIDOR|UC|Selector0~0_combout\);

-- Location: FF_X42_Y4_N40
\MEDIDOR|UC|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Selector0~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.INICIAL~q\);

-- Location: MLABCELL_X45_Y4_N39
\MEDIDOR|UC|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Selector1~0_combout\ = ( \MEDIDOR|UC|Ereg.INICIAL~q\ & ( (\MEDIDOR|UC|Ereg.LIGADO~q\ & ((!\INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\INTERFACE|LATCH|iq~combout\))) ) ) # ( !\MEDIDOR|UC|Ereg.INICIAL~q\ & ( ((\MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- ((!\INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\INTERFACE|LATCH|iq~combout\)))) # (\CONTROLADOR|Eatual.LIGA1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111011111000011111101111100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datac => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	combout => \MEDIDOR|UC|Selector1~0_combout\);

-- Location: FF_X45_Y4_N41
\MEDIDOR|UC|Ereg.LIGADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Selector1~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.LIGADO~q\);

-- Location: MLABCELL_X42_Y4_N18
\MEDIDOR|UC|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Selector2~1_combout\ = ( \MEDIDOR|UC|Ereg.CONTA~q\ & ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( !\INTERFACE|LATCH|iq~combout\ ) ) ) # ( !\MEDIDOR|UC|Ereg.CONTA~q\ & ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( (!\INTERFACE|LATCH|iq~combout\ & 
-- (((\CONTROLADOR|Eatual.LIGA1~q\ & \MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # (\MEDIDOR|UC|Ereg.LIGADO~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datae => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \MEDIDOR|UC|Selector2~1_combout\);

-- Location: FF_X42_Y4_N19
\MEDIDOR|UC|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Selector2~1_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.CONTA~q\);

-- Location: MLABCELL_X45_Y4_N36
\MEDIDOR|UC|Eprox.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Eprox.FIM~0_combout\ = (\MEDIDOR|UC|Ereg.CONTA~q\ & ((!\INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\INTERFACE|LATCH|iq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	combout => \MEDIDOR|UC|Eprox.FIM~0_combout\);

-- Location: FF_X45_Y4_N37
\MEDIDOR|UC|Ereg.FIM~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Eprox.FIM~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\);

-- Location: FF_X42_Y4_N38
\MEDIDOR|UC|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Selector3~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.ESPERA~q\);

-- Location: MLABCELL_X42_Y4_N36
\MEDIDOR|UC|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Selector3~0_combout\ = ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( ((\INTERFACE|LATCH|iq~combout\ & (\CONTROLADOR|Eatual.LIGA1~q\ & \MEDIDOR|UC|Ereg.ESPERA~q\))) # (\MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\) ) ) # ( !\INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( 
-- ((\CONTROLADOR|Eatual.LIGA1~q\ & \MEDIDOR|UC|Ereg.ESPERA~q\)) # (\MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datac => \MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \MEDIDOR|UC|Selector3~0_combout\);

-- Location: FF_X42_Y4_N37
\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Selector3~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N51
\MEDIDOR|CONT|CONT3|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|IQ~0_combout\ = ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT3|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT3|IQ~0_combout\);

-- Location: LABCELL_X43_Y4_N30
\MEDIDOR|CONT|CONT1|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\ = ( \MEDIDOR|UC|Ereg.LIGADO~q\ ) # ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (\MEDIDOR|UC|Ereg.CONTA~q\) # (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\);

-- Location: FF_X44_Y4_N40
\MEDIDOR|CONT|CONT1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ\(0));

-- Location: LABCELL_X44_Y4_N39
\MEDIDOR|CONT|CONT1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|IQ~0_combout\ = ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT1|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT1|IQ~0_combout\);

-- Location: FF_X44_Y4_N41
\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\);

-- Location: FF_X44_Y4_N28
\MEDIDOR|CONT|CONT1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~4_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ\(3));

-- Location: FF_X44_Y4_N59
\MEDIDOR|CONT|CONT1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ\(2));

-- Location: LABCELL_X44_Y4_N57
\MEDIDOR|CONT|CONT1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|IQ~3_combout\ = ( \MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ $ (!\MEDIDOR|CONT|CONT1|IQ\(2))))) ) ) # ( 
-- !\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT1|IQ~3_combout\);

-- Location: FF_X44_Y4_N58
\MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N27
\MEDIDOR|CONT|CONT1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|IQ~4_combout\ = ( \MEDIDOR|CONT|CONT1|IQ\(3) & ( \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\) # 
-- (!\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\)))) ) ) ) # ( !\MEDIDOR|CONT|CONT1|IQ\(3) & ( \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & 
-- !\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\))) ) ) ) # ( \MEDIDOR|CONT|CONT1|IQ\(3) & ( !\MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\) # 
-- (\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010100000000000000010000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT1|IQ~4_combout\);

-- Location: FF_X44_Y4_N29
\MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~4_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\);

-- Location: FF_X44_Y4_N7
\MEDIDOR|CONT|CONT1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ\(1));

-- Location: LABCELL_X44_Y4_N6
\MEDIDOR|CONT|CONT1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|IQ~2_combout\ = ( \MEDIDOR|CONT|CONT1|IQ\(1) & ( \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\)) ) ) ) # ( 
-- !\MEDIDOR|CONT|CONT1|IQ\(1) & ( \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\)) ) ) ) # ( \MEDIDOR|CONT|CONT1|IQ\(1) & ( 
-- !\MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\)) ) ) ) # ( !\MEDIDOR|CONT|CONT1|IQ\(1) & ( !\MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & ( 
-- (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\ & \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100010000000000000000000100010001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT1|IQ~2_combout\);

-- Location: FF_X44_Y4_N8
\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N36
\MEDIDOR|CONT|CONT1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT1|Equal0~0_combout\ = ( \MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT1|Equal0~0_combout\);

-- Location: MLABCELL_X45_Y4_N33
\MEDIDOR|CONT|CONT2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|IQ~0_combout\ = ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT2|IQ~0_combout\);

-- Location: MLABCELL_X45_Y4_N0
\MEDIDOR|CONT|CONT2|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\ = ( \MEDIDOR|UC|Ereg.CONTA~q\ & ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ ) ) # ( !\MEDIDOR|UC|Ereg.CONTA~q\ & ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # 
-- (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( \MEDIDOR|UC|Ereg.CONTA~q\ & ( !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\MEDIDOR|UC|Ereg.CONTA~q\ & ( 
-- !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\);

-- Location: FF_X45_Y4_N35
\MEDIDOR|CONT|CONT2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT2|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT2|IQ\(0));

-- Location: MLABCELL_X45_Y4_N12
\MEDIDOR|CONT|CONT2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|IQ~3_combout\ = ( \MEDIDOR|CONT|CONT2|IQ\(1) & ( (!\MEDIDOR|UC|Ereg.ESPERA~q\ & (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|CONT|CONT2|IQ\(0) $ (!\MEDIDOR|CONT|CONT2|IQ\(2))))) ) ) # ( !\MEDIDOR|CONT|CONT2|IQ\(1) & ( 
-- (!\MEDIDOR|UC|Ereg.ESPERA~q\ & (!\MEDIDOR|UC|Ereg.LIGADO~q\ & \MEDIDOR|CONT|CONT2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	datad => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	combout => \MEDIDOR|CONT|CONT2|IQ~3_combout\);

-- Location: FF_X45_Y4_N13
\MEDIDOR|CONT|CONT2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT2|IQ\(2));

-- Location: MLABCELL_X45_Y4_N54
\MEDIDOR|CONT|CONT2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|IQ~2_combout\ = ( \MEDIDOR|CONT|CONT2|IQ\(1) & ( \MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT2|IQ\(0))) ) ) ) # ( !\MEDIDOR|CONT|CONT2|IQ\(1) & ( 
-- \MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT2|IQ\(0))) ) ) ) # ( \MEDIDOR|CONT|CONT2|IQ\(1) & ( !\MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT2|IQ\(0))) ) ) ) # ( !\MEDIDOR|CONT|CONT2|IQ\(1) & ( !\MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT2|IQ\(0) & 
-- !\MEDIDOR|CONT|CONT2|IQ\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100000001000000000001000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	datad => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	datae => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	combout => \MEDIDOR|CONT|CONT2|IQ~2_combout\);

-- Location: FF_X45_Y4_N56
\MEDIDOR|CONT|CONT2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT2|IQ~2_combout\,
	ena => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT2|IQ\(1));

-- Location: MLABCELL_X45_Y4_N6
\MEDIDOR|CONT|CONT2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|IQ~4_combout\ = ( \MEDIDOR|CONT|CONT2|IQ\(3) & ( \MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\MEDIDOR|CONT|CONT2|IQ\(0)) # (!\MEDIDOR|CONT|CONT2|IQ\(1))))) ) ) ) # ( 
-- !\MEDIDOR|CONT|CONT2|IQ\(3) & ( \MEDIDOR|CONT|CONT2|IQ\(2) & ( (\MEDIDOR|CONT|CONT2|IQ\(0) & (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (\MEDIDOR|CONT|CONT2|IQ\(1) & !\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\))) ) ) ) # ( \MEDIDOR|CONT|CONT2|IQ\(3) & ( 
-- !\MEDIDOR|CONT|CONT2|IQ\(2) & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\MEDIDOR|CONT|CONT2|IQ\(0)) # (\MEDIDOR|CONT|CONT2|IQ\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011000000000000000100000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	datab => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	datad => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	combout => \MEDIDOR|CONT|CONT2|IQ~4_combout\);

-- Location: FF_X45_Y4_N8
\MEDIDOR|CONT|CONT2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT2|IQ~4_combout\,
	ena => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT2|IQ\(3));

-- Location: FF_X45_Y4_N14
\MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N48
\MEDIDOR|CONT|CONT2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT2|Equal0~0_combout\ = ( !\MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\ & ( (\MEDIDOR|CONT|CONT2|IQ\(0) & (\MEDIDOR|CONT|CONT2|IQ\(3) & !\MEDIDOR|CONT|CONT2|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	datac => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	datad => \MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT2|Equal0~0_combout\);

-- Location: LABCELL_X44_Y4_N54
\MEDIDOR|CONT|CONT3|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ = ( \MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (((\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & \MEDIDOR|UC|Ereg.CONTA~q\)) # (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) # ( 
-- !\MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\);

-- Location: FF_X44_Y4_N53
\MEDIDOR|CONT|CONT3|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT3|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ\(0));

-- Location: FF_X44_Y4_N32
\MEDIDOR|CONT|CONT3|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT3|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ\(2));

-- Location: FF_X44_Y4_N13
\MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ~4_combout\,
	sload => VCC,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N18
\MEDIDOR|CONT|CONT3|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|IQ~2_combout\ = ( \MEDIDOR|CONT|CONT3|IQ\(1) & ( \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT3|IQ\(0))) ) ) ) # ( !\MEDIDOR|CONT|CONT3|IQ\(1) & ( 
-- \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT3|IQ\(0) & \MEDIDOR|CONT|CONT3|IQ\(2)))) ) ) ) # ( \MEDIDOR|CONT|CONT3|IQ\(1) & ( !\MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ 
-- & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT3|IQ\(0))) ) ) ) # ( !\MEDIDOR|CONT|CONT3|IQ\(1) & ( !\MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT3|IQ\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100000001000000000000000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	datae => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT3|IQ~2_combout\);

-- Location: FF_X44_Y4_N19
\MEDIDOR|CONT|CONT3|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT3|IQ~2_combout\,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ\(1));

-- Location: LABCELL_X44_Y4_N30
\MEDIDOR|CONT|CONT3|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|IQ~3_combout\ = ( \MEDIDOR|CONT|CONT3|IQ\(1) & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|CONT|CONT3|IQ\(0) $ (!\MEDIDOR|CONT|CONT3|IQ\(2))))) ) ) # ( !\MEDIDOR|CONT|CONT3|IQ\(1) & ( 
-- (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|UC|Ereg.LIGADO~q\ & \MEDIDOR|CONT|CONT3|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	dataf => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	combout => \MEDIDOR|CONT|CONT3|IQ~3_combout\);

-- Location: FF_X44_Y4_N31
\MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT3|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N12
\MEDIDOR|CONT|CONT3|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|IQ~4_combout\ = ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( \MEDIDOR|CONT|CONT3|IQ\(0) & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT3|IQ\(1) & 
-- \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\)) # (\MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT3|IQ\(1) $ (!\MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\))))) ) ) ) # ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( !\MEDIDOR|CONT|CONT3|IQ\(0) & ( 
-- (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000010001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datab => \MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\,
	datae => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	combout => \MEDIDOR|CONT|CONT3|IQ~4_combout\);

-- Location: FF_X44_Y4_N14
\MEDIDOR|CONT|CONT3|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ~4_combout\,
	sload => VCC,
	ena => \MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT3|IQ\(3));

-- Location: LABCELL_X44_Y4_N33
\MEDIDOR|CONT|CONT3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT3|Equal0~0_combout\ = ( !\MEDIDOR|CONT|CONT3|IQ\(2) & ( (\MEDIDOR|CONT|CONT3|IQ\(0) & (\MEDIDOR|CONT|CONT3|IQ\(3) & !\MEDIDOR|CONT|CONT3|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	datac => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3),
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	combout => \MEDIDOR|CONT|CONT3|Equal0~0_combout\);

-- Location: LABCELL_X44_Y4_N0
\MEDIDOR|CONT|CONT4|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|IQ~0_combout\ = ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\MEDIDOR|CONT|CONT4|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT4|IQ~0_combout\);

-- Location: LABCELL_X44_Y4_N15
\MEDIDOR|CONT|CONT4|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ = ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (((\MEDIDOR|UC|Ereg.CONTA~q\ & \MEDIDOR|CONT|CONT3|Equal0~0_combout\)) # (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # 
-- (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( 
-- !\MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # 
-- (\MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	datac => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datae => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\);

-- Location: FF_X44_Y4_N2
\MEDIDOR|CONT|CONT4|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT4|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT4|IQ\(0));

-- Location: LABCELL_X43_Y4_N21
\MEDIDOR|CONT|CONT4|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|IQ~2_combout\ = ( \MEDIDOR|CONT|CONT4|IQ\(0) & ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT4|IQ\(1) & ((!\MEDIDOR|CONT|CONT4|IQ\(3)) # (\MEDIDOR|CONT|CONT4|IQ\(2))))) ) ) ) # ( 
-- !\MEDIDOR|CONT|CONT4|IQ\(0) & ( !\MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT4|IQ\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	datae => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \MEDIDOR|CONT|CONT4|IQ~2_combout\);

-- Location: FF_X44_Y4_N47
\MEDIDOR|CONT|CONT4|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT4|IQ~2_combout\,
	sload => VCC,
	ena => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT4|IQ\(1));

-- Location: FF_X44_Y4_N1
\MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT4|IQ~0_combout\,
	ena => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N3
\MEDIDOR|CONT|CONT4|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|IQ~3_combout\ = ( \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT4|IQ\(1) $ (!\MEDIDOR|CONT|CONT4|IQ\(2))))) ) ) # ( 
-- !\MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \MEDIDOR|CONT|CONT4|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	dataf => \MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT4|IQ~3_combout\);

-- Location: FF_X44_Y4_N5
\MEDIDOR|CONT|CONT4|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT4|IQ~3_combout\,
	ena => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT4|IQ\(2));

-- Location: LABCELL_X44_Y4_N42
\MEDIDOR|CONT|CONT4|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|IQ~4_combout\ = ( \MEDIDOR|CONT|CONT4|IQ\(3) & ( \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\MEDIDOR|CONT|CONT4|IQ\(2) $ (!\MEDIDOR|CONT|CONT4|IQ\(1))))) ) ) ) # 
-- ( !\MEDIDOR|CONT|CONT4|IQ\(3) & ( \MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & (!\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (\MEDIDOR|CONT|CONT4|IQ\(2) & \MEDIDOR|CONT|CONT4|IQ\(1)))) ) ) ) # ( \MEDIDOR|CONT|CONT4|IQ\(3) & ( 
-- !\MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & ( (!\MEDIDOR|UC|Ereg.LIGADO~q\ & !\MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000010000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	datae => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \MEDIDOR|CONT|CONT4|IQ~4_combout\);

-- Location: FF_X44_Y4_N43
\MEDIDOR|CONT|CONT4|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|CONT|CONT4|IQ~4_combout\,
	ena => \MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|CONT|CONT4|IQ\(3));

-- Location: LABCELL_X43_Y4_N54
\MEDIDOR|CONT|CONT4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|Equal0~0_combout\ = ( !\MEDIDOR|CONT|CONT4|IQ\(1) & ( (\MEDIDOR|CONT|CONT4|IQ\(3) & (!\MEDIDOR|CONT|CONT4|IQ\(2) & \MEDIDOR|CONT|CONT4|IQ\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	dataf => \MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	combout => \MEDIDOR|CONT|CONT4|Equal0~0_combout\);

-- Location: LABCELL_X43_Y4_N24
\CONTROLADOR|Eprox.JOGOPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ = ( \CONTROLADOR|Eatual.LIGA~q\ & ( \INTERFACE|FSM|Ereg.FIM~q\ & ( (!\MEDIDOR|CONT|CONT3|Equal0~0_combout\) # ((!\MEDIDOR|CONT|CONT2|Equal0~0_combout\) # ((!\MEDIDOR|CONT|CONT4|Equal0~0_combout\) # 
-- (!\MEDIDOR|CONT|CONT1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datab => \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	datad => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	datae => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	combout => \CONTROLADOR|Eprox.JOGOPRONTO~0_combout\);

-- Location: FF_X43_Y4_N26
\CONTROLADOR|Eatual.JOGOPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Eprox.JOGOPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.JOGOPRONTO~q\);

-- Location: LABCELL_X41_Y4_N42
\CONTROLADOR|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Selector0~0_combout\ = ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( (\CONTROLADOR|Eatual.INICIAL~q\) # (\jogar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jogar~input_o\,
	datad => \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	combout => \CONTROLADOR|Selector0~0_combout\);

-- Location: FF_X41_Y4_N44
\CONTROLADOR|Eatual.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.INICIAL~q\);

-- Location: LABCELL_X41_Y4_N57
\CONTROLADOR|Eprox.LIGA1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Eprox.LIGA1~0_combout\ = ( !\CONTROLADOR|Eatual.INICIAL~q\ & ( \jogar~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_jogar~input_o\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	combout => \CONTROLADOR|Eprox.LIGA1~0_combout\);

-- Location: FF_X41_Y4_N59
\CONTROLADOR|Eatual.LIGA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Eprox.LIGA1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.LIGA1~q\);

-- Location: LABCELL_X43_Y4_N51
\MEDIDOR|CONT|CONT4|rco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|CONT|CONT4|rco~0_combout\ = ( \MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\MEDIDOR|CONT|CONT3|Equal0~0_combout\ & (\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & \MEDIDOR|CONT|CONT4|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datac => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	datad => \MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	dataf => \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \MEDIDOR|CONT|CONT4|rco~0_combout\);

-- Location: MLABCELL_X42_Y4_N42
\INTERFACE|FSM|Ereg.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|FSM|Ereg.ERRO~0_combout\ = ( \INTERFACE|FSM|Ereg.ERRO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) ) ) # ( !\INTERFACE|FSM|Ereg.ERRO~q\ & ( \INTERFACE|CONT_INICIO|IQ\(0) & ( (\resposta~input_o\ & (\INTERFACE|FSM|Ereg.CONTANDO~q\ & 
-- ((!\INTERFACE|CONT_INICIO|Equal0~0_combout\) # (!\INTERFACE|CONT_INICIO|Equal0~1_combout\)))) ) ) ) # ( \INTERFACE|FSM|Ereg.ERRO~q\ & ( !\INTERFACE|CONT_INICIO|IQ\(0) ) ) # ( !\INTERFACE|FSM|Ereg.ERRO~q\ & ( !\INTERFACE|CONT_INICIO|IQ\(0) & ( 
-- (\resposta~input_o\ & \INTERFACE|FSM|Ereg.CONTANDO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~0_combout\,
	datac => \INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	datad => \INTERFACE|CONT_INICIO|ALT_INV_Equal0~1_combout\,
	datae => \INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	combout => \INTERFACE|FSM|Ereg.ERRO~0_combout\);

-- Location: FF_X42_Y4_N44
\INTERFACE|FSM|Ereg.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|FSM|Ereg.ERRO~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|FSM|Ereg.ERRO~q\);

-- Location: LABCELL_X43_Y4_N57
\CONTROLADOR|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Selector1~0_combout\ = ( !\INTERFACE|FSM|Ereg.FIM~q\ & ( !\INTERFACE|FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	combout => \CONTROLADOR|Selector1~0_combout\);

-- Location: LABCELL_X43_Y4_N48
\CONTROLADOR|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Selector1~1_combout\ = ( \CONTROLADOR|Selector1~0_combout\ & ( ((!\MEDIDOR|CONT|CONT4|rco~0_combout\ & \CONTROLADOR|Eatual.LIGA~q\)) # (\CONTROLADOR|Eatual.LIGA1~q\) ) ) # ( !\CONTROLADOR|Selector1~0_combout\ & ( \CONTROLADOR|Eatual.LIGA1~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datac => \MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\,
	datad => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	dataf => \CONTROLADOR|ALT_INV_Selector1~0_combout\,
	combout => \CONTROLADOR|Selector1~1_combout\);

-- Location: FF_X43_Y4_N49
\CONTROLADOR|Eatual.LIGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Selector1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.LIGA~q\);

-- Location: MLABCELL_X42_Y4_N51
\MEDIDOR|UC|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|UC|Selector2~0_combout\ = ( \INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( !\INTERFACE|LATCH|iq~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|LATCH|ALT_INV_iq~combout\,
	dataf => \INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \MEDIDOR|UC|Selector2~0_combout\);

-- Location: FF_X43_Y4_N38
\CONTROLADOR|Eatual.ERRO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Eatual.ERRO~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.ERRO~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N27
\CONTROLADOR|Eatual.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Eatual.ERRO~0_combout\ = ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \CONTROLADOR|Eatual.LIGA~q\ & ( !\INTERFACE|FSM|Ereg.ERRO~q\ ) ) ) # ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( !\CONTROLADOR|Eatual.LIGA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datae => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \CONTROLADOR|Eatual.ERRO~0_combout\);

-- Location: LABCELL_X43_Y4_N36
\CONTROLADOR|Eatual.ERRO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CONTROLADOR|Eatual.ERRO~1_combout\ = ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \CONTROLADOR|Eatual.LIGA~q\ & ( (!\CONTROLADOR|Eatual.ERRO~0_combout\) # ((\MEDIDOR|CONT|CONT4|Equal0~0_combout\ & (\MEDIDOR|CONT|CONT3|Equal0~0_combout\ & 
-- \MEDIDOR|CONT|CONT2|Equal0~0_combout\))) ) ) ) # ( !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \CONTROLADOR|Eatual.LIGA~q\ & ( !\CONTROLADOR|Eatual.ERRO~0_combout\ ) ) ) # ( \MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\CONTROLADOR|Eatual.LIGA~q\ & ( 
-- !\CONTROLADOR|Eatual.ERRO~0_combout\ ) ) ) # ( !\MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\CONTROLADOR|Eatual.LIGA~q\ & ( !\CONTROLADOR|Eatual.ERRO~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\,
	datac => \MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datad => \MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datae => \MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \CONTROLADOR|Eatual.ERRO~1_combout\);

-- Location: FF_X43_Y4_N37
\CONTROLADOR|Eatual.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CONTROLADOR|Eatual.ERRO~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLADOR|Eatual.ERRO~q\);

-- Location: FF_X45_Y4_N38
\MEDIDOR|UC|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \MEDIDOR|UC|Eprox.FIM~0_combout\,
	clrn => \ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|UC|Ereg.FIM~q\);

-- Location: MLABCELL_X45_Y4_N15
\MEDIDOR|REG|IQ[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEDIDOR|REG|IQ[5]~0_combout\ = (\MEDIDOR|UC|Ereg.FIM~q\) # (\MEDIDOR|UC|Ereg.LIGADO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	combout => \MEDIDOR|REG|IQ[5]~0_combout\);

-- Location: FF_X45_Y4_N2
\MEDIDOR|REG|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT1|IQ\(0),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(0));

-- Location: MLABCELL_X42_Y2_N0
\DIS0|sseg[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[6]~0_combout\ = ( !\CONTROLADOR|Eatual.ERRO~q\ & ( !\MEDIDOR|REG|IQ\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEDIDOR|REG|ALT_INV_IQ\(0),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS0|sseg[6]~0_combout\);

-- Location: FF_X45_Y4_N44
\MEDIDOR|REG|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT1|IQ\(1),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(1));

-- Location: MLABCELL_X42_Y2_N21
\MUX|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector14~0_combout\ = ( \MEDIDOR|REG|IQ\(1) & ( !\CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(1),
	combout => \MUX|Selector14~0_combout\);

-- Location: FF_X45_Y4_N4
\MEDIDOR|REG|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\,
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(2));

-- Location: MLABCELL_X42_Y2_N24
\MUX|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector13~0_combout\ = ( \MEDIDOR|REG|IQ\(2) & ( !\CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \MUX|Selector13~0_combout\);

-- Location: FF_X45_Y4_N47
\MEDIDOR|REG|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT1|IQ\(3),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(3));

-- Location: MLABCELL_X42_Y2_N18
\MUX|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector12~0_combout\ = (\MEDIDOR|REG|IQ\(3)) # (\CONTROLADOR|Eatual.ERRO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datad => \MEDIDOR|REG|ALT_INV_IQ\(3),
	combout => \MUX|Selector12~0_combout\);

-- Location: FF_X45_Y4_N26
\MEDIDOR|REG|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT2|IQ\(0),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(4));

-- Location: LABCELL_X47_Y4_N27
\DIS1|sseg[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[6]~0_combout\ = ( !\CONTROLADOR|Eatual.ERRO~q\ & ( !\MEDIDOR|REG|IQ\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|REG|ALT_INV_IQ\(4),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS1|sseg[6]~0_combout\);

-- Location: FF_X45_Y4_N20
\MEDIDOR|REG|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT2|IQ\(1),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(5));

-- Location: LABCELL_X47_Y4_N18
\MUX|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector10~0_combout\ = ( \MEDIDOR|REG|IQ\(5) & ( !\CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(5),
	combout => \MUX|Selector10~0_combout\);

-- Location: FF_X45_Y4_N29
\MEDIDOR|REG|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\,
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(6));

-- Location: LABCELL_X47_Y4_N36
\MUX|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector9~0_combout\ = ( \MEDIDOR|REG|IQ\(6) & ( !\CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(6),
	combout => \MUX|Selector9~0_combout\);

-- Location: FF_X45_Y4_N23
\MEDIDOR|REG|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT2|IQ\(3),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(7));

-- Location: LABCELL_X47_Y4_N39
\MUX|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector8~0_combout\ = ( \MEDIDOR|REG|IQ\(7) ) # ( !\MEDIDOR|REG|IQ\(7) & ( \CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(7),
	combout => \MUX|Selector8~0_combout\);

-- Location: FF_X43_Y4_N16
\MEDIDOR|REG|IQ[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ\(0),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ[8]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y4_N54
\DIS2|sseg[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[6]~0_combout\ = (!\CONTROLADOR|Eatual.ERRO~q\ & !\MEDIDOR|REG|IQ[8]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ[8]~DUPLICATE_q\,
	combout => \DIS2|sseg[6]~0_combout\);

-- Location: FF_X43_Y4_N44
\MEDIDOR|REG|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ\(1),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(9));

-- Location: MLABCELL_X42_Y4_N57
\MUX|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector6~0_combout\ = ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \MEDIDOR|REG|IQ\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datae => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \MUX|Selector6~0_combout\);

-- Location: FF_X43_Y4_N35
\MEDIDOR|REG|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\,
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(10));

-- Location: LABCELL_X47_Y4_N57
\MUX|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector5~0_combout\ = ( \MEDIDOR|REG|IQ\(10) & ( !\CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(10),
	combout => \MUX|Selector5~0_combout\);

-- Location: FF_X43_Y4_N47
\MEDIDOR|REG|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\,
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(11));

-- Location: LABCELL_X47_Y4_N12
\MUX|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector4~0_combout\ = ( \MEDIDOR|REG|IQ\(11) ) # ( !\MEDIDOR|REG|IQ\(11) & ( \CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(11),
	combout => \MUX|Selector4~0_combout\);

-- Location: FF_X43_Y4_N56
\MEDIDOR|REG|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT4|IQ\(0),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(12));

-- Location: LABCELL_X47_Y4_N42
\DIS3|sseg[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[6]~0_combout\ = (!\CONTROLADOR|Eatual.ERRO~q\ & !\MEDIDOR|REG|IQ\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datad => \MEDIDOR|REG|ALT_INV_IQ\(12),
	combout => \DIS3|sseg[6]~0_combout\);

-- Location: FF_X47_Y4_N2
\MEDIDOR|REG|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT4|IQ\(1),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(13));

-- Location: LABCELL_X47_Y4_N51
\MUX|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector2~0_combout\ = (!\CONTROLADOR|Eatual.ERRO~q\ & \MEDIDOR|REG|IQ\(13))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datad => \MEDIDOR|REG|ALT_INV_IQ\(13),
	combout => \MUX|Selector2~0_combout\);

-- Location: FF_X47_Y4_N5
\MEDIDOR|REG|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT4|IQ\(2),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(14));

-- Location: LABCELL_X47_Y4_N48
\MUX|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector1~0_combout\ = (!\CONTROLADOR|Eatual.ERRO~q\ & \MEDIDOR|REG|IQ\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \MUX|Selector1~0_combout\);

-- Location: FF_X47_Y4_N32
\MEDIDOR|REG|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT4|IQ\(3),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(15));

-- Location: LABCELL_X47_Y4_N45
\MUX|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Selector0~0_combout\ = ( \MEDIDOR|REG|IQ\(15) ) # ( !\MEDIDOR|REG|IQ\(15) & ( \CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(15),
	combout => \MUX|Selector0~0_combout\);

-- Location: MLABCELL_X42_Y2_N42
\DIS_ESTADO|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_ESTADO|sseg[0]~0_combout\ = ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( !\CONTROLADOR|Eatual.LIGA1~q\ ) 
-- ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( !\CONTROLADOR|Eatual.LIGA1~q\ & ( (!\CONTROLADOR|Eatual.INICIAL~q\) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datae => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	combout => \DIS_ESTADO|sseg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\DIS_ESTADO|sseg[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_ESTADO|sseg[3]~1_combout\ = ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA~q\ ) ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA~q\ ) ) # ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( !\CONTROLADOR|Eatual.LIGA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \DIS_ESTADO|sseg[3]~1_combout\);

-- Location: MLABCELL_X42_Y2_N30
\DIS_ESTADO|sseg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_ESTADO|sseg[0]~2_combout\ = ( \CONTROLADOR|Eatual.INICIAL~q\ & ( (\CONTROLADOR|Eatual.ERRO~q\) # (\CONTROLADOR|Eatual.JOGOPRONTO~q\) ) ) # ( !\CONTROLADOR|Eatual.INICIAL~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datae => \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	combout => \DIS_ESTADO|sseg[0]~2_combout\);

-- Location: MLABCELL_X42_Y2_N39
\DIS_ESTADO|sseg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_ESTADO|sseg[5]~3_combout\ = ( \CONTROLADOR|Eatual.LIGA1~q\ & ( (\CONTROLADOR|Eatual.JOGOPRONTO~q\) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) # ( !\CONTROLADOR|Eatual.LIGA1~q\ & ( ((!\CONTROLADOR|Eatual.INICIAL~q\) # (\CONTROLADOR|Eatual.JOGOPRONTO~q\)) # 
-- (\CONTROLADOR|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	datad => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	combout => \DIS_ESTADO|sseg[5]~3_combout\);

-- Location: MLABCELL_X42_Y2_N9
\DIS_ESTADO|sseg[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS_ESTADO|sseg[6]~4_combout\ = ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( \CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( \CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( !\CONTROLADOR|Eatual.LIGA1~q\ ) 
-- ) # ( !\CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( !\CONTROLADOR|Eatual.LIGA1~q\ & ( \CONTROLADOR|Eatual.ERRO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datae => \CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	dataf => \CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	combout => \DIS_ESTADO|sseg[6]~4_combout\);

-- Location: MLABCELL_X45_Y4_N42
\DIS0|sseg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[0]~1_combout\ = ( \MEDIDOR|REG|IQ\(2) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(1) & (!\MEDIDOR|REG|IQ\(0) $ (\MEDIDOR|REG|IQ\(3))))) ) ) # ( !\MEDIDOR|REG|IQ\(2) & ( (\MEDIDOR|REG|IQ\(0) & (!\CONTROLADOR|Eatual.ERRO~q\ & 
-- (!\MEDIDOR|REG|IQ\(3) $ (\MEDIDOR|REG|IQ\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100010000000000010010000100000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(3),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[0]~1_combout\);

-- Location: MLABCELL_X45_Y4_N45
\DIS0|sseg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[1]~2_combout\ = ( \MEDIDOR|REG|IQ\(1) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & ((!\MEDIDOR|REG|IQ\(0) & (\MEDIDOR|REG|IQ\(2))) # (\MEDIDOR|REG|IQ\(0) & ((\MEDIDOR|REG|IQ\(3)))))) ) ) # ( !\MEDIDOR|REG|IQ\(1) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & 
-- (\MEDIDOR|REG|IQ\(2) & (!\MEDIDOR|REG|IQ\(0) $ (!\MEDIDOR|REG|IQ\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(2),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(1),
	combout => \DIS0|sseg[1]~2_combout\);

-- Location: MLABCELL_X42_Y2_N51
\DIS0|sseg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[2]~3_combout\ = ( \MEDIDOR|REG|IQ\(3) & ( \MEDIDOR|REG|IQ\(2) & ( ((!\MEDIDOR|REG|IQ\(1) & \MEDIDOR|REG|IQ\(0))) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) ) # ( !\MEDIDOR|REG|IQ\(3) & ( \MEDIDOR|REG|IQ\(2) ) ) # ( \MEDIDOR|REG|IQ\(3) & ( 
-- !\MEDIDOR|REG|IQ\(2) ) ) # ( !\MEDIDOR|REG|IQ\(3) & ( !\MEDIDOR|REG|IQ\(2) & ( (!\MEDIDOR|REG|IQ\(1)) # ((\CONTROLADOR|Eatual.ERRO~q\) # (\MEDIDOR|REG|IQ\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111111111111111111111111111111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(1),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datad => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datae => \MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[2]~3_combout\);

-- Location: MLABCELL_X42_Y2_N3
\DIS0|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[3]~4_combout\ = ( \MUX|Selector12~0_combout\ & ( (\MUX|Selector14~0_combout\ & (!\MUX|Selector13~0_combout\ $ (!\DIS0|sseg[6]~0_combout\))) ) ) # ( !\MUX|Selector12~0_combout\ & ( (!\MUX|Selector14~0_combout\ & (!\MUX|Selector13~0_combout\ $ 
-- (\DIS0|sseg[6]~0_combout\))) # (\MUX|Selector14~0_combout\ & (\MUX|Selector13~0_combout\ & !\DIS0|sseg[6]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100001010101001010000101000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_Selector14~0_combout\,
	datac => \MUX|ALT_INV_Selector13~0_combout\,
	datad => \DIS0|ALT_INV_sseg[6]~0_combout\,
	dataf => \MUX|ALT_INV_Selector12~0_combout\,
	combout => \DIS0|sseg[3]~4_combout\);

-- Location: MLABCELL_X42_Y2_N36
\DIS0|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[4]~5_combout\ = ( \MEDIDOR|REG|IQ\(2) & ( ((!\MEDIDOR|REG|IQ\(3) & ((!\MEDIDOR|REG|IQ\(1)) # (\MEDIDOR|REG|IQ\(0))))) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) # ( !\MEDIDOR|REG|IQ\(2) & ( ((\MEDIDOR|REG|IQ\(0) & ((!\MEDIDOR|REG|IQ\(1)) # 
-- (!\MEDIDOR|REG|IQ\(3))))) # (\CONTROLADOR|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110101011101110111010111110111010101011111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datab => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(1),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[4]~5_combout\);

-- Location: MLABCELL_X45_Y4_N30
\DIS0|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[5]~6_combout\ = ( \MEDIDOR|REG|IQ\(2) & ( (\MEDIDOR|REG|IQ\(0) & (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(3) $ (!\MEDIDOR|REG|IQ\(1))))) ) ) # ( !\MEDIDOR|REG|IQ\(2) & ( (!\MEDIDOR|REG|IQ\(3) & (!\CONTROLADOR|Eatual.ERRO~q\ & 
-- ((\MEDIDOR|REG|IQ\(0)) # (\MEDIDOR|REG|IQ\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(3),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(1),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datad => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[5]~6_combout\);

-- Location: MLABCELL_X42_Y2_N57
\DIS0|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[6]~7_combout\ = ( \MEDIDOR|REG|IQ\(3) & ( \MEDIDOR|REG|IQ\(2) & ( (!\MEDIDOR|REG|IQ\(1) & (!\MEDIDOR|REG|IQ\(0) & !\CONTROLADOR|Eatual.ERRO~q\)) ) ) ) # ( !\MEDIDOR|REG|IQ\(3) & ( \MEDIDOR|REG|IQ\(2) & ( (\MEDIDOR|REG|IQ\(1) & 
-- (\MEDIDOR|REG|IQ\(0) & !\CONTROLADOR|Eatual.ERRO~q\)) ) ) ) # ( !\MEDIDOR|REG|IQ\(3) & ( !\MEDIDOR|REG|IQ\(2) & ( (!\MEDIDOR|REG|IQ\(1) & !\CONTROLADOR|Eatual.ERRO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000010001000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(1),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(0),
	datad => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datae => \MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \DIS0|sseg[6]~7_combout\);

-- Location: MLABCELL_X45_Y4_N48
\DIS1|sseg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[0]~1_combout\ = ( \MEDIDOR|REG|IQ\(4) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & ((!\MEDIDOR|REG|IQ\(6) & (!\MEDIDOR|REG|IQ\(5) $ (\MEDIDOR|REG|IQ\(7)))) # (\MEDIDOR|REG|IQ\(6) & (!\MEDIDOR|REG|IQ\(5) & \MEDIDOR|REG|IQ\(7))))) ) ) # ( 
-- !\MEDIDOR|REG|IQ\(4) & ( (\MEDIDOR|REG|IQ\(6) & (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(5) & !\MEDIDOR|REG|IQ\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000000010010001000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(6),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(5),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(7),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(4),
	combout => \DIS1|sseg[0]~1_combout\);

-- Location: MLABCELL_X45_Y4_N51
\DIS1|sseg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[1]~2_combout\ = ( \MEDIDOR|REG|IQ\(4) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & ((!\MEDIDOR|REG|IQ\(5) & (\MEDIDOR|REG|IQ\(6) & !\MEDIDOR|REG|IQ\(7))) # (\MEDIDOR|REG|IQ\(5) & ((\MEDIDOR|REG|IQ\(7)))))) ) ) # ( !\MEDIDOR|REG|IQ\(4) & ( 
-- (\MEDIDOR|REG|IQ\(6) & (!\CONTROLADOR|Eatual.ERRO~q\ & ((\MEDIDOR|REG|IQ\(7)) # (\MEDIDOR|REG|IQ\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010001000000000011000100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(6),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(5),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(7),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(4),
	combout => \DIS1|sseg[1]~2_combout\);

-- Location: MLABCELL_X45_Y4_N24
\DIS1|sseg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[2]~3_combout\ = ( \MEDIDOR|REG|IQ\(5) & ( ((!\MEDIDOR|REG|IQ\(7) & ((\MEDIDOR|REG|IQ\(4)) # (\MEDIDOR|REG|IQ\(6)))) # (\MEDIDOR|REG|IQ\(7) & (!\MEDIDOR|REG|IQ\(6)))) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) # ( !\MEDIDOR|REG|IQ\(5) & ( 
-- (!\MEDIDOR|REG|IQ\(7)) # (((!\MEDIDOR|REG|IQ\(6)) # (\MEDIDOR|REG|IQ\(4))) # (\CONTROLADOR|Eatual.ERRO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111110111111111101111011111110110111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(7),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(6),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(4),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(5),
	combout => \DIS1|sseg[2]~3_combout\);

-- Location: LABCELL_X47_Y4_N21
\DIS1|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[3]~4_combout\ = (!\MUX|Selector10~0_combout\ & (!\MUX|Selector8~0_combout\ & (!\MUX|Selector9~0_combout\ $ (\DIS1|sseg[6]~0_combout\)))) # (\MUX|Selector10~0_combout\ & ((!\MUX|Selector9~0_combout\ & (\MUX|Selector8~0_combout\ & 
-- \DIS1|sseg[6]~0_combout\)) # (\MUX|Selector9~0_combout\ & ((!\DIS1|sseg[6]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010101000010100001010100001010000101010000101000010101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_Selector9~0_combout\,
	datab => \MUX|ALT_INV_Selector8~0_combout\,
	datac => \MUX|ALT_INV_Selector10~0_combout\,
	datad => \DIS1|ALT_INV_sseg[6]~0_combout\,
	combout => \DIS1|sseg[3]~4_combout\);

-- Location: MLABCELL_X45_Y4_N18
\DIS1|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[4]~5_combout\ = ( \MEDIDOR|REG|IQ\(4) & ( ((!\MEDIDOR|REG|IQ\(7)) # ((!\MEDIDOR|REG|IQ\(6) & !\MEDIDOR|REG|IQ\(5)))) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) # ( !\MEDIDOR|REG|IQ\(4) & ( ((\MEDIDOR|REG|IQ\(6) & (!\MEDIDOR|REG|IQ\(7) & 
-- !\MEDIDOR|REG|IQ\(5)))) # (\CONTROLADOR|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011011100110011001111111011111100111111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(6),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(7),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(4),
	combout => \DIS1|sseg[4]~5_combout\);

-- Location: MLABCELL_X45_Y4_N27
\DIS1|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[5]~6_combout\ = ( \MEDIDOR|REG|IQ\(4) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(7) $ (((!\MEDIDOR|REG|IQ\(5) & \MEDIDOR|REG|IQ\(6)))))) ) ) # ( !\MEDIDOR|REG|IQ\(4) & ( (!\MEDIDOR|REG|IQ\(7) & (!\CONTROLADOR|Eatual.ERRO~q\ & 
-- (\MEDIDOR|REG|IQ\(5) & !\MEDIDOR|REG|IQ\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000010001000010010001000100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(7),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(5),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(6),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(4),
	combout => \DIS1|sseg[5]~6_combout\);

-- Location: MLABCELL_X45_Y4_N21
\DIS1|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[6]~7_combout\ = ( \MEDIDOR|REG|IQ\(4) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(7) & (!\MEDIDOR|REG|IQ\(6) $ (\MEDIDOR|REG|IQ\(5))))) ) ) # ( !\MEDIDOR|REG|IQ\(4) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(5) & 
-- (!\MEDIDOR|REG|IQ\(6) $ (\MEDIDOR|REG|IQ\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000010000100000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(6),
	datab => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datac => \MEDIDOR|REG|ALT_INV_IQ\(5),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(7),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(4),
	combout => \DIS1|sseg[6]~7_combout\);

-- Location: FF_X43_Y4_N17
\MEDIDOR|REG|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \MEDIDOR|CONT|CONT3|IQ\(0),
	sclr => \MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \MEDIDOR|REG|IQ[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEDIDOR|REG|IQ\(8));

-- Location: LABCELL_X43_Y4_N0
\DIS2|sseg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[0]~1_combout\ = ( \MEDIDOR|REG|IQ\(8) & ( (!\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ((!\MEDIDOR|REG|IQ\(10) & (!\MEDIDOR|REG|IQ\(9) $ (\MEDIDOR|REG|IQ\(11)))) # (\MEDIDOR|REG|IQ\(10) & (!\MEDIDOR|REG|IQ\(9) & \MEDIDOR|REG|IQ\(11))))) ) ) # ( 
-- !\MEDIDOR|REG|IQ\(8) & ( (\MEDIDOR|REG|IQ\(10) & (!\MEDIDOR|REG|IQ\(9) & (!\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & !\MEDIDOR|REG|IQ\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000000011000001000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(10),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \MEDIDOR|REG|ALT_INV_IQ\(11),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[0]~1_combout\);

-- Location: LABCELL_X43_Y4_N3
\DIS2|sseg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[1]~2_combout\ = ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( (!\MEDIDOR|REG|IQ\(9) & (\MEDIDOR|REG|IQ\(10) & (!\MEDIDOR|REG|IQ\(8) $ (!\MEDIDOR|REG|IQ\(11))))) # (\MEDIDOR|REG|IQ\(9) & ((!\MEDIDOR|REG|IQ\(8) & (\MEDIDOR|REG|IQ\(10))) # 
-- (\MEDIDOR|REG|IQ\(8) & ((\MEDIDOR|REG|IQ\(11)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(10),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(8),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(11),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \DIS2|sseg[1]~2_combout\);

-- Location: LABCELL_X43_Y4_N6
\DIS2|sseg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[2]~3_combout\ = ( \MEDIDOR|REG|IQ\(8) & ( ((!\MEDIDOR|REG|IQ\(9)) # ((!\MEDIDOR|REG|IQ\(10)) # (!\MEDIDOR|REG|IQ\(11)))) # (\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) ) # ( !\MEDIDOR|REG|IQ\(8) & ( ((!\MEDIDOR|REG|IQ\(10) & 
-- ((!\MEDIDOR|REG|IQ\(9)) # (\MEDIDOR|REG|IQ\(11)))) # (\MEDIDOR|REG|IQ\(10) & ((!\MEDIDOR|REG|IQ\(11))))) # (\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111110101110111111111010111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(10),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(11),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[2]~3_combout\);

-- Location: LABCELL_X47_Y4_N15
\DIS2|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[3]~4_combout\ = ( \MUX|Selector6~0_combout\ & ( (!\DIS2|sseg[6]~0_combout\ & ((\MUX|Selector5~0_combout\))) # (\DIS2|sseg[6]~0_combout\ & (\MUX|Selector4~0_combout\ & !\MUX|Selector5~0_combout\)) ) ) # ( !\MUX|Selector6~0_combout\ & ( 
-- (!\MUX|Selector4~0_combout\ & (!\DIS2|sseg[6]~0_combout\ $ (\MUX|Selector5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000011010000110100001101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DIS2|ALT_INV_sseg[6]~0_combout\,
	datab => \MUX|ALT_INV_Selector4~0_combout\,
	datac => \MUX|ALT_INV_Selector5~0_combout\,
	dataf => \MUX|ALT_INV_Selector6~0_combout\,
	combout => \DIS2|sseg[3]~4_combout\);

-- Location: LABCELL_X43_Y4_N42
\DIS2|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[4]~5_combout\ = ( \CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) # ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( (!\MEDIDOR|REG|IQ\(9) & ((!\MEDIDOR|REG|IQ\(10) & (\MEDIDOR|REG|IQ\(8))) # (\MEDIDOR|REG|IQ\(10) & ((!\MEDIDOR|REG|IQ\(11)))))) # 
-- (\MEDIDOR|REG|IQ\(9) & (((\MEDIDOR|REG|IQ\(8) & !\MEDIDOR|REG|IQ\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000110000011100100011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(10),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(8),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(9),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \DIS2|sseg[4]~5_combout\);

-- Location: LABCELL_X43_Y4_N33
\DIS2|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[5]~6_combout\ = ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( (!\MEDIDOR|REG|IQ\(9) & (\MEDIDOR|REG|IQ\(8) & (!\MEDIDOR|REG|IQ\(11) $ (\MEDIDOR|REG|IQ\(10))))) # (\MEDIDOR|REG|IQ\(9) & (!\MEDIDOR|REG|IQ\(11) & ((!\MEDIDOR|REG|IQ\(10)) # 
-- (\MEDIDOR|REG|IQ\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000110001010100000011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(11),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(8),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(10),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \DIS2|sseg[5]~6_combout\);

-- Location: LABCELL_X43_Y4_N45
\DIS2|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[6]~7_combout\ = ( !\CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( (!\MEDIDOR|REG|IQ\(8) & (!\MEDIDOR|REG|IQ\(9) & (!\MEDIDOR|REG|IQ\(10) $ (\MEDIDOR|REG|IQ\(11))))) # (\MEDIDOR|REG|IQ\(8) & (!\MEDIDOR|REG|IQ\(11) & (!\MEDIDOR|REG|IQ\(10) $ 
-- (\MEDIDOR|REG|IQ\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000101000000101000010100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(10),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(8),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(9),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(11),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \DIS2|sseg[6]~7_combout\);

-- Location: LABCELL_X47_Y4_N33
\DIS3|sseg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[0]~1_combout\ = ( !\CONTROLADOR|Eatual.ERRO~q\ & ( (!\MEDIDOR|REG|IQ\(14) & (\MEDIDOR|REG|IQ\(12) & (!\MEDIDOR|REG|IQ\(15) $ (\MEDIDOR|REG|IQ\(13))))) # (\MEDIDOR|REG|IQ\(14) & (!\MEDIDOR|REG|IQ\(13) & (!\MEDIDOR|REG|IQ\(12) $ 
-- (\MEDIDOR|REG|IQ\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100000010011000010000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(14),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(12),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(15),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(13),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS3|sseg[0]~1_combout\);

-- Location: LABCELL_X47_Y4_N6
\DIS3|sseg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[1]~2_combout\ = ( !\CONTROLADOR|Eatual.ERRO~q\ & ( (!\MEDIDOR|REG|IQ\(13) & (\MEDIDOR|REG|IQ\(14) & (!\MEDIDOR|REG|IQ\(15) $ (!\MEDIDOR|REG|IQ\(12))))) # (\MEDIDOR|REG|IQ\(13) & ((!\MEDIDOR|REG|IQ\(12) & ((\MEDIDOR|REG|IQ\(14)))) # 
-- (\MEDIDOR|REG|IQ\(12) & (\MEDIDOR|REG|IQ\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100011001000001110001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(15),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(14),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(12),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS3|sseg[1]~2_combout\);

-- Location: LABCELL_X47_Y4_N9
\DIS3|sseg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[2]~3_combout\ = ( \CONTROLADOR|Eatual.ERRO~q\ ) # ( !\CONTROLADOR|Eatual.ERRO~q\ & ( (!\MEDIDOR|REG|IQ\(15) & ((!\MEDIDOR|REG|IQ\(13)) # ((\MEDIDOR|REG|IQ\(14)) # (\MEDIDOR|REG|IQ\(12))))) # (\MEDIDOR|REG|IQ\(15) & ((!\MEDIDOR|REG|IQ\(14)) # 
-- ((!\MEDIDOR|REG|IQ\(13) & \MEDIDOR|REG|IQ\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111001110101111111100111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(15),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(14),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS3|sseg[2]~3_combout\);

-- Location: LABCELL_X47_Y4_N24
\DIS3|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[3]~4_combout\ = ( \DIS3|sseg[6]~0_combout\ & ( (!\MUX|Selector1~0_combout\ & (\MUX|Selector0~0_combout\ & \MUX|Selector2~0_combout\)) # (\MUX|Selector1~0_combout\ & (!\MUX|Selector0~0_combout\ & !\MUX|Selector2~0_combout\)) ) ) # ( 
-- !\DIS3|sseg[6]~0_combout\ & ( (!\MUX|Selector1~0_combout\ & (!\MUX|Selector0~0_combout\ & !\MUX|Selector2~0_combout\)) # (\MUX|Selector1~0_combout\ & ((\MUX|Selector2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010110000101100001011000010101000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_Selector1~0_combout\,
	datab => \MUX|ALT_INV_Selector0~0_combout\,
	datac => \MUX|ALT_INV_Selector2~0_combout\,
	dataf => \DIS3|ALT_INV_sseg[6]~0_combout\,
	combout => \DIS3|sseg[3]~4_combout\);

-- Location: LABCELL_X47_Y4_N0
\DIS3|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[4]~5_combout\ = ( \MEDIDOR|REG|IQ\(15) & ( ((\MEDIDOR|REG|IQ\(12) & (!\MEDIDOR|REG|IQ\(14) & !\MEDIDOR|REG|IQ\(13)))) # (\CONTROLADOR|Eatual.ERRO~q\) ) ) # ( !\MEDIDOR|REG|IQ\(15) & ( (((\MEDIDOR|REG|IQ\(14) & !\MEDIDOR|REG|IQ\(13))) # 
-- (\MEDIDOR|REG|IQ\(12))) # (\CONTROLADOR|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011111110111011101110101010101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datab => \MEDIDOR|REG|ALT_INV_IQ\(12),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(14),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(13),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(15),
	combout => \DIS3|sseg[4]~5_combout\);

-- Location: LABCELL_X47_Y4_N3
\DIS3|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[5]~6_combout\ = ( \MEDIDOR|REG|IQ\(13) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (!\MEDIDOR|REG|IQ\(15) & ((!\MEDIDOR|REG|IQ\(14)) # (\MEDIDOR|REG|IQ\(12))))) ) ) # ( !\MEDIDOR|REG|IQ\(13) & ( (!\CONTROLADOR|Eatual.ERRO~q\ & (\MEDIDOR|REG|IQ\(12) & 
-- (!\MEDIDOR|REG|IQ\(15) $ (\MEDIDOR|REG|IQ\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010001000000000001010100000001000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datab => \MEDIDOR|REG|ALT_INV_IQ\(12),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(15),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(14),
	dataf => \MEDIDOR|REG|ALT_INV_IQ\(13),
	combout => \DIS3|sseg[5]~6_combout\);

-- Location: LABCELL_X47_Y4_N30
\DIS3|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[6]~7_combout\ = ( !\CONTROLADOR|Eatual.ERRO~q\ & ( (!\MEDIDOR|REG|IQ\(12) & (!\MEDIDOR|REG|IQ\(13) & (!\MEDIDOR|REG|IQ\(14) $ (\MEDIDOR|REG|IQ\(15))))) # (\MEDIDOR|REG|IQ\(12) & (!\MEDIDOR|REG|IQ\(15) & (!\MEDIDOR|REG|IQ\(14) $ 
-- (\MEDIDOR|REG|IQ\(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000101000000101000010100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEDIDOR|REG|ALT_INV_IQ\(14),
	datab => \MEDIDOR|REG|ALT_INV_IQ\(12),
	datac => \MEDIDOR|REG|ALT_INV_IQ\(13),
	datad => \MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \DIS3|sseg[6]~7_combout\);

-- Location: LABCELL_X48_Y33_N3
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


