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

-- DATE "03/17/2020 02:33:01"

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

ENTITY 	Formex IS
    PORT (
	jogar : IN std_logic;
	resposta1 : IN std_logic;
	resposta2 : IN std_logic;
	resposta3 : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	pseudoclock : IN std_logic;
	sel_mux : IN std_logic_vector(1 DOWNTO 0);
	ligado : OUT std_logic;
	pulso : OUT std_logic;
	estimulo : OUT std_logic;
	erro : OUT std_logic;
	pronto : OUT std_logic;
	tempo : OUT std_logic_vector(15 DOWNTO 0);
	db_estado_7 : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg : OUT std_logic_vector(27 DOWNTO 0);
	leds : OUT std_logic_vector(9 DOWNTO 0);
	jogadasFeitas_db : OUT std_logic_vector(1 DOWNTO 0);
	gameover_db : OUT std_logic;
	randContador_db : OUT std_logic_vector(1 DOWNTO 0);
	estadoAtual_db : OUT std_logic_vector(1 DOWNTO 0);
	respostaJOGO_db : OUT std_logic;
	dis4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Formex;

-- Design Ports Information
-- ligado	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estimulo	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[9]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[15]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- leds[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadasFeitas_db[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadasFeitas_db[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameover_db	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- randContador_db[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- randContador_db[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtual_db[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtual_db[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- respostaJOGO_db	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta2	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta1	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta3	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pseudoclock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogar	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Formex IS
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
SIGNAL ww_resposta1 : std_logic;
SIGNAL ww_resposta2 : std_logic;
SIGNAL ww_resposta3 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_pseudoclock : std_logic;
SIGNAL ww_sel_mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ligado : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_estimulo : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_tempo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_db_estado_7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_jogadasFeitas_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_gameover_db : std_logic;
SIGNAL ww_randContador_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_estadoAtual_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_respostaJOGO_db : std_logic;
SIGNAL ww_dis4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta2~input_o\ : std_logic;
SIGNAL \resposta3~input_o\ : std_logic;
SIGNAL \resposta1~input_o\ : std_logic;
SIGNAL \jogar~input_o\ : std_logic;
SIGNAL \pseudoclock~input_o\ : std_logic;
SIGNAL \pseudoclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RANDOM_DISP|sseg[0]~0_combout\ : std_logic;
SIGNAL \RANDOM_DISP|Equal15~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|IQ[0]~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \estadoAtual~0_combout\ : std_logic;
SIGNAL \STATE_COUNT|IQ~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \STATE_COUNT|IQ~0_combout\ : std_logic;
SIGNAL \FINAL|Selector3~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INTERMED~q\ : std_logic;
SIGNAL \FINAL|Eatual.INICIAL~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INICIAL~q\ : std_logic;
SIGNAL \FINAL|Selector0~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.RESETADOR~q\ : std_logic;
SIGNAL \FINAL|Eatual.ATIVADOR~q\ : std_logic;
SIGNAL \FINAL|WideNor0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \JOGO_REAC|reset_in2~combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|LATCH|iq~combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Selector0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \FINAL|Selector1~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.JOGADOR~q\ : std_logic;
SIGNAL \FINAL|Eprox.INTERMED1~0_combout\ : std_logic;
SIGNAL \FINAL|Eprox.INTERMED1~1_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INTERMED1~q\ : std_logic;
SIGNAL \estadoAtual[0]~1_combout\ : std_logic;
SIGNAL \estadoAtual~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector15~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector14~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector13~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector12~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector11~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector10~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector9~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector8~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector7~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector6~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector5~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector4~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector2~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector0~0_combout\ : std_logic;
SIGNAL \RANDOM_DISP|sseg[2]~1_combout\ : std_logic;
SIGNAL \sel_mux[0]~input_o\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|Mux0~0_combout\ : std_logic;
SIGNAL \sel_mux[1]~input_o\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[0]~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[1]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|Mux0~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[3]~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[4]~5_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[5]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|sseg[6]~7_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[0]~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[1]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[3]~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[4]~5_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[5]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|sseg[6]~7_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[0]~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[1]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[3]~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[4]~5_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[5]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|sseg[6]~7_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[0]~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[1]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[3]~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[4]~5_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[5]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|sseg[6]~7_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED6|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED7|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED8|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED9|Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \FINAL|WideOr5~combout\ : std_logic;
SIGNAL \FINAL|Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.ERRO~q\ : std_logic;
SIGNAL \FINAL|Eatual.FIM~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.FIM~q\ : std_logic;
SIGNAL \FINAL|WideOr6~combout\ : std_logic;
SIGNAL \FINAL|WideOr7~combout\ : std_logic;
SIGNAL \FINAL|WideOr8~combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[0]~0_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[1]~1_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[2]~2_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[3]~3_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[4]~4_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[5]~5_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[6]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL estadoAtual : std_logic_vector(1 DOWNTO 0);
SIGNAL \STATE_COUNT|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RANDOM|CONTA|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|ALT_INV_sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS3|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|ALT_INV_sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS2|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|ALT_INV_sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS1|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|ALT_INV_sseg[1]~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|DIS0|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \RANDOM_DISP|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|ALT_INV_IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|PULSE|ALT_INV_pulso~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_jogar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta3~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta1~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta2~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_mux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_mux[1]~input_o\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.INTERMED1~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|ALT_INV_reset_in2~combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|ALT_INV_sseg[2]~2_combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.INTERMED~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.INICIAL~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.JOGADOR~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.ERRO~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.FIM~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.ATIVADOR~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.RESETADOR~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_estadoAtual : std_logic_vector(1 DOWNTO 0);
SIGNAL \STATE_COUNT|ALT_INV_IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED7|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_jogar <= jogar;
ww_resposta1 <= resposta1;
ww_resposta2 <= resposta2;
ww_resposta3 <= resposta3;
ww_reset <= reset;
ww_clock <= clock;
ww_pseudoclock <= pseudoclock;
ww_sel_mux <= sel_mux;
ligado <= ww_ligado;
pulso <= ww_pulso;
estimulo <= ww_estimulo;
erro <= ww_erro;
pronto <= ww_pronto;
tempo <= ww_tempo;
db_estado_7 <= ww_db_estado_7;
saida7seg <= ww_saida7seg;
leds <= ww_leds;
jogadasFeitas_db <= ww_jogadasFeitas_db;
gameover_db <= ww_gameover_db;
randContador_db <= ww_randContador_db;
estadoAtual_db <= ww_estadoAtual_db;
respostaJOGO_db <= ww_respostaJOGO_db;
dis4 <= ww_dis4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\;
\RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \RANDOM|CONTA|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3);
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2);
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1);
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0);
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3);
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2);
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1);
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0);
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\;
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3);
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2);
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1);
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0);
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3);
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2);
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1);
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0);
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\;
\JOGO_REAC|MUX_DISP3|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_DISP3|Mux0~0_combout\;
\JOGO_REAC|MUX_DISP3|ALT_INV_Mux1~0_combout\ <= NOT \JOGO_REAC|MUX_DISP3|Mux1~0_combout\;
\JOGO_REAC|DIS3|ALT_INV_sseg[1]~3_combout\ <= NOT \JOGO_REAC|DIS3|sseg[1]~3_combout\;
\JOGO_REAC|MUX_DISP3|ALT_INV_Mux3~0_combout\ <= NOT \JOGO_REAC|MUX_DISP3|Mux3~0_combout\;
\JOGO_REAC|DIS3|ALT_INV_sseg[2]~2_combout\ <= NOT \JOGO_REAC|DIS3|sseg[2]~2_combout\;
\JOGO_REAC|MUX_DISP2|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_DISP2|Mux0~0_combout\;
\JOGO_REAC|MUX_DISP2|ALT_INV_Mux1~0_combout\ <= NOT \JOGO_REAC|MUX_DISP2|Mux1~0_combout\;
\JOGO_REAC|DIS2|ALT_INV_sseg[1]~3_combout\ <= NOT \JOGO_REAC|DIS2|sseg[1]~3_combout\;
\JOGO_REAC|MUX_DISP2|ALT_INV_Mux3~0_combout\ <= NOT \JOGO_REAC|MUX_DISP2|Mux3~0_combout\;
\JOGO_REAC|DIS2|ALT_INV_sseg[2]~2_combout\ <= NOT \JOGO_REAC|DIS2|sseg[2]~2_combout\;
\JOGO_REAC|MUX_DISP1|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_DISP1|Mux0~0_combout\;
\JOGO_REAC|MUX_DISP1|ALT_INV_Mux1~0_combout\ <= NOT \JOGO_REAC|MUX_DISP1|Mux1~0_combout\;
\JOGO_REAC|DIS1|ALT_INV_sseg[1]~3_combout\ <= NOT \JOGO_REAC|DIS1|sseg[1]~3_combout\;
\JOGO_REAC|MUX_DISP1|ALT_INV_Mux3~0_combout\ <= NOT \JOGO_REAC|MUX_DISP1|Mux3~0_combout\;
\JOGO_REAC|DIS1|ALT_INV_sseg[2]~2_combout\ <= NOT \JOGO_REAC|DIS1|sseg[2]~2_combout\;
\JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~1_combout\ <= NOT \JOGO_REAC|MUX_DISP0|Mux0~1_combout\;
\JOGO_REAC|MUX_DISP0|ALT_INV_Mux1~0_combout\ <= NOT \JOGO_REAC|MUX_DISP0|Mux1~0_combout\;
\JOGO_REAC|DIS0|ALT_INV_sseg[1]~3_combout\ <= NOT \JOGO_REAC|DIS0|sseg[1]~3_combout\;
\JOGO_REAC|MUX_DISP0|ALT_INV_Mux3~0_combout\ <= NOT \JOGO_REAC|MUX_DISP0|Mux3~0_combout\;
\JOGO_REAC|DIS0|ALT_INV_sseg[2]~2_combout\ <= NOT \JOGO_REAC|DIS0|sseg[2]~2_combout\;
\JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_DISP0|Mux0~0_combout\;
\RANDOM_DISP|ALT_INV_Equal15~0_combout\ <= NOT \RANDOM_DISP|Equal15~0_combout\;
\RANDOM|CONTA|ALT_INV_IQ\(1) <= NOT \RANDOM|CONTA|IQ\(1);
\RANDOM|CONTA|ALT_INV_IQ\(0) <= NOT \RANDOM|CONTA|IQ\(0);
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\;
\JOGO_REAC|INTERFACE|PULSE|ALT_INV_pulso~0_combout\ <= NOT \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\;
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(15);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(14);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(13);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(12);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(11);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(10);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(9);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(8);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(7);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(6);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(5);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(4);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(3);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(2);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(1);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(0);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[7]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[4]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\;
\ALT_INV_jogar~input_o\ <= NOT \jogar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_resposta3~input_o\ <= NOT \resposta3~input_o\;
\ALT_INV_resposta1~input_o\ <= NOT \resposta1~input_o\;
\ALT_INV_resposta2~input_o\ <= NOT \resposta2~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_sel_mux[0]~input_o\ <= NOT \sel_mux[0]~input_o\;
\ALT_INV_sel_mux[1]~input_o\ <= NOT \sel_mux[1]~input_o\;
\JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\ <= NOT \JOGO_REAC|INTERFACE|LATCH|iq~combout\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\;
\FINAL|ALT_INV_Eprox.INTERMED1~0_combout\ <= NOT \FINAL|Eprox.INTERMED1~0_combout\;
\FINAL|ALT_INV_Eatual.INTERMED1~q\ <= NOT \FINAL|Eatual.INTERMED1~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\ <= NOT \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\;
\JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1);
\JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0);
\JOGO_REAC|ALT_INV_reset_in2~combout\ <= NOT \JOGO_REAC|reset_in2~combout\;
\FINAL|ALT_INV_WideNor0~0_combout\ <= NOT \FINAL|WideNor0~0_combout\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\;
\DB_ESTADO_7SEG|ALT_INV_sseg[2]~2_combout\ <= NOT \DB_ESTADO_7SEG|sseg[2]~2_combout\;
\FINAL|ALT_INV_WideOr8~combout\ <= NOT \FINAL|WideOr8~combout\;
\FINAL|ALT_INV_Eatual.INTERMED~q\ <= NOT \FINAL|Eatual.INTERMED~q\;
\FINAL|ALT_INV_WideOr5~combout\ <= NOT \FINAL|WideOr5~combout\;
\FINAL|ALT_INV_Eatual.INICIAL~q\ <= NOT \FINAL|Eatual.INICIAL~q\;
\FINAL|ALT_INV_WideOr6~combout\ <= NOT \FINAL|WideOr6~combout\;
\FINAL|ALT_INV_Eatual.JOGADOR~q\ <= NOT \FINAL|Eatual.JOGADOR~q\;
\FINAL|ALT_INV_WideOr7~combout\ <= NOT \FINAL|WideOr7~combout\;
\FINAL|ALT_INV_Eatual.ERRO~q\ <= NOT \FINAL|Eatual.ERRO~q\;
\FINAL|ALT_INV_Eatual.FIM~q\ <= NOT \FINAL|Eatual.FIM~q\;
\FINAL|ALT_INV_Eatual.ATIVADOR~q\ <= NOT \FINAL|Eatual.ATIVADOR~q\;
\FINAL|ALT_INV_Eatual.RESETADOR~q\ <= NOT \FINAL|Eatual.RESETADOR~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_estadoAtual(1) <= NOT estadoAtual(1);
ALT_INV_estadoAtual(0) <= NOT estadoAtual(0);
\STATE_COUNT|ALT_INV_IQ\(1) <= NOT \STATE_COUNT|IQ\(1);
\STATE_COUNT|ALT_INV_IQ\(0) <= NOT \STATE_COUNT|IQ\(0);
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\;
\JOGO_REAC|MUX_LED7|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_LED7|Mux0~0_combout\;

