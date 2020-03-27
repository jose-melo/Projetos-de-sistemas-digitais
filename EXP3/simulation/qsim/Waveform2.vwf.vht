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
-- Generated on "01/21/2020 00:26:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          medidor_largura
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY medidor_largura_vhd_vec_tst IS
END medidor_largura_vhd_vec_tst;
ARCHITECTURE medidor_largura_arch OF medidor_largura_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL db_clock : STD_LOGIC;
SIGNAL db_contacont : STD_LOGIC;
SIGNAL db_largura : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL db_zeraCont : STD_LOGIC;
SIGNAL display0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL fim : STD_LOGIC;
SIGNAL liga : STD_LOGIC;
SIGNAL pronto : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sinal : STD_LOGIC;
COMPONENT medidor_largura
	PORT (
	clock : IN STD_LOGIC;
	db_clock : BUFFER STD_LOGIC;
	db_contacont : BUFFER STD_LOGIC;
	db_largura : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	db_zeraCont : BUFFER STD_LOGIC;
	display0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	fim : BUFFER STD_LOGIC;
	liga : IN STD_LOGIC;
	pronto : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	sinal : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : medidor_largura
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	db_clock => db_clock,
	db_contacont => db_contacont,
	db_largura => db_largura,
	db_zeraCont => db_zeraCont,
	display0 => display0,
	display1 => display1,
	display5 => display5,
	fim => fim,
	liga => liga,
	pronto => pronto,
	reset => reset,
	sinal => sinal
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
	WAIT FOR 20000 ps;
	liga <= '1';
	WAIT FOR 320000 ps;
	liga <= '0';
	WAIT FOR 20000 ps;
	liga <= '1';
WAIT;
END PROCESS t_prcs_liga;

-- sinal
t_prcs_sinal: PROCESS
BEGIN
	sinal <= '0';
	WAIT FOR 20000 ps;
	sinal <= '1';
	WAIT FOR 210000 ps;
	sinal <= '0';
	WAIT FOR 60000 ps;
	sinal <= '1';
WAIT;
END PROCESS t_prcs_sinal;
END medidor_largura_arch;
