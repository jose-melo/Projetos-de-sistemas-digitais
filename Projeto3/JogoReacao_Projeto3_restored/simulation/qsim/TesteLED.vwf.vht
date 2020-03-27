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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/26/2020 22:54:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Formex
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Formex_vhd_vec_tst IS
END Formex_vhd_vec_tst;
ARCHITECTURE Formex_arch OF Formex_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL db_estado_7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dis4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL erro : STD_LOGIC;
SIGNAL estadoAtual_db : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL estimulo : STD_LOGIC;
SIGNAL gameover_db : STD_LOGIC;
SIGNAL jogadasFeitas_db : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL jogar : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ledsPecas : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ligado : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL pseudoclock : STD_LOGIC;
SIGNAL pulso : STD_LOGIC;
SIGNAL randContador_db : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL resposta1 : STD_LOGIC;
SIGNAL resposta2 : STD_LOGIC;
SIGNAL resposta3 : STD_LOGIC;
SIGNAL respostaJOGO_db : STD_LOGIC;
SIGNAL saida7seg : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL sel_mux : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL tempo : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL tempoFinal_db : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Formex
	PORT (
	clock : IN STD_LOGIC;
	db_estado_7 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	dis4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	erro : BUFFER STD_LOGIC;
	estadoAtual_db : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	estimulo : BUFFER STD_LOGIC;
	gameover_db : BUFFER STD_LOGIC;
	jogadasFeitas_db : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	jogar : IN STD_LOGIC;
	leds : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	ledsPecas : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	ligado : BUFFER STD_LOGIC;
	pronto : BUFFER STD_LOGIC;
	pseudoclock : IN STD_LOGIC;
	pulso : BUFFER STD_LOGIC;
	randContador_db : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC;
	resposta1 : IN STD_LOGIC;
	resposta2 : IN STD_LOGIC;
	resposta3 : IN STD_LOGIC;
	respostaJOGO_db : BUFFER STD_LOGIC;
	saida7seg : BUFFER STD_LOGIC_VECTOR(27 DOWNTO 0);
	sel_mux : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	tempo : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	tempoFinal_db : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Formex
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	db_estado_7 => db_estado_7,
	dis4 => dis4,
	erro => erro,
	estadoAtual_db => estadoAtual_db,
	estimulo => estimulo,
	gameover_db => gameover_db,
	jogadasFeitas_db => jogadasFeitas_db,
	jogar => jogar,
	leds => leds,
	ledsPecas => ledsPecas,
	ligado => ligado,
	pronto => pronto,
	pseudoclock => pseudoclock,
	pulso => pulso,
	randContador_db => randContador_db,
	reset => reset,
	resposta1 => resposta1,
	resposta2 => resposta2,
	resposta3 => resposta3,
	respostaJOGO_db => respostaJOGO_db,
	saida7seg => saida7seg,
	sel_mux => sel_mux,
	tempo => tempo,
	tempoFinal_db => tempoFinal_db
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- pseudoclock
t_prcs_pseudoclock: PROCESS
BEGIN
LOOP
	pseudoclock <= '0';
	WAIT FOR 1250 ps;
	pseudoclock <= '1';
	WAIT FOR 1250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pseudoclock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- jogar
t_prcs_jogar: PROCESS
BEGIN
	jogar <= '0';
	WAIT FOR 50000 ps;
	jogar <= '1';
	WAIT FOR 10000 ps;
	jogar <= '0';
WAIT;
END PROCESS t_prcs_jogar;

-- resposta1
t_prcs_resposta1: PROCESS
BEGIN
	resposta1 <= '0';
	WAIT FOR 740000 ps;
	resposta1 <= '1';
	WAIT FOR 40000 ps;
	resposta1 <= '0';
WAIT;
END PROCESS t_prcs_resposta1;

-- resposta2
t_prcs_resposta2: PROCESS
BEGIN
	resposta2 <= '0';
	WAIT FOR 260000 ps;
	resposta2 <= '1';
	WAIT FOR 30000 ps;
	resposta2 <= '0';
WAIT;
END PROCESS t_prcs_resposta2;

-- resposta3
t_prcs_resposta3: PROCESS
BEGIN
	resposta3 <= '0';
	WAIT FOR 550000 ps;
	resposta3 <= '1';
	WAIT FOR 40000 ps;
	resposta3 <= '0';
WAIT;
END PROCESS t_prcs_resposta3;

-- sel_mux[0]
t_prcs_sel_mux_0: PROCESS
BEGIN
	sel_mux(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_mux_0;

-- sel_mux[1]
t_prcs_sel_mux_1: PROCESS
BEGIN
	sel_mux(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_mux_1;
END Formex_arch;