-- Location: IOOBUF_X38_Y0_N2
\ligado~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\,
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
	i => \JOGO_REAC|INTERFACE|PULSE|ALT_INV_pulso~0_combout\,
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
	i => \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\,
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
	i => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X54_Y15_N39
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOOBUF_X29_Y0_N53
\tempo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector15~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(0));

-- Location: IOOBUF_X24_Y0_N19
\tempo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector14~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(1));

-- Location: IOOBUF_X54_Y14_N62
\tempo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector13~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(2));

-- Location: IOOBUF_X24_Y0_N53
\tempo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector12~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(3));

-- Location: IOOBUF_X25_Y0_N19
\tempo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector11~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(4));

-- Location: IOOBUF_X33_Y0_N93
\tempo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector10~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(5));

-- Location: IOOBUF_X24_Y0_N36
\tempo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(6));

-- Location: IOOBUF_X33_Y0_N76
\tempo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector8~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(7));

-- Location: IOOBUF_X25_Y0_N2
\tempo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector7~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(8));

-- Location: IOOBUF_X54_Y14_N79
\tempo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector6~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(9));

-- Location: IOOBUF_X25_Y0_N36
\tempo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector5~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(10));

-- Location: IOOBUF_X29_Y0_N36
\tempo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector4~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(11));

-- Location: IOOBUF_X24_Y0_N2
\tempo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector3~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(12));

-- Location: IOOBUF_X34_Y0_N2
\tempo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector2~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(13));

-- Location: IOOBUF_X34_Y0_N36
\tempo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector1~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(14));

-- Location: IOOBUF_X34_Y0_N19
\tempo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX|Selector0~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(15));

-- Location: IOOBUF_X29_Y0_N2
\db_estado_7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RANDOM_DISP|sseg[0]~0_combout\,
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
	i => GND,
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
	i => \RANDOM_DISP|sseg[2]~1_combout\,
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
	i => \RANDOM_DISP|sseg[0]~0_combout\,
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
	i => \RANDOM|CONTA|IQ[0]~DUPLICATE_q\,
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
	i => \RANDOM_DISP|Equal15~0_combout\,
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
	i => \RANDOM|CONTA|ALT_INV_IQ\(1),
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
	i => \JOGO_REAC|DIS0|sseg[0]~0_combout\,
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
	i => \JOGO_REAC|DIS0|sseg[1]~1_combout\,
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
	i => \JOGO_REAC|DIS0|ALT_INV_sseg[2]~2_combout\,
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
	i => \JOGO_REAC|DIS0|sseg[3]~4_combout\,
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
	i => \JOGO_REAC|DIS0|sseg[4]~5_combout\,
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
	i => \JOGO_REAC|DIS0|sseg[5]~6_combout\,
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
	i => \JOGO_REAC|DIS0|sseg[6]~7_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[0]~0_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[1]~1_combout\,
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
	i => \JOGO_REAC|DIS1|ALT_INV_sseg[2]~2_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[3]~4_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[4]~5_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[5]~6_combout\,
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
	i => \JOGO_REAC|DIS1|sseg[6]~7_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[0]~0_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[1]~1_combout\,
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
	i => \JOGO_REAC|DIS2|ALT_INV_sseg[2]~2_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[3]~4_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[4]~5_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[5]~6_combout\,
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
	i => \JOGO_REAC|DIS2|sseg[6]~7_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[0]~0_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[1]~1_combout\,
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
	i => \JOGO_REAC|DIS3|ALT_INV_sseg[2]~2_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[3]~4_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[4]~5_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[5]~6_combout\,
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
	i => \JOGO_REAC|DIS3|sseg[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida7seg(27));

-- Location: IOOBUF_X0_Y18_N96
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X0_Y18_N79
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X0_Y18_N62
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X0_Y18_N45
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X0_Y19_N39
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X0_Y19_N56
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X0_Y19_N5
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X0_Y19_N22
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X0_Y20_N39
\leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(8));

-- Location: IOOBUF_X0_Y20_N56
\leds[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|MUX_LED9|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(9));

-- Location: IOOBUF_X42_Y45_N19
\jogadasFeitas_db[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE_COUNT|IQ\(0),
	devoe => ww_devoe,
	o => ww_jogadasFeitas_db(0));

-- Location: IOOBUF_X50_Y0_N2
\jogadasFeitas_db[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE_COUNT|IQ\(1),
	devoe => ww_devoe,
	o => ww_jogadasFeitas_db(1));

-- Location: IOOBUF_X25_Y0_N53
\gameover_db~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_gameover_db);

-- Location: IOOBUF_X0_Y21_N5
\randContador_db[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RANDOM|CONTA|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_randContador_db(0));

-- Location: IOOBUF_X36_Y0_N53
\randContador_db[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RANDOM|CONTA|IQ\(1),
	devoe => ww_devoe,
	o => ww_randContador_db(1));

-- Location: IOOBUF_X54_Y15_N22
\estadoAtual_db[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => estadoAtual(0),
	devoe => ww_devoe,
	o => ww_estadoAtual_db(0));

-- Location: IOOBUF_X34_Y0_N53
\estadoAtual_db[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => estadoAtual(1),
	devoe => ww_devoe,
	o => ww_estadoAtual_db(1));

-- Location: IOOBUF_X54_Y15_N56
\respostaJOGO_db~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_respostaJOGO_db);

-- Location: IOOBUF_X52_Y0_N36
\dis4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dis4(0));

-- Location: IOOBUF_X48_Y0_N59
\dis4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_dis4(1));

-- Location: IOOBUF_X44_Y0_N19
\dis4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|ALT_INV_sseg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_dis4(2));

-- Location: IOOBUF_X52_Y0_N19
\dis4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_dis4(3));

-- Location: IOOBUF_X43_Y0_N2
\dis4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_dis4(4));

-- Location: IOOBUF_X36_Y0_N2
\dis4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_dis4(5));

-- Location: IOOBUF_X29_Y0_N19
\dis4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DB_ESTADO_7SEG|sseg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_dis4(6));

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

