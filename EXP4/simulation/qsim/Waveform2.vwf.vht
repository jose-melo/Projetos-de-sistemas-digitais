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
-- Generated on "01/26/2020 19:03:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Interface_FSM_v4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Interface_FSM_v4_vhd_vec_tst IS
END Interface_FSM_v4_vhd_vec_tst;
ARCHITECTURE Interface_FSM_v4_arch OF Interface_FSM_v4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL conta_ci : STD_LOGIC;
SIGNAL contagem_inicial : STD_LOGIC;
SIGNAL db_clock : STD_LOGIC;
SIGNAL db_erro_sin : STD_LOGIC;
SIGNAL db_estimulo_sin : STD_LOGIC;
SIGNAL erro_sin : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL estimulo_sin : STD_LOGIC;
SIGNAL iniciar : STD_LOGIC;
SIGNAL ligado : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL resposta : STD_LOGIC;
SIGNAL zera_ci : STD_LOGIC;
COMPONENT Interface_FSM_v4
	PORT (
	clock : IN STD_LOGIC;
	conta_ci : OUT STD_LOGIC;
	contagem_inicial : IN STD_LOGIC;
	db_clock : OUT STD_LOGIC;
	db_erro_sin : OUT STD_LOGIC;
	db_estimulo_sin : OUT STD_LOGIC;
	erro_sin : OUT STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	estimulo_sin : OUT STD_LOGIC;
	iniciar : IN STD_LOGIC;
	ligado : OUT STD_LOGIC;
	pronto : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	resposta : IN STD_LOGIC;
	zera_ci : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Interface_FSM_v4
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	conta_ci => conta_ci,
	contagem_inicial => contagem_inicial,
	db_clock => db_clock,
	db_erro_sin => db_erro_sin,
	db_estimulo_sin => db_estimulo_sin,
	erro_sin => erro_sin,
	estado => estado,
	estimulo_sin => estimulo_sin,
	iniciar => iniciar,
	ligado => ligado,
	pronto => pronto,
	reset => reset,
	resposta => resposta,
	zera_ci => zera_ci
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 520000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 360000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- iniciar
t_prcs_iniciar: PROCESS
BEGIN
	iniciar <= '0';
	WAIT FOR 20000 ps;
	iniciar <= '1';
	WAIT FOR 20000 ps;
	iniciar <= '0';
	WAIT FOR 360000 ps;
	iniciar <= '1';
	WAIT FOR 20000 ps;
	iniciar <= '0';
WAIT;
END PROCESS t_prcs_iniciar;

-- resposta
t_prcs_resposta: PROCESS
BEGIN
	resposta <= '0';
	WAIT FOR 300000 ps;
	resposta <= '1';
	WAIT FOR 80000 ps;
	resposta <= '0';
	WAIT FOR 60000 ps;
	resposta <= '1';
	WAIT FOR 40000 ps;
	resposta <= '0';
WAIT;
END PROCESS t_prcs_resposta;

-- contagem_inicial
t_prcs_contagem_inicial: PROCESS
BEGIN
	contagem_inicial <= '0';
	WAIT FOR 220000 ps;
	contagem_inicial <= '1';
	WAIT FOR 20000 ps;
	contagem_inicial <= '0';
WAIT;
END PROCESS t_prcs_contagem_inicial;
END Interface_FSM_v4_arch;
