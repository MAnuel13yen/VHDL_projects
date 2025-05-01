-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "05/01/2025 12:32:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock1s
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock1s_vhd_vec_tst IS
END clock1s_vhd_vec_tst;
ARCHITECTURE clock1s_arch OF clock1s_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock1s : STD_LOGIC;
SIGNAL clock50mhz : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT clock1s
	PORT (
	clock1s : BUFFER STD_LOGIC;
	clock50mhz : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock1s
	PORT MAP (
-- list connections between master ports and signals
	clock1s => clock1s,
	clock50mhz => clock50mhz,
	reset => reset
	);

-- clock50mhz
t_prcs_clock50mhz: PROCESS
BEGIN
	clock50mhz <= '0';
	WAIT FOR 80000 ps;
	clock50mhz <= '1';
	WAIT FOR 160000 ps;
	clock50mhz <= '0';
	WAIT FOR 80000 ps;
	clock50mhz <= '1';
	WAIT FOR 80000 ps;
	clock50mhz <= '0';
	WAIT FOR 40000 ps;
	clock50mhz <= '1';
	WAIT FOR 40000 ps;
	clock50mhz <= '0';
	WAIT FOR 80000 ps;
	clock50mhz <= '1';
	WAIT FOR 40000 ps;
	clock50mhz <= '0';
	WAIT FOR 40000 ps;
	clock50mhz <= '1';
	WAIT FOR 40000 ps;
	clock50mhz <= '0';
	WAIT FOR 120000 ps;
	clock50mhz <= '1';
	WAIT FOR 40000 ps;
	clock50mhz <= '0';
	WAIT FOR 120000 ps;
	clock50mhz <= '1';
WAIT;
END PROCESS t_prcs_clock50mhz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END clock1s_arch;
