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
-- Generated on "02/18/2020 20:35:23"
                                                             
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
SIGNAL db_estado_7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
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
SIGNAL saida7seg : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL tempo : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT JogoReacao_v1
	PORT (
	clock : IN STD_LOGIC;
	db_estado_7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	db_PInter : OUT STD_LOGIC;
	db_PMed : OUT STD_LOGIC;
	erro : OUT STD_LOGIC;
	estimulo : OUT STD_LOGIC;
	jogar : IN STD_LOGIC;
	ligado : OUT STD_LOGIC;
	pronto : OUT STD_LOGIC;
	pulso : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	resposta : IN STD_LOGIC;
	saida7seg : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
	tempo : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : JogoReacao_v1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	db_estado_7 => db_estado_7,
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
	saida7seg => saida7seg,
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
END JogoReacao_v1_arch;
