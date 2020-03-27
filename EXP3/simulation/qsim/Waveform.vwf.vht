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
-- Generated on "01/20/2020 21:44:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controlador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlador_vhd_vec_tst IS
END controlador_vhd_vec_tst;
ARCHITECTURE controlador_arch OF controlador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL contaCont : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL liga : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sinal : STD_LOGIC;
SIGNAL zeraCont : STD_LOGIC;
COMPONENT controlador
	PORT (
	clock : IN STD_LOGIC;
	contaCont : OUT STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	liga : IN STD_LOGIC;
	pronto : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	sinal : IN STD_LOGIC;
	zeraCont : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlador
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	contaCont => contaCont,
	estado => estado,
	liga => liga,
	pronto => pronto,
	reset => reset,
	sinal => sinal,
	zeraCont => zeraCont
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 420000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- liga
t_prcs_liga: PROCESS
BEGIN
	liga <= '0';
	WAIT FOR 40000 ps;
	liga <= '1';
	WAIT FOR 360000 ps;
	liga <= '0';
WAIT;
END PROCESS t_prcs_liga;

-- sinal
t_prcs_sinal: PROCESS
BEGIN
	sinal <= '0';
	WAIT FOR 80000 ps;
	sinal <= '1';
	WAIT FOR 160000 ps;
	sinal <= '0';
	WAIT FOR 80000 ps;
	sinal <= '1';
	WAIT FOR 60000 ps;
	sinal <= '0';
WAIT;
END PROCESS t_prcs_sinal;
END controlador_arch;