-- Location: IOIBUF_X54_Y21_N55
\resposta2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta2,
	o => \resposta2~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\resposta3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta3,
	o => \resposta3~input_o\);

-- Location: IOIBUF_X52_Y45_N1
\resposta1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta1,
	o => \resposta1~input_o\);

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

-- Location: IOIBUF_X54_Y18_N61
\pseudoclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pseudoclock,
	o => \pseudoclock~input_o\);

-- Location: CLKCTRL_G11
\pseudoclock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pseudoclock~input_o\,
	outclk => \pseudoclock~inputCLKENA0_outclk\);

-- Location: FF_X42_Y3_N20
\RANDOM|CONTA|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pseudoclock~inputCLKENA0_outclk\,
	d => \RANDOM|CONTA|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDOM|CONTA|IQ\(0));

-- Location: MLABCELL_X42_Y3_N54
\RANDOM_DISP|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|sseg[0]~0_combout\ = ( \RANDOM|CONTA|IQ\(0) & ( !\RANDOM|CONTA|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RANDOM|CONTA|ALT_INV_IQ\(1),
	dataf => \RANDOM|CONTA|ALT_INV_IQ\(0),
	combout => \RANDOM_DISP|sseg[0]~0_combout\);

-- Location: FF_X42_Y3_N2
\RANDOM|CONTA|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pseudoclock~inputCLKENA0_outclk\,
	asdata => \RANDOM_DISP|sseg[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDOM|CONTA|IQ\(1));

-- Location: MLABCELL_X42_Y3_N33
\RANDOM_DISP|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|Equal15~0_combout\ = ( \RANDOM|CONTA|IQ\(0) ) # ( !\RANDOM|CONTA|IQ\(0) & ( \RANDOM|CONTA|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RANDOM|CONTA|ALT_INV_IQ\(1),
	dataf => \RANDOM|CONTA|ALT_INV_IQ\(0),
	combout => \RANDOM_DISP|Equal15~0_combout\);

-- Location: MLABCELL_X42_Y3_N18
\RANDOM|CONTA|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM|CONTA|IQ[0]~0_combout\ = ( !\RANDOM_DISP|Equal15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RANDOM_DISP|ALT_INV_Equal15~0_combout\,
	combout => \RANDOM|CONTA|IQ[0]~0_combout\);

-- Location: FF_X42_Y3_N19
\RANDOM|CONTA|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pseudoclock~inputCLKENA0_outclk\,
	d => \RANDOM|CONTA|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDOM|CONTA|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N30
\estadoAtual~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estadoAtual~0_combout\ = ( estadoAtual(1) & ( (\RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & \jogar~input_o\) ) ) # ( !estadoAtual(1) & ( (!\jogar~input_o\ & ((!estadoAtual(0)))) # (\jogar~input_o\ & (\RANDOM|CONTA|IQ[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\,
	datac => \ALT_INV_jogar~input_o\,
	datad => ALT_INV_estadoAtual(0),
	dataf => ALT_INV_estadoAtual(1),
	combout => \estadoAtual~0_combout\);

-- Location: LABCELL_X43_Y3_N57
\STATE_COUNT|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE_COUNT|IQ~1_combout\ = ( !\STATE_COUNT|IQ\(1) & ( \STATE_COUNT|IQ\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \STATE_COUNT|ALT_INV_IQ\(1),
	dataf => \STATE_COUNT|ALT_INV_IQ\(0),
	combout => \STATE_COUNT|IQ~1_combout\);

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

-- Location: FF_X43_Y3_N58
\STATE_COUNT|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \STATE_COUNT|IQ~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \FINAL|Eatual.INTERMED1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_COUNT|IQ\(1));

-- Location: LABCELL_X43_Y3_N48
\STATE_COUNT|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE_COUNT|IQ~0_combout\ = ( !\STATE_COUNT|IQ\(0) & ( !\STATE_COUNT|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \STATE_COUNT|ALT_INV_IQ\(0),
	dataf => \STATE_COUNT|ALT_INV_IQ\(1),
	combout => \STATE_COUNT|IQ~0_combout\);

-- Location: FF_X43_Y3_N49
\STATE_COUNT|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \STATE_COUNT|IQ~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \FINAL|Eatual.INTERMED1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_COUNT|IQ\(0));

-- Location: MLABCELL_X42_Y3_N27
\FINAL|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Selector3~0_combout\ = ( \Mux0~0_combout\ & ( (\FINAL|Eatual.INTERMED~q\) # (\FINAL|Eatual.INTERMED1~q\) ) ) # ( !\Mux0~0_combout\ & ( \FINAL|Eatual.INTERMED1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.INTERMED1~q\,
	datad => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Selector3~0_combout\);

-- Location: FF_X42_Y3_N29
\FINAL|Eatual.INTERMED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.INTERMED~q\);

-- Location: LABCELL_X40_Y3_N48
\FINAL|Eatual.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.INICIAL~0_combout\ = (\FINAL|Eatual.INICIAL~q\) # (\jogar~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jogar~input_o\,
	datad => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	combout => \FINAL|Eatual.INICIAL~0_combout\);

-- Location: FF_X40_Y3_N50
\FINAL|Eatual.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Eatual.INICIAL~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.INICIAL~q\);

-- Location: LABCELL_X40_Y3_N39
\FINAL|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Selector0~0_combout\ = ( !\Mux0~0_combout\ & ( \FINAL|Eatual.INICIAL~q\ & ( \FINAL|Eatual.INTERMED~q\ ) ) ) # ( \Mux0~0_combout\ & ( !\FINAL|Eatual.INICIAL~q\ & ( \jogar~input_o\ ) ) ) # ( !\Mux0~0_combout\ & ( !\FINAL|Eatual.INICIAL~q\ & ( 
-- (\FINAL|Eatual.INTERMED~q\) # (\jogar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogar~input_o\,
	datac => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	combout => \FINAL|Selector0~0_combout\);

-- Location: FF_X40_Y3_N41
\FINAL|Eatual.RESETADOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.RESETADOR~q\);

-- Location: FF_X42_Y3_N37
\FINAL|Eatual.ATIVADOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \FINAL|Eatual.RESETADOR~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.ATIVADOR~q\);

-- Location: LABCELL_X40_Y3_N33
\FINAL|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideNor0~0_combout\ = ( \FINAL|Eatual.INICIAL~q\ & ( \FINAL|Eatual.RESETADOR~q\ ) ) # ( !\FINAL|Eatual.INICIAL~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	combout => \FINAL|WideNor0~0_combout\);

-- Location: FF_X39_Y3_N31
\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\);

-- Location: LABCELL_X40_Y3_N45
\JOGO_REAC|reset_in2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|reset_in2~combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\ & ( (!\FINAL|Eatual.INICIAL~q\) # (\FINAL|Eatual.RESETADOR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	combout => \JOGO_REAC|reset_in2~combout\);

-- Location: FF_X39_Y3_N41
\JOGO_REAC|INTERFACE|FSM|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\);

-- Location: MLABCELL_X37_Y3_N18
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\ = ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0) & ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\);

-- Location: LABCELL_X39_Y3_N0
\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\);

-- Location: FF_X39_Y3_N2
\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\);

-- Location: LABCELL_X39_Y3_N45
\JOGO_REAC|INTERFACE|FSM|Eprox~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ ) ) # ( 
-- !\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ & ( !\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\);

-- Location: LABCELL_X40_Y3_N57
\JOGO_REAC|INTERFACE|FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & ( (!\Mux0~0_combout\ & (((\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\)) # 
-- (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0)))) # (\Mux0~0_combout\ & (((\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\)))) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & ( 
-- (\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\) ) ) ) # ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & ( (!\Mux0~0_combout\) # ((\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & 
-- \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\)) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & ( (\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111101010101010111100000000000011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\);

-- Location: FF_X40_Y3_N59
\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\);

-- Location: FF_X37_Y3_N19
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\,
	clrn => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	ena => \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0));

-- Location: MLABCELL_X37_Y3_N15
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\ = ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\);

-- Location: FF_X37_Y3_N16
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\,
	clrn => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	ena => \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1));

-- Location: LABCELL_X40_Y3_N42
\JOGO_REAC|INTERFACE|FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( (!\Mux0~0_combout\ & (((\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0))) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\))) # 
-- (\Mux0~0_combout\ & (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & (!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0)))) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( (!\Mux0~0_combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110000101110100011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\);

-- Location: FF_X40_Y3_N44
\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\);

-- Location: LABCELL_X40_Y3_N18
\JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\ = ( \resposta1~input_o\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( (!estadoAtual(0) & (((!estadoAtual(1))) # (\resposta3~input_o\))) # (estadoAtual(0) & (((\resposta2~input_o\ & !estadoAtual(1))))) ) 
-- ) ) # ( !\resposta1~input_o\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( (!estadoAtual(0) & (\resposta3~input_o\ & ((estadoAtual(1))))) # (estadoAtual(0) & (((\resposta2~input_o\ & !estadoAtual(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta3~input_o\,
	datab => ALT_INV_estadoAtual(0),
	datac => \ALT_INV_resposta2~input_o\,
	datad => ALT_INV_estadoAtual(1),
	datae => \ALT_INV_resposta1~input_o\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\);

-- Location: FF_X40_Y3_N20
\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\);

-- Location: LABCELL_X39_Y3_N39
\JOGO_REAC|INTERFACE|FSM|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\ ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\);

-- Location: FF_X39_Y3_N40
\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\);

-- Location: LABCELL_X39_Y3_N9
\JOGO_REAC|INTERFACE|LATCH|iq\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|LATCH|iq~combout\ = ( \Mux0~0_combout\ & ( \JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( !\JOGO_REAC|reset_in2~combout\ ) ) ) # ( !\Mux0~0_combout\ & ( \JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( !\JOGO_REAC|reset_in2~combout\ ) ) ) # ( 
-- \Mux0~0_combout\ & ( !\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( !\JOGO_REAC|reset_in2~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	combout => \JOGO_REAC|INTERFACE|LATCH|iq~combout\);

-- Location: FF_X40_Y3_N26
\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\);

