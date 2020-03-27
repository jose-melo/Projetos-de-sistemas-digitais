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

-- DATE "03/26/2020 22:54:44"

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
	ligado : BUFFER std_logic;
	pulso : BUFFER std_logic;
	estimulo : BUFFER std_logic;
	erro : BUFFER std_logic;
	pronto : BUFFER std_logic;
	tempo : BUFFER std_logic_vector(15 DOWNTO 0);
	tempoFinal_db : BUFFER std_logic_vector(15 DOWNTO 0);
	db_estado_7 : BUFFER std_logic_vector(6 DOWNTO 0);
	saida7seg : BUFFER std_logic_vector(27 DOWNTO 0);
	leds : BUFFER std_logic_vector(9 DOWNTO 0);
	jogadasFeitas_db : BUFFER std_logic_vector(1 DOWNTO 0);
	gameover_db : BUFFER std_logic;
	randContador_db : BUFFER std_logic_vector(1 DOWNTO 0);
	estadoAtual_db : BUFFER std_logic_vector(1 DOWNTO 0);
	respostaJOGO_db : BUFFER std_logic;
	ledsPecas : BUFFER std_logic_vector(2 DOWNTO 0);
	dis4 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Formex;

-- Design Ports Information
-- ligado	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estimulo	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[10]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[11]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[13]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[15]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[14]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoFinal_db[15]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- jogadasFeitas_db[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadasFeitas_db[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameover_db	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- randContador_db[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- randContador_db[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtual_db[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtual_db[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- respostaJOGO_db	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsPecas[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsPecas[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledsPecas[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta2	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta1	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta3	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pseudoclock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_tempoFinal_db : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_db_estado_7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_jogadasFeitas_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_gameover_db : std_logic;
SIGNAL ww_randContador_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_estadoAtual_db : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_respostaJOGO_db : std_logic;
SIGNAL ww_ledsPecas : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dis4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta1~input_o\ : std_logic;
SIGNAL \resposta2~input_o\ : std_logic;
SIGNAL \jogar~input_o\ : std_logic;
SIGNAL \pseudoclock~input_o\ : std_logic;
SIGNAL \pseudoclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RANDOM_DISP|sseg[0]~0_combout\ : std_logic;
SIGNAL \RANDOM_DISP|Equal15~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|IQ[0]~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \estadoAtual~0_combout\ : std_logic;
SIGNAL \resposta3~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \STATE_COUNT|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \STATE_COUNT|IQ~1_combout\ : std_logic;
SIGNAL \STATE_COUNT|IQ~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \FINAL|Selector3~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INTERMED~q\ : std_logic;
SIGNAL \FINAL|Eatual.INICIAL~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INICIAL~q\ : std_logic;
SIGNAL \FINAL|Selector0~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.RESETADOR~q\ : std_logic;
SIGNAL \FINAL|Eatual.ATIVADOR~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.ATIVADOR~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Selector0~0_combout\ : std_logic;
SIGNAL \FINAL|WideNor0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|LATCH|iq~combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|reset_in2~combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \FINAL|Selector1~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.JOGADOR~q\ : std_logic;
SIGNAL \STATE_COUNT|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \FINAL|Eprox.INTERMED1~0_combout\ : std_logic;
SIGNAL \FINAL|Eprox.INTERMED1~1_combout\ : std_logic;
SIGNAL \FINAL|Eatual.INTERMED1~q\ : std_logic;
SIGNAL \estadoAtual[0]~1_combout\ : std_logic;
SIGNAL \estadoAtual~2_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\ : std_logic;
SIGNAL \REG|IQ[10]~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s1|S1|s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s1|S2|s~combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector12~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s1|S2|cout~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector13~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s2|S3|s~combout\ : std_logic;
SIGNAL \SOMADOR|S1|s2|S4|s~combout\ : std_logic;
SIGNAL \SOMADOR|S1|g1|vaium~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s2|S2|s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s1|S1|s~combout\ : std_logic;
SIGNAL \REG|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s1|S2|s~combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector9~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s1|S2|cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s2|S3|s~combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector8~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s2|S4|s~combout\ : std_logic;
SIGNAL \SOMADOR|S2|g1|vaium~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s2|S2|s~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector7~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S1|s~combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector5~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector4~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|s~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector6~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s2|S3|cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|cout~1_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|cout~2_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s2|S4|s~combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S2|cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S2|s~combout\ : std_logic;
SIGNAL \SOMADOR|S3|s2|S3|s~combout\ : std_logic;
SIGNAL \SOMADOR|S3|s2|S2|s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S1|s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S1|s~combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector1~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|g1|vaium~0_combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S2|cout~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|Selector0~0_combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S2|s~combout\ : std_logic;
SIGNAL \SOMADOR|S4|s2|S3|s~combout\ : std_logic;
SIGNAL \SOMADOR|S4|s2|S4|s~combout\ : std_logic;
SIGNAL \SOMADOR|S4|s2|S2|s~0_combout\ : std_logic;
SIGNAL \RANDOM_DISP|sseg[2]~1_combout\ : std_logic;
SIGNAL \DIS0|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS0|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS0|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS0|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS0|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS0|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS0|sseg[6]~6_combout\ : std_logic;
SIGNAL \DIS1|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS1|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS1|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS1|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS1|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS1|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS1|sseg[6]~6_combout\ : std_logic;
SIGNAL \DIS2|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS2|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS2|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS2|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS2|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS2|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS2|sseg[6]~6_combout\ : std_logic;
SIGNAL \DIS3|sseg[0]~0_combout\ : std_logic;
SIGNAL \DIS3|sseg[1]~1_combout\ : std_logic;
SIGNAL \DIS3|sseg[2]~2_combout\ : std_logic;
SIGNAL \DIS3|sseg[3]~3_combout\ : std_logic;
SIGNAL \DIS3|sseg[4]~4_combout\ : std_logic;
SIGNAL \DIS3|sseg[5]~5_combout\ : std_logic;
SIGNAL \DIS3|sseg[6]~6_combout\ : std_logic;
SIGNAL \sel_mux[0]~input_o\ : std_logic;
SIGNAL \sel_mux[1]~input_o\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED6|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED7|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED8|Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED9|Mux0~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.ERRO~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.ERRO~q\ : std_logic;
SIGNAL \FINAL|Eatual.FIM~0_combout\ : std_logic;
SIGNAL \FINAL|Eatual.FIM~q\ : std_logic;
SIGNAL \FINAL|WideOr7~combout\ : std_logic;
SIGNAL \FINAL|WideOr8~combout\ : std_logic;
SIGNAL \FINAL|WideOr5~combout\ : std_logic;
SIGNAL \FINAL|WideOr6~combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[0]~0_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[1]~1_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[2]~2_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[3]~3_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[4]~4_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[5]~5_combout\ : std_logic;
SIGNAL \DB_ESTADO_7SEG|sseg[6]~6_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL estadoAtual : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RANDOM|CONTA|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \REG|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \STATE_COUNT|IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|REG|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\ : std_logic;
SIGNAL \REG|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \RANDOM_DISP|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \RANDOM|CONTA|ALT_INV_IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SOMADOR|S4|s1|S2|ALT_INV_s~combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|g1|ALT_INV_vaium~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \SOMADOR|S4|s1|S1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s2|S3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S2|ALT_INV_s~combout\ : std_logic;
SIGNAL \SOMADOR|S3|s1|S2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s2|S2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s1|S2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \SOMADOR|S2|s1|S2|ALT_INV_s~combout\ : std_logic;
SIGNAL \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s1|S2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|MUX|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \SOMADOR|S1|s1|S2|ALT_INV_s~combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|PULSE|ALT_INV_pulso~0_combout\ : std_logic;
SIGNAL \ALT_INV_jogar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta3~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta1~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta2~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_mux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_mux[0]~input_o\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ : std_logic;
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
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_estadoAtual : std_logic_vector(1 DOWNTO 0);
SIGNAL \FINAL|ALT_INV_Eatual.INTERMED1~q\ : std_logic;
SIGNAL \STATE_COUNT|ALT_INV_IQ\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ : std_logic;
SIGNAL \JOGO_REAC|MUX_LED7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FINAL|ALT_INV_Eatual.ATIVADOR~DUPLICATE_q\ : std_logic;
SIGNAL \STATE_COUNT|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \STATE_COUNT|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ : std_logic;
SIGNAL \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\ : std_logic;

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
tempoFinal_db <= ww_tempoFinal_db;
db_estado_7 <= ww_db_estado_7;
saida7seg <= ww_saida7seg;
leds <= ww_leds;
jogadasFeitas_db <= ww_jogadasFeitas_db;
gameover_db <= ww_gameover_db;
randContador_db <= ww_randContador_db;
estadoAtual_db <= ww_estadoAtual_db;
respostaJOGO_db <= ww_respostaJOGO_db;
ledsPecas <= ww_ledsPecas;
dis4 <= ww_dis4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\;
\REG|ALT_INV_IQ\(13) <= NOT \REG|IQ\(13);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(13);
\REG|ALT_INV_IQ\(14) <= NOT \REG|IQ\(14);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(14);
\REG|ALT_INV_IQ\(15) <= NOT \REG|IQ\(15);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(15);
\REG|ALT_INV_IQ\(12) <= NOT \REG|IQ\(12);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(12);
\REG|ALT_INV_IQ\(9) <= NOT \REG|IQ\(9);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(9);
\REG|ALT_INV_IQ\(10) <= NOT \REG|IQ\(10);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(10);
\REG|ALT_INV_IQ\(11) <= NOT \REG|IQ\(11);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(11);
\REG|ALT_INV_IQ\(8) <= NOT \REG|IQ\(8);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(8);
\REG|ALT_INV_IQ\(6) <= NOT \REG|IQ\(6);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(6);
\REG|ALT_INV_IQ\(7) <= NOT \REG|IQ\(7);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(7);
\REG|ALT_INV_IQ\(5) <= NOT \REG|IQ\(5);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(5);
\REG|ALT_INV_IQ\(4) <= NOT \REG|IQ\(4);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(4);
\REG|ALT_INV_IQ\(2) <= NOT \REG|IQ\(2);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(2);
\REG|ALT_INV_IQ\(3) <= NOT \REG|IQ\(3);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(3);
\REG|ALT_INV_IQ\(1) <= NOT \REG|IQ\(1);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(1);
\REG|ALT_INV_IQ\(0) <= NOT \REG|IQ\(0);
\JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0) <= NOT \JOGO_REAC|MEDIDOR|REG|IQ\(0);
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
\RANDOM_DISP|ALT_INV_Equal15~0_combout\ <= NOT \RANDOM_DISP|Equal15~0_combout\;
\RANDOM|CONTA|ALT_INV_IQ\(1) <= NOT \RANDOM|CONTA|IQ\(1);
\RANDOM|CONTA|ALT_INV_IQ\(0) <= NOT \RANDOM|CONTA|IQ\(0);
\SOMADOR|S4|s1|S2|ALT_INV_s~combout\ <= NOT \SOMADOR|S4|s1|S2|s~combout\;
\SOMADOR|S4|s1|S2|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S4|s1|S2|cout~0_combout\;
\SOMADOR|S3|g1|ALT_INV_vaium~0_combout\ <= NOT \SOMADOR|S3|g1|vaium~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector1~0_combout\ <= NOT \JOGO_REAC|MUX|Selector1~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector0~0_combout\ <= NOT \JOGO_REAC|MUX|Selector0~0_combout\;
\SOMADOR|S4|s1|S1|ALT_INV_s~0_combout\ <= NOT \SOMADOR|S4|s1|S1|s~0_combout\;
\SOMADOR|S3|s2|S3|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S3|s2|S3|cout~0_combout\;
\SOMADOR|S3|s1|S3|ALT_INV_s~0_combout\ <= NOT \SOMADOR|S3|s1|S3|s~0_combout\;
\SOMADOR|S3|s1|S3|ALT_INV_cout~2_combout\ <= NOT \SOMADOR|S3|s1|S3|cout~2_combout\;
\SOMADOR|S3|s1|S3|ALT_INV_cout~1_combout\ <= NOT \SOMADOR|S3|s1|S3|cout~1_combout\;
\SOMADOR|S3|s1|S3|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S3|s1|S3|cout~0_combout\;
\SOMADOR|S3|s1|S2|ALT_INV_s~combout\ <= NOT \SOMADOR|S3|s1|S2|s~combout\;
\SOMADOR|S3|s1|S2|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S3|s1|S2|cout~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\ <= NOT \JOGO_REAC|MUX|Selector6~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\ <= NOT \JOGO_REAC|MUX|Selector5~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\ <= NOT \JOGO_REAC|MUX|Selector4~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\ <= NOT \JOGO_REAC|MUX|Selector7~0_combout\;
\SOMADOR|S2|s2|S2|ALT_INV_s~0_combout\ <= NOT \SOMADOR|S2|s2|S2|s~0_combout\;
\SOMADOR|S2|g1|ALT_INV_vaium~0_combout\ <= NOT \SOMADOR|S2|g1|vaium~0_combout\;
\SOMADOR|S2|s1|S2|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S2|s1|S2|cout~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector9~0_combout\ <= NOT \JOGO_REAC|MUX|Selector9~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector8~0_combout\ <= NOT \JOGO_REAC|MUX|Selector8~0_combout\;
\SOMADOR|S2|s1|S2|ALT_INV_s~combout\ <= NOT \SOMADOR|S2|s1|S2|s~combout\;
\SOMADOR|S1|g1|ALT_INV_vaium~0_combout\ <= NOT \SOMADOR|S1|g1|vaium~0_combout\;
\SOMADOR|S1|s1|S2|ALT_INV_cout~0_combout\ <= NOT \SOMADOR|S1|s1|S2|cout~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector13~0_combout\ <= NOT \JOGO_REAC|MUX|Selector13~0_combout\;
\JOGO_REAC|MUX|ALT_INV_Selector12~0_combout\ <= NOT \JOGO_REAC|MUX|Selector12~0_combout\;
\SOMADOR|S1|s1|S2|ALT_INV_s~combout\ <= NOT \SOMADOR|S1|s1|S2|s~combout\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\;
\JOGO_REAC|INTERFACE|PULSE|ALT_INV_pulso~0_combout\ <= NOT \JOGO_REAC|INTERFACE|PULSE|pulso~0_combout\;
\ALT_INV_jogar~input_o\ <= NOT \jogar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_resposta3~input_o\ <= NOT \resposta3~input_o\;
\ALT_INV_resposta1~input_o\ <= NOT \resposta1~input_o\;
\ALT_INV_resposta2~input_o\ <= NOT \resposta2~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_sel_mux[1]~input_o\ <= NOT \sel_mux[1]~input_o\;
\ALT_INV_sel_mux[0]~input_o\ <= NOT \sel_mux[0]~input_o\;
\JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\ <= NOT \JOGO_REAC|INTERFACE|LATCH|iq~combout\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\;
\FINAL|ALT_INV_Eprox.INTERMED1~0_combout\ <= NOT \FINAL|Eprox.INTERMED1~0_combout\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\ <= NOT \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\;
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
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_estadoAtual(1) <= NOT estadoAtual(1);
ALT_INV_estadoAtual(0) <= NOT estadoAtual(0);
\FINAL|ALT_INV_Eatual.INTERMED1~q\ <= NOT \FINAL|Eatual.INTERMED1~q\;
\STATE_COUNT|ALT_INV_IQ\(1) <= NOT \STATE_COUNT|IQ\(1);
\STATE_COUNT|ALT_INV_IQ\(0) <= NOT \STATE_COUNT|IQ\(0);
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\;
\JOGO_REAC|MUX_LED7|ALT_INV_Mux0~0_combout\ <= NOT \JOGO_REAC|MUX_LED7|Mux0~0_combout\;
\JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\;
\FINAL|ALT_INV_Eatual.ATIVADOR~DUPLICATE_q\ <= NOT \FINAL|Eatual.ATIVADOR~DUPLICATE_q\;
\STATE_COUNT|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \STATE_COUNT|IQ[1]~DUPLICATE_q\;
\STATE_COUNT|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \STATE_COUNT|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\ <= NOT \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\;
\JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\ <= NOT \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\;
\RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \RANDOM|CONTA|IQ[0]~DUPLICATE_q\;
\JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\ <= NOT \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\;

-- Location: IOOBUF_X34_Y0_N19
\ligado~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\,
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

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X25_Y0_N36
\tempo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S1|s1|S1|s~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(0));

-- Location: IOOBUF_X54_Y14_N79
\tempo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S1|s2|S2|s~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(1));

-- Location: IOOBUF_X22_Y0_N36
\tempo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S1|s2|S3|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(2));

-- Location: IOOBUF_X54_Y14_N62
\tempo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S1|s2|S4|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(3));

-- Location: IOOBUF_X43_Y45_N2
\tempo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S2|s1|S1|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(4));

-- Location: IOOBUF_X54_Y16_N5
\tempo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S2|s2|S2|s~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(5));

-- Location: IOOBUF_X25_Y0_N19
\tempo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S2|s2|S3|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(6));

-- Location: IOOBUF_X43_Y45_N19
\tempo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S2|s2|S4|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(7));

