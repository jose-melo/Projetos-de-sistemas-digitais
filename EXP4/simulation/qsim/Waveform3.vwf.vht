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
-- Generated on "01/26/2020 19:13:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          geraPulse
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY geraPulse_vhd_vec_tst IS
END geraPulse_vhd_vec_tst;
ARCHITECTURE geraPulse_arch OF geraPulse_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL estimulo : STD_LOGIC;
SIGNAL ligado : STD_LOGIC;
SIGNAL pulso : STD_LOGIC;
SIGNAL resp_latch : STD_LOGIC;
COMPONENT geraPulse
	PORT (
	estimulo : IN STD_LOGIC;
	ligado : IN STD_LOGIC;
	pulso : OUT STD_LOGIC;
	resp_latch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : geraPulse
	PORT MAP (
-- list connections between master ports and signals
	estimulo => estimulo,
	ligado => ligado,
	pulso => pulso,
	resp_latch => resp_latch
	);

-- estimulo
t_prcs_estimulo: PROCESS
BEGIN
	estimulo <= '0';
	WAIT FOR 10000 ps;
	estimulo <= '1';
	WAIT FOR 30000 ps;
	estimulo <= '0';
	WAIT FOR 50000 ps;
	estimulo <= '1';
	WAIT FOR 30000 ps;
	estimulo <= '0';
WAIT;
END PROCESS t_prcs_estimulo;

-- ligado
t_prcs_ligado: PROCESS
BEGIN
	ligado <= '1';
	WAIT FOR 110000 ps;
	ligado <= '0';
	WAIT FOR 30000 ps;
	ligado <= '1';
WAIT;
END PROCESS t_prcs_ligado;

-- resp_latch
t_prcs_resp_latch: PROCESS
BEGIN
	resp_latch <= '0';
	WAIT FOR 40000 ps;
	resp_latch <= '1';
	WAIT FOR 40000 ps;
	resp_latch <= '0';
	WAIT FOR 60000 ps;
	resp_latch <= '1';
WAIT;
END PROCESS t_prcs_resp_latch;
END geraPulse_arch;