-- Location: LABCELL_X40_Y3_N24
\JOGO_REAC|MEDIDOR|UC|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ((\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\)))) 
-- ) ) ) # ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000001100110000000000010011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datae => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\);

-- Location: FF_X40_Y3_N25
\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N12
\JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( (!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\JOGO_REAC|INTERFACE|LATCH|iq~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\);

-- Location: FF_X40_Y3_N14
\JOGO_REAC|MEDIDOR|UC|Ereg.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\);

-- Location: LABCELL_X40_Y3_N15
\JOGO_REAC|MEDIDOR|UC|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ((!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # 
-- (\JOGO_REAC|INTERFACE|LATCH|iq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\);

-- Location: FF_X40_Y3_N16
\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\);

-- Location: LABCELL_X41_Y4_N9
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\);

-- Location: FF_X41_Y4_N20
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0));

-- Location: LABCELL_X41_Y4_N18
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\);

-- Location: FF_X41_Y4_N19
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N30
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\);

-- Location: FF_X41_Y4_N32
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1));

-- Location: FF_X41_Y4_N52
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2));

-- Location: LABCELL_X41_Y4_N51
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) $ 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))))) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\);

-- Location: FF_X41_Y4_N53
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\);

-- Location: FF_X41_Y4_N25
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3));

-- Location: LABCELL_X41_Y4_N24
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ $ (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\ & 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000010000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\);

-- Location: FF_X41_Y4_N26
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N6
\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) & ( (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0) & !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[3]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\);

-- Location: LABCELL_X41_Y3_N3
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( ((\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\);

-- Location: FF_X41_Y3_N13
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1));

-- Location: LABCELL_X41_Y3_N57
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\);

-- Location: FF_X41_Y3_N59
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0));

-- Location: LABCELL_X41_Y3_N54
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) $ (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))))) 
-- ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\);

-- Location: FF_X41_Y3_N56
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2));

-- Location: FF_X41_Y3_N26
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3));

-- Location: FF_X41_Y3_N58
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N24
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\ $ (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2) & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000010000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\);

-- Location: FF_X41_Y3_N25
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N12
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000010001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[3]~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\);

-- Location: FF_X41_Y3_N14
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N0
\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2) & \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\);

-- Location: FF_X40_Y3_N17
\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N27
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (((\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\)) # 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) 
-- # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\);

-- Location: FF_X40_Y4_N34
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0));

-- Location: LABCELL_X40_Y4_N33
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\);

-- Location: FF_X40_Y4_N35
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N43
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2));

-- Location: LABCELL_X40_Y4_N18
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ((!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3)) # 
-- (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\);

-- Location: FF_X40_Y4_N19
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1));

-- Location: LABCELL_X40_Y4_N42
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ $ 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2))))) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\);

-- Location: FF_X40_Y4_N44
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N6
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\) # (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\)))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ((!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000100000000000000010000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\);

-- Location: FF_X40_Y4_N8
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3));

-- Location: LABCELL_X40_Y4_N51
\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[0]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\);

-- Location: LABCELL_X39_Y3_N30
\JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & (\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\) # (!\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\)))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & 
-- \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\);

-- Location: FF_X39_Y3_N32
\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\);

-- Location: LABCELL_X39_Y3_N57
\JOGO_REAC|CONTROLADOR|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Selector0~0_combout\ = ( \FINAL|Eatual.ATIVADOR~q\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ ) ) # ( !\FINAL|Eatual.ATIVADOR~q\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ & 
-- \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	dataf => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	combout => \JOGO_REAC|CONTROLADOR|Selector0~0_combout\);

-- Location: FF_X39_Y3_N58
\JOGO_REAC|CONTROLADOR|Eatual.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Selector0~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\);

-- Location: LABCELL_X39_Y3_N54
\JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\ & ( \FINAL|Eatual.ATIVADOR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	combout => \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\);

-- Location: FF_X39_Y3_N55
\JOGO_REAC|CONTROLADOR|Eatual.LIGA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\);

-- Location: LABCELL_X40_Y3_N30
\JOGO_REAC|MEDIDOR|UC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\);

-- Location: FF_X40_Y3_N32
\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\);

-- Location: LABCELL_X40_Y3_N3
\JOGO_REAC|MEDIDOR|UC|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & (\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ((\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\)))) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & ((!\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\) # ((\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\)))) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( 
-- ((\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101010000011100110101000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\);

-- Location: FF_X40_Y3_N5
\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\);

-- Location: LABCELL_X40_Y4_N36
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\);

-- Location: LABCELL_X40_Y4_N57
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (((\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\);

-- Location: FF_X40_Y4_N26
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N55
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2));

-- Location: FF_X40_Y4_N13
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N54
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ $ 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2))))) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\);

-- Location: FF_X40_Y4_N56
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N2
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3));

-- Location: FF_X40_Y4_N25
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0));

-- Location: LABCELL_X40_Y4_N0
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ $ (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000010000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\);

-- Location: FF_X40_Y4_N1
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N12
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100010001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[2]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\);

-- Location: FF_X40_Y4_N14
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1));

-- Location: LABCELL_X40_Y4_N30
\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2) & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\);

-- Location: FF_X39_Y3_N20
\JOGO_REAC|CONTROLADOR|Eatual.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~1_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\);

-- Location: LABCELL_X39_Y3_N36
\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & ( (!\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\) # (!\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\);

-- Location: LABCELL_X39_Y3_N18
\JOGO_REAC|CONTROLADOR|Eatual.ERRO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eatual.ERRO~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\) # ((\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ 
-- & (\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ 
-- ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~0_combout\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~1_combout\);

-- Location: FF_X39_Y3_N19
\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~1_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N48
\FINAL|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Selector1~0_combout\ = ( \Mux0~0_combout\ & ( \FINAL|Eatual.ATIVADOR~q\ ) ) # ( !\Mux0~0_combout\ & ( ((\FINAL|Eprox.INTERMED1~0_combout\ & !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\FINAL|Eatual.ATIVADOR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111001100001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Selector1~0_combout\);

-- Location: FF_X42_Y3_N50
\FINAL|Eatual.JOGADOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.JOGADOR~q\);

-- Location: MLABCELL_X42_Y3_N21
\FINAL|Eprox.INTERMED1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eprox.INTERMED1~0_combout\ = ( \FINAL|Eatual.JOGADOR~q\ & ( (!\STATE_COUNT|IQ\(1)) # (\STATE_COUNT|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_COUNT|ALT_INV_IQ\(0),
	datad => \STATE_COUNT|ALT_INV_IQ\(1),
	dataf => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	combout => \FINAL|Eprox.INTERMED1~0_combout\);

-- Location: MLABCELL_X42_Y3_N12
\FINAL|Eprox.INTERMED1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eprox.INTERMED1~1_combout\ = ( \FINAL|Eprox.INTERMED1~0_combout\ & ( estadoAtual(1) & ( (\resposta3~input_o\ & !estadoAtual(0)) ) ) ) # ( \FINAL|Eprox.INTERMED1~0_combout\ & ( !estadoAtual(1) & ( (!estadoAtual(0) & ((\resposta1~input_o\))) # 
-- (estadoAtual(0) & (\resposta2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110101010100000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta2~input_o\,
	datab => \ALT_INV_resposta1~input_o\,
	datac => \ALT_INV_resposta3~input_o\,
	datad => ALT_INV_estadoAtual(0),
	datae => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	dataf => ALT_INV_estadoAtual(1),
	combout => \FINAL|Eprox.INTERMED1~1_combout\);

-- Location: FF_X42_Y3_N14
\FINAL|Eatual.INTERMED1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Eprox.INTERMED1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.INTERMED1~q\);

-- Location: MLABCELL_X42_Y3_N0
\estadoAtual[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \estadoAtual[0]~1_combout\ = ( \FINAL|Eatual.INTERMED1~q\ ) # ( !\FINAL|Eatual.INTERMED1~q\ & ( \jogar~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jogar~input_o\,
	dataf => \FINAL|ALT_INV_Eatual.INTERMED1~q\,
	combout => \estadoAtual[0]~1_combout\);

-- Location: FF_X42_Y3_N32
\estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estadoAtual~0_combout\,
	ena => \estadoAtual[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estadoAtual(0));

-- Location: MLABCELL_X42_Y3_N57
\estadoAtual~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \estadoAtual~2_combout\ = ( \RANDOM|CONTA|IQ\(1) & ( ((estadoAtual(0) & !estadoAtual(1))) # (\jogar~input_o\) ) ) # ( !\RANDOM|CONTA|IQ\(1) & ( (!\jogar~input_o\ & (estadoAtual(0) & !estadoAtual(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogar~input_o\,
	datac => ALT_INV_estadoAtual(0),
	datad => ALT_INV_estadoAtual(1),
	dataf => \RANDOM|CONTA|ALT_INV_IQ\(1),
	combout => \estadoAtual~2_combout\);

-- Location: FF_X42_Y3_N59
\estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \estadoAtual~2_combout\,
	ena => \estadoAtual[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estadoAtual(1));

-- Location: MLABCELL_X42_Y3_N3
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( estadoAtual(0) & ( (\resposta2~input_o\ & !estadoAtual(1)) ) ) # ( !estadoAtual(0) & ( (!estadoAtual(1) & ((\resposta1~input_o\))) # (estadoAtual(1) & (\resposta3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta2~input_o\,
	datab => \ALT_INV_resposta3~input_o\,
	datac => \ALT_INV_resposta1~input_o\,
	datad => ALT_INV_estadoAtual(1),
	dataf => ALT_INV_estadoAtual(0),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X40_Y3_N6
\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( ((\Mux0~0_combout\ & ((!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1)) # (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0))))) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\) ) ) # 
-- ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000101111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\);

-- Location: FF_X40_Y3_N8
\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\);

-- Location: LABCELL_X40_Y4_N48
\JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & (\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\);

-- Location: LABCELL_X40_Y4_N39
\JOGO_REAC|CONTROLADOR|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Selector1~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ & ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ & ( ((!\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & 
-- (!\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\))) # (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\,
	combout => \JOGO_REAC|CONTROLADOR|Selector1~0_combout\);

-- Location: FF_X40_Y4_N40
\JOGO_REAC|CONTROLADOR|Eatual.LIGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Selector1~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\);

-- Location: LABCELL_X40_Y5_N0
\JOGO_REAC|INTERFACE|PULSE|pulso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\ = ( \JOGO_REAC|INTERFACE|LATCH|iq~combout\ ) # ( !\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	combout => \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\);

-- Location: LABCELL_X40_Y3_N9
\JOGO_REAC|MEDIDOR|REG|IQ[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\);

-- Location: FF_X41_Y4_N4
\JOGO_REAC|MEDIDOR|REG|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(0));

-- Location: LABCELL_X40_Y3_N51
\JOGO_REAC|MUX|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector15~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector15~0_combout\);