-- Location: IOOBUF_X24_Y0_N2
\tempo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S3|s1|S1|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(8));

-- Location: IOOBUF_X54_Y16_N22
\tempo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S3|s2|S2|s~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(9));

-- Location: IOOBUF_X54_Y17_N56
\tempo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S3|s2|S3|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(10));

-- Location: IOOBUF_X54_Y17_N39
\tempo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S3|s2|S4|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(11));

-- Location: IOOBUF_X54_Y15_N39
\tempo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S4|s1|S1|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(12));

-- Location: IOOBUF_X44_Y45_N2
\tempo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S4|s2|S2|s~0_combout\,
	devoe => ww_devoe,
	o => ww_tempo(13));

-- Location: IOOBUF_X54_Y15_N22
\tempo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S4|s2|S3|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(14));

-- Location: IOOBUF_X54_Y20_N56
\tempo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|S4|s2|S4|s~combout\,
	devoe => ww_devoe,
	o => ww_tempo(15));

-- Location: IOOBUF_X43_Y45_N53
\tempoFinal_db[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(0),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(0));

-- Location: IOOBUF_X54_Y16_N56
\tempoFinal_db[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(1),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(1));

-- Location: IOOBUF_X34_Y0_N53
\tempoFinal_db[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(2),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(2));

-- Location: IOOBUF_X43_Y45_N36
\tempoFinal_db[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(3),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(3));

-- Location: IOOBUF_X24_Y0_N36
\tempoFinal_db[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(4),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(4));

-- Location: IOOBUF_X23_Y0_N93
\tempoFinal_db[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(5),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(5));

-- Location: IOOBUF_X34_Y0_N2
\tempoFinal_db[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(6),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(6));

-- Location: IOOBUF_X36_Y0_N53
\tempoFinal_db[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(7),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(7));

-- Location: IOOBUF_X25_Y0_N53
\tempoFinal_db[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(8),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(8));

-- Location: IOOBUF_X38_Y0_N2
\tempoFinal_db[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(9),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(9));

-- Location: IOOBUF_X54_Y16_N39
\tempoFinal_db[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(10),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(10));

-- Location: IOOBUF_X54_Y15_N56
\tempoFinal_db[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(11),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(11));

-- Location: IOOBUF_X50_Y0_N2
\tempoFinal_db[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(12),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(12));

-- Location: IOOBUF_X33_Y0_N93
\tempoFinal_db[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(13),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(13));

-- Location: IOOBUF_X23_Y0_N76
\tempoFinal_db[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(14),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(14));

-- Location: IOOBUF_X23_Y0_N59
\tempoFinal_db[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|IQ\(15),
	devoe => ww_devoe,
	o => ww_tempoFinal_db(15));

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
	i => \DIS0|sseg[0]~0_combout\,
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
	i => \DIS0|sseg[1]~1_combout\,
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
	i => \DIS0|sseg[2]~2_combout\,
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
	i => \DIS0|sseg[3]~3_combout\,
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
	i => \DIS0|sseg[4]~4_combout\,
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
	i => \DIS0|sseg[5]~5_combout\,
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
	i => \DIS0|sseg[6]~6_combout\,
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
	i => \DIS1|sseg[0]~0_combout\,
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
	i => \DIS1|sseg[1]~1_combout\,
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
	i => \DIS1|sseg[2]~2_combout\,
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
	i => \DIS1|sseg[3]~3_combout\,
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
	i => \DIS1|sseg[4]~4_combout\,
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
	i => \DIS1|sseg[5]~5_combout\,
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
	i => \DIS1|sseg[6]~6_combout\,
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
	i => \DIS2|sseg[0]~0_combout\,
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
	i => \DIS2|sseg[1]~1_combout\,
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
	i => \DIS2|sseg[2]~2_combout\,
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
	i => \DIS2|sseg[3]~3_combout\,
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
	i => \DIS2|sseg[4]~4_combout\,
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
	i => \DIS2|sseg[5]~5_combout\,
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
	i => \DIS2|sseg[6]~6_combout\,
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
	i => \DIS3|sseg[0]~0_combout\,
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
	i => \DIS3|sseg[1]~1_combout\,
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
	i => \DIS3|sseg[2]~2_combout\,
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
	i => \DIS3|sseg[3]~3_combout\,
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
	i => \DIS3|sseg[4]~4_combout\,
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
	i => \DIS3|sseg[5]~5_combout\,
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
	i => \DIS3|sseg[6]~6_combout\,
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

-- Location: IOOBUF_X36_Y45_N53
\jogadasFeitas_db[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE_COUNT|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_jogadasFeitas_db(0));

-- Location: IOOBUF_X29_Y0_N36
\jogadasFeitas_db[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STATE_COUNT|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_jogadasFeitas_db(1));

-- Location: IOOBUF_X29_Y0_N53
\gameover_db~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FINAL|Eatual.INTERMED1~q\,
	devoe => ww_devoe,
	o => ww_gameover_db);

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X34_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X54_Y20_N5
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N19
\ledsPecas[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_ledsPecas(0));

-- Location: IOOBUF_X25_Y0_N2
\ledsPecas[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_ledsPecas(1));

-- Location: IOOBUF_X24_Y0_N53
\ledsPecas[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_ledsPecas(2));

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

-- Location: LABCELL_X36_Y2_N15
\RANDOM_DISP|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|sseg[0]~0_combout\ = ( \RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & ( !\RANDOM|CONTA|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDOM|CONTA|ALT_INV_IQ\(1),
	dataf => \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \RANDOM_DISP|sseg[0]~0_combout\);

-- Location: FF_X36_Y2_N11
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

-- Location: LABCELL_X36_Y2_N51
\RANDOM_DISP|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|Equal15~0_combout\ = ( \RANDOM|CONTA|IQ[0]~DUPLICATE_q\ ) # ( !\RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & ( \RANDOM|CONTA|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDOM|CONTA|ALT_INV_IQ\(1),
	dataf => \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \RANDOM_DISP|Equal15~0_combout\);

-- Location: LABCELL_X36_Y2_N42
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

-- Location: FF_X36_Y2_N44
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

-- Location: LABCELL_X36_Y2_N48
\estadoAtual~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estadoAtual~0_combout\ = ( \RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & ( ((!estadoAtual(1) & !estadoAtual(0))) # (\jogar~input_o\) ) ) # ( !\RANDOM|CONTA|IQ[0]~DUPLICATE_q\ & ( (!estadoAtual(1) & (!\jogar~input_o\ & !estadoAtual(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_estadoAtual(1),
	datac => \ALT_INV_jogar~input_o\,
	datad => ALT_INV_estadoAtual(0),
	dataf => \RANDOM|CONTA|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \estadoAtual~0_combout\);

-- Location: IOIBUF_X19_Y0_N18
\resposta3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta3,
	o => \resposta3~input_o\);

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

-- Location: FF_X37_Y2_N19
\STATE_COUNT|IQ[0]~DUPLICATE\ : dffeas
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
	q => \STATE_COUNT|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N51
\STATE_COUNT|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \STATE_COUNT|IQ~1_combout\ = ( !\STATE_COUNT|IQ\(1) & ( \STATE_COUNT|IQ[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \STATE_COUNT|ALT_INV_IQ\(1),
	dataf => \STATE_COUNT|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \STATE_COUNT|IQ~1_combout\);

-- Location: FF_X37_Y2_N53
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

-- Location: MLABCELL_X37_Y2_N18
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

-- Location: FF_X37_Y2_N20
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

-- Location: LABCELL_X36_Y2_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( estadoAtual(0) & ( (!estadoAtual(1) & \resposta2~input_o\) ) ) # ( !estadoAtual(0) & ( (!estadoAtual(1) & ((\resposta1~input_o\))) # (estadoAtual(1) & (\resposta3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta3~input_o\,
	datab => ALT_INV_estadoAtual(1),
	datac => \ALT_INV_resposta2~input_o\,
	datad => \ALT_INV_resposta1~input_o\,
	dataf => ALT_INV_estadoAtual(0),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X37_Y2_N42
\FINAL|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Selector3~0_combout\ = ( \FINAL|Eatual.INTERMED~q\ & ( \Mux0~0_combout\ ) ) # ( !\FINAL|Eatual.INTERMED~q\ & ( \Mux0~0_combout\ & ( \FINAL|Eatual.INTERMED1~q\ ) ) ) # ( \FINAL|Eatual.INTERMED~q\ & ( !\Mux0~0_combout\ & ( \FINAL|Eatual.INTERMED1~q\ 
-- ) ) ) # ( !\FINAL|Eatual.INTERMED~q\ & ( !\Mux0~0_combout\ & ( \FINAL|Eatual.INTERMED1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.INTERMED1~q\,
	datae => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Selector3~0_combout\);

-- Location: FF_X37_Y2_N44
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

-- Location: LABCELL_X41_Y2_N0
\FINAL|Eatual.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.INICIAL~0_combout\ = ( \FINAL|Eatual.INICIAL~q\ ) # ( !\FINAL|Eatual.INICIAL~q\ & ( \jogar~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jogar~input_o\,
	datae => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	combout => \FINAL|Eatual.INICIAL~0_combout\);

-- Location: FF_X41_Y2_N2
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

-- Location: LABCELL_X41_Y2_N39
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

-- Location: FF_X41_Y2_N41
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

-- Location: FF_X41_Y2_N4
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

-- Location: LABCELL_X40_Y2_N27
\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~0_combout\);

-- Location: FF_X41_Y2_N5
\FINAL|Eatual.ATIVADOR~DUPLICATE\ : dffeas
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
	q => \FINAL|Eatual.ATIVADOR~DUPLICATE_q\);

-- Location: LABCELL_X41_Y2_N48
\JOGO_REAC|CONTROLADOR|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Selector0~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ & ( (\JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\) # (\FINAL|Eatual.ATIVADOR~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.ATIVADOR~DUPLICATE_q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\,
	combout => \JOGO_REAC|CONTROLADOR|Selector0~0_combout\);

-- Location: LABCELL_X41_Y2_N12
\FINAL|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideNor0~0_combout\ = ( \FINAL|Eatual.RESETADOR~q\ ) # ( !\FINAL|Eatual.RESETADOR~q\ & ( !\FINAL|Eatual.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	dataf => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	combout => \FINAL|WideNor0~0_combout\);

-- Location: FF_X41_Y2_N50
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

-- Location: LABCELL_X41_Y2_N42
\JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.INICIAL~q\ & ( \FINAL|Eatual.ATIVADOR~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.ATIVADOR~DUPLICATE_q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.INICIAL~q\,
	combout => \JOGO_REAC|CONTROLADOR|Eprox.LIGA1~0_combout\);

-- Location: FF_X41_Y2_N44
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

-- Location: FF_X40_Y2_N20
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

-- Location: LABCELL_X40_Y2_N42
\JOGO_REAC|MEDIDOR|UC|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\ = ((!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & \JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\)) # (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector0~0_combout\);

-- Location: FF_X40_Y2_N44
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

-- Location: LABCELL_X40_Y2_N48
\JOGO_REAC|INTERFACE|LATCH|iq\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|LATCH|iq~combout\ = ( !\JOGO_REAC|reset_in2~combout\ & ( \JOGO_REAC|INTERFACE|LATCH|iq~combout\ ) ) # ( !\JOGO_REAC|reset_in2~combout\ & ( !\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( \Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~0_combout\,
	datae => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	dataf => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	combout => \JOGO_REAC|INTERFACE|LATCH|iq~combout\);

-- Location: LABCELL_X40_Y2_N45
\JOGO_REAC|MEDIDOR|UC|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\ = ( \JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( ((\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) # ( 
-- !\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & ( (!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & (((\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\))) # 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.INICIAL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.INICIAL~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	dataf => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector1~0_combout\);

-- Location: FF_X40_Y2_N47
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

-- Location: LABCELL_X41_Y1_N27
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~0_combout\);

-- Location: FF_X40_Y2_N56
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

-- Location: LABCELL_X40_Y2_N54
\JOGO_REAC|MEDIDOR|UC|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ((\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & ( (!\JOGO_REAC|INTERFACE|LATCH|iq~combout\ & (\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000011000000110000000100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datae => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector2~0_combout\);

-- Location: FF_X40_Y2_N55
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

-- Location: LABCELL_X41_Y2_N9
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\);

-- Location: FF_X42_Y2_N37
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0));

-- Location: MLABCELL_X42_Y2_N36
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\);

-- Location: FF_X42_Y2_N38
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N6
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) $ 
-- (((!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\) # (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ 
-- & (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) & ((!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000100010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\);

-- Location: FF_X42_Y2_N59
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~4_combout\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3));

-- Location: FF_X42_Y2_N14
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1));

-- Location: MLABCELL_X42_Y2_N12
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3)) # (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000010110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3),
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\);

-- Location: FF_X42_Y2_N13
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N0
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ $ 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))))) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[1]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\);

-- Location: FF_X42_Y2_N1
\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2));

-- Location: MLABCELL_X42_Y2_N42
\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(3) & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2) & (\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ[0]~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_IQ\(3),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\);

-- Location: LABCELL_X41_Y2_N6
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (((\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\)) # 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\);

-- Location: FF_X39_Y2_N8
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0));

-- Location: LABCELL_X39_Y2_N6
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\);

-- Location: FF_X39_Y2_N7
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N30
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ & ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\) # 
-- (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100010101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~2_combout\);

-- Location: FF_X42_Y2_N31
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

-- Location: LABCELL_X39_Y2_N27
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1)) # 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0)))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(0) & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~3_combout\);

-- Location: FF_X39_Y2_N28
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

-- Location: FF_X42_Y2_N19
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

-- Location: MLABCELL_X42_Y2_N18
\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2)) # (!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\)))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2) & 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ((!\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000100000000000000010000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ~4_combout\);

-- Location: FF_X42_Y2_N20
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

-- Location: MLABCELL_X42_Y2_N45
\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1) & ( (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[3]~DUPLICATE_q\ & (\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ[0]~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[3]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_IQ\(1),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\);

-- Location: LABCELL_X41_Y1_N3
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (((\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\)) 
-- # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\)) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[0]~1_combout\);

-- Location: FF_X41_Y1_N28
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

-- Location: LABCELL_X41_Y1_N9
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ $ (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ & 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000010000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~4_combout\);

-- Location: FF_X41_Y1_N11
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

-- Location: LABCELL_X41_Y1_N21
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3)) # (\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100010000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~2_combout\);

-- Location: FF_X41_Y1_N23
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

-- Location: FF_X41_Y1_N49
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

-- Location: LABCELL_X41_Y1_N48
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2) & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(1))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(2) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000001000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ~3_combout\);

-- Location: FF_X41_Y1_N50
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

-- Location: FF_X41_Y1_N22
\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE\ : dffeas
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
	q => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y1_N15
\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[2]~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\);

-- Location: LABCELL_X41_Y2_N18
\JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\) # ((!\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\) # (!\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\)))) ) ) ) # ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( 
-- !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datae => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|CONTROLADOR|Eprox.JOGOPRONTO~0_combout\);

-- Location: FF_X41_Y2_N20
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

-- Location: LABCELL_X41_Y2_N57
\JOGO_REAC|reset_in2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|reset_in2~combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~DUPLICATE_q\ & ( (!\FINAL|Eatual.INICIAL~q\) # (\FINAL|Eatual.RESETADOR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~DUPLICATE_q\,
	combout => \JOGO_REAC|reset_in2~combout\);

-- Location: FF_X40_Y2_N29
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

-- Location: FF_X40_Y2_N35
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

-- Location: LABCELL_X40_Y2_N36
\JOGO_REAC|INTERFACE|FSM|Eprox~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\ & ( !\JOGO_REAC|INTERFACE|FSM|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.INICIAL~q\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\);

