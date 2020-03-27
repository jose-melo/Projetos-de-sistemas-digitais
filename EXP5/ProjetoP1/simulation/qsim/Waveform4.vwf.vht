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
-- Generated on "02/04/2020 00:20:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          JogoReacao_v1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY JogoReacao_v1_vhd_vec_tst IS
END JogoReacao_v1_vhd_vec_tst;
ARCHITECTURE JogoReacao_v1_arch OF JogoReacao_v1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL db_estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL db_PInter : STD_LOGIC;
SIGNAL db_PMed : STD_LOGIC;
SIGNAL erro : STD_LOGIC;
SIGNAL estimulo : STD_LOGIC;
SIGNAL jogar : STD_LOGIC;
SIGNAL ligado : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL pulso : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL resposta : STD_LOGIC;
SIGNAL tempo : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT JogoReacao_v1
	PORT (
	clock : IN STD_LOGIC;
	db_estado : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	db_PInter : BUFFER STD_LOGIC;
	db_PMed : BUFFER STD_LOGIC;
	erro : BUFFER STD_LOGIC;
	estimulo : BUFFER STD_LOGIC;
	jogar : IN STD_LOGIC;
	ligado : BUFFER STD_LOGIC;
	pronto : BUFFER STD_LOGIC;
	pulso : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	resposta : IN STD_LOGIC;
	tempo : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : JogoReacao_v1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	db_estado => db_estado,
	db_PInter => db_PInter,
	db_PMed => db_PMed,
	erro => erro,
	estimulo => estimulo,
	jogar => jogar,
	ligado => ligado,
	pronto => pronto,
	pulso => pulso,
	reset => reset,
	resposta => resposta,
	tempo => tempo
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- jogar
t_prcs_jogar: PROCESS
BEGIN
	jogar <= '0';
	WAIT FOR 20000 ps;
	jogar <= '1';
	WAIT FOR 20000 ps;
	jogar <= '0';
WAIT;
END PROCESS t_prcs_jogar;

-- resposta
t_prcs_resposta: PROCESS
BEGIN
	resposta <= '0';
	WAIT FOR 190000 ps;
	resposta <= '1';
	WAIT FOR 100000 ps;
	resposta <= '0';
WAIT;
END PROCESS t_prcs_resposta;
END JogoReacao_v1_arch;