-- Location: FF_X41_Y4_N31
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\);

-- Location: FF_X41_Y4_N46
\JOGO_REAC|MEDIDOR|REG|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(1));

-- Location: LABCELL_X36_Y2_N51
\JOGO_REAC|MUX|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector14~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector14~0_combout\);

-- Location: FF_X41_Y4_N41
\JOGO_REAC|MEDIDOR|REG|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(2));

-- Location: LABCELL_X40_Y5_N21
\JOGO_REAC|MUX|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector13~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \JOGO_REAC|MUX|Selector13~0_combout\);

-- Location: FF_X41_Y4_N58
\JOGO_REAC|MEDIDOR|REG|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(3));

-- Location: LABCELL_X41_Y4_N48
\JOGO_REAC|MUX|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector12~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector12~0_combout\);

-- Location: FF_X41_Y3_N22
\JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N33
\JOGO_REAC|MUX|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector11~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\ ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[4]~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector11~0_combout\);

-- Location: FF_X41_Y3_N52
\JOGO_REAC|MEDIDOR|REG|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(5));

-- Location: LABCELL_X39_Y3_N27
\JOGO_REAC|MUX|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector10~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	combout => \JOGO_REAC|MUX|Selector10~0_combout\);

-- Location: FF_X41_Y3_N55
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\);

-- Location: FF_X41_Y3_N10
\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N0
\JOGO_REAC|MUX|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector9~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector9~0_combout\);

-- Location: FF_X41_Y3_N34
\JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N12
\JOGO_REAC|MUX|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector8~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) ) # ( 
-- \JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[7]~DUPLICATE_q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector8~0_combout\);

-- Location: FF_X39_Y4_N52
\JOGO_REAC|MEDIDOR|REG|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(8));

-- Location: LABCELL_X36_Y2_N21
\JOGO_REAC|MUX|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector7~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	combout => \JOGO_REAC|MUX|Selector7~0_combout\);

-- Location: FF_X39_Y4_N22
\JOGO_REAC|MEDIDOR|REG|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[1]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(9));

-- Location: LABCELL_X40_Y4_N45
\JOGO_REAC|MUX|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector6~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector6~0_combout\);

-- Location: FF_X39_Y4_N40
\JOGO_REAC|MEDIDOR|REG|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[2]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(10));

-- Location: MLABCELL_X37_Y3_N36
\JOGO_REAC|MUX|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector5~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(10) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	combout => \JOGO_REAC|MUX|Selector5~0_combout\);

-- Location: FF_X39_Y4_N58
\JOGO_REAC|MEDIDOR|REG|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(11));

-- Location: LABCELL_X36_Y2_N24
\JOGO_REAC|MUX|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector4~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(11) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(11) & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	combout => \JOGO_REAC|MUX|Selector4~0_combout\);

-- Location: FF_X40_Y2_N40
\JOGO_REAC|MEDIDOR|REG|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(12));

-- Location: LABCELL_X36_Y2_N57
\JOGO_REAC|MUX|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector3~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(12) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(12) & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	combout => \JOGO_REAC|MUX|Selector3~0_combout\);

-- Location: FF_X40_Y2_N35
\JOGO_REAC|MEDIDOR|REG|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(13));

-- Location: LABCELL_X40_Y2_N27
\JOGO_REAC|MUX|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector2~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(13) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	combout => \JOGO_REAC|MUX|Selector2~0_combout\);

-- Location: FF_X40_Y2_N17
\JOGO_REAC|MEDIDOR|REG|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(14));

-- Location: LABCELL_X40_Y2_N24
\JOGO_REAC|MUX|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector1~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|MUX|Selector1~0_combout\);

-- Location: FF_X40_Y2_N59
\JOGO_REAC|MEDIDOR|REG|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(15));

-- Location: LABCELL_X40_Y2_N45
\JOGO_REAC|MUX|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector0~0_combout\ = (\JOGO_REAC|MEDIDOR|REG|IQ\(15)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	combout => \JOGO_REAC|MUX|Selector0~0_combout\);

-- Location: LABCELL_X39_Y3_N48
\RANDOM_DISP|sseg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|sseg[2]~1_combout\ = ( !\RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & ( \RANDOM|CONTA|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDOM|CONTA|ALT_INV_IQ\(1),
	datae => \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \RANDOM_DISP|sseg[2]~1_combout\);

-- Location: IOIBUF_X33_Y0_N41
\sel_mux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_mux(0),
	o => \sel_mux[0]~input_o\);

-- Location: LABCELL_X39_Y4_N0
\JOGO_REAC|MUX_DISP0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP0|Mux0~0_combout\ = (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & !\sel_mux[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_DISP0|Mux0~0_combout\);

-- Location: IOIBUF_X33_Y0_N58
\sel_mux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_mux(1),
	o => \sel_mux[1]~input_o\);

-- Location: LABCELL_X41_Y4_N54
\JOGO_REAC|DIS0|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[0]~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(3) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(2) & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & \JOGO_REAC|MEDIDOR|REG|IQ\(0)))) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(3) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(2) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(0)))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(3) & 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(2) & \JOGO_REAC|MEDIDOR|REG|IQ\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS0|sseg[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N42
\JOGO_REAC|DIS0|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[1]~1_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(0) & ((\JOGO_REAC|MEDIDOR|REG|IQ\(2)))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(0) & 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(3))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(2) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(3) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000100001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datac => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS0|sseg[1]~1_combout\);

-- Location: MLABCELL_X37_Y3_N54
\JOGO_REAC|DIS0|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[2]~2_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(2) & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(3)) # ((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\sel_mux[1]~input_o\)) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( 
-- \JOGO_REAC|MEDIDOR|REG|IQ\(2) & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(3)) # ((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\sel_mux[1]~input_o\))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(0)) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(2) & ( 
-- (((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\sel_mux[1]~input_o\)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(3))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(0)) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111011111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \JOGO_REAC|DIS0|sseg[2]~2_combout\);

-- Location: MLABCELL_X37_Y3_N24
\JOGO_REAC|MUX_DISP0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP0|Mux3~0_combout\ = ( !\sel_mux[1]~input_o\ & ( \sel_mux[0]~input_o\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(0) ) ) ) # ( !\sel_mux[1]~input_o\ & ( !\sel_mux[0]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(0)) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datae => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_DISP0|Mux3~0_combout\);

-- Location: LABCELL_X41_Y4_N21
\JOGO_REAC|DIS0|sseg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[1]~3_combout\ = ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \ALT_INV_sel_mux[0]~input_o\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS0|sseg[1]~3_combout\);

-- Location: MLABCELL_X37_Y3_N33
\JOGO_REAC|MUX_DISP0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP0|Mux1~0_combout\ = ( !\sel_mux[1]~input_o\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(2) & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datae => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	combout => \JOGO_REAC|MUX_DISP0|Mux1~0_combout\);

-- Location: LABCELL_X40_Y5_N48
\JOGO_REAC|MUX_DISP0|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP0|Mux0~1_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( !\sel_mux[1]~input_o\ ) ) ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( 
-- !\sel_mux[1]~input_o\ ) ) ) # ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( (!\sel_mux[1]~input_o\ & !\sel_mux[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datae => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	combout => \JOGO_REAC|MUX_DISP0|Mux0~1_combout\);

-- Location: MLABCELL_X37_Y3_N48
\JOGO_REAC|DIS0|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[3]~4_combout\ = ( \JOGO_REAC|MUX_DISP0|Mux0~1_combout\ & ( (\JOGO_REAC|DIS0|sseg[1]~3_combout\ & (!\JOGO_REAC|MUX_DISP0|Mux3~0_combout\ $ (\JOGO_REAC|MUX_DISP0|Mux1~0_combout\))) ) ) # ( !\JOGO_REAC|MUX_DISP0|Mux0~1_combout\ & ( 
-- (!\JOGO_REAC|MUX_DISP0|Mux3~0_combout\ & (!\JOGO_REAC|DIS0|sseg[1]~3_combout\ & \JOGO_REAC|MUX_DISP0|Mux1~0_combout\)) # (\JOGO_REAC|MUX_DISP0|Mux3~0_combout\ & (!\JOGO_REAC|DIS0|sseg[1]~3_combout\ $ (\JOGO_REAC|MUX_DISP0|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux3~0_combout\,
	datab => \JOGO_REAC|DIS0|ALT_INV_sseg[1]~3_combout\,
	datac => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux1~0_combout\,
	dataf => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~1_combout\,
	combout => \JOGO_REAC|DIS0|sseg[3]~4_combout\);

-- Location: LABCELL_X41_Y4_N0
\JOGO_REAC|DIS0|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[4]~5_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\sel_mux[1]~input_o\ & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(3) & \JOGO_REAC|MEDIDOR|REG|IQ\(0))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( 
-- !\sel_mux[1]~input_o\ & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(2) & ((\JOGO_REAC|MEDIDOR|REG|IQ\(0)))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(2) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(3)))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111101111000011111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS0|sseg[4]~5_combout\);

