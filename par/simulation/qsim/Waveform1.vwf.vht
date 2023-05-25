-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/14/2023 15:44:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test1_vhd_vec_tst IS
END test1_vhd_vec_tst;
ARCHITECTURE test1_arch OF test1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL commodity : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL ok : STD_LOGIC;
SIGNAL reset : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset1 : STD_LOGIC;
SIGNAL rmb1 : STD_LOGIC;
SIGNAL rmb5 : STD_LOGIC;
SIGNAL rmb10 : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL segments0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT test1
	PORT (
	clk : IN STD_LOGIC;
	commodity : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	ok : IN STD_LOGIC;
	reset : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset1 : IN STD_LOGIC;
	rmb1 : IN STD_LOGIC;
	rmb5 : IN STD_LOGIC;
	rmb10 : IN STD_LOGIC;
	s : IN STD_LOGIC;
	segments0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	commodity => commodity,
	ok => ok,
	reset => reset,
	reset1 => reset1,
	rmb1 => rmb1,
	rmb5 => rmb5,
	rmb10 => rmb10,
	s => s,
	segments0 => segments0,
	segments1 => segments1,
	segments2 => segments2,
	segments3 => segments3,
	segments4 => segments4,
	segments5 => segments5
	);

-- rmb1
t_prcs_rmb1: PROCESS
BEGIN
	rmb1 <= '0';
	WAIT FOR 240000 ps;
	rmb1 <= '1';
	WAIT FOR 30000 ps;
	rmb1 <= '0';
	WAIT FOR 180000 ps;
	rmb1 <= '1';
	WAIT FOR 90000 ps;
	rmb1 <= '0';
WAIT;
END PROCESS t_prcs_rmb1;

-- reset1
t_prcs_reset1: PROCESS
BEGIN
	reset1 <= '0';
WAIT;
END PROCESS t_prcs_reset1;
END test1_arch;