-- Location: LABCELL_X40_Y2_N6
\JOGO_REAC|INTERFACE|FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( ((!\Mux0~0_combout\ & ((!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1)) # 
-- (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0))))) # (\JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( \JOGO_REAC|INTERFACE|FSM|Eprox~1_combout\ ) ) ) # ( 
-- \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( !\JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( (!\Mux0~0_combout\ & ((!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1)) # (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001010101000001111000011111000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Eprox~1_combout\,
	datad => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Selector0~0_combout\);

-- Location: FF_X40_Y2_N8
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

-- Location: FF_X40_Y2_N17
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

-- Location: LABCELL_X40_Y2_N15
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\ = (!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datad => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~0_combout\);

-- Location: FF_X40_Y2_N16
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE\ : dffeas
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
	q => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N12
\JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\ = ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|CONT_INICIO|IQ~1_combout\);

-- Location: FF_X40_Y2_N14
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

-- Location: LABCELL_X40_Y2_N0
\JOGO_REAC|INTERFACE|FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\ = ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( (!\Mux0~0_combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) ) ) # ( !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( 
-- (!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & (((!\Mux0~0_combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\)))) # (\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & (((!\Mux0~0_combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\)) # 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001000100011111000100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Selector2~0_combout\);

-- Location: FF_X40_Y2_N2
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

-- Location: LABCELL_X40_Y2_N24
\JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\ = (\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~q\ & ((!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\JOGO_REAC|INTERFACE|LATCH|iq~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Eprox.FIM~0_combout\);

-- Location: FF_X40_Y2_N25
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

-- Location: LABCELL_X40_Y2_N18
\JOGO_REAC|MEDIDOR|UC|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ & (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\ & ((!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # 
-- (\JOGO_REAC|INTERFACE|LATCH|iq~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|MEDIDOR|UC|Selector3~0_combout\);

-- Location: FF_X40_Y2_N19
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

-- Location: MLABCELL_X42_Y1_N21
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\);

-- Location: LABCELL_X41_Y1_N42
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ 
-- & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) ) # ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # 
-- (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) # (\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datae => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\);

-- Location: FF_X42_Y1_N22
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~0_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0));

-- Location: MLABCELL_X42_Y1_N30
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) $ 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))))) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\);

-- Location: FF_X42_Y1_N32
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2));

-- Location: MLABCELL_X42_Y1_N3
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2) $ (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1))))) ) ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2) & (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1)))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( 
-- (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000001000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\);

-- Location: FF_X42_Y1_N5
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~4_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3));

-- Location: MLABCELL_X42_Y1_N24
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) & ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & (!\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\ & 
-- ((!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3)) # (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(2))))) ) ) ) # ( \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) & ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & 
-- !\JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000010000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	datab => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~DUPLICATE_q\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(2),
	datae => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\);

-- Location: FF_X42_Y1_N26
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~2_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1));

-- Location: FF_X42_Y1_N31
\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ~3_combout\,
	ena => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y1_N33
\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ = ( !\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ[2]~DUPLICATE_q\ & ( (!\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(1) & (\JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(0) & \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\);

-- Location: LABCELL_X41_Y2_N51
\JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & (\JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & \JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datab => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\);

-- Location: LABCELL_X40_Y2_N39
\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\ = ( \JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( ((\Mux0~0_combout\ & \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\)) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\) ) ) # ( 
-- !\JOGO_REAC|INTERFACE|CONT_INICIO|IQ[0]~DUPLICATE_q\ & ( ((\Mux0~0_combout\ & (!\JOGO_REAC|INTERFACE|CONT_INICIO|IQ\(1) & \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\))) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \JOGO_REAC|INTERFACE|CONT_INICIO|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~0_combout\);

-- Location: FF_X40_Y2_N41
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

-- Location: FF_X41_Y2_N46
\JOGO_REAC|CONTROLADOR|Eatual.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\);

-- Location: FF_X41_Y2_N56
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

-- Location: LABCELL_X41_Y2_N45
\JOGO_REAC|CONTROLADOR|Eatual.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & ( ((\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\)) # (\JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\) ) ) # ( 
-- !\JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\ & ( \JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\,
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	combout => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\);

-- Location: FF_X41_Y2_N47
\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~0_combout\,
	clrn => \FINAL|ALT_INV_WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N54
\FINAL|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Selector1~0_combout\ = ( \Mux0~0_combout\ & ( \FINAL|Eatual.ATIVADOR~q\ ) ) # ( !\Mux0~0_combout\ & ( ((\FINAL|Eprox.INTERMED1~0_combout\ & !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\FINAL|Eatual.ATIVADOR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	datac => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Selector1~0_combout\);

-- Location: FF_X36_Y2_N56
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

-- Location: FF_X37_Y2_N52
\STATE_COUNT|IQ[1]~DUPLICATE\ : dffeas
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
	q => \STATE_COUNT|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N21
\FINAL|Eprox.INTERMED1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eprox.INTERMED1~0_combout\ = ( \STATE_COUNT|IQ[1]~DUPLICATE_q\ & ( (\STATE_COUNT|IQ\(0) & \FINAL|Eatual.JOGADOR~q\) ) ) # ( !\STATE_COUNT|IQ[1]~DUPLICATE_q\ & ( \FINAL|Eatual.JOGADOR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \STATE_COUNT|ALT_INV_IQ\(0),
	datad => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	dataf => \STATE_COUNT|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \FINAL|Eprox.INTERMED1~0_combout\);

-- Location: LABCELL_X36_Y2_N24
\FINAL|Eprox.INTERMED1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eprox.INTERMED1~1_combout\ = ( \FINAL|Eprox.INTERMED1~0_combout\ & ( estadoAtual(0) & ( (\resposta2~input_o\ & !estadoAtual(1)) ) ) ) # ( \FINAL|Eprox.INTERMED1~0_combout\ & ( !estadoAtual(0) & ( (!estadoAtual(1) & ((\resposta1~input_o\))) # 
-- (estadoAtual(1) & (\resposta3~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101010100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta3~input_o\,
	datab => \ALT_INV_resposta2~input_o\,
	datac => \ALT_INV_resposta1~input_o\,
	datad => ALT_INV_estadoAtual(1),
	datae => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	dataf => ALT_INV_estadoAtual(0),
	combout => \FINAL|Eprox.INTERMED1~1_combout\);

-- Location: FF_X36_Y2_N26
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

-- Location: LABCELL_X36_Y2_N6
\estadoAtual[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \estadoAtual[0]~1_combout\ = (\jogar~input_o\) # (\FINAL|Eatual.INTERMED1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.INTERMED1~q\,
	datac => \ALT_INV_jogar~input_o\,
	combout => \estadoAtual[0]~1_combout\);

-- Location: FF_X36_Y2_N50
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

-- Location: LABCELL_X36_Y2_N12
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

-- Location: FF_X36_Y2_N14
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

-- Location: LABCELL_X39_Y2_N57
\JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( estadoAtual(0) & ( (\resposta2~input_o\ & !estadoAtual(1)) ) ) ) # ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( !estadoAtual(0) & ( (!estadoAtual(1) & 
-- (\resposta1~input_o\)) # (estadoAtual(1) & ((\resposta3~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta1~input_o\,
	datab => \ALT_INV_resposta2~input_o\,
	datac => ALT_INV_estadoAtual(1),
	datad => \ALT_INV_resposta3~input_o\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => ALT_INV_estadoAtual(0),
	combout => \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\);

-- Location: FF_X40_Y2_N59
\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|INTERFACE|FSM|Eprox.ESPERA~0_combout\,
	clrn => \JOGO_REAC|ALT_INV_reset_in2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\);

-- Location: LABCELL_X40_Y2_N33
\JOGO_REAC|INTERFACE|FSM|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\ ) ) # ( !\JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~q\) # 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~q\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\,
	combout => \JOGO_REAC|INTERFACE|FSM|Selector3~0_combout\);

-- Location: FF_X40_Y2_N34
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

-- Location: LABCELL_X41_Y2_N54
\JOGO_REAC|CONTROLADOR|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|CONTROLADOR|Selector1~0_combout\ = ( \JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ & ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\ ) ) # ( !\JOGO_REAC|MEDIDOR|CONT|CONT4|rco~0_combout\ & ( ((!\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\ & 
-- (!\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & \JOGO_REAC|CONTROLADOR|Eatual.LIGA~q\))) # (\JOGO_REAC|CONTROLADOR|Eatual.LIGA1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA1~q\,
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~q\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_rco~0_combout\,
	combout => \JOGO_REAC|CONTROLADOR|Selector1~0_combout\);

-- Location: FF_X41_Y2_N55
\JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE\ : dffeas
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
	q => \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N30
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

-- Location: LABCELL_X44_Y2_N36
\JOGO_REAC|MEDIDOR|REG|IQ[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\);

-- Location: FF_X42_Y2_N29
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(0));

-- Location: LABCELL_X41_Y2_N15
\REG|IQ[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG|IQ[10]~0_combout\ = (\FINAL|Eatual.ATIVADOR~DUPLICATE_q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \FINAL|ALT_INV_Eatual.ATIVADOR~DUPLICATE_q\,
	combout => \REG|IQ[10]~0_combout\);

-- Location: FF_X43_Y2_N26
\REG|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \SOMADOR|S1|s1|S1|s~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(0));

-- Location: LABCELL_X43_Y2_N0
\SOMADOR|S1|s1|S1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s1|S1|s~0_combout\ = ( \REG|IQ\(0) & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(0) & !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) ) # ( !\REG|IQ\(0) & ( (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \SOMADOR|S1|s1|S1|s~0_combout\);

-- Location: FF_X42_Y2_N44
\JOGO_REAC|MEDIDOR|REG|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(1),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(1));

-- Location: FF_X43_Y2_N53
\REG|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S1|s2|S2|s~0_combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(1));

-- Location: MLABCELL_X42_Y2_N39
\SOMADOR|S1|s1|S2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s1|S2|s~combout\ = ( \REG|IQ\(1) & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(1) $ (((\REG|IQ\(0) & \JOGO_REAC|MEDIDOR|REG|IQ\(0)))))) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & (((!\REG|IQ\(0))))) ) ) # ( 
-- !\REG|IQ\(1) & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(1) $ (((!\REG|IQ\(0)) # (!\JOGO_REAC|MEDIDOR|REG|IQ\(0)))))) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & (((\REG|IQ\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100101101001001110010110111011000110100101101100011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	datac => \REG|ALT_INV_IQ\(0),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	dataf => \REG|ALT_INV_IQ\(1),
	combout => \SOMADOR|S1|s1|S2|s~combout\);

-- Location: FF_X42_Y2_N47
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(3));