-- Location: LABCELL_X41_Y4_N12
\JOGO_REAC|DIS0|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[5]~6_combout\ = ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(0) & (!\sel_mux[1]~input_o\ & \JOGO_REAC|MEDIDOR|REG|IQ\(2)))) ) ) ) # ( 
-- \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(2)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(0))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(0) & (!\sel_mux[1]~input_o\ & !\JOGO_REAC|MEDIDOR|REG|IQ\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101000000010000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	combout => \JOGO_REAC|DIS0|sseg[5]~6_combout\);

-- Location: LABCELL_X41_Y4_N36
\JOGO_REAC|DIS0|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS0|sseg[6]~7_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( \sel_mux[1]~input_o\ ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( ((!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & 
-- (!\JOGO_REAC|MEDIDOR|REG|IQ\(0) & \JOGO_REAC|MEDIDOR|REG|IQ\(2)))) # (\sel_mux[1]~input_o\) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( ((!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(0) & 
-- \JOGO_REAC|MEDIDOR|REG|IQ\(2)))) # (\sel_mux[1]~input_o\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(3) & ( ((!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & !\JOGO_REAC|MEDIDOR|REG|IQ\(2))) # (\sel_mux[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001111000011110010111100001111100011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	combout => \JOGO_REAC|DIS0|sseg[6]~7_combout\);

-- Location: FF_X41_Y3_N23
\JOGO_REAC|MEDIDOR|REG|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(4));

-- Location: FF_X41_Y3_N35
\JOGO_REAC|MEDIDOR|REG|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(7));

-- Location: FF_X41_Y3_N11
\JOGO_REAC|MEDIDOR|REG|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(6));

-- Location: LABCELL_X41_Y3_N30
\JOGO_REAC|DIS1|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[0]~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(7) & !\JOGO_REAC|MEDIDOR|REG|IQ\(6)))) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(4) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(7) & \JOGO_REAC|MEDIDOR|REG|IQ\(6))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & 
-- (!\JOGO_REAC|MEDIDOR|REG|IQ\(7) $ (\JOGO_REAC|MEDIDOR|REG|IQ\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000100000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datab => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS1|sseg[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N36
\JOGO_REAC|DIS1|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[1]~1_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(4) & (\JOGO_REAC|MEDIDOR|REG|IQ\(6))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & 
-- ((\JOGO_REAC|MEDIDOR|REG|IQ\(7)))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(6) & (!\sel_mux[1]~input_o\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(4) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(7))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000001001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	datad => \ALT_INV_sel_mux[1]~input_o\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	combout => \JOGO_REAC|DIS1|sseg[1]~1_combout\);

-- Location: LABCELL_X41_Y3_N42
\JOGO_REAC|DIS1|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[2]~2_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\) # (\sel_mux[1]~input_o\)) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( (((!\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\) # (\sel_mux[1]~input_o\)) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4)) ) ) ) # ( 
-- \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( (((\sel_mux[1]~input_o\) # (\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\)) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4)) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111110111111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datab => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	combout => \JOGO_REAC|DIS1|sseg[2]~2_combout\);

-- Location: LABCELL_X40_Y5_N9
\JOGO_REAC|MUX_DISP1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP1|Mux3~0_combout\ = ( !\sel_mux[1]~input_o\ & ( ((!\sel_mux[0]~input_o\ & \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\JOGO_REAC|MEDIDOR|REG|IQ[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[4]~DUPLICATE_q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_DISP1|Mux3~0_combout\);

-- Location: LABCELL_X40_Y5_N36
\JOGO_REAC|DIS1|sseg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[1]~3_combout\ = ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS1|sseg[1]~3_combout\);

-- Location: LABCELL_X40_Y5_N57
\JOGO_REAC|MUX_DISP1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP1|Mux0~0_combout\ = ( !\sel_mux[1]~input_o\ & ( ((!\sel_mux[0]~input_o\ & \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\JOGO_REAC|MEDIDOR|REG|IQ[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[7]~DUPLICATE_q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_DISP1|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N6
\JOGO_REAC|MUX_DISP1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP1|Mux1~0_combout\ = ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\ & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_DISP1|Mux1~0_combout\);

-- Location: LABCELL_X40_Y5_N54
\JOGO_REAC|DIS1|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[3]~4_combout\ = ( \JOGO_REAC|MUX_DISP1|Mux1~0_combout\ & ( (!\JOGO_REAC|MUX_DISP1|Mux3~0_combout\ & (!\JOGO_REAC|DIS1|sseg[1]~3_combout\ & !\JOGO_REAC|MUX_DISP1|Mux0~0_combout\)) # (\JOGO_REAC|MUX_DISP1|Mux3~0_combout\ & 
-- (\JOGO_REAC|DIS1|sseg[1]~3_combout\)) ) ) # ( !\JOGO_REAC|MUX_DISP1|Mux1~0_combout\ & ( (!\JOGO_REAC|MUX_DISP1|Mux3~0_combout\ & (\JOGO_REAC|DIS1|sseg[1]~3_combout\ & \JOGO_REAC|MUX_DISP1|Mux0~0_combout\)) # (\JOGO_REAC|MUX_DISP1|Mux3~0_combout\ & 
-- (!\JOGO_REAC|DIS1|sseg[1]~3_combout\ & !\JOGO_REAC|MUX_DISP1|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MUX_DISP1|ALT_INV_Mux3~0_combout\,
	datac => \JOGO_REAC|DIS1|ALT_INV_sseg[1]~3_combout\,
	datad => \JOGO_REAC|MUX_DISP1|ALT_INV_Mux0~0_combout\,
	dataf => \JOGO_REAC|MUX_DISP1|ALT_INV_Mux1~0_combout\,
	combout => \JOGO_REAC|DIS1|sseg[3]~4_combout\);

-- Location: LABCELL_X41_Y3_N18
\JOGO_REAC|DIS1|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[4]~5_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( !\sel_mux[1]~input_o\ ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( !\sel_mux[1]~input_o\ ) ) ) # ( 
-- \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & (!\sel_mux[1]~input_o\ & !\JOGO_REAC|MEDIDOR|REG|IQ\(7))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ( 
-- (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(6) & (\JOGO_REAC|MEDIDOR|REG|IQ\(4))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(6) & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011000000010000000100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	combout => \JOGO_REAC|DIS1|sseg[4]~5_combout\);

-- Location: LABCELL_X41_Y3_N48
\JOGO_REAC|DIS1|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[5]~6_combout\ = ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( (\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\ & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) 
-- ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( (!\sel_mux[1]~input_o\ & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4))))) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(7) & ( (!\JOGO_REAC|MEDIDOR|REG|IQ[6]~DUPLICATE_q\ & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100011000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ[6]~DUPLICATE_q\,
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	combout => \JOGO_REAC|DIS1|sseg[5]~6_combout\);

-- Location: LABCELL_X41_Y3_N6
\JOGO_REAC|DIS1|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS1|sseg[6]~7_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \sel_mux[1]~input_o\ ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( \sel_mux[1]~input_o\ ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\sel_mux[1]~input_o\ & ( 
-- (!\JOGO_REAC|MEDIDOR|REG|IQ\(7) & (\JOGO_REAC|MEDIDOR|REG|IQ\(6) & (\JOGO_REAC|MEDIDOR|REG|IQ\(4) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(5) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & 
-- ((!\JOGO_REAC|MEDIDOR|REG|IQ\(7) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(6))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(7) & (\JOGO_REAC|MEDIDOR|REG|IQ\(6) & !\JOGO_REAC|MEDIDOR|REG|IQ\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100000000000000000100000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS1|sseg[6]~7_combout\);

-- Location: LABCELL_X39_Y4_N54
\JOGO_REAC|DIS2|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[0]~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(9) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) $ (\JOGO_REAC|MEDIDOR|REG|IQ\(10)))) # 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(9) & (\JOGO_REAC|MEDIDOR|REG|IQ\(11) & !\JOGO_REAC|MEDIDOR|REG|IQ\(10))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(9) & 
-- (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & \JOGO_REAC|MEDIDOR|REG|IQ\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100000100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[0]~0_combout\);

-- Location: LABCELL_X39_Y4_N6
\JOGO_REAC|DIS2|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[1]~1_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(9) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & \JOGO_REAC|MEDIDOR|REG|IQ\(10))) # 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(9) & (\JOGO_REAC|MEDIDOR|REG|IQ\(11))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(10) & ((\JOGO_REAC|MEDIDOR|REG|IQ\(11)) # 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000101000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[1]~1_combout\);

-- Location: LABCELL_X39_Y4_N24
\JOGO_REAC|DIS2|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[2]~2_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( \sel_mux[1]~input_o\ ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( \sel_mux[1]~input_o\ ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( 
-- ((!\JOGO_REAC|MEDIDOR|REG|IQ\(9)) # ((!\JOGO_REAC|MEDIDOR|REG|IQ\(11)) # (!\JOGO_REAC|MEDIDOR|REG|IQ\(10)))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(11) 
-- & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(9)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(10)))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(11) & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(10))))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111110101111111111111110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[2]~2_combout\);

-- Location: LABCELL_X39_Y4_N33
\JOGO_REAC|MUX_DISP2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP2|Mux0~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(11) & ( !\sel_mux[1]~input_o\ ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(11) & ( (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\sel_mux[1]~input_o\ & !\sel_mux[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datad => \ALT_INV_sel_mux[0]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	combout => \JOGO_REAC|MUX_DISP2|Mux0~0_combout\);

-- Location: LABCELL_X39_Y4_N30
\JOGO_REAC|MUX_DISP2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP2|Mux3~0_combout\ = ( !\sel_mux[1]~input_o\ & ( ((\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & !\sel_mux[0]~input_o\)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_DISP2|Mux3~0_combout\);

-- Location: LABCELL_X39_Y4_N12
\JOGO_REAC|MUX_DISP2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP2|Mux1~0_combout\ = (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(10) & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000101100000000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	combout => \JOGO_REAC|MUX_DISP2|Mux1~0_combout\);

-- Location: LABCELL_X39_Y4_N15
\JOGO_REAC|DIS2|sseg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[1]~3_combout\ = ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(9) & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[1]~3_combout\);

-- Location: LABCELL_X39_Y4_N3
\JOGO_REAC|DIS2|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[3]~4_combout\ = ( \JOGO_REAC|DIS2|sseg[1]~3_combout\ & ( (!\JOGO_REAC|MUX_DISP2|Mux3~0_combout\ & (\JOGO_REAC|MUX_DISP2|Mux0~0_combout\ & !\JOGO_REAC|MUX_DISP2|Mux1~0_combout\)) # (\JOGO_REAC|MUX_DISP2|Mux3~0_combout\ & 
-- ((\JOGO_REAC|MUX_DISP2|Mux1~0_combout\))) ) ) # ( !\JOGO_REAC|DIS2|sseg[1]~3_combout\ & ( (!\JOGO_REAC|MUX_DISP2|Mux0~0_combout\ & (!\JOGO_REAC|MUX_DISP2|Mux3~0_combout\ $ (!\JOGO_REAC|MUX_DISP2|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP2|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MUX_DISP2|ALT_INV_Mux3~0_combout\,
	datac => \JOGO_REAC|MUX_DISP2|ALT_INV_Mux1~0_combout\,
	dataf => \JOGO_REAC|DIS2|ALT_INV_sseg[1]~3_combout\,
	combout => \JOGO_REAC|DIS2|sseg[3]~4_combout\);

-- Location: LABCELL_X39_Y4_N48
\JOGO_REAC|DIS2|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[4]~5_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(11)) # ((!\JOGO_REAC|MEDIDOR|REG|IQ\(10) & !\JOGO_REAC|MEDIDOR|REG|IQ\(9)))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) ) # 
-- ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( ((\JOGO_REAC|MEDIDOR|REG|IQ\(10) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & !\JOGO_REAC|MEDIDOR|REG|IQ\(9)))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101111111011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[4]~5_combout\);

-- Location: LABCELL_X39_Y4_N18
\JOGO_REAC|DIS2|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[5]~6_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) $ (((!\JOGO_REAC|MEDIDOR|REG|IQ\(9) & \JOGO_REAC|MEDIDOR|REG|IQ\(10)))))) ) ) ) # 
-- ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(9) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & !\JOGO_REAC|MEDIDOR|REG|IQ\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101000000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS2|sseg[5]~6_combout\);

-- Location: LABCELL_X39_Y4_N36
\JOGO_REAC|DIS2|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS2|sseg[6]~7_combout\ = ( \sel_mux[1]~input_o\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(9) ) ) # ( !\sel_mux[1]~input_o\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(9) & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(8) & 
-- (!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & \JOGO_REAC|MEDIDOR|REG|IQ\(10)))) ) ) ) # ( \sel_mux[1]~input_o\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(9) ) ) # ( !\sel_mux[1]~input_o\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(9) & ( (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & 
-- ((!\JOGO_REAC|MEDIDOR|REG|IQ\(11) & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(10)))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(11) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(8) & \JOGO_REAC|MEDIDOR|REG|IQ\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001000111111111111111100000000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	datae => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	combout => \JOGO_REAC|DIS2|sseg[6]~7_combout\);

