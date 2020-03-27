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
-- Generated on "02/03/2020 02:34:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controladorJogo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controladorJogo_vhd_vec_tst IS
END controladorJogo_vhd_vec_tst;
ARCHITECTURE controladorJogo_arch OF controladorJogo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL erroInterface : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fimContador : STD_LOGIC;
SIGNAL fimEspera : STD_LOGIC;
SIGNAL jogar : STD_LOGIC;
SIGNAL ligado : STD_LOGIC;
SIGNAL ligaEspera : STD_LOGIC;
SIGNAL ligaInterface : STD_LOGIC;
SIGNAL ligaMedidor : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL prontoInterface : STD_LOGIC;
SIGNAL prontoMedidor : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saidaErro : STD_LOGIC;
COMPONENT controladorJogo
	PORT (
	clock : IN STD_LOGIC;
	erroInterface : IN STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fimContador : IN STD_LOGIC;
	fimEspera : IN STD_LOGIC;
	jogar : IN STD_LOGIC;
	ligado : OUT STD_LOGIC;
	ligaEspera : OUT STD_LOGIC;
	ligaInterface : OUT STD_LOGIC;
	ligaMedidor : OUT STD_LOGIC;
	pronto : OUT STD_LOGIC;
	prontoInterface : IN STD_LOGIC;
	prontoMedidor : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	saidaErro : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controladorJogo
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	erroInterface => erroInterface,
	estado => estado,
	fimContador => fimContador,
	fimEspera => fimEspera,
	jogar => jogar,
	ligado => ligado,
	ligaEspera => ligaEspera,
	ligaInterface => ligaInterface,
	ligaMedidor => ligaMedidor,
	pronto => pronto,
	prontoInterface => prontoInterface,
	prontoMedidor => prontoMedidor,
	reset => reset,
	saidaErro => saidaErro
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

-- erroInterface
t_prcs_erroInterface: PROCESS
BEGIN
	erroInterface <= '0';
WAIT;
END PROCESS t_prcs_erroInterface;

-- prontoInterface
t_prcs_prontoInterface: PROCESS
BEGIN
	prontoInterface <= '0';
	WAIT FOR 80000 ps;
	prontoInterface <= '1';
	WAIT FOR 20000 ps;
	prontoInterface <= '0';
WAIT;
END PROCESS t_prcs_prontoInterface;

-- prontoMedidor
t_prcs_prontoMedidor: PROCESS
BEGIN
	prontoMedidor <= '0';
	WAIT FOR 80000 ps;
	prontoMedidor <= '1';
	WAIT FOR 20000 ps;
	prontoMedidor <= '0';
WAIT;
END PROCESS t_prcs_prontoMedidor;

-- fimContador
t_prcs_fimContador: PROCESS
BEGIN
	fimContador <= '0';
WAIT;
END PROCESS t_prcs_fimContador;

-- fimEspera
t_prcs_fimEspera: PROCESS
BEGIN
	fimEspera <= '0';
WAIT;
END PROCESS t_prcs_fimEspera;
END controladorJogo_arch;