-- Location: MLABCELL_X42_Y2_N54
\JOGO_REAC|MUX|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector12~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \JOGO_REAC|MUX|Selector12~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\SOMADOR|S1|s1|S2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s1|S2|cout~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(0) & ( \REG|IQ\(0) & ( ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & \JOGO_REAC|MEDIDOR|REG|IQ\(1))) # (\REG|IQ\(1)) ) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(0) & ( \REG|IQ\(0) & ( (\REG|IQ\(1) & 
-- ((\JOGO_REAC|MEDIDOR|REG|IQ\(1)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\))) ) ) ) # ( \JOGO_REAC|MEDIDOR|REG|IQ\(0) & ( !\REG|IQ\(0) & ( (\REG|IQ\(1) & (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & \JOGO_REAC|MEDIDOR|REG|IQ\(1))) ) ) ) # ( 
-- !\JOGO_REAC|MEDIDOR|REG|IQ\(0) & ( !\REG|IQ\(0) & ( (\REG|IQ\(1) & (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & \JOGO_REAC|MEDIDOR|REG|IQ\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(1),
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(1),
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(0),
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \SOMADOR|S1|s1|S2|cout~0_combout\);

-- Location: FF_X42_Y2_N8
\JOGO_REAC|MEDIDOR|REG|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT1|IQ\(2),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(2));

-- Location: MLABCELL_X42_Y2_N3
\JOGO_REAC|MUX|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector13~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~q\,
	combout => \JOGO_REAC|MUX|Selector13~0_combout\);

-- Location: LABCELL_X43_Y2_N3
\SOMADOR|S1|s2|S3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s2|S3|s~combout\ = ( \JOGO_REAC|MUX|Selector13~0_combout\ & ( !\SOMADOR|S1|s1|S2|cout~0_combout\ $ (!\REG|IQ\(2) $ (((\SOMADOR|S1|s1|S2|s~combout\) # (\SOMADOR|S1|g1|vaium~0_combout\)))) ) ) # ( !\JOGO_REAC|MUX|Selector13~0_combout\ & ( 
-- !\SOMADOR|S1|s1|S2|cout~0_combout\ $ (!\REG|IQ\(2) $ (((!\SOMADOR|S1|g1|vaium~0_combout\ & !\SOMADOR|S1|s1|S2|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011101111000100001110111100001111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\,
	datab => \SOMADOR|S1|s1|S2|ALT_INV_s~combout\,
	datac => \SOMADOR|S1|s1|S2|ALT_INV_cout~0_combout\,
	datad => \REG|ALT_INV_IQ\(2),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector13~0_combout\,
	combout => \SOMADOR|S1|s2|S3|s~combout\);

-- Location: FF_X43_Y2_N5
\REG|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S1|s2|S3|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(2));

-- Location: LABCELL_X43_Y2_N21
\SOMADOR|S1|s2|S4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s2|S4|s~combout\ = ( \REG|IQ\(3) & ( \JOGO_REAC|MUX|Selector13~0_combout\ & ( !\JOGO_REAC|MUX|Selector12~0_combout\ $ (((!\REG|IQ\(2) & (\SOMADOR|S1|s1|S2|s~combout\ & \SOMADOR|S1|s1|S2|cout~0_combout\)) # (\REG|IQ\(2) & 
-- ((\SOMADOR|S1|s1|S2|cout~0_combout\) # (\SOMADOR|S1|s1|S2|s~combout\))))) ) ) ) # ( !\REG|IQ\(3) & ( \JOGO_REAC|MUX|Selector13~0_combout\ & ( (!\REG|IQ\(2) & (\SOMADOR|S1|s1|S2|cout~0_combout\ & (!\SOMADOR|S1|s1|S2|s~combout\ $ 
-- (!\JOGO_REAC|MUX|Selector12~0_combout\)))) # (\REG|IQ\(2) & (!\JOGO_REAC|MUX|Selector12~0_combout\ $ (((!\SOMADOR|S1|s1|S2|s~combout\ & !\SOMADOR|S1|s1|S2|cout~0_combout\))))) ) ) ) # ( \REG|IQ\(3) & ( !\JOGO_REAC|MUX|Selector13~0_combout\ & ( 
-- !\JOGO_REAC|MUX|Selector12~0_combout\ $ (((!\REG|IQ\(2) & (!\SOMADOR|S1|s1|S2|s~combout\ & !\SOMADOR|S1|s1|S2|cout~0_combout\)) # (\REG|IQ\(2) & (\SOMADOR|S1|s1|S2|s~combout\ & \SOMADOR|S1|s1|S2|cout~0_combout\)))) ) ) ) # ( !\REG|IQ\(3) & ( 
-- !\JOGO_REAC|MUX|Selector13~0_combout\ & ( (!\REG|IQ\(2) & (!\SOMADOR|S1|s1|S2|s~combout\ & (!\SOMADOR|S1|s1|S2|cout~0_combout\ & !\JOGO_REAC|MUX|Selector12~0_combout\))) # (\REG|IQ\(2) & (\SOMADOR|S1|s1|S2|cout~0_combout\ & (!\SOMADOR|S1|s1|S2|s~combout\ 
-- $ (!\JOGO_REAC|MUX|Selector12~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000100011111101000000100010111010010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(2),
	datab => \SOMADOR|S1|s1|S2|ALT_INV_s~combout\,
	datac => \SOMADOR|S1|s1|S2|ALT_INV_cout~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector12~0_combout\,
	datae => \REG|ALT_INV_IQ\(3),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector13~0_combout\,
	combout => \SOMADOR|S1|s2|S4|s~combout\);

-- Location: FF_X43_Y2_N23
\REG|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S1|s2|S4|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(3));

-- Location: MLABCELL_X42_Y2_N48
\SOMADOR|S1|g1|vaium~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|g1|vaium~0_combout\ = ( \JOGO_REAC|MUX|Selector13~0_combout\ & ( \SOMADOR|S1|s1|S2|s~combout\ & ( (\JOGO_REAC|MUX|Selector12~0_combout\ & (!\REG|IQ\(2) & (!\SOMADOR|S1|s1|S2|cout~0_combout\ & !\REG|IQ\(3)))) ) ) ) # ( 
-- !\JOGO_REAC|MUX|Selector13~0_combout\ & ( \SOMADOR|S1|s1|S2|s~combout\ & ( (\JOGO_REAC|MUX|Selector12~0_combout\ & (!\REG|IQ\(3) & ((!\REG|IQ\(2)) # (!\SOMADOR|S1|s1|S2|cout~0_combout\)))) ) ) ) # ( \JOGO_REAC|MUX|Selector13~0_combout\ & ( 
-- !\SOMADOR|S1|s1|S2|s~combout\ & ( (\JOGO_REAC|MUX|Selector12~0_combout\ & (!\REG|IQ\(3) & ((!\REG|IQ\(2)) # (!\SOMADOR|S1|s1|S2|cout~0_combout\)))) ) ) ) # ( !\JOGO_REAC|MUX|Selector13~0_combout\ & ( !\SOMADOR|S1|s1|S2|s~combout\ & ( 
-- (!\JOGO_REAC|MUX|Selector12~0_combout\ & (!\REG|IQ\(2) & (!\SOMADOR|S1|s1|S2|cout~0_combout\ & !\REG|IQ\(3)))) # (\JOGO_REAC|MUX|Selector12~0_combout\ & ((!\REG|IQ\(3)) # ((!\REG|IQ\(2) & !\SOMADOR|S1|s1|S2|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101000000010101000000000001010100000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector12~0_combout\,
	datab => \REG|ALT_INV_IQ\(2),
	datac => \SOMADOR|S1|s1|S2|ALT_INV_cout~0_combout\,
	datad => \REG|ALT_INV_IQ\(3),
	datae => \JOGO_REAC|MUX|ALT_INV_Selector13~0_combout\,
	dataf => \SOMADOR|S1|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S1|g1|vaium~0_combout\);

-- Location: LABCELL_X43_Y2_N51
\SOMADOR|S1|s2|S2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S1|s2|S2|s~0_combout\ = ( \SOMADOR|S1|g1|vaium~0_combout\ & ( \SOMADOR|S1|s1|S2|s~combout\ ) ) # ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( !\SOMADOR|S1|s1|S2|s~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|S1|s1|S2|ALT_INV_s~combout\,
	dataf => \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S1|s2|S2|s~0_combout\);

-- Location: FF_X43_Y1_N32
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(4));

-- Location: FF_X43_Y2_N17
\REG|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S2|s1|S1|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(4));

-- Location: LABCELL_X43_Y2_N15
\SOMADOR|S2|s1|S1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s1|S1|s~combout\ = ( \REG|IQ\(4) & ( \SOMADOR|S1|g1|vaium~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|REG|IQ\(4)) ) ) ) # ( !\REG|IQ\(4) & ( \SOMADOR|S1|g1|vaium~0_combout\ & ( 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(4)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) ) ) # ( \REG|IQ\(4) & ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(4)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) ) ) # ( !\REG|IQ\(4) & 
-- ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & !\JOGO_REAC|MEDIDOR|REG|IQ\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001111110011111100111111001111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datae => \REG|ALT_INV_IQ\(4),
	dataf => \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S2|s1|S1|s~combout\);

-- Location: FF_X43_Y1_N38
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(5));

-- Location: LABCELL_X43_Y2_N9
\REG|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG|IQ[5]~feeder_combout\ = ( \SOMADOR|S2|s2|S2|s~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SOMADOR|S2|s2|S2|ALT_INV_s~0_combout\,
	combout => \REG|IQ[5]~feeder_combout\);

-- Location: FF_X43_Y2_N11
\REG|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \REG|IQ[5]~feeder_combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(5));

-- Location: LABCELL_X43_Y1_N33
\SOMADOR|S2|s1|S2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s1|S2|s~combout\ = ( \REG|IQ\(4) & ( \SOMADOR|S1|g1|vaium~0_combout\ & ( !\REG|IQ\(5) $ (((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(5) $ (\JOGO_REAC|MEDIDOR|REG|IQ\(4)))))) ) ) ) # ( !\REG|IQ\(4) & ( 
-- \SOMADOR|S1|g1|vaium~0_combout\ & ( !\REG|IQ\(5) $ (((!\JOGO_REAC|MEDIDOR|REG|IQ\(5)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\))) ) ) ) # ( \REG|IQ\(4) & ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( !\REG|IQ\(5) $ (((\JOGO_REAC|MEDIDOR|REG|IQ\(5) & 
-- !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\))) ) ) ) # ( !\REG|IQ\(4) & ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( !\REG|IQ\(5) $ (((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(5) $ (\JOGO_REAC|MEDIDOR|REG|IQ\(4)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111110000101001011111000001011010000011110110100111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datac => \REG|ALT_INV_IQ\(5),
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datae => \REG|ALT_INV_IQ\(4),
	dataf => \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S2|s1|S2|s~combout\);

-- Location: FF_X43_Y1_N53
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(6));

-- Location: LABCELL_X43_Y1_N57
\JOGO_REAC|MUX|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector9~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(6),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector9~0_combout\);

-- Location: LABCELL_X43_Y1_N48
\SOMADOR|S2|s1|S2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s1|S2|cout~0_combout\ = ( \REG|IQ\(4) & ( \SOMADOR|S1|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(5) & (\REG|IQ\(5) & ((\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4))))) # 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(5) & (((\JOGO_REAC|MEDIDOR|REG|IQ\(4) & !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\REG|IQ\(5)))) ) ) ) # ( !\REG|IQ\(4) & ( \SOMADOR|S1|g1|vaium~0_combout\ & ( (\JOGO_REAC|MEDIDOR|REG|IQ\(5) & 
-- (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & \REG|IQ\(5))) ) ) ) # ( \REG|IQ\(4) & ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( ((\JOGO_REAC|MEDIDOR|REG|IQ\(5) & !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\REG|IQ\(5)) ) ) ) # ( !\REG|IQ\(4) & 
-- ( !\SOMADOR|S1|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MEDIDOR|REG|IQ\(5) & (\REG|IQ\(5) & ((\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) # (\JOGO_REAC|MEDIDOR|REG|IQ\(4))))) # (\JOGO_REAC|MEDIDOR|REG|IQ\(5) & (((\JOGO_REAC|MEDIDOR|REG|IQ\(4) & 
-- !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\REG|IQ\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001111111010100001111111100000000010100000001000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(5),
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(4),
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \REG|ALT_INV_IQ\(5),
	datae => \REG|ALT_INV_IQ\(4),
	dataf => \SOMADOR|S1|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S2|s1|S2|cout~0_combout\);

-- Location: LABCELL_X43_Y2_N57
\SOMADOR|S2|s2|S3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s2|S3|s~combout\ = ( \SOMADOR|S2|s1|S2|cout~0_combout\ & ( \SOMADOR|S2|g1|vaium~0_combout\ & ( !\JOGO_REAC|MUX|Selector9~0_combout\ $ (\REG|IQ\(6)) ) ) ) # ( !\SOMADOR|S2|s1|S2|cout~0_combout\ & ( \SOMADOR|S2|g1|vaium~0_combout\ & ( 
-- !\JOGO_REAC|MUX|Selector9~0_combout\ $ (!\REG|IQ\(6)) ) ) ) # ( \SOMADOR|S2|s1|S2|cout~0_combout\ & ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( !\JOGO_REAC|MUX|Selector9~0_combout\ $ (!\REG|IQ\(6) $ (\SOMADOR|S2|s1|S2|s~combout\)) ) ) ) # ( 
-- !\SOMADOR|S2|s1|S2|cout~0_combout\ & ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( !\JOGO_REAC|MUX|Selector9~0_combout\ $ (!\REG|IQ\(6) $ (!\SOMADOR|S2|s1|S2|s~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110011010010110100101100110011001101001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector9~0_combout\,
	datab => \REG|ALT_INV_IQ\(6),
	datac => \SOMADOR|S2|s1|S2|ALT_INV_s~combout\,
	datae => \SOMADOR|S2|s1|S2|ALT_INV_cout~0_combout\,
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S2|s2|S3|s~combout\);

-- Location: FF_X43_Y2_N44
\REG|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \SOMADOR|S2|s2|S3|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(6));

-- Location: FF_X43_Y1_N26
\JOGO_REAC|MEDIDOR|REG|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT2|IQ\(3),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(7));

-- Location: LABCELL_X43_Y1_N9
\JOGO_REAC|MUX|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector8~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(7),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector8~0_combout\);

-- Location: LABCELL_X43_Y2_N36
\SOMADOR|S2|s2|S4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s2|S4|s~combout\ = ( \SOMADOR|S2|s1|S2|s~combout\ & ( \SOMADOR|S2|s1|S2|cout~0_combout\ & ( (!\REG|IQ\(7) & (!\JOGO_REAC|MUX|Selector8~0_combout\ & ((\REG|IQ\(6)) # (\JOGO_REAC|MUX|Selector9~0_combout\)))) # (\REG|IQ\(7) & 
-- (!\JOGO_REAC|MUX|Selector8~0_combout\ $ (((\REG|IQ\(6)) # (\JOGO_REAC|MUX|Selector9~0_combout\))))) ) ) ) # ( !\SOMADOR|S2|s1|S2|s~combout\ & ( \SOMADOR|S2|s1|S2|cout~0_combout\ & ( (!\JOGO_REAC|MUX|Selector9~0_combout\ & ((!\REG|IQ\(7) & (\REG|IQ\(6) & 
-- \JOGO_REAC|MUX|Selector8~0_combout\)) # (\REG|IQ\(7) & ((!\JOGO_REAC|MUX|Selector8~0_combout\))))) # (\JOGO_REAC|MUX|Selector9~0_combout\ & (!\REG|IQ\(7) $ (!\REG|IQ\(6) $ (\JOGO_REAC|MUX|Selector8~0_combout\)))) ) ) ) # ( \SOMADOR|S2|s1|S2|s~combout\ & ( 
-- !\SOMADOR|S2|s1|S2|cout~0_combout\ & ( (!\REG|IQ\(7) & (\JOGO_REAC|MUX|Selector9~0_combout\ & (\REG|IQ\(6) & !\JOGO_REAC|MUX|Selector8~0_combout\))) # (\REG|IQ\(7) & (!\JOGO_REAC|MUX|Selector8~0_combout\ $ (((\JOGO_REAC|MUX|Selector9~0_combout\ & 
-- \REG|IQ\(6)))))) ) ) ) # ( !\SOMADOR|S2|s1|S2|s~combout\ & ( !\SOMADOR|S2|s1|S2|cout~0_combout\ & ( (!\REG|IQ\(7) & ((!\JOGO_REAC|MUX|Selector9~0_combout\ & (!\REG|IQ\(6) & !\JOGO_REAC|MUX|Selector8~0_combout\)) # (\JOGO_REAC|MUX|Selector9~0_combout\ & 
-- (\REG|IQ\(6) & \JOGO_REAC|MUX|Selector8~0_combout\)))) # (\REG|IQ\(7) & (!\JOGO_REAC|MUX|Selector8~0_combout\ $ (((!\JOGO_REAC|MUX|Selector9~0_combout\ & !\REG|IQ\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001100100100001101100000000100110110010010010110110000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector9~0_combout\,
	datab => \REG|ALT_INV_IQ\(7),
	datac => \REG|ALT_INV_IQ\(6),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector8~0_combout\,
	datae => \SOMADOR|S2|s1|S2|ALT_INV_s~combout\,
	dataf => \SOMADOR|S2|s1|S2|ALT_INV_cout~0_combout\,
	combout => \SOMADOR|S2|s2|S4|s~combout\);

-- Location: FF_X43_Y2_N41
\REG|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \SOMADOR|S2|s2|S4|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(7));

-- Location: LABCELL_X43_Y1_N42
\SOMADOR|S2|g1|vaium~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|g1|vaium~0_combout\ = ( \JOGO_REAC|MUX|Selector9~0_combout\ & ( \SOMADOR|S2|s1|S2|s~combout\ & ( (!\REG|IQ\(6) & (!\REG|IQ\(7) & (!\SOMADOR|S2|s1|S2|cout~0_combout\ & \JOGO_REAC|MUX|Selector8~0_combout\))) ) ) ) # ( 
-- !\JOGO_REAC|MUX|Selector9~0_combout\ & ( \SOMADOR|S2|s1|S2|s~combout\ & ( (!\REG|IQ\(7) & (\JOGO_REAC|MUX|Selector8~0_combout\ & ((!\REG|IQ\(6)) # (!\SOMADOR|S2|s1|S2|cout~0_combout\)))) ) ) ) # ( \JOGO_REAC|MUX|Selector9~0_combout\ & ( 
-- !\SOMADOR|S2|s1|S2|s~combout\ & ( (!\REG|IQ\(7) & (\JOGO_REAC|MUX|Selector8~0_combout\ & ((!\REG|IQ\(6)) # (!\SOMADOR|S2|s1|S2|cout~0_combout\)))) ) ) ) # ( !\JOGO_REAC|MUX|Selector9~0_combout\ & ( !\SOMADOR|S2|s1|S2|s~combout\ & ( (!\REG|IQ\(7) & 
-- (((!\REG|IQ\(6) & !\SOMADOR|S2|s1|S2|cout~0_combout\)) # (\JOGO_REAC|MUX|Selector8~0_combout\))) # (\REG|IQ\(7) & (!\REG|IQ\(6) & (!\SOMADOR|S2|s1|S2|cout~0_combout\ & \JOGO_REAC|MUX|Selector8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101100000000001100100000000000110010000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(6),
	datab => \REG|ALT_INV_IQ\(7),
	datac => \SOMADOR|S2|s1|S2|ALT_INV_cout~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector8~0_combout\,
	datae => \JOGO_REAC|MUX|ALT_INV_Selector9~0_combout\,
	dataf => \SOMADOR|S2|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S2|g1|vaium~0_combout\);

-- Location: LABCELL_X43_Y2_N30
\SOMADOR|S2|s2|S2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S2|s2|S2|s~0_combout\ = ( \SOMADOR|S2|g1|vaium~0_combout\ & ( \SOMADOR|S2|s1|S2|s~combout\ ) ) # ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( !\SOMADOR|S2|s1|S2|s~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \SOMADOR|S2|s1|S2|ALT_INV_s~combout\,
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S2|s2|S2|s~0_combout\);

-- Location: FF_X43_Y1_N8
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(8));

-- Location: LABCELL_X43_Y1_N27
\JOGO_REAC|MUX|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector7~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(8),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector7~0_combout\);

-- Location: FF_X44_Y1_N29
\REG|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S3|s1|S1|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(8));

-- Location: LABCELL_X44_Y1_N27
\SOMADOR|S3|s1|S1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S1|s~combout\ = ( \SOMADOR|S2|g1|vaium~0_combout\ & ( !\JOGO_REAC|MUX|Selector7~0_combout\ $ (\REG|IQ\(8)) ) ) # ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( !\JOGO_REAC|MUX|Selector7~0_combout\ $ (!\REG|IQ\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\,
	datad => \REG|ALT_INV_IQ\(8),
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S3|s1|S1|s~combout\);

-- Location: FF_X45_Y1_N40
\JOGO_REAC|MEDIDOR|REG|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(2),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(10));

-- Location: MLABCELL_X45_Y1_N48
\JOGO_REAC|MUX|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector5~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( \JOGO_REAC|MEDIDOR|REG|IQ\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(10),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector5~0_combout\);

-- Location: FF_X43_Y1_N34
\JOGO_REAC|MEDIDOR|REG|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(3),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(11));

-- Location: LABCELL_X43_Y1_N18
\JOGO_REAC|MUX|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector4~0_combout\ = ( !\JOGO_REAC|MEDIDOR|REG|IQ\(11) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(11),
	combout => \JOGO_REAC|MUX|Selector4~0_combout\);

-- Location: FF_X44_Y1_N38
\REG|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \SOMADOR|S3|s2|S2|s~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(9));

-- Location: MLABCELL_X45_Y1_N21
\SOMADOR|S3|s1|S3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S3|s~0_combout\ = ( !\REG|IQ\(10) & ( \JOGO_REAC|MUX|Selector5~0_combout\ ) ) # ( \REG|IQ\(10) & ( !\JOGO_REAC|MUX|Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG|ALT_INV_IQ\(10),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\,
	combout => \SOMADOR|S3|s1|S3|s~0_combout\);

-- Location: FF_X43_Y1_N20
\JOGO_REAC|MEDIDOR|REG|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT3|IQ\(1),
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(9));

