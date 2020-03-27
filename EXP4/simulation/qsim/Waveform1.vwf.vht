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
-- Generated on "01/26/2020 18:14:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_modm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_modm_vhd_vec_tst IS
END contador_modm_vhd_vec_tst;
ARCHITECTURE contador_modm_arch OF contador_modm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL conta : STD_LOGIC;
SIGNAL fim : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL zera : STD_LOGIC;
COMPONENT contador_modm
	PORT (
	clock : IN STD_LOGIC;
	conta : IN STD_LOGIC;
	fim : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	zera : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_modm
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	conta => conta,
	fim => fim,
	Q => Q,
	zera => zera
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- conta
t_prcs_conta: PROCESS
BEGIN
	conta <= '0';
	WAIT FOR 60000 ps;
	conta <= '1';
	WAIT FOR 100000 ps;
	conta <= '0';
WAIT;
END PROCESS t_prcs_conta;

-- zera
t_prcs_zera: PROCESS
BEGIN
	zera <= '1';
	WAIT FOR 30000 ps;
	zera <= '0';
WAIT;
END PROCESS t_prcs_zera;
END contador_modm_arch;