-- Location: LABCELL_X40_Y2_N54
\JOGO_REAC|DIS3|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[0]~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\sel_mux[1]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(14))))) ) ) ) # 
-- ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\sel_mux[1]~input_o\ & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(14) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000001100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|DIS3|sseg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\JOGO_REAC|DIS3|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[1]~1_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(12)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(13))))) ) ) ) # 
-- ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) $ (!\JOGO_REAC|MEDIDOR|REG|IQ\(12))))) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000001001000000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|DIS3|sseg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N0
\JOGO_REAC|DIS3|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[2]~2_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (((!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & \JOGO_REAC|MEDIDOR|REG|IQ\(12))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\)) # (\sel_mux[1]~input_o\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(14) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(13)) 
-- # (((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(12))) # (\sel_mux[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111111111111111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|DIS3|sseg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N9
\JOGO_REAC|MUX_DISP3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP3|Mux1~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|MUX_DISP3|Mux1~0_combout\);

-- Location: LABCELL_X40_Y2_N51
\JOGO_REAC|MUX_DISP3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP3|Mux0~0_combout\ = ( \sel_mux[0]~input_o\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(15) & !\sel_mux[1]~input_o\) ) ) # ( !\sel_mux[0]~input_o\ & ( (!\sel_mux[1]~input_o\ & ((\JOGO_REAC|MEDIDOR|REG|IQ\(15)) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_DISP3|Mux0~0_combout\);