-- Location: LABCELL_X43_Y1_N3
\JOGO_REAC|MUX|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector6~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(9) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(9),
	combout => \JOGO_REAC|MUX|Selector6~0_combout\);

-- Location: LABCELL_X44_Y1_N18
\SOMADOR|S3|s2|S3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s2|S3|cout~0_combout\ = ( \REG|IQ\(8) & ( \SOMADOR|S2|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MUX|Selector7~0_combout\ & (\SOMADOR|S3|s1|S3|s~0_combout\ & (!\REG|IQ\(9) $ (!\JOGO_REAC|MUX|Selector6~0_combout\)))) # 
-- (\JOGO_REAC|MUX|Selector7~0_combout\ & ((!\REG|IQ\(9) & (!\SOMADOR|S3|s1|S3|s~0_combout\ & !\JOGO_REAC|MUX|Selector6~0_combout\)) # (\REG|IQ\(9) & (\SOMADOR|S3|s1|S3|s~0_combout\ & \JOGO_REAC|MUX|Selector6~0_combout\)))) ) ) ) # ( !\REG|IQ\(8) & ( 
-- \SOMADOR|S2|g1|vaium~0_combout\ & ( (!\REG|IQ\(9) & (!\SOMADOR|S3|s1|S3|s~0_combout\ & !\JOGO_REAC|MUX|Selector6~0_combout\)) # (\REG|IQ\(9) & (\SOMADOR|S3|s1|S3|s~0_combout\ & \JOGO_REAC|MUX|Selector6~0_combout\)) ) ) ) # ( \REG|IQ\(8) & ( 
-- !\SOMADOR|S2|g1|vaium~0_combout\ & ( (\SOMADOR|S3|s1|S3|s~0_combout\ & (!\REG|IQ\(9) $ (!\JOGO_REAC|MUX|Selector6~0_combout\))) ) ) ) # ( !\REG|IQ\(8) & ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MUX|Selector7~0_combout\ & 
-- (\SOMADOR|S3|s1|S3|s~0_combout\ & (!\REG|IQ\(9) $ (!\JOGO_REAC|MUX|Selector6~0_combout\)))) # (\JOGO_REAC|MUX|Selector7~0_combout\ & ((!\REG|IQ\(9) & (!\SOMADOR|S3|s1|S3|s~0_combout\ & !\JOGO_REAC|MUX|Selector6~0_combout\)) # (\REG|IQ\(9) & 
-- (\SOMADOR|S3|s1|S3|s~0_combout\ & \JOGO_REAC|MUX|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000001001000000110000110011000000000000110100001000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\,
	datab => \REG|ALT_INV_IQ\(9),
	datac => \SOMADOR|S3|s1|S3|ALT_INV_s~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\,
	datae => \REG|ALT_INV_IQ\(8),
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S3|s2|S3|cout~0_combout\);

-- Location: MLABCELL_X45_Y1_N54
\SOMADOR|S3|s1|S3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S3|cout~0_combout\ = ( \REG|IQ\(10) & ( \JOGO_REAC|MUX|Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG|ALT_INV_IQ\(10),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\,
	combout => \SOMADOR|S3|s1|S3|cout~0_combout\);

-- Location: MLABCELL_X45_Y1_N0
\SOMADOR|S3|s1|S3|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S3|cout~1_combout\ = ( !\REG|IQ\(10) & ( !\JOGO_REAC|MUX|Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \REG|ALT_INV_IQ\(10),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\,
	combout => \SOMADOR|S3|s1|S3|cout~1_combout\);

-- Location: LABCELL_X44_Y1_N6
\SOMADOR|S3|s1|S3|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S3|cout~2_combout\ = ( \REG|IQ\(8) & ( \SOMADOR|S2|g1|vaium~0_combout\ & ( (!\SOMADOR|S3|s1|S3|cout~1_combout\ & ((!\JOGO_REAC|MUX|Selector7~0_combout\ & ((\JOGO_REAC|MUX|Selector6~0_combout\) # (\REG|IQ\(9)))) # 
-- (\JOGO_REAC|MUX|Selector7~0_combout\ & (\REG|IQ\(9) & \JOGO_REAC|MUX|Selector6~0_combout\)))) ) ) ) # ( !\REG|IQ\(8) & ( \SOMADOR|S2|g1|vaium~0_combout\ & ( (\REG|IQ\(9) & (!\SOMADOR|S3|s1|S3|cout~1_combout\ & \JOGO_REAC|MUX|Selector6~0_combout\)) ) ) ) # 
-- ( \REG|IQ\(8) & ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( (!\SOMADOR|S3|s1|S3|cout~1_combout\ & ((\JOGO_REAC|MUX|Selector6~0_combout\) # (\REG|IQ\(9)))) ) ) ) # ( !\REG|IQ\(8) & ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( (!\SOMADOR|S3|s1|S3|cout~1_combout\ & 
-- ((!\JOGO_REAC|MUX|Selector7~0_combout\ & ((\JOGO_REAC|MUX|Selector6~0_combout\) # (\REG|IQ\(9)))) # (\JOGO_REAC|MUX|Selector7~0_combout\ & (\REG|IQ\(9) & \JOGO_REAC|MUX|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000001100001111000000000000001100000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\,
	datab => \REG|ALT_INV_IQ\(9),
	datac => \SOMADOR|S3|s1|S3|ALT_INV_cout~1_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\,
	datae => \REG|ALT_INV_IQ\(8),
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S3|s1|S3|cout~2_combout\);

-- Location: LABCELL_X44_Y1_N45
\SOMADOR|S3|s2|S4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s2|S4|s~combout\ = ( \JOGO_REAC|MUX|Selector4~0_combout\ & ( (!\SOMADOR|S3|s2|S3|cout~0_combout\ & (\REG|IQ\(11) & ((\SOMADOR|S3|s1|S3|cout~2_combout\) # (\SOMADOR|S3|s1|S3|cout~0_combout\)))) # (\SOMADOR|S3|s2|S3|cout~0_combout\ & 
-- (!\REG|IQ\(11) $ (((!\SOMADOR|S3|s1|S3|cout~0_combout\ & !\SOMADOR|S3|s1|S3|cout~2_combout\))))) ) ) # ( !\JOGO_REAC|MUX|Selector4~0_combout\ & ( !\SOMADOR|S3|s2|S3|cout~0_combout\ $ (!\REG|IQ\(11) $ (((\SOMADOR|S3|s1|S3|cout~2_combout\) # 
-- (\SOMADOR|S3|s1|S3|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101011010101001010100010101011010100001010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|S3|s2|S3|ALT_INV_cout~0_combout\,
	datab => \SOMADOR|S3|s1|S3|ALT_INV_cout~0_combout\,
	datac => \SOMADOR|S3|s1|S3|ALT_INV_cout~2_combout\,
	datad => \REG|ALT_INV_IQ\(11),
	dataf => \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\,
	combout => \SOMADOR|S3|s2|S4|s~combout\);

-- Location: FF_X44_Y1_N47
\REG|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S3|s2|S4|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(11));

-- Location: LABCELL_X43_Y1_N21
\SOMADOR|S3|s1|S2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S2|cout~0_combout\ = ( \SOMADOR|S2|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MUX|Selector6~0_combout\ & (\REG|IQ\(8) & (\REG|IQ\(9) & !\JOGO_REAC|MUX|Selector7~0_combout\))) # (\JOGO_REAC|MUX|Selector6~0_combout\ & (((\REG|IQ\(8) & 
-- !\JOGO_REAC|MUX|Selector7~0_combout\)) # (\REG|IQ\(9)))) ) ) # ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( (!\JOGO_REAC|MUX|Selector6~0_combout\ & (\REG|IQ\(9) & ((!\JOGO_REAC|MUX|Selector7~0_combout\) # (\REG|IQ\(8))))) # (\JOGO_REAC|MUX|Selector6~0_combout\ 
-- & (((!\JOGO_REAC|MUX|Selector7~0_combout\) # (\REG|IQ\(9))) # (\REG|IQ\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100010111010111110001011100010111000001010001011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\,
	datab => \REG|ALT_INV_IQ\(8),
	datac => \REG|ALT_INV_IQ\(9),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\,
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S3|s1|S2|cout~0_combout\);

-- Location: LABCELL_X43_Y1_N0
\SOMADOR|S3|s1|S2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s1|S2|s~combout\ = ( \SOMADOR|S2|g1|vaium~0_combout\ & ( !\REG|IQ\(9) $ (!\JOGO_REAC|MUX|Selector6~0_combout\ $ (((!\JOGO_REAC|MUX|Selector7~0_combout\ & \REG|IQ\(8))))) ) ) # ( !\SOMADOR|S2|g1|vaium~0_combout\ & ( !\REG|IQ\(9) $ 
-- (!\JOGO_REAC|MUX|Selector6~0_combout\ $ (((!\JOGO_REAC|MUX|Selector7~0_combout\) # (\REG|IQ\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001001011101101000100101100101101110100100010110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector7~0_combout\,
	datab => \REG|ALT_INV_IQ\(8),
	datac => \REG|ALT_INV_IQ\(9),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector6~0_combout\,
	dataf => \SOMADOR|S2|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S3|s1|S2|s~combout\);

-- Location: LABCELL_X47_Y1_N57
\SOMADOR|S3|s2|S3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s2|S3|s~combout\ = ( \SOMADOR|S3|s1|S2|cout~0_combout\ & ( \SOMADOR|S3|s1|S2|s~combout\ & ( !\REG|IQ\(10) $ (\JOGO_REAC|MUX|Selector5~0_combout\) ) ) ) # ( !\SOMADOR|S3|s1|S2|cout~0_combout\ & ( \SOMADOR|S3|s1|S2|s~combout\ & ( !\REG|IQ\(10) $ 
-- (!\JOGO_REAC|MUX|Selector5~0_combout\) ) ) ) # ( \SOMADOR|S3|s1|S2|cout~0_combout\ & ( !\SOMADOR|S3|s1|S2|s~combout\ & ( (!\REG|IQ\(10) & (!\JOGO_REAC|MUX|Selector5~0_combout\ $ (((!\JOGO_REAC|MUX|Selector4~0_combout\) # (\REG|IQ\(11)))))) # (\REG|IQ\(10) 
-- & (!\JOGO_REAC|MUX|Selector5~0_combout\ & ((!\JOGO_REAC|MUX|Selector4~0_combout\) # (\REG|IQ\(11))))) ) ) ) # ( !\SOMADOR|S3|s1|S2|cout~0_combout\ & ( !\SOMADOR|S3|s1|S2|s~combout\ & ( (!\REG|IQ\(10) & ((!\JOGO_REAC|MUX|Selector4~0_combout\ & 
-- (\REG|IQ\(11) & !\JOGO_REAC|MUX|Selector5~0_combout\)) # (\JOGO_REAC|MUX|Selector4~0_combout\ & (!\REG|IQ\(11) & \JOGO_REAC|MUX|Selector5~0_combout\)))) # (\REG|IQ\(10) & (!\JOGO_REAC|MUX|Selector5~0_combout\ $ (((!\JOGO_REAC|MUX|Selector4~0_combout\) # 
-- (\REG|IQ\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001011010010111011000000001111111100001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\,
	datab => \REG|ALT_INV_IQ\(11),
	datac => \REG|ALT_INV_IQ\(10),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\,
	datae => \SOMADOR|S3|s1|S2|ALT_INV_cout~0_combout\,
	dataf => \SOMADOR|S3|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S3|s2|S3|s~combout\);

-- Location: FF_X47_Y1_N41
\REG|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \SOMADOR|S3|s2|S3|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(10));

-- Location: LABCELL_X43_Y1_N12
\SOMADOR|S3|s2|S2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|s2|S2|s~0_combout\ = ( \SOMADOR|S3|s1|S2|s~combout\ & ( \SOMADOR|S3|s1|S2|cout~0_combout\ & ( (!\JOGO_REAC|MUX|Selector5~0_combout\ & (!\REG|IQ\(10) & (!\REG|IQ\(11) & \JOGO_REAC|MUX|Selector4~0_combout\))) ) ) ) # ( 
-- !\SOMADOR|S3|s1|S2|s~combout\ & ( \SOMADOR|S3|s1|S2|cout~0_combout\ & ( ((!\JOGO_REAC|MUX|Selector4~0_combout\) # ((\JOGO_REAC|MUX|Selector5~0_combout\ & \REG|IQ\(10)))) # (\REG|IQ\(11)) ) ) ) # ( \SOMADOR|S3|s1|S2|s~combout\ & ( 
-- !\SOMADOR|S3|s1|S2|cout~0_combout\ & ( (!\REG|IQ\(11) & (\JOGO_REAC|MUX|Selector4~0_combout\ & ((!\JOGO_REAC|MUX|Selector5~0_combout\) # (!\REG|IQ\(10))))) ) ) ) # ( !\SOMADOR|S3|s1|S2|s~combout\ & ( !\SOMADOR|S3|s1|S2|cout~0_combout\ & ( (!\REG|IQ\(11) & 
-- (!\JOGO_REAC|MUX|Selector4~0_combout\ & ((\REG|IQ\(10)) # (\JOGO_REAC|MUX|Selector5~0_combout\)))) # (\REG|IQ\(11) & (((!\JOGO_REAC|MUX|Selector4~0_combout\) # (\REG|IQ\(10))) # (\JOGO_REAC|MUX|Selector5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000000001110000011111111000111110000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector5~0_combout\,
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(11),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\,
	datae => \SOMADOR|S3|s1|S2|ALT_INV_s~combout\,
	dataf => \SOMADOR|S3|s1|S2|ALT_INV_cout~0_combout\,
	combout => \SOMADOR|S3|s2|S2|s~0_combout\);

-- Location: FF_X44_Y1_N2
\REG|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S4|s1|S1|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(12));

-- Location: FF_X43_Y1_N46
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(12));

-- Location: LABCELL_X44_Y1_N42
\SOMADOR|S4|s1|S1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s1|S1|s~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(12) & ( !\REG|IQ\(12) ) ) # ( !\JOGO_REAC|MEDIDOR|REG|IQ\(12) & ( !\REG|IQ\(12) $ (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	dataf => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	combout => \SOMADOR|S4|s1|S1|s~0_combout\);

-- Location: LABCELL_X44_Y1_N0
\SOMADOR|S4|s1|S1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s1|S1|s~combout\ = ( \SOMADOR|S3|s1|S3|cout~2_combout\ & ( \SOMADOR|S3|s2|S3|cout~0_combout\ & ( !\SOMADOR|S4|s1|S1|s~0_combout\ $ (((!\REG|IQ\(11) & \JOGO_REAC|MUX|Selector4~0_combout\))) ) ) ) # ( !\SOMADOR|S3|s1|S3|cout~2_combout\ & ( 
-- \SOMADOR|S3|s2|S3|cout~0_combout\ & ( !\SOMADOR|S4|s1|S1|s~0_combout\ $ (((!\SOMADOR|S3|s1|S3|cout~0_combout\ & ((!\REG|IQ\(11)) # (\JOGO_REAC|MUX|Selector4~0_combout\))) # (\SOMADOR|S3|s1|S3|cout~0_combout\ & (!\REG|IQ\(11) & 
-- \JOGO_REAC|MUX|Selector4~0_combout\)))) ) ) ) # ( \SOMADOR|S3|s1|S3|cout~2_combout\ & ( !\SOMADOR|S3|s2|S3|cout~0_combout\ & ( !\SOMADOR|S4|s1|S1|s~0_combout\ ) ) ) # ( !\SOMADOR|S3|s1|S3|cout~2_combout\ & ( !\SOMADOR|S3|s2|S3|cout~0_combout\ & ( 
-- !\SOMADOR|S4|s1|S1|s~0_combout\ $ (((!\SOMADOR|S3|s1|S3|cout~0_combout\ & (!\REG|IQ\(11) & \JOGO_REAC|MUX|Selector4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001111000111100001111000001111000000111101111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|S3|s1|S3|ALT_INV_cout~0_combout\,
	datab => \REG|ALT_INV_IQ\(11),
	datac => \SOMADOR|S4|s1|S1|ALT_INV_s~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\,
	datae => \SOMADOR|S3|s1|S3|ALT_INV_cout~2_combout\,
	dataf => \SOMADOR|S3|s2|S3|ALT_INV_cout~0_combout\,
	combout => \SOMADOR|S4|s1|S1|s~combout\);

-- Location: FF_X42_Y1_N41
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(14));

-- Location: MLABCELL_X42_Y1_N39
\JOGO_REAC|MUX|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector1~0_combout\ = ( \JOGO_REAC|MEDIDOR|REG|IQ\(14) & ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(14),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector1~0_combout\);

-- Location: FF_X44_Y1_N32
\REG|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S4|s2|S2|s~0_combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(13));

-- Location: FF_X43_Y1_N11
\JOGO_REAC|MEDIDOR|REG|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \JOGO_REAC|MEDIDOR|CONT|CONT4|IQ[1]~DUPLICATE_q\,
	sclr => \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\,
	sload => VCC,
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(13));

-- Location: LABCELL_X44_Y1_N24
\SOMADOR|S3|g1|vaium~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S3|g1|vaium~0_combout\ = ( \SOMADOR|S3|s1|S3|cout~2_combout\ & ( (\JOGO_REAC|MUX|Selector4~0_combout\ & (\SOMADOR|S3|s2|S3|cout~0_combout\ & !\REG|IQ\(11))) ) ) # ( !\SOMADOR|S3|s1|S3|cout~2_combout\ & ( (!\JOGO_REAC|MUX|Selector4~0_combout\ & 
-- (!\SOMADOR|S3|s1|S3|cout~0_combout\ & (\SOMADOR|S3|s2|S3|cout~0_combout\ & !\REG|IQ\(11)))) # (\JOGO_REAC|MUX|Selector4~0_combout\ & ((!\SOMADOR|S3|s1|S3|cout~0_combout\ & ((!\REG|IQ\(11)) # (\SOMADOR|S3|s2|S3|cout~0_combout\))) # 
-- (\SOMADOR|S3|s1|S3|cout~0_combout\ & (\SOMADOR|S3|s2|S3|cout~0_combout\ & !\REG|IQ\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100000100010011010000010000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector4~0_combout\,
	datab => \SOMADOR|S3|s1|S3|ALT_INV_cout~0_combout\,
	datac => \SOMADOR|S3|s2|S3|ALT_INV_cout~0_combout\,
	datad => \REG|ALT_INV_IQ\(11),
	dataf => \SOMADOR|S3|s1|S3|ALT_INV_cout~2_combout\,
	combout => \SOMADOR|S3|g1|vaium~0_combout\);

-- Location: LABCELL_X44_Y1_N54
\SOMADOR|S4|s1|S2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s1|S2|cout~0_combout\ = ( \REG|IQ\(12) & ( \SOMADOR|S3|g1|vaium~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ((!\REG|IQ\(13) & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & \JOGO_REAC|MEDIDOR|REG|IQ\(13))) # (\REG|IQ\(13) & 
-- ((\JOGO_REAC|MEDIDOR|REG|IQ\(13)) # (\JOGO_REAC|MEDIDOR|REG|IQ\(12)))))) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (\REG|IQ\(13))) ) ) ) # ( !\REG|IQ\(12) & ( \SOMADOR|S3|g1|vaium~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ 
-- & (\REG|IQ\(13) & \JOGO_REAC|MEDIDOR|REG|IQ\(13))) ) ) ) # ( \REG|IQ\(12) & ( !\SOMADOR|S3|g1|vaium~0_combout\ & ( ((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|REG|IQ\(13))) # (\REG|IQ\(13)) ) ) ) # ( !\REG|IQ\(12) & ( 
-- !\SOMADOR|S3|g1|vaium~0_combout\ & ( (!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ((!\REG|IQ\(13) & (\JOGO_REAC|MEDIDOR|REG|IQ\(12) & \JOGO_REAC|MEDIDOR|REG|IQ\(13))) # (\REG|IQ\(13) & ((\JOGO_REAC|MEDIDOR|REG|IQ\(13)) # 
-- (\JOGO_REAC|MEDIDOR|REG|IQ\(12)))))) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (\REG|IQ\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100111011001100111011101100000000001000100001001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \REG|ALT_INV_IQ\(13),
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \SOMADOR|S3|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S4|s1|S2|cout~0_combout\);

-- Location: FF_X45_Y1_N35
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
	ena => \JOGO_REAC|MEDIDOR|REG|IQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JOGO_REAC|MEDIDOR|REG|IQ\(15));

-- Location: MLABCELL_X45_Y1_N24
\JOGO_REAC|MUX|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX|Selector0~0_combout\ = ( !\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & ( !\JOGO_REAC|MEDIDOR|REG|IQ\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(15),
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX|Selector0~0_combout\);

-- Location: LABCELL_X44_Y1_N39
\SOMADOR|S4|s1|S2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s1|S2|s~combout\ = ( \REG|IQ\(12) & ( \SOMADOR|S3|g1|vaium~0_combout\ & ( !\REG|IQ\(13) $ (((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) $ (\JOGO_REAC|MEDIDOR|REG|IQ\(12)))))) ) ) ) # ( !\REG|IQ\(12) & ( 
-- \SOMADOR|S3|g1|vaium~0_combout\ & ( !\REG|IQ\(13) $ (((!\JOGO_REAC|MEDIDOR|REG|IQ\(13)) # (\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\))) ) ) ) # ( \REG|IQ\(12) & ( !\SOMADOR|S3|g1|vaium~0_combout\ & ( !\REG|IQ\(13) $ 
-- (((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & \JOGO_REAC|MEDIDOR|REG|IQ\(13)))) ) ) ) # ( !\REG|IQ\(12) & ( !\SOMADOR|S3|g1|vaium~0_combout\ & ( !\REG|IQ\(13) $ (((!\JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\ & (!\JOGO_REAC|MEDIDOR|REG|IQ\(13) 
-- $ (\JOGO_REAC|MEDIDOR|REG|IQ\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011010010110100101101001000101101001011010111100011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datab => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(13),
	datac => \REG|ALT_INV_IQ\(13),
	datad => \JOGO_REAC|MEDIDOR|REG|ALT_INV_IQ\(12),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \SOMADOR|S3|g1|ALT_INV_vaium~0_combout\,
	combout => \SOMADOR|S4|s1|S2|s~combout\);

-- Location: LABCELL_X44_Y1_N48
\SOMADOR|S4|s2|S3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s2|S3|s~combout\ = ( \REG|IQ\(14) & ( \SOMADOR|S4|s1|S2|s~combout\ & ( !\JOGO_REAC|MUX|Selector1~0_combout\ $ (\SOMADOR|S4|s1|S2|cout~0_combout\) ) ) ) # ( !\REG|IQ\(14) & ( \SOMADOR|S4|s1|S2|s~combout\ & ( !\JOGO_REAC|MUX|Selector1~0_combout\ 
-- $ (!\SOMADOR|S4|s1|S2|cout~0_combout\) ) ) ) # ( \REG|IQ\(14) & ( !\SOMADOR|S4|s1|S2|s~combout\ & ( (!\JOGO_REAC|MUX|Selector1~0_combout\ & (!\SOMADOR|S4|s1|S2|cout~0_combout\ $ (((!\JOGO_REAC|MUX|Selector0~0_combout\) # (\REG|IQ\(15)))))) # 
-- (\JOGO_REAC|MUX|Selector1~0_combout\ & (!\SOMADOR|S4|s1|S2|cout~0_combout\ & ((!\JOGO_REAC|MUX|Selector0~0_combout\) # (\REG|IQ\(15))))) ) ) ) # ( !\REG|IQ\(14) & ( !\SOMADOR|S4|s1|S2|s~combout\ & ( (!\JOGO_REAC|MUX|Selector1~0_combout\ & ((!\REG|IQ\(15) 
-- & (\SOMADOR|S4|s1|S2|cout~0_combout\ & \JOGO_REAC|MUX|Selector0~0_combout\)) # (\REG|IQ\(15) & (!\SOMADOR|S4|s1|S2|cout~0_combout\ & !\JOGO_REAC|MUX|Selector0~0_combout\)))) # (\JOGO_REAC|MUX|Selector1~0_combout\ & (!\SOMADOR|S4|s1|S2|cout~0_combout\ $ 
-- (((!\JOGO_REAC|MUX|Selector0~0_combout\) # (\REG|IQ\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010101001001010110101001001001011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector1~0_combout\,
	datab => \REG|ALT_INV_IQ\(15),
	datac => \SOMADOR|S4|s1|S2|ALT_INV_cout~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector0~0_combout\,
	datae => \REG|ALT_INV_IQ\(14),
	dataf => \SOMADOR|S4|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S4|s2|S3|s~combout\);

-- Location: FF_X44_Y1_N50
\REG|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S4|s2|S3|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(14));

-- Location: LABCELL_X44_Y1_N12
\SOMADOR|S4|s2|S4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s2|S4|s~combout\ = ( \REG|IQ\(15) & ( \SOMADOR|S4|s1|S2|s~combout\ & ( !\JOGO_REAC|MUX|Selector0~0_combout\ $ (((!\REG|IQ\(14) & (\JOGO_REAC|MUX|Selector1~0_combout\ & \SOMADOR|S4|s1|S2|cout~0_combout\)) # (\REG|IQ\(14) & 
-- ((\SOMADOR|S4|s1|S2|cout~0_combout\) # (\JOGO_REAC|MUX|Selector1~0_combout\))))) ) ) ) # ( !\REG|IQ\(15) & ( \SOMADOR|S4|s1|S2|s~combout\ & ( (!\JOGO_REAC|MUX|Selector0~0_combout\ & ((!\REG|IQ\(14) & (\JOGO_REAC|MUX|Selector1~0_combout\ & 
-- \SOMADOR|S4|s1|S2|cout~0_combout\)) # (\REG|IQ\(14) & ((\SOMADOR|S4|s1|S2|cout~0_combout\) # (\JOGO_REAC|MUX|Selector1~0_combout\))))) ) ) ) # ( \REG|IQ\(15) & ( !\SOMADOR|S4|s1|S2|s~combout\ & ( !\JOGO_REAC|MUX|Selector0~0_combout\ $ (((!\REG|IQ\(14) & 
-- (!\JOGO_REAC|MUX|Selector1~0_combout\ & !\SOMADOR|S4|s1|S2|cout~0_combout\)) # (\REG|IQ\(14) & (\JOGO_REAC|MUX|Selector1~0_combout\ & \SOMADOR|S4|s1|S2|cout~0_combout\)))) ) ) ) # ( !\REG|IQ\(15) & ( !\SOMADOR|S4|s1|S2|s~combout\ & ( (!\REG|IQ\(14) & 
-- ((!\JOGO_REAC|MUX|Selector1~0_combout\ & (!\SOMADOR|S4|s1|S2|cout~0_combout\ & !\JOGO_REAC|MUX|Selector0~0_combout\)) # (\JOGO_REAC|MUX|Selector1~0_combout\ & (\SOMADOR|S4|s1|S2|cout~0_combout\ & \JOGO_REAC|MUX|Selector0~0_combout\)))) # (\REG|IQ\(14) & 
-- ((!\JOGO_REAC|MUX|Selector1~0_combout\ & (\SOMADOR|S4|s1|S2|cout~0_combout\ & \JOGO_REAC|MUX|Selector0~0_combout\)) # (\JOGO_REAC|MUX|Selector1~0_combout\ & (!\SOMADOR|S4|s1|S2|cout~0_combout\ $ (!\JOGO_REAC|MUX|Selector0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010110011111101000000100010111000000001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(14),
	datab => \JOGO_REAC|MUX|ALT_INV_Selector1~0_combout\,
	datac => \SOMADOR|S4|s1|S2|ALT_INV_cout~0_combout\,
	datad => \JOGO_REAC|MUX|ALT_INV_Selector0~0_combout\,
	datae => \REG|ALT_INV_IQ\(15),
	dataf => \SOMADOR|S4|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S4|s2|S4|s~combout\);

-- Location: FF_X44_Y1_N14
\REG|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \SOMADOR|S4|s2|S4|s~combout\,
	sclr => \reset~input_o\,
	ena => \REG|IQ[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|IQ\(15));

-- Location: LABCELL_X44_Y1_N30
\SOMADOR|S4|s2|S2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|S4|s2|S2|s~0_combout\ = ( \SOMADOR|S4|s1|S2|cout~0_combout\ & ( \SOMADOR|S4|s1|S2|s~combout\ & ( (!\JOGO_REAC|MUX|Selector1~0_combout\ & (!\REG|IQ\(15) & (!\REG|IQ\(14) & \JOGO_REAC|MUX|Selector0~0_combout\))) ) ) ) # ( 
-- !\SOMADOR|S4|s1|S2|cout~0_combout\ & ( \SOMADOR|S4|s1|S2|s~combout\ & ( (!\REG|IQ\(15) & (\JOGO_REAC|MUX|Selector0~0_combout\ & ((!\JOGO_REAC|MUX|Selector1~0_combout\) # (!\REG|IQ\(14))))) ) ) ) # ( \SOMADOR|S4|s1|S2|cout~0_combout\ & ( 
-- !\SOMADOR|S4|s1|S2|s~combout\ & ( ((!\JOGO_REAC|MUX|Selector0~0_combout\) # ((\JOGO_REAC|MUX|Selector1~0_combout\ & \REG|IQ\(14)))) # (\REG|IQ\(15)) ) ) ) # ( !\SOMADOR|S4|s1|S2|cout~0_combout\ & ( !\SOMADOR|S4|s1|S2|s~combout\ & ( (!\REG|IQ\(15) & 
-- (!\JOGO_REAC|MUX|Selector0~0_combout\ & ((\REG|IQ\(14)) # (\JOGO_REAC|MUX|Selector1~0_combout\)))) # (\REG|IQ\(15) & (((!\JOGO_REAC|MUX|Selector0~0_combout\) # (\REG|IQ\(14))) # (\JOGO_REAC|MUX|Selector1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010011111111110011011100000000110010000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MUX|ALT_INV_Selector1~0_combout\,
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(14),
	datad => \JOGO_REAC|MUX|ALT_INV_Selector0~0_combout\,
	datae => \SOMADOR|S4|s1|S2|ALT_INV_cout~0_combout\,
	dataf => \SOMADOR|S4|s1|S2|ALT_INV_s~combout\,
	combout => \SOMADOR|S4|s2|S2|s~0_combout\);

-- Location: FF_X36_Y2_N43
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

-- Location: LABCELL_X36_Y2_N9
\RANDOM_DISP|sseg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDOM_DISP|sseg[2]~1_combout\ = (!\RANDOM|CONTA|IQ\(0) & \RANDOM|CONTA|IQ\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDOM|CONTA|ALT_INV_IQ\(0),
	datad => \RANDOM|CONTA|ALT_INV_IQ\(1),
	combout => \RANDOM_DISP|sseg[2]~1_combout\);

-- Location: LABCELL_X43_Y2_N24
\DIS0|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[0]~0_combout\ = ( \REG|IQ\(3) & ( (\REG|IQ\(0) & (!\REG|IQ\(2) $ (!\REG|IQ\(1)))) ) ) # ( !\REG|IQ\(3) & ( (!\REG|IQ\(1) & (!\REG|IQ\(2) $ (!\REG|IQ\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(2),
	datab => \REG|ALT_INV_IQ\(1),
	datad => \REG|ALT_INV_IQ\(0),
	dataf => \REG|ALT_INV_IQ\(3),
	combout => \DIS0|sseg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N57
\DIS0|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[1]~1_combout\ = ( \REG|IQ\(1) & ( (!\REG|IQ\(0) & ((\REG|IQ\(2)))) # (\REG|IQ\(0) & (\REG|IQ\(3))) ) ) # ( !\REG|IQ\(1) & ( (\REG|IQ\(2) & (!\REG|IQ\(3) $ (!\REG|IQ\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(3),
	datab => \REG|ALT_INV_IQ\(2),
	datac => \REG|ALT_INV_IQ\(0),
	dataf => \REG|ALT_INV_IQ\(1),
	combout => \DIS0|sseg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N27
\DIS0|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[2]~2_combout\ = ( \REG|IQ\(0) & ( (\REG|IQ\(2) & (\REG|IQ\(1) & \REG|IQ\(3))) ) ) # ( !\REG|IQ\(0) & ( (!\REG|IQ\(2) & (\REG|IQ\(1) & !\REG|IQ\(3))) # (\REG|IQ\(2) & ((\REG|IQ\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(2),
	datab => \REG|ALT_INV_IQ\(1),
	datac => \REG|ALT_INV_IQ\(3),
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \DIS0|sseg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N42
\DIS0|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[3]~3_combout\ = ( \REG|IQ\(3) & ( (\REG|IQ\(1) & (!\REG|IQ\(0) $ (\REG|IQ\(2)))) ) ) # ( !\REG|IQ\(3) & ( (!\REG|IQ\(0) & (!\REG|IQ\(1) & \REG|IQ\(2))) # (\REG|IQ\(0) & (!\REG|IQ\(1) $ (\REG|IQ\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(0),
	datab => \REG|ALT_INV_IQ\(1),
	datac => \REG|ALT_INV_IQ\(2),
	dataf => \REG|ALT_INV_IQ\(3),
	combout => \DIS0|sseg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N33
\DIS0|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[4]~4_combout\ = ( \REG|IQ\(0) & ( (!\REG|IQ\(3)) # ((!\REG|IQ\(2) & !\REG|IQ\(1))) ) ) # ( !\REG|IQ\(0) & ( (\REG|IQ\(2) & (!\REG|IQ\(1) & !\REG|IQ\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(2),
	datab => \REG|ALT_INV_IQ\(1),
	datac => \REG|ALT_INV_IQ\(3),
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \DIS0|sseg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N48
\DIS0|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[5]~5_combout\ = ( \REG|IQ\(0) & ( !\REG|IQ\(3) $ (((\REG|IQ\(2) & !\REG|IQ\(1)))) ) ) # ( !\REG|IQ\(0) & ( (!\REG|IQ\(3) & (!\REG|IQ\(2) & \REG|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(3),
	datac => \REG|ALT_INV_IQ\(2),
	datad => \REG|ALT_INV_IQ\(1),
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \DIS0|sseg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N45
\DIS0|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS0|sseg[6]~6_combout\ = ( \REG|IQ\(0) & ( (!\REG|IQ\(3) & (!\REG|IQ\(1) $ (\REG|IQ\(2)))) ) ) # ( !\REG|IQ\(0) & ( (!\REG|IQ\(1) & (!\REG|IQ\(3) $ (\REG|IQ\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(1),
	datac => \REG|ALT_INV_IQ\(3),
	datad => \REG|ALT_INV_IQ\(2),
	dataf => \REG|ALT_INV_IQ\(0),
	combout => \DIS0|sseg[6]~6_combout\);

-- Location: MLABCELL_X45_Y1_N42
\DIS1|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[0]~0_combout\ = ( \REG|IQ\(4) & ( \REG|IQ\(6) & ( (!\REG|IQ\(5) & \REG|IQ\(7)) ) ) ) # ( !\REG|IQ\(4) & ( \REG|IQ\(6) & ( (!\REG|IQ\(5) & !\REG|IQ\(7)) ) ) ) # ( \REG|IQ\(4) & ( !\REG|IQ\(6) & ( !\REG|IQ\(5) $ (\REG|IQ\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001111001100000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(5),
	datad => \REG|ALT_INV_IQ\(7),
	datae => \REG|ALT_INV_IQ\(4),
	dataf => \REG|ALT_INV_IQ\(6),
	combout => \DIS1|sseg[0]~0_combout\);

-- Location: MLABCELL_X45_Y1_N51
\DIS1|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[1]~1_combout\ = ( \REG|IQ\(6) & ( (!\REG|IQ\(7) & (!\REG|IQ\(5) $ (!\REG|IQ\(4)))) # (\REG|IQ\(7) & ((!\REG|IQ\(4)) # (\REG|IQ\(5)))) ) ) # ( !\REG|IQ\(6) & ( (\REG|IQ\(7) & (\REG|IQ\(5) & \REG|IQ\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(7),
	datac => \REG|ALT_INV_IQ\(5),
	datad => \REG|ALT_INV_IQ\(4),
	dataf => \REG|ALT_INV_IQ\(6),
	combout => \DIS1|sseg[1]~1_combout\);

-- Location: LABCELL_X43_Y1_N54
\DIS1|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[2]~2_combout\ = ( \REG|IQ\(7) & ( (\REG|IQ\(6) & ((!\REG|IQ\(4)) # (\REG|IQ\(5)))) ) ) # ( !\REG|IQ\(7) & ( (!\REG|IQ\(6) & (!\REG|IQ\(4) & \REG|IQ\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(6),
	datac => \REG|ALT_INV_IQ\(4),
	datad => \REG|ALT_INV_IQ\(5),
	dataf => \REG|ALT_INV_IQ\(7),
	combout => \DIS1|sseg[2]~2_combout\);

-- Location: LABCELL_X43_Y1_N24
\DIS1|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[3]~3_combout\ = ( \REG|IQ\(7) & ( (\REG|IQ\(5) & (!\REG|IQ\(4) $ (\REG|IQ\(6)))) ) ) # ( !\REG|IQ\(7) & ( (!\REG|IQ\(4) & (!\REG|IQ\(5) & \REG|IQ\(6))) # (\REG|IQ\(4) & (!\REG|IQ\(5) $ (\REG|IQ\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(4),
	datab => \REG|ALT_INV_IQ\(5),
	datac => \REG|ALT_INV_IQ\(6),
	dataf => \REG|ALT_INV_IQ\(7),
	combout => \DIS1|sseg[3]~3_combout\);

-- Location: LABCELL_X43_Y1_N36
\DIS1|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[4]~4_combout\ = ( \REG|IQ\(6) & ( (!\REG|IQ\(7) & ((!\REG|IQ\(5)) # (\REG|IQ\(4)))) ) ) # ( !\REG|IQ\(6) & ( (\REG|IQ\(4) & ((!\REG|IQ\(7)) # (!\REG|IQ\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(7),
	datab => \REG|ALT_INV_IQ\(5),
	datac => \REG|ALT_INV_IQ\(4),
	dataf => \REG|ALT_INV_IQ\(6),
	combout => \DIS1|sseg[4]~4_combout\);

-- Location: LABCELL_X43_Y1_N39
\DIS1|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[5]~5_combout\ = ( \REG|IQ\(6) & ( (\REG|IQ\(4) & (!\REG|IQ\(5) $ (!\REG|IQ\(7)))) ) ) # ( !\REG|IQ\(6) & ( (!\REG|IQ\(7) & ((\REG|IQ\(4)) # (\REG|IQ\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(5),
	datac => \REG|ALT_INV_IQ\(7),
	datad => \REG|ALT_INV_IQ\(4),
	dataf => \REG|ALT_INV_IQ\(6),
	combout => \DIS1|sseg[5]~5_combout\);

-- Location: MLABCELL_X45_Y1_N12
\DIS1|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS1|sseg[6]~6_combout\ = ( \REG|IQ\(4) & ( \REG|IQ\(6) & ( (\REG|IQ\(5) & !\REG|IQ\(7)) ) ) ) # ( !\REG|IQ\(4) & ( \REG|IQ\(6) & ( (!\REG|IQ\(5) & \REG|IQ\(7)) ) ) ) # ( \REG|IQ\(4) & ( !\REG|IQ\(6) & ( (!\REG|IQ\(5) & !\REG|IQ\(7)) ) ) ) # ( 
-- !\REG|IQ\(4) & ( !\REG|IQ\(6) & ( (!\REG|IQ\(5) & !\REG|IQ\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000110011000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(5),
	datad => \REG|ALT_INV_IQ\(7),
	datae => \REG|ALT_INV_IQ\(4),
	dataf => \REG|ALT_INV_IQ\(6),
	combout => \DIS1|sseg[6]~6_combout\);

-- Location: LABCELL_X47_Y1_N33
\DIS2|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[0]~0_combout\ = ( \REG|IQ\(8) & ( (!\REG|IQ\(10) & (!\REG|IQ\(9) $ (\REG|IQ\(11)))) # (\REG|IQ\(10) & (!\REG|IQ\(9) & \REG|IQ\(11))) ) ) # ( !\REG|IQ\(8) & ( (\REG|IQ\(10) & (!\REG|IQ\(9) & !\REG|IQ\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(9),
	datad => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[0]~0_combout\);

-- Location: LABCELL_X47_Y1_N48
\DIS2|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[1]~1_combout\ = ( \REG|IQ\(11) & ( \REG|IQ\(8) & ( \REG|IQ\(9) ) ) ) # ( !\REG|IQ\(11) & ( \REG|IQ\(8) & ( (\REG|IQ\(10) & !\REG|IQ\(9)) ) ) ) # ( \REG|IQ\(11) & ( !\REG|IQ\(8) & ( \REG|IQ\(10) ) ) ) # ( !\REG|IQ\(11) & ( !\REG|IQ\(8) & ( 
-- (\REG|IQ\(10) & \REG|IQ\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(9),
	datae => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[1]~1_combout\);

-- Location: LABCELL_X47_Y1_N15
\DIS2|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[2]~2_combout\ = ( \REG|IQ\(11) & ( \REG|IQ\(8) & ( (\REG|IQ\(9) & \REG|IQ\(10)) ) ) ) # ( \REG|IQ\(11) & ( !\REG|IQ\(8) & ( \REG|IQ\(10) ) ) ) # ( !\REG|IQ\(11) & ( !\REG|IQ\(8) & ( (\REG|IQ\(9) & !\REG|IQ\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(9),
	datac => \REG|ALT_INV_IQ\(10),
	datae => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[2]~2_combout\);

-- Location: LABCELL_X47_Y1_N24
\DIS2|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[3]~3_combout\ = ( \REG|IQ\(8) & ( (!\REG|IQ\(10) & (!\REG|IQ\(9) & !\REG|IQ\(11))) # (\REG|IQ\(10) & (\REG|IQ\(9))) ) ) # ( !\REG|IQ\(8) & ( (!\REG|IQ\(10) & (\REG|IQ\(9) & \REG|IQ\(11))) # (\REG|IQ\(10) & (!\REG|IQ\(9) & !\REG|IQ\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(9),
	datad => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[3]~3_combout\);

-- Location: LABCELL_X47_Y1_N27
\DIS2|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[4]~4_combout\ = ( \REG|IQ\(8) & ( (!\REG|IQ\(11)) # ((!\REG|IQ\(9) & !\REG|IQ\(10))) ) ) # ( !\REG|IQ\(8) & ( (!\REG|IQ\(9) & (\REG|IQ\(10) & !\REG|IQ\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(9),
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[4]~4_combout\);

-- Location: LABCELL_X47_Y1_N0
\DIS2|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[5]~5_combout\ = ( \REG|IQ\(8) & ( !\REG|IQ\(11) $ (((!\REG|IQ\(9) & \REG|IQ\(10)))) ) ) # ( !\REG|IQ\(8) & ( (\REG|IQ\(9) & (!\REG|IQ\(10) & !\REG|IQ\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011011101001000101101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(9),
	datab => \REG|ALT_INV_IQ\(10),
	datad => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[5]~5_combout\);

-- Location: LABCELL_X47_Y1_N3
\DIS2|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS2|sseg[6]~6_combout\ = ( \REG|IQ\(8) & ( (!\REG|IQ\(11) & (!\REG|IQ\(9) $ (\REG|IQ\(10)))) ) ) # ( !\REG|IQ\(8) & ( (!\REG|IQ\(9) & (!\REG|IQ\(10) $ (\REG|IQ\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(9),
	datab => \REG|ALT_INV_IQ\(10),
	datac => \REG|ALT_INV_IQ\(11),
	dataf => \REG|ALT_INV_IQ\(8),
	combout => \DIS2|sseg[6]~6_combout\);

-- Location: MLABCELL_X45_Y1_N36
\DIS3|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[0]~0_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(13) & ( (\REG|IQ\(15) & !\REG|IQ\(14)) ) ) ) # ( \REG|IQ\(12) & ( !\REG|IQ\(13) & ( !\REG|IQ\(15) $ (\REG|IQ\(14)) ) ) ) # ( !\REG|IQ\(12) & ( !\REG|IQ\(13) & ( (!\REG|IQ\(15) & \REG|IQ\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(14),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(13),
	combout => \DIS3|sseg[0]~0_combout\);

-- Location: LABCELL_X47_Y1_N30
\DIS3|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[1]~1_combout\ = ( \REG|IQ\(13) & ( (!\REG|IQ\(12) & (\REG|IQ\(14))) # (\REG|IQ\(12) & ((\REG|IQ\(15)))) ) ) # ( !\REG|IQ\(13) & ( (\REG|IQ\(14) & (!\REG|IQ\(15) $ (!\REG|IQ\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(14),
	datac => \REG|ALT_INV_IQ\(15),
	datad => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(13),
	combout => \DIS3|sseg[1]~1_combout\);

-- Location: MLABCELL_X45_Y1_N6
\DIS3|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[2]~2_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(13) & ( (\REG|IQ\(15) & \REG|IQ\(14)) ) ) ) # ( !\REG|IQ\(12) & ( \REG|IQ\(13) & ( !\REG|IQ\(15) $ (\REG|IQ\(14)) ) ) ) # ( !\REG|IQ\(12) & ( !\REG|IQ\(13) & ( (\REG|IQ\(15) & \REG|IQ\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(14),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(13),
	combout => \DIS3|sseg[2]~2_combout\);

-- Location: LABCELL_X47_Y1_N36
\DIS3|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[3]~3_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(14) & ( \REG|IQ\(13) ) ) ) # ( !\REG|IQ\(12) & ( \REG|IQ\(14) & ( (!\REG|IQ\(15) & !\REG|IQ\(13)) ) ) ) # ( \REG|IQ\(12) & ( !\REG|IQ\(14) & ( (!\REG|IQ\(15) & !\REG|IQ\(13)) ) ) ) # ( !\REG|IQ\(12) & 
-- ( !\REG|IQ\(14) & ( (\REG|IQ\(15) & \REG|IQ\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(13),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(14),
	combout => \DIS3|sseg[3]~3_combout\);

-- Location: LABCELL_X47_Y1_N6
\DIS3|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[4]~4_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(14) & ( !\REG|IQ\(15) ) ) ) # ( !\REG|IQ\(12) & ( \REG|IQ\(14) & ( (!\REG|IQ\(15) & !\REG|IQ\(13)) ) ) ) # ( \REG|IQ\(12) & ( !\REG|IQ\(14) & ( (!\REG|IQ\(15)) # (!\REG|IQ\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(13),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(14),
	combout => \DIS3|sseg[4]~4_combout\);

-- Location: LABCELL_X47_Y1_N45
\DIS3|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[5]~5_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(13) & ( !\REG|IQ\(15) ) ) ) # ( !\REG|IQ\(12) & ( \REG|IQ\(13) & ( (!\REG|IQ\(14) & !\REG|IQ\(15)) ) ) ) # ( \REG|IQ\(12) & ( !\REG|IQ\(13) & ( !\REG|IQ\(14) $ (\REG|IQ\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG|ALT_INV_IQ\(14),
	datac => \REG|ALT_INV_IQ\(15),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(13),
	combout => \DIS3|sseg[5]~5_combout\);

-- Location: LABCELL_X47_Y1_N18
\DIS3|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIS3|sseg[6]~6_combout\ = ( \REG|IQ\(12) & ( \REG|IQ\(14) & ( (!\REG|IQ\(15) & \REG|IQ\(13)) ) ) ) # ( !\REG|IQ\(12) & ( \REG|IQ\(14) & ( (\REG|IQ\(15) & !\REG|IQ\(13)) ) ) ) # ( \REG|IQ\(12) & ( !\REG|IQ\(14) & ( (!\REG|IQ\(15) & !\REG|IQ\(13)) ) ) ) # 
-- ( !\REG|IQ\(12) & ( !\REG|IQ\(14) & ( (!\REG|IQ\(15) & !\REG|IQ\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000001100000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG|ALT_INV_IQ\(15),
	datac => \REG|ALT_INV_IQ\(13),
	datae => \REG|ALT_INV_IQ\(12),
	dataf => \REG|ALT_INV_IQ\(14),
	combout => \DIS3|sseg[6]~6_combout\);

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

-- Location: LABCELL_X40_Y2_N3
\JOGO_REAC|MUX_LED0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED0|Mux0~0_combout\ = ( \JOGO_REAC|CONTROLADOR|Eatual.LIGA~DUPLICATE_q\ & ( (!\sel_mux[0]~input_o\ & !\sel_mux[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.LIGA~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX_LED0|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y2_N39
\JOGO_REAC|MUX_LED1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED1|Mux0~0_combout\ = ( \clock~input_o\ & ( (!\sel_mux[1]~input_o\ & \sel_mux[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datae => \ALT_INV_clock~input_o\,
	combout => \JOGO_REAC|MUX_LED1|Mux0~0_combout\);

-- Location: LABCELL_X39_Y2_N39
\JOGO_REAC|MUX_LED2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED2|Mux0~0_combout\ = ( \JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\sel_mux[1]~input_o\ & \sel_mux[0]~input_o\) ) ) # ( !\JOGO_REAC|MEDIDOR|UC|Ereg.LIGADO~q\ & ( (!\sel_mux[1]~input_o\ & (\sel_mux[0]~input_o\ & 
-- \JOGO_REAC|MEDIDOR|UC|Ereg.ESPERA~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.ESPERA~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.LIGADO~q\,
	combout => \JOGO_REAC|MUX_LED2|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y2_N30
\JOGO_REAC|MUX_LED3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED3|Mux0~0_combout\ = ( !\sel_mux[1]~input_o\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.CONTA~DUPLICATE_q\ & ( \sel_mux[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datae => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	combout => \JOGO_REAC|MUX_LED3|Mux0~0_combout\);

-- Location: LABCELL_X41_Y2_N30
\JOGO_REAC|MUX_LED4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED4|Mux0~0_combout\ = ( \sel_mux[0]~input_o\ & ( \JOGO_REAC|MEDIDOR|CONT|CONT4|Equal0~0_combout\ & ( (\JOGO_REAC|MEDIDOR|CONT|CONT3|Equal0~0_combout\ & (!\sel_mux[1]~input_o\ & (\JOGO_REAC|MEDIDOR|CONT|CONT2|Equal0~0_combout\ & 
-- \JOGO_REAC|MEDIDOR|CONT|CONT1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|MEDIDOR|CONT|CONT3|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_sel_mux[1]~input_o\,
	datac => \JOGO_REAC|MEDIDOR|CONT|CONT2|ALT_INV_Equal0~0_combout\,
	datad => \JOGO_REAC|MEDIDOR|CONT|CONT1|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_sel_mux[0]~input_o\,
	dataf => \JOGO_REAC|MEDIDOR|CONT|CONT4|ALT_INV_Equal0~0_combout\,
	combout => \JOGO_REAC|MUX_LED4|Mux0~0_combout\);

-- Location: LABCELL_X39_Y2_N33
\JOGO_REAC|MUX_LED5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED5|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( (\sel_mux[1]~input_o\ & !\sel_mux[0]~input_o\) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.CONTANDO~q\ & ( (\sel_mux[1]~input_o\ & (!\sel_mux[0]~input_o\ & 
-- ((\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # (\JOGO_REAC|INTERFACE|FSM|Ereg.ESPERA~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000010100000101000000010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[1]~input_o\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESPERA~q\,
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datad => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.CONTANDO~q\,
	combout => \JOGO_REAC|MUX_LED5|Mux0~0_combout\);

-- Location: LABCELL_X39_Y2_N12
\JOGO_REAC|MUX_LED6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED6|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\ & ( \sel_mux[1]~input_o\ & ( !\sel_mux[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel_mux[0]~input_o\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	dataf => \ALT_INV_sel_mux[1]~input_o\,
	combout => \JOGO_REAC|MUX_LED6|Mux0~0_combout\);

-- Location: LABCELL_X40_Y2_N21
\JOGO_REAC|MUX_LED7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED7|Mux0~0_combout\ = ( \sel_mux[0]~input_o\ ) # ( !\sel_mux[0]~input_o\ & ( (!\JOGO_REAC|INTERFACE|FSM|Ereg.ESTIMULO~q\) # ((!\sel_mux[1]~input_o\) # (\JOGO_REAC|INTERFACE|LATCH|iq~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ESTIMULO~q\,
	datab => \JOGO_REAC|INTERFACE|LATCH|ALT_INV_iq~combout\,
	datac => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \ALT_INV_sel_mux[0]~input_o\,
	combout => \JOGO_REAC|MUX_LED7|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y2_N15
\JOGO_REAC|MUX_LED8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED8|Mux0~0_combout\ = ( \sel_mux[1]~input_o\ & ( \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( !\sel_mux[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel_mux[0]~input_o\,
	datae => \ALT_INV_sel_mux[1]~input_o\,
	dataf => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	combout => \JOGO_REAC|MUX_LED8|Mux0~0_combout\);

-- Location: FF_X41_Y2_N19
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

-- Location: LABCELL_X41_Y2_N24
\JOGO_REAC|MUX_LED9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JOGO_REAC|MUX_LED9|Mux0~0_combout\ = ( \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (!\sel_mux[0]~input_o\ & ((\sel_mux[1]~input_o\) # (\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\))) # (\sel_mux[0]~input_o\ & 
-- ((!\sel_mux[1]~input_o\))) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( \JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (!\sel_mux[0]~input_o\ & ((!\sel_mux[1]~input_o\ & ((\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\))) # (\sel_mux[1]~input_o\ & 
-- (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\)))) # (\sel_mux[0]~input_o\ & (((!\sel_mux[1]~input_o\)))) ) ) ) # ( \JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (!\sel_mux[0]~input_o\ & ((\sel_mux[1]~input_o\) # 
-- (\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\))) ) ) ) # ( !\JOGO_REAC|INTERFACE|FSM|Ereg.ERRO~q\ & ( !\JOGO_REAC|MEDIDOR|UC|Ereg.FIM~q\ & ( (!\sel_mux[0]~input_o\ & ((!\sel_mux[1]~input_o\ & ((\JOGO_REAC|CONTROLADOR|Eatual.JOGOPRONTO~q\))) # 
-- (\sel_mux[1]~input_o\ & (\JOGO_REAC|INTERFACE|FSM|Ereg.FIM~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010101010101001011111001000100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_mux[0]~input_o\,
	datab => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.FIM~DUPLICATE_q\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.JOGOPRONTO~q\,
	datad => \ALT_INV_sel_mux[1]~input_o\,
	datae => \JOGO_REAC|INTERFACE|FSM|ALT_INV_Ereg.ERRO~q\,
	dataf => \JOGO_REAC|MEDIDOR|UC|ALT_INV_Ereg.FIM~q\,
	combout => \JOGO_REAC|MUX_LED9|Mux0~0_combout\);

-- Location: LABCELL_X36_Y2_N3
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( estadoAtual(0) ) # ( !estadoAtual(0) & ( estadoAtual(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_estadoAtual(1),
	dataf => ALT_INV_estadoAtual(0),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X36_Y2_N45
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( estadoAtual(0) & ( !estadoAtual(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_estadoAtual(1),
	dataf => ALT_INV_estadoAtual(0),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X36_Y2_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !estadoAtual(0) & ( estadoAtual(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_estadoAtual(1),
	dataf => ALT_INV_estadoAtual(0),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X36_Y2_N33
\FINAL|Eatual.ERRO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.ERRO~0_combout\ = ( \Mux0~0_combout\ & ( \FINAL|Eatual.ERRO~q\ ) ) # ( !\Mux0~0_combout\ & ( ((\FINAL|Eprox.INTERMED1~0_combout\ & \JOGO_REAC|CONTROLADOR|Eatual.ERRO~DUPLICATE_q\)) # (\FINAL|Eatual.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eprox.INTERMED1~0_combout\,
	datac => \JOGO_REAC|CONTROLADOR|ALT_INV_Eatual.ERRO~DUPLICATE_q\,
	datad => \FINAL|ALT_INV_Eatual.ERRO~q\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \FINAL|Eatual.ERRO~0_combout\);

-- Location: FF_X36_Y2_N35
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

-- Location: LABCELL_X36_Y2_N30
\FINAL|Eatual.FIM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|Eatual.FIM~0_combout\ = ( \STATE_COUNT|IQ[1]~DUPLICATE_q\ & ( ((!\STATE_COUNT|IQ\(0) & \FINAL|Eatual.JOGADOR~q\)) # (\FINAL|Eatual.FIM~q\) ) ) # ( !\STATE_COUNT|IQ[1]~DUPLICATE_q\ & ( \FINAL|Eatual.FIM~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \STATE_COUNT|ALT_INV_IQ\(0),
	datac => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.FIM~q\,
	dataf => \STATE_COUNT|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \FINAL|Eatual.FIM~0_combout\);

-- Location: FF_X36_Y2_N31
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

-- Location: LABCELL_X36_Y2_N36
\FINAL|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr7~combout\ = ( !\FINAL|Eatual.FIM~q\ & ( (!\FINAL|Eatual.ATIVADOR~q\ & (!\FINAL|Eatual.ERRO~q\ & !\FINAL|Eatual.RESETADOR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	datac => \FINAL|ALT_INV_Eatual.ERRO~q\,
	datad => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.FIM~q\,
	combout => \FINAL|WideOr7~combout\);

-- Location: MLABCELL_X37_Y2_N27
\FINAL|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr8~combout\ = ( !\FINAL|Eatual.ATIVADOR~q\ & ( !\FINAL|Eatual.FIM~q\ & ( !\FINAL|Eatual.INTERMED~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_Eatual.INTERMED~q\,
	datae => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.FIM~q\,
	combout => \FINAL|WideOr8~combout\);

-- Location: LABCELL_X36_Y2_N39
\FINAL|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr5~combout\ = ( \FINAL|Eatual.INICIAL~q\ & ( (!\FINAL|Eatual.ATIVADOR~q\ & (!\FINAL|Eatual.RESETADOR~q\ & !\FINAL|Eatual.JOGADOR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_Eatual.ATIVADOR~q\,
	datac => \FINAL|ALT_INV_Eatual.RESETADOR~q\,
	datad => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.INICIAL~q\,
	combout => \FINAL|WideOr5~combout\);

-- Location: LABCELL_X36_Y2_N57
\FINAL|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FINAL|WideOr6~combout\ = ( !\FINAL|Eatual.FIM~q\ & ( (!\FINAL|Eatual.ERRO~q\ & !\FINAL|Eatual.JOGADOR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_Eatual.ERRO~q\,
	datad => \FINAL|ALT_INV_Eatual.JOGADOR~q\,
	dataf => \FINAL|ALT_INV_Eatual.FIM~q\,
	combout => \FINAL|WideOr6~combout\);

-- Location: LABCELL_X39_Y2_N18
\DB_ESTADO_7SEG|sseg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[0]~0_combout\ = ( !\FINAL|WideOr5~combout\ & ( \FINAL|WideOr6~combout\ & ( (\FINAL|WideOr7~combout\ & !\FINAL|WideOr8~combout\) ) ) ) # ( \FINAL|WideOr5~combout\ & ( !\FINAL|WideOr6~combout\ & ( \FINAL|WideOr7~combout\ ) ) ) # ( 
-- !\FINAL|WideOr5~combout\ & ( !\FINAL|WideOr6~combout\ & ( \FINAL|WideOr7~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_WideOr7~combout\,
	datac => \FINAL|ALT_INV_WideOr8~combout\,
	datae => \FINAL|ALT_INV_WideOr5~combout\,
	dataf => \FINAL|ALT_INV_WideOr6~combout\,
	combout => \DB_ESTADO_7SEG|sseg[0]~0_combout\);

-- Location: MLABCELL_X37_Y2_N9
\DB_ESTADO_7SEG|sseg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[1]~1_combout\ = ( \FINAL|WideOr8~combout\ & ( \FINAL|WideOr7~combout\ & ( (\FINAL|WideOr5~combout\ & !\FINAL|WideOr6~combout\) ) ) ) # ( !\FINAL|WideOr8~combout\ & ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( 
-- \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr6~combout\ ) ) ) # ( !\FINAL|WideOr8~combout\ & ( !\FINAL|WideOr7~combout\ & ( (\FINAL|WideOr5~combout\ & !\FINAL|WideOr6~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000011110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr5~combout\,
	datac => \FINAL|ALT_INV_WideOr6~combout\,
	datae => \FINAL|ALT_INV_WideOr8~combout\,
	dataf => \FINAL|ALT_INV_WideOr7~combout\,
	combout => \DB_ESTADO_7SEG|sseg[1]~1_combout\);

-- Location: LABCELL_X39_Y2_N48
\DB_ESTADO_7SEG|sseg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[2]~2_combout\ = ( \FINAL|WideOr5~combout\ & ( \FINAL|WideOr6~combout\ ) ) # ( !\FINAL|WideOr5~combout\ & ( \FINAL|WideOr6~combout\ & ( (!\FINAL|WideOr8~combout\) # (\FINAL|WideOr7~combout\) ) ) ) # ( !\FINAL|WideOr5~combout\ & ( 
-- !\FINAL|WideOr6~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_WideOr7~combout\,
	datac => \FINAL|ALT_INV_WideOr8~combout\,
	datae => \FINAL|ALT_INV_WideOr5~combout\,
	dataf => \FINAL|ALT_INV_WideOr6~combout\,
	combout => \DB_ESTADO_7SEG|sseg[2]~2_combout\);

-- Location: LABCELL_X39_Y2_N42
\DB_ESTADO_7SEG|sseg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[3]~3_combout\ = ( \FINAL|WideOr7~combout\ & ( !\FINAL|WideOr6~combout\ & ( \FINAL|WideOr8~combout\ ) ) ) # ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr6~combout\ & ( !\FINAL|WideOr8~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FINAL|ALT_INV_WideOr8~combout\,
	datae => \FINAL|ALT_INV_WideOr7~combout\,
	dataf => \FINAL|ALT_INV_WideOr6~combout\,
	combout => \DB_ESTADO_7SEG|sseg[3]~3_combout\);

-- Location: LABCELL_X39_Y2_N3
\DB_ESTADO_7SEG|sseg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[4]~4_combout\ = ( \FINAL|WideOr5~combout\ & ( \FINAL|WideOr6~combout\ & ( (!\FINAL|WideOr8~combout\ & \FINAL|WideOr7~combout\) ) ) ) # ( !\FINAL|WideOr5~combout\ & ( \FINAL|WideOr6~combout\ & ( !\FINAL|WideOr8~combout\ ) ) ) # ( 
-- \FINAL|WideOr5~combout\ & ( !\FINAL|WideOr6~combout\ & ( \FINAL|WideOr7~combout\ ) ) ) # ( !\FINAL|WideOr5~combout\ & ( !\FINAL|WideOr6~combout\ & ( (!\FINAL|WideOr8~combout\) # (\FINAL|WideOr7~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000011110000111110101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr8~combout\,
	datac => \FINAL|ALT_INV_WideOr7~combout\,
	datae => \FINAL|ALT_INV_WideOr5~combout\,
	dataf => \FINAL|ALT_INV_WideOr6~combout\,
	combout => \DB_ESTADO_7SEG|sseg[4]~4_combout\);

-- Location: MLABCELL_X37_Y2_N3
\DB_ESTADO_7SEG|sseg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[5]~5_combout\ = ( !\FINAL|WideOr8~combout\ & ( \FINAL|WideOr7~combout\ & ( (!\FINAL|WideOr5~combout\ & \FINAL|WideOr6~combout\) ) ) ) # ( \FINAL|WideOr8~combout\ & ( !\FINAL|WideOr7~combout\ & ( (!\FINAL|WideOr5~combout\ & 
-- \FINAL|WideOr6~combout\) ) ) ) # ( !\FINAL|WideOr8~combout\ & ( !\FINAL|WideOr7~combout\ & ( !\FINAL|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010100000101000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FINAL|ALT_INV_WideOr5~combout\,
	datac => \FINAL|ALT_INV_WideOr6~combout\,
	datae => \FINAL|ALT_INV_WideOr8~combout\,
	dataf => \FINAL|ALT_INV_WideOr7~combout\,
	combout => \DB_ESTADO_7SEG|sseg[5]~5_combout\);

-- Location: MLABCELL_X37_Y2_N54
\DB_ESTADO_7SEG|sseg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DB_ESTADO_7SEG|sseg[6]~6_combout\ = ( \FINAL|WideOr8~combout\ & ( \FINAL|WideOr7~combout\ & ( (\FINAL|WideOr6~combout\ & !\FINAL|WideOr5~combout\) ) ) ) # ( !\FINAL|WideOr8~combout\ & ( \FINAL|WideOr7~combout\ & ( (\FINAL|WideOr6~combout\ & 
-- !\FINAL|WideOr5~combout\) ) ) ) # ( !\FINAL|WideOr8~combout\ & ( !\FINAL|WideOr7~combout\ & ( (!\FINAL|WideOr6~combout\ & !\FINAL|WideOr5~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FINAL|ALT_INV_WideOr6~combout\,
	datac => \FINAL|ALT_INV_WideOr5~combout\,
	datae => \FINAL|ALT_INV_WideOr8~combout\,
	dataf => \FINAL|ALT_INV_WideOr7~combout\,
	combout => \DB_ESTADO_7SEG|sseg[6]~6_combout\);

-- Location: MLABCELL_X28_Y14_N0
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