-- Location: LABCELL_X40_Y2_N48
\JOGO_REAC|DIS3|sseg[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[1]~3_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(13) & ( (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\sel_mux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	combout => \JOGO_REAC|DIS3|sseg[1]~3_combout\);

-- Location: LABCELL_X40_Y2_N6
\JOGO_REAC|MUX_DISP3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_DISP3|Mux3~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(12) & ( !\sel_mux[1]~input_o\ ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(12) & ( (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\sel_mux[0]~input_o\ & !\sel_mux[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	combout => \JOGO_REAC|MUX_DISP3|Mux3~0_combout\);

-- Location: LABCELL_X40_Y2_N42
\JOGO_REAC|DIS3|sseg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[3]~4_combout\ = ( \JOGO_REAC|MUX_DISP3|Mux3~0_combout\ & ( (!\JOGO_REAC|MUX_DISP3|Mux1~0_combout\ & (!\JOGO_REAC|MUX_DISP3|Mux0~0_combout\ & !\JOGO_REAC|DIS3|sseg[1]~3_combout\)) # (\JOGO_REAC|MUX_DISP3|Mux1~0_combout\ & 
-- ((\JOGO_REAC|DIS3|sseg[1]~3_combout\))) ) ) # ( !\JOGO_REAC|MUX_DISP3|Mux3~0_combout\ & ( (!\JOGO_REAC|MUX_DISP3|Mux1~0_combout\ & (\JOGO_REAC|MUX_DISP3|Mux0~0_combout\ & \JOGO_REAC|DIS3|sseg[1]~3_combout\)) # (\JOGO_REAC|MUX_DISP3|Mux1~0_combout\ & 
-- (!\JOGO_REAC|MUX_DISP3|Mux0~0_combout\ & !\JOGO_REAC|DIS3|sseg[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MUX_DISP3|ALT_INV_Mux1~0_combout\,
	datac => \JOGO_REAC|MUX_DISP3|ALT_INV_Mux0~0_combout\,
	datad => \JOGO_REAC|DIS3|ALT_INV_sseg[1]~3_combout\,
	dataf => \JOGO_REAC|MUX_DISP3|ALT_INV_Mux3~0_combout\,
	combout => \JOGO_REAC|DIS3|sseg[3]~4_combout\);

-- Location: LABCELL_X40_Y2_N18
\JOGO_REAC|DIS3|sseg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[4]~5_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & \JOGO_REAC|MUX_DISP0|Mux0~0_combout\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( 
-- (!\sel_mux[1]~input_o\ & ((!\JOGO_REAC|MEDIDOR|REG|IQ\(13)) # ((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(12))))) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & 
-- (((!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & \JOGO_REAC|MEDIDOR|REG|IQ\(12))) # (\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & 
-- ((\JOGO_REAC|MUX_DISP0|Mux0~0_combout\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000010001100110010001100110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|DIS3|sseg[4]~5_combout\);

-- Location: LABCELL_X40_Y2_N30
\JOGO_REAC|DIS3|sseg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[5]~6_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( (!\sel_mux[1]~input_o\ & (!\JOGO_REAC|MUX_DISP0|Mux0~0_combout\ & ((\JOGO_REAC|MEDIDOR|REG|IQ\(12)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000000000000000000000000100000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|DIS3|sseg[5]~6_combout\);

-- Location: LABCELL_X40_Y2_N12
\JOGO_REAC|DIS3|sseg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|DIS3|sseg[6]~7_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (!\JOGO_REAC|MEDIDOR|REG|IQ\(12) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) # (\sel_mux[1]~input_o\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( ((\JOGO_REAC|MEDIDOR|REG|IQ\(13) & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\))) # (\sel_mux[1]~input_o\) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( \sel_mux[1]~input_o\ ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( ((!\JOGO_REAC|MEDIDOR|REG|IQ\(13) & !\JOGO_REAC|MUX_DISP0|Mux0~0_combout\)) # (\sel_mux[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100110011001100110011001100110111001100111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MUX_DISP0|ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	combout => \JOGO_REAC|DIS3|sseg[6]~7_combout\);

-- Location: LABCELL_X39_Y4_N45
\JOGO_REAC|MUX_LED0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED0|Mux0~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & ( (!\sel_mux[1]~input_o\ & !\sel_mux[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datab => \ALT_INV_sel_mux[0]~input_o\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \JOGO_REAC|MUX_LED0|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N12
\JOGO_REAC|MUX_LED1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED1|Mux0~0_combout\ = ( !\sel_mux[1]~input_o\ & ( (\sel_mux[0]~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_LED1|Mux0~0_combout\);

-- Location: LABCELL_X39_Y4_N42
\JOGO_REAC|MUX_LED2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED2|Mux0~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\sel_mux[1]~input_o\ & \sel_mux[0]~input_o\) ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ( (!\sel_mux[1]~input_o\ & (\sel_mux[0]~input_o\ & 
-- \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	combout => \JOGO_REAC|MUX_LED2|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N15
\JOGO_REAC|MUX_LED3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED3|Mux0~0_combout\ = (\sel_mux[0]~input_o\ & (!\sel_mux[1]~input_o\ & \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	combout => \JOGO_REAC|MUX_LED3|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N30
\JOGO_REAC|MUX_LED4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED4|Mux0~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \sel_mux[0]~input_o\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & (\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & (!\sel_mux[1]~input_o\ & 
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_LED4|Mux0~0_combout\);

-- Location: LABCELL_X39_Y3_N3
\JOGO_REAC|MUX_LED5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED5|Mux0~0_combout\ = ( !\sel_mux[0]~input_o\ & ( (\sel_mux[1]~input_o\ & (((\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\)) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\,
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_LED5|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N39
\JOGO_REAC|MUX_LED6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED6|Mux0~0_combout\ = ( \sel_mux[1]~input_o\ & ( (!\sel_mux[0]~input_o\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_LED6|Mux0~0_combout\);

-- Location: LABCELL_X39_Y3_N12
\JOGO_REAC|MUX_LED7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED7|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \sel_mux[0]~input_o\ ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \sel_mux[0]~input_o\ ) ) # ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( 
-- !\sel_mux[0]~input_o\ & ( (!\sel_mux[1]~input_o\) # (\JOGO_REAC|INTERFACE|LATCH|iq~combout\) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( !\sel_mux[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \ALT_INV_sel_mux[1]~input_o\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_LED7|Mux0~0_combout\);

-- Location: LABCELL_X40_Y5_N27
\JOGO_REAC|MUX_LED8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED8|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( (!\sel_mux[0]~input_o\ & \sel_mux[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	combout => \JOGO_REAC|MUX_LED8|Mux0~0_combout\);

-- Location: FF_X40_Y3_N13
\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\);

-- Location: LABCELL_X40_Y5_N42
\JOGO_REAC|MUX_LED9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED9|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & ( \sel_mux[1]~input_o\ & ( !\sel_mux[0]~input_o\ ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & ( \sel_mux[1]~input_o\ & ( 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & !\sel_mux[0]~input_o\) ) ) ) # ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & ( !\sel_mux[1]~input_o\ & ( (!\sel_mux[0]~input_o\ & ((\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\))) # 
-- (\sel_mux[0]~input_o\ & (\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\)) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & ( !\sel_mux[1]~input_o\ & ( (!\sel_mux[0]~input_o\ & ((\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\))) # 
-- (\sel_mux[0]~input_o\ & (\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_LED9|Mux0~0_combout\);

-- Location: LABCELL_X43_Y3_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\STATE_COUNT|IQ\(0) & ( \STATE_COUNT|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \STATE_COUNT|ALT_INV_IQ\(1),
	dataf => \STATE_COUNT|ALT_INV_IQ\(0),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X42_Y3_N6
\FINAL|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr5~combout\ = ( !\FINAL|Eatual.JOGADOR~q\ & ( (!\FINAL|Eatual.ATIVADOR~q\ & (!\FINAL|Eatual.RESETADOR~q\ & \FINAL|Eatual.INICIAL~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	dataf => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	combout => \FINAL|WideOr5~combout\);

-- Location: MLABCELL_X42_Y3_N51
\FINAL|Eatual.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.ERRO~0_combout\ = ( \Mux0~0_combout\ & ( \FINAL|Eatual.ERRO~q\ ) ) # ( !\Mux0~0_combout\ & ( ((\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & \FINAL|Eprox.INTERMED1~0_combout\)) # (\FINAL|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	datad => \FINAL|ALT_INV_Eatual.ERRO~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Eatual.ERRO~0_combout\);

-- Location: FF_X42_Y3_N53
\FINAL|Eatual.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Eatual.ERRO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.ERRO~q\);

-- Location: MLABCELL_X42_Y3_N24
\FINAL|Eatual.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.FIM~0_combout\ = ( \STATE_COUNT|IQ\(0) & ( \FINAL|Eatual.FIM~q\ ) ) # ( !\STATE_COUNT|IQ\(0) & ( ((\STATE_COUNT|IQ\(1) & \FINAL|Eatual.JOGADOR~q\)) # (\FINAL|Eatual.FIM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \STATE_COUNT|ALT_INV_IQ\(1),
	datac => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.FIM~q\,
	dataf => \STATE_COUNT|ALT_INV_IQ\(0),
	combout => \FINAL|Eatual.FIM~0_combout\);

-- Location: FF_X42_Y3_N25
\FINAL|Eatual.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \FINAL|Eatual.FIM~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FINAL|Eatual.FIM~q\);

-- Location: MLABCELL_X42_Y3_N45
\FINAL|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr6~combout\ = ( !\FINAL|Eatual.JOGADOR~q\ & ( (!\FINAL|Eatual.ERRO~q\ & !\FINAL|Eatual.FIM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.ERRO~q\,
	datab => \FINAL|ALT_INV_Eatual.FIM~q\,
	dataf => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	combout => \FINAL|WideOr6~combout\);

-- Location: MLABCELL_X42_Y3_N42
\FINAL|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr7~combout\ = (!\FINAL|Eatual.ERRO~q\ & (!\FINAL|Eatual.FIM~q\ & (!\FINAL|Eatual.RESETADOR~q\ & !\FINAL|Eatual.ATIVADOR~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.ERRO~q\,
	datab => \FINAL|ALT_INV_Eatual.FIM~q\,
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	combout => \FINAL|WideOr7~combout\);

-- Location: MLABCELL_X42_Y3_N9
\FINAL|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr8~combout\ = ( !\FINAL|Eatual.FIM~q\ & ( (!\FINAL|Eatual.ATIVADOR~q\ & !\FINAL|Eatual.INTERMED~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	datac => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	dataf => \FINAL|ALT_INV_Eatual.FIM~q\,
	combout => \FINAL|WideOr8~combout\);

-- Location: LABCELL_X43_Y3_N6
\DB_ESTADO_7SEG|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[0]~0_combout\ = ( \FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\) # (!\FINAL|WideOr6~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr5~combout\,
	datac => \FINAL|ALT_INV_WideOr6~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N39
\DB_ESTADO_7SEG|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[1]~1_combout\ = ( \FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr6~combout\ & \FINAL|WideOr5~combout\) ) ) ) # ( !\FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( 
-- \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr6~combout\ & \FINAL|WideOr5~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010101010101010101010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr6~combout\,
	datad => \FINAL|ALT_INV_WideOr5~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N42
\DB_ESTADO_7SEG|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[2]~2_combout\ = ( \FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\) # (\FINAL|WideOr6~combout\) ) ) ) # ( !\FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr5~combout\ $ 
-- (\FINAL|WideOr6~combout\) ) ) ) # ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\) # (\FINAL|WideOr6~combout\) ) ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\) # 
-- (\FINAL|WideOr6~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110100101101001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr5~combout\,
	datac => \FINAL|ALT_INV_WideOr6~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[2]~2_combout\);

-- Location: MLABCELL_X42_Y3_N39
\DB_ESTADO_7SEG|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[3]~3_combout\ = ( \FINAL|Eatual.ATIVADOR~q\ & ( \FINAL|Eatual.RESETADOR~q\ & ( ((\FINAL|Eatual.ERRO~q\) # (\FINAL|Eatual.FIM~q\)) # (\FINAL|Eatual.JOGADOR~q\) ) ) ) # ( !\FINAL|Eatual.ATIVADOR~q\ & ( \FINAL|Eatual.RESETADOR~q\ & ( 
-- ((\FINAL|Eatual.INTERMED~q\ & ((\FINAL|Eatual.ERRO~q\) # (\FINAL|Eatual.JOGADOR~q\)))) # (\FINAL|Eatual.FIM~q\) ) ) ) # ( \FINAL|Eatual.ATIVADOR~q\ & ( !\FINAL|Eatual.RESETADOR~q\ & ( ((\FINAL|Eatual.ERRO~q\) # (\FINAL|Eatual.FIM~q\)) # 
-- (\FINAL|Eatual.JOGADOR~q\) ) ) ) # ( !\FINAL|Eatual.ATIVADOR~q\ & ( !\FINAL|Eatual.RESETADOR~q\ & ( ((!\FINAL|Eatual.INTERMED~q\ & (\FINAL|Eatual.JOGADOR~q\ & !\FINAL|Eatual.ERRO~q\)) # (\FINAL|Eatual.INTERMED~q\ & ((\FINAL|Eatual.ERRO~q\)))) # 
-- (\FINAL|Eatual.FIM~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100111111010111111111111100011111001111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	datab => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	datac => \FINAL|ALT_INV_Eatual.FIM~q\,
	datad => \FINAL|ALT_INV_Eatual.ERRO~q\,
	datae => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	combout => \DB_ESTADO_7SEG|sseg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N3
\DB_ESTADO_7SEG|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[4]~4_combout\ = ( \FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( 
-- !\FINAL|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr6~combout\,
	datad => \FINAL|ALT_INV_WideOr5~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[4]~4_combout\);

-- Location: LABCELL_X43_Y3_N30
\DB_ESTADO_7SEG|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[5]~5_combout\ = ( !\FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\ & \FINAL|WideOr6~combout\) ) ) ) # ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr5~combout\ & 
-- \FINAL|WideOr6~combout\) ) ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( !\FINAL|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010100000101000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr5~combout\,
	datac => \FINAL|ALT_INV_WideOr6~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[5]~5_combout\);

-- Location: LABCELL_X43_Y3_N27
\DB_ESTADO_7SEG|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[6]~6_combout\ = ( \FINAL|WideOr7~combout\ & ( \FINAL|WideOr8~combout\ & ( (\FINAL|WideOr6~combout\ & !\FINAL|WideOr5~combout\) ) ) ) # ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (\FINAL|WideOr6~combout\ & 
-- !\FINAL|WideOr5~combout\) ) ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr8~combout\ & ( (!\FINAL|WideOr6~combout\ & !\FINAL|WideOr5~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr6~combout\,
	datad => \FINAL|ALT_INV_WideOr5~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr8~combout\,
	combout => \DB_ESTADO_7SEG|sseg[6]~6_combout\);

-- Location: MLABCELL_X13_Y14_N3
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


