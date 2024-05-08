-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/04/2024 11:08:00"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PipelineCPU IS
    PORT (
	ALUCONFLICTING : OUT std_logic;
	opcode_ALU : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	ALU_PC : OUT std_logic_vector(7 DOWNTO 0);
	Branch_Done : OUT std_logic;
	JR_Done : OUT std_logic;
	PC : OUT std_logic_vector(7 DOWNTO 0);
	RegRead_PC : OUT std_logic_vector(7 DOWNTO 0);
	Last_PC : OUT std_logic_vector(7 DOWNTO 0);
	opcode_RegRead : OUT std_logic_vector(3 DOWNTO 0);
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0);
	R4 : OUT std_logic_vector(7 DOWNTO 0);
	R5 : OUT std_logic_vector(7 DOWNTO 0);
	R6 : OUT std_logic_vector(7 DOWNTO 0);
	R7 : OUT std_logic_vector(7 DOWNTO 0)
	);
END PipelineCPU;

-- Design Ports Information
-- ALUCONFLICTING	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_ALU[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_ALU[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_ALU[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_ALU[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[4]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_PC[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch_Done	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JR_Done	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRead_PC[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Last_PC[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_RegRead[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_RegRead[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_RegRead[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode_RegRead[0]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PipelineCPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUCONFLICTING : std_logic;
SIGNAL ww_opcode_ALU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Branch_Done : std_logic;
SIGNAL ww_JR_Done : std_logic;
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RegRead_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Last_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_opcode_RegRead : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R7 : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALUCONFLICTING~output_o\ : std_logic;
SIGNAL \opcode_ALU[3]~output_o\ : std_logic;
SIGNAL \opcode_ALU[2]~output_o\ : std_logic;
SIGNAL \opcode_ALU[1]~output_o\ : std_logic;
SIGNAL \opcode_ALU[0]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \ALU_PC[7]~output_o\ : std_logic;
SIGNAL \ALU_PC[6]~output_o\ : std_logic;
SIGNAL \ALU_PC[5]~output_o\ : std_logic;
SIGNAL \ALU_PC[4]~output_o\ : std_logic;
SIGNAL \ALU_PC[3]~output_o\ : std_logic;
SIGNAL \ALU_PC[2]~output_o\ : std_logic;
SIGNAL \ALU_PC[1]~output_o\ : std_logic;
SIGNAL \ALU_PC[0]~output_o\ : std_logic;
SIGNAL \Branch_Done~output_o\ : std_logic;
SIGNAL \JR_Done~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \RegRead_PC[7]~output_o\ : std_logic;
SIGNAL \RegRead_PC[6]~output_o\ : std_logic;
SIGNAL \RegRead_PC[5]~output_o\ : std_logic;
SIGNAL \RegRead_PC[4]~output_o\ : std_logic;
SIGNAL \RegRead_PC[3]~output_o\ : std_logic;
SIGNAL \RegRead_PC[2]~output_o\ : std_logic;
SIGNAL \RegRead_PC[1]~output_o\ : std_logic;
SIGNAL \RegRead_PC[0]~output_o\ : std_logic;
SIGNAL \Last_PC[7]~output_o\ : std_logic;
SIGNAL \Last_PC[6]~output_o\ : std_logic;
SIGNAL \Last_PC[5]~output_o\ : std_logic;
SIGNAL \Last_PC[4]~output_o\ : std_logic;
SIGNAL \Last_PC[3]~output_o\ : std_logic;
SIGNAL \Last_PC[2]~output_o\ : std_logic;
SIGNAL \Last_PC[1]~output_o\ : std_logic;
SIGNAL \Last_PC[0]~output_o\ : std_logic;
SIGNAL \opcode_RegRead[3]~output_o\ : std_logic;
SIGNAL \opcode_RegRead[2]~output_o\ : std_logic;
SIGNAL \opcode_RegRead[1]~output_o\ : std_logic;
SIGNAL \opcode_RegRead[0]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \R4[7]~output_o\ : std_logic;
SIGNAL \R4[6]~output_o\ : std_logic;
SIGNAL \R4[5]~output_o\ : std_logic;
SIGNAL \R4[4]~output_o\ : std_logic;
SIGNAL \R4[3]~output_o\ : std_logic;
SIGNAL \R4[2]~output_o\ : std_logic;
SIGNAL \R4[1]~output_o\ : std_logic;
SIGNAL \R4[0]~output_o\ : std_logic;
SIGNAL \R5[7]~output_o\ : std_logic;
SIGNAL \R5[6]~output_o\ : std_logic;
SIGNAL \R5[5]~output_o\ : std_logic;
SIGNAL \R5[4]~output_o\ : std_logic;
SIGNAL \R5[3]~output_o\ : std_logic;
SIGNAL \R5[2]~output_o\ : std_logic;
SIGNAL \R5[1]~output_o\ : std_logic;
SIGNAL \R5[0]~output_o\ : std_logic;
SIGNAL \R6[7]~output_o\ : std_logic;
SIGNAL \R6[6]~output_o\ : std_logic;
SIGNAL \R6[5]~output_o\ : std_logic;
SIGNAL \R6[4]~output_o\ : std_logic;
SIGNAL \R6[3]~output_o\ : std_logic;
SIGNAL \R6[2]~output_o\ : std_logic;
SIGNAL \R6[1]~output_o\ : std_logic;
SIGNAL \R6[0]~output_o\ : std_logic;
SIGNAL \R7[7]~output_o\ : std_logic;
SIGNAL \R7[6]~output_o\ : std_logic;
SIGNAL \R7[5]~output_o\ : std_logic;
SIGNAL \R7[4]~output_o\ : std_logic;
SIGNAL \R7[3]~output_o\ : std_logic;
SIGNAL \R7[2]~output_o\ : std_logic;
SIGNAL \R7[1]~output_o\ : std_logic;
SIGNAL \R7[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst10~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst2~q\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst100~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst100~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|6~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst3|6~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|6~1_combout\ : std_logic;
SIGNAL \inst8|inst6|inst16~q\ : std_logic;
SIGNAL \inst10|inst4|inst16~q\ : std_logic;
SIGNAL \inst|inst2|inst14~q\ : std_logic;
SIGNAL \inst1|inst4|inst14~q\ : std_logic;
SIGNAL \inst8|inst6|inst14~q\ : std_logic;
SIGNAL \inst10|inst4|inst14~q\ : std_logic;
SIGNAL \inst2|inst100~0_combout\ : std_logic;
SIGNAL \inst2|inst100~q\ : std_logic;
SIGNAL \inst1|inst4|inst100~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst100~q\ : std_logic;
SIGNAL \inst8|inst6|inst100~q\ : std_logic;
SIGNAL \inst10|inst4|inst100~q\ : std_logic;
SIGNAL \inst|inst2|inst4~q\ : std_logic;
SIGNAL \inst1|inst4|inst4~q\ : std_logic;
SIGNAL \inst8|inst6|inst4~q\ : std_logic;
SIGNAL \inst10|inst4|inst4~q\ : std_logic;
SIGNAL \inst|inst2|inst2~q\ : std_logic;
SIGNAL \inst1|inst4|inst2~q\ : std_logic;
SIGNAL \inst8|inst6|inst2~feeder_combout\ : std_logic;
SIGNAL \inst8|inst6|inst2~q\ : std_logic;
SIGNAL \inst10|inst4|inst2~q\ : std_logic;
SIGNAL \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst10~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|11~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|5~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|6~0_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst12~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst12~q\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst10~q\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst3~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst12~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst33|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst100~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst3~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst2~q\ : std_logic;
SIGNAL \inst33|inst3~1_combout\ : std_logic;
SIGNAL \inst33|inst3~2_combout\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst10~q\ : std_logic;
SIGNAL \inst36|inst10~1_combout\ : std_logic;
SIGNAL \inst30|inst~combout\ : std_logic;
SIGNAL \inst29|inst4~combout\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst4~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst12~q\ : std_logic;
SIGNAL \inst36|inst|inst|inst1~combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst100~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst14~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst14~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst14~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst4~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst4~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst36|inst15~0_combout\ : std_logic;
SIGNAL \inst28|inst1~0_combout\ : std_logic;
SIGNAL \inst36|inst10~0_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst2~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst12~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst10~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst16~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst14~q\ : std_logic;
SIGNAL \inst16|inst4~combout\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst12~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst4~q\ : std_logic;
SIGNAL \inst15|inst~combout\ : std_logic;
SIGNAL \inst36|inst6|inst|inst1~combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst100~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst14~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst4~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst36|inst11~0_combout\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst2~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst100~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst3~q\ : std_logic;
SIGNAL \inst17|inst3~1_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|inst3~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst10~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst10~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|inst16~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|inst16~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst17|inst3~2_combout\ : std_logic;
SIGNAL \inst36|inst11~1_combout\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst4~1_combout\ : std_logic;
SIGNAL \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst33|inst|26~combout\ : std_logic;
SIGNAL \inst10|inst99|inst100~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|inst3~3_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~5_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~5clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~1clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~4_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~4clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~6_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~6clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~2clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst~combout\ : std_logic;
SIGNAL \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~3_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|29~3clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst~combout\ : std_logic;
SIGNAL \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst4~2_combout\ : std_logic;
SIGNAL \inst1|inst3|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|5~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|5~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|6~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|and~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst1~combout\ : std_logic;
SIGNAL \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst2~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|6~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|6~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~7_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~6_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~4_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~5_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst24|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~3_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|X~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst24|inst1|inst~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|6~2_combout\ : std_logic;
SIGNAL \inst8|inst4|inst2~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst2~combout\ : std_logic;
SIGNAL \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst3~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|11~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|inst3~combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst10~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst3~combout\ : std_logic;
SIGNAL \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst4~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst13|inst4~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst2|12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst6|inst3|12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|12~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst4~q\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst5~combout\ : std_logic;
SIGNAL \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst16~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|inst5~combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|17~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst4~combout\ : std_logic;
SIGNAL \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst14~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|18~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|18~3_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|18~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|18~1_combout\ : std_logic;
SIGNAL \inst8|inst4|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|gdfx_temp0[2]~5_combout\ : std_logic;
SIGNAL \inst10|gdfx_temp0[6]~1_combout\ : std_logic;
SIGNAL \inst10|inst99|inst12~q\ : std_logic;
SIGNAL \inst|inst2|inst12~q\ : std_logic;
SIGNAL \inst1|inst4|inst12~q\ : std_logic;
SIGNAL \inst8|inst6|inst12~q\ : std_logic;
SIGNAL \inst10|inst4|inst12~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst6~combout\ : std_logic;
SIGNAL \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst6~combout\ : std_logic;
SIGNAL \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst6~combout\ : std_logic;
SIGNAL \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst10~2_combout\ : std_logic;
SIGNAL \inst1|inst2|inst12~q\ : std_logic;
SIGNAL \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst12~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~4_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|5~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Rt1|X~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Rt1|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst20~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|inst7~combout\ : std_logic;
SIGNAL \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst3|inst10~q\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst19~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|X~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|18~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|6~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|X~4_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst32~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst31~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst30~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst29~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|X~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|X~3_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst28~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst27~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst24~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|X~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~5_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|23~3_combout\ : std_logic;
SIGNAL \inst8|inst4|inst12~q\ : std_logic;
SIGNAL \inst10|gdfx_temp0[5]~2_combout\ : std_logic;
SIGNAL \inst10|inst99|inst14~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst4~combout\ : std_logic;
SIGNAL \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|17~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst16~q\ : std_logic;
SIGNAL \inst10|gdfx_temp0[3]~4_combout\ : std_logic;
SIGNAL \inst10|inst99|inst4~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst3~combout\ : std_logic;
SIGNAL \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|11~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst3~q\ : std_logic;
SIGNAL \inst10|gdfx_temp0[1]~6_combout\ : std_logic;
SIGNAL \inst10|inst99|inst2~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|inst1~combout\ : std_logic;
SIGNAL \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|5~0_combout\ : std_logic;
SIGNAL \inst8|inst4|inst100~q\ : std_logic;
SIGNAL \inst10|gdfx_temp0[0]~7_combout\ : std_logic;
SIGNAL \inst10|gdfx_temp0[7]~0_combout\ : std_logic;
SIGNAL \inst10|inst99|inst10~q\ : std_logic;
SIGNAL \inst|inst2|inst10~q\ : std_logic;
SIGNAL \inst1|inst4|inst10~q\ : std_logic;
SIGNAL \inst8|inst6|inst10~q\ : std_logic;
SIGNAL \inst10|inst4|inst10~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst7~combout\ : std_logic;
SIGNAL \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|inst7~combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst6|inst3|24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst2|24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|18~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst3|inst~1_combout\ : std_logic;
SIGNAL \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst10~q\ : std_logic;
SIGNAL \inst53~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst57~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst3~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst3~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|5~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|5~2_combout\ : std_logic;
SIGNAL \inst34|inst10~0_combout\ : std_logic;
SIGNAL \inst34|inst6|inst|inst1~combout\ : std_logic;
SIGNAL \inst34|inst|inst|inst1~combout\ : std_logic;
SIGNAL \inst34|inst11~0_combout\ : std_logic;
SIGNAL \inst34|inst11~1_combout\ : std_logic;
SIGNAL \inst37~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst12~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst16~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst16~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst14~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst14~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst14~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst14~q\ : std_logic;
SIGNAL \inst11|inst|27~combout\ : std_logic;
SIGNAL \inst10|gdfx_temp0[4]~3_combout\ : std_logic;
SIGNAL \inst10|inst99|inst16~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|inst5~combout\ : std_logic;
SIGNAL \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst16~q\ : std_logic;
SIGNAL \inst3|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst16~q\ : std_logic;
SIGNAL \inst57~combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst16~q\ : std_logic;
SIGNAL \inst1|inst4|inst16~q\ : std_logic;
SIGNAL \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst4~q\ : std_logic;
SIGNAL \inst1|inst87|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|inst4~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst3|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst4~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst12~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst12~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst12~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|11~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|11~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|inst3~feeder_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|inst2~feeder_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|and~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst10|inst2|inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst8~combout\ : std_logic;
SIGNAL \inst1|inst8~combout\ : std_logic;
SIGNAL \inst|inst2|inst3~q\ : std_logic;
SIGNAL \inst1|inst4|inst3~feeder_combout\ : std_logic;
SIGNAL \inst1|inst4|inst3~q\ : std_logic;
SIGNAL \inst8|inst6|inst3~q\ : std_logic;
SIGNAL \inst10|inst4|inst3~q\ : std_logic;
SIGNAL \inst10|inst99|inst3~q\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|inst2~combout\ : std_logic;
SIGNAL \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3~q\ : std_logic;
SIGNAL \inst3|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst3~q\ : std_logic;
SIGNAL \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|inst2~q\ : std_logic;
SIGNAL \inst3|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst2~q\ : std_logic;
SIGNAL \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst2~q\ : std_logic;
SIGNAL \inst1|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst100~q\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst10~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst10~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst58~combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|inst16~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst16~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|inst16~q\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|inst16~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst34|inst10~1_combout\ : std_logic;
SIGNAL \inst37~1_combout\ : std_logic;
SIGNAL \inst37~combout\ : std_logic;
SIGNAL \inst61~combout\ : std_logic;
SIGNAL \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst150|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_18~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_inst37~1DUPLICATE_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst41|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst40|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst39|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst36|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst35|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst33|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|inst1|inst32|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_18~3_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_18~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~5_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~4_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_6~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_5~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst32~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|ALT_INV_X~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|ALT_INV_X~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst27~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst4|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst11|inst|ALT_INV_27~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst8|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst24~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|ALT_INV_and~1_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst3~3_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst53~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst3|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst3|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst1|inst3|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|counter|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst2|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst10~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst8|inst100|ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|ALT_INV_and~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|regByte|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst10|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst20|ALT_INV_inst12~q\ : std_logic;
SIGNAL \ALT_INV_inst58~combout\ : std_logic;
SIGNAL \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \ALT_INV_inst57~combout\ : std_logic;
SIGNAL \ALT_INV_inst57~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst3|ALT_INV_inst~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~3_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst3|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_23~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_17~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst2|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst13|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst6|inst3|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst2|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst100|inst13|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst6|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst6|inst3|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst10~q\ : std_logic;
SIGNAL \ALT_INV_inst37~combout\ : std_logic;
SIGNAL \ALT_INV_inst37~1_combout\ : std_logic;
SIGNAL \inst34|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst34|ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \inst34|ALT_INV_inst10~1_combout\ : std_logic;
SIGNAL \inst34|ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst34|inst6|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst34|inst|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst36|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst3~2_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst17|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst36|ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst36|ALT_INV_inst10~1_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_inst3~2_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst33|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst36|ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst36|ALT_INV_inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst28|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst100|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst36|inst6|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst10|inst100|inst20|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst16|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst15|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst10|inst100|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst36|inst|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst130|inst20|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst100|inst20|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst29|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst30|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst8|inst130|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_17~0_combout\ : std_logic;
SIGNAL \inst8|inst100|inst|inst7|inst3|ALT_INV_6~2_combout\ : std_logic;
SIGNAL \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|inst99|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst10|inst99|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst10~q\ : std_logic;

BEGIN

ALUCONFLICTING <= ww_ALUCONFLICTING;
opcode_ALU <= ww_opcode_ALU;
ww_clk <= clk;
A <= ww_A;
ALU_PC <= ww_ALU_PC;
Branch_Done <= ww_Branch_Done;
JR_Done <= ww_JR_Done;
PC <= ww_PC;
RegRead_PC <= ww_RegRead_PC;
Last_PC <= ww_Last_PC;
opcode_RegRead <= ww_opcode_RegRead;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
R4 <= ww_R4;
R5 <= ww_R5;
R6 <= ww_R6;
R7 <= ww_R7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(15) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(14) & 
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(13) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(12) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(11) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(10) & 
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(9) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(8) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(7) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(6) & 
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(5) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(4) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(3) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(2) & 
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(1) & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(0));

\inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\ & \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\ & 
\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ & \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\ & \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ & 
\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(8) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(9) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(10) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(11) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(12) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(13) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(14) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|inst150|inst|sram|ram_block|auto_generated|q_a\(15) <= \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst10|gdfx_temp0[7]~0_combout\ & \inst10|gdfx_temp0[6]~1_combout\ & \inst10|gdfx_temp0[5]~2_combout\ & 
\inst10|gdfx_temp0[4]~3_combout\ & \inst10|gdfx_temp0[3]~4_combout\ & \inst10|gdfx_temp0[2]~5_combout\ & \inst10|gdfx_temp0[1]~6_combout\ & \inst10|gdfx_temp0[0]~7_combout\);

\inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|inst4|inst10~q\ & \inst8|inst4|inst12~q\ & \inst8|inst4|inst14~q\ & \inst8|inst4|inst16~q\ & \inst8|inst4|inst4~q\ & \inst8|inst4|inst3~q\ & \inst8|inst4|inst2~q\ & 
\inst8|inst4|inst100~q\);

\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0DUPLICATE_combout\ <= NOT \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_18~1DUPLICATE_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|18~1DUPLICATE_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~1DUPLICATE_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\;
\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\;
\ALT_INV_inst37~1DUPLICATE_combout\ <= NOT \inst37~1DUPLICATE_combout\;
\inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~3clkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~1clkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~6clkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~4clkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~2clkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~0clkctrl_outclk\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\ <= NOT \inst1|inst1|inst4|29~5clkctrl_outclk\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\inst1|inst1|inst41|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst41|inst~combout\;
\inst1|inst1|inst41|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst41|inst1~combout\;
\inst1|inst1|inst41|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst41|inst2~combout\;
\inst1|inst1|inst41|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst41|inst3~combout\;
\inst1|inst1|inst41|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst41|inst5~combout\;
\inst1|inst1|inst41|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst41|inst4~combout\;
\inst1|inst1|inst41|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst41|inst6~combout\;
\inst1|inst1|inst41|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst41|inst7~combout\;
\inst1|inst1|inst40|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst40|inst~combout\;
\inst1|inst1|inst40|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst40|inst1~combout\;
\inst1|inst1|inst40|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst40|inst2~combout\;
\inst1|inst1|inst40|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst40|inst3~combout\;
\inst1|inst1|inst40|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst40|inst5~combout\;
\inst1|inst1|inst40|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst40|inst4~combout\;
\inst1|inst1|inst40|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst40|inst6~combout\;
\inst1|inst1|inst40|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst40|inst7~combout\;
\inst1|inst1|inst39|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst39|inst~combout\;
\inst1|inst1|inst39|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst39|inst1~combout\;
\inst1|inst1|inst39|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst39|inst2~combout\;
\inst1|inst1|inst39|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst39|inst3~combout\;
\inst1|inst1|inst39|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst39|inst5~combout\;
\inst1|inst1|inst39|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst39|inst4~combout\;
\inst1|inst1|inst39|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst39|inst6~combout\;
\inst1|inst1|inst39|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst39|inst7~combout\;
\inst1|inst1|inst36|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst36|inst~combout\;
\inst1|inst1|inst36|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst36|inst1~combout\;
\inst1|inst1|inst36|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst36|inst2~combout\;
\inst1|inst1|inst36|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst36|inst3~combout\;
\inst1|inst1|inst36|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst36|inst5~combout\;
\inst1|inst1|inst36|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst36|inst4~combout\;
\inst1|inst1|inst36|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst36|inst6~combout\;
\inst1|inst1|inst36|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst36|inst7~combout\;
\inst1|inst1|inst35|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst35|inst~combout\;
\inst1|inst1|inst35|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst35|inst1~combout\;
\inst1|inst1|inst35|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst35|inst2~combout\;
\inst1|inst1|inst35|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst35|inst3~combout\;
\inst1|inst1|inst35|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst35|inst5~combout\;
\inst1|inst1|inst35|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst35|inst4~combout\;
\inst1|inst1|inst35|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst35|inst6~combout\;
\inst1|inst1|inst35|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst35|inst7~combout\;
\inst1|inst1|inst33|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst33|inst~combout\;
\inst1|inst1|inst33|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst33|inst1~combout\;
\inst1|inst1|inst33|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst33|inst2~combout\;
\inst1|inst1|inst33|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst33|inst3~combout\;
\inst1|inst1|inst33|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst33|inst5~combout\;
\inst1|inst1|inst33|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst33|inst4~combout\;
\inst1|inst1|inst33|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst33|inst6~combout\;
\inst1|inst1|inst33|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst33|inst7~combout\;
\inst1|inst1|inst32|ALT_INV_inst~combout\ <= NOT \inst1|inst1|inst32|inst~combout\;
\inst1|inst1|inst32|ALT_INV_inst1~combout\ <= NOT \inst1|inst1|inst32|inst1~combout\;
\inst1|inst1|inst32|ALT_INV_inst2~combout\ <= NOT \inst1|inst1|inst32|inst2~combout\;
\inst1|inst1|inst32|ALT_INV_inst3~combout\ <= NOT \inst1|inst1|inst32|inst3~combout\;
\inst1|inst1|inst32|ALT_INV_inst5~combout\ <= NOT \inst1|inst1|inst32|inst5~combout\;
\inst1|inst1|inst32|ALT_INV_inst4~combout\ <= NOT \inst1|inst1|inst32|inst4~combout\;
\inst1|inst1|inst32|ALT_INV_inst6~combout\ <= NOT \inst1|inst1|inst32|inst6~combout\;
\inst1|inst1|inst32|ALT_INV_inst7~combout\ <= NOT \inst1|inst1|inst32|inst7~combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_18~3_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|18~3_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_18~2_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|18~2_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~5_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~5_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~4_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~4_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_6~1_combout\ <= NOT \inst8|inst100|inst|inst|inst3|6~1_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_5~1_combout\ <= NOT \inst8|inst100|inst|inst|inst3|5~1_combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst10~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst10~q\;
\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst12~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst12~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst32~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst32~q\;
\inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~1_combout\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\;
\inst8|inst100|inst1|inst8|ALT_INV_18~0_combout\ <= NOT \inst8|inst100|inst1|inst8|18~0_combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst14~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst14~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst31~q\;
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst16~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst16~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst30~q\;
\inst8|inst100|inst1|Result1|ALT_INV_X~2_combout\ <= NOT \inst8|inst100|inst1|Result1|X~2_combout\;
\inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\;
\inst8|inst100|inst1|inst8|ALT_INV_12~0_combout\ <= NOT \inst8|inst100|inst1|inst8|12~0_combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst4~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst4~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst29~q\;
\inst8|inst100|inst1|Result1|ALT_INV_X~1_combout\ <= NOT \inst8|inst100|inst1|Result1|X~1_combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst3~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst3~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst28~q\;
\inst8|inst100|inst1|ALT_INV_inst19~combout\ <= NOT \inst8|inst100|inst1|inst19~combout\;
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\;
\inst8|inst100|inst1|ALT_INV_inst20~combout\ <= NOT \inst8|inst100|inst1|inst20~combout\;
\inst8|inst100|inst1|inst8|ALT_INV_6~0_combout\ <= NOT \inst8|inst100|inst1|inst8|6~0_combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst2~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst2~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst27~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst27~q\;
\inst8|inst4|ALT_INV_inst100~q\ <= NOT \inst8|inst4|inst100~q\;
\inst8|inst4|ALT_INV_inst2~q\ <= NOT \inst8|inst4|inst2~q\;
\inst8|inst4|ALT_INV_inst3~q\ <= NOT \inst8|inst4|inst3~q\;
\inst8|inst4|ALT_INV_inst4~q\ <= NOT \inst8|inst4|inst4~q\;
\inst8|inst4|ALT_INV_inst16~q\ <= NOT \inst8|inst4|inst16~q\;
\inst8|inst4|ALT_INV_inst14~q\ <= NOT \inst8|inst4|inst14~q\;
\inst8|inst4|ALT_INV_inst12~q\ <= NOT \inst8|inst4|inst12~q\;
\inst8|inst4|ALT_INV_inst10~q\ <= NOT \inst8|inst4|inst10~q\;
\inst11|inst|ALT_INV_27~combout\ <= NOT \inst11|inst|27~combout\;
\inst8|inst100|inst1|inst8|ALT_INV_5~0_combout\ <= NOT \inst8|inst100|inst1|inst8|5~0_combout\;
\inst8|inst100|inst1|inst9|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|inst9|inst2|inst100~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst24~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst24~q\;
\inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|Rt1|inst2|inst100~q\;
\inst8|inst100|inst1|ALT_INV_and~1_combout\ <= NOT \inst8|inst100|inst1|and~1_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst17|ALT_INV_inst3~3_combout\ <= NOT \inst17|inst3~3_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\ <= NOT \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\ <= NOT \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\ <= NOT \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\;
\inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst3|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\ <= NOT \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\ <= NOT \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\ <= NOT \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst65|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~3_combout\ <= NOT \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~2_combout\ <= NOT \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\ <= NOT \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~3_combout\ <= NOT \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~2_combout\ <= NOT \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~1_combout\ <= NOT \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~3_combout\ <= NOT \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~2_combout\ <= NOT \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\;
\inst65|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst65|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\ <= NOT \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\ALT_INV_inst53~0_combout\ <= NOT \inst53~0_combout\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst12~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst12~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst100~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst2~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst2~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst14~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst14~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst16~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst16~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst3~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst3~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst4~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst4~q\;
\inst1|inst3|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst20|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst20|inst4~q\;
\inst1|inst3|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst3|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst3|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst20|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst20|inst16~q\;
\inst1|inst3|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst3|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst3|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst3|ALT_INV_inst4~1_combout\ <= NOT \inst1|inst3|inst4~1_combout\;
\inst1|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst1|inst3|inst4~0_combout\;
\inst1|inst3|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst|inst3|inst20|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst20|inst14~q\;
\inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\ <= NOT \inst8|inst100|inst1|inst24|inst1|inst~combout\;
\inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\ <= NOT \inst8|inst100|inst1|inst24|inst1|inst~0_combout\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst100~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst2~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst4~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst4~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst3~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst3~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst16~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst14~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst10~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst10~q\;
\inst8|inst100|inst1|counter|inst2|ALT_INV_inst12~q\ <= NOT \inst8|inst100|inst1|counter|inst2|inst12~q\;
\inst8|inst100|inst1|Result1|inst2|ALT_INV_inst10~q\ <= NOT \inst8|inst100|inst1|Result1|inst2|inst10~q\;
\inst|inst3|inst20|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst20|inst3~q\;
\inst|inst3|inst20|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst20|inst100~q\;
\inst|inst3|inst20|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst20|inst2~q\;
\inst1|inst2|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst2|ALT_INV_inst10~1_combout\ <= NOT \inst1|inst2|inst10~1_combout\;
\inst1|inst2|ALT_INV_inst10~0_combout\ <= NOT \inst1|inst2|inst10~0_combout\;
\inst1|inst2|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst|inst3|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst2|inst3~q\;
\inst|inst3|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst2|inst4~q\;
\inst|inst3|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst2|inst2~q\;
\inst|inst3|inst20|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst20|inst10~q\;
\inst|inst3|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst2|inst100~q\;
\inst1|ALT_INV_inst8~combout\ <= NOT \inst1|inst8~combout\;
\inst8|inst100|ALT_INV_inst8~combout\ <= NOT \inst8|inst100|inst8~combout\;
\inst8|inst100|inst1|ALT_INV_and~0_combout\ <= NOT \inst8|inst100|inst1|and~0_combout\;
\inst8|inst100|inst1|regByte|ALT_INV_inst3~q\ <= NOT \inst8|inst100|inst1|regByte|inst3~q\;
\inst8|inst100|inst1|regByte|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|regByte|inst100~q\;
\inst8|inst100|inst1|regByte|ALT_INV_inst2~q\ <= NOT \inst8|inst100|inst1|regByte|inst2~q\;
\inst8|inst100|inst1|inst10|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|inst10|inst2|inst100~q\;
\inst|inst3|inst20|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst20|inst12~q\;
\ALT_INV_inst58~combout\ <= NOT \inst58~combout\;
\inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ <= NOT \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\;
\inst|inst3|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst2|inst16~q\;
\inst|inst3|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst2|inst14~q\;
\inst|inst3|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst2|inst12~q\;
\inst|inst3|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst2|inst10~q\;
\inst10|inst4|ALT_INV_inst100~q\ <= NOT \inst10|inst4|inst100~q\;
\inst10|inst4|ALT_INV_inst2~q\ <= NOT \inst10|inst4|inst2~q\;
\inst10|inst4|ALT_INV_inst3~q\ <= NOT \inst10|inst4|inst3~q\;
\inst10|inst4|ALT_INV_inst4~q\ <= NOT \inst10|inst4|inst4~q\;
\inst10|inst4|ALT_INV_inst16~q\ <= NOT \inst10|inst4|inst16~q\;
\inst10|inst4|ALT_INV_inst14~q\ <= NOT \inst10|inst4|inst14~q\;
\inst10|inst4|ALT_INV_inst12~q\ <= NOT \inst10|inst4|inst12~q\;
\inst10|inst4|ALT_INV_inst10~q\ <= NOT \inst10|inst4|inst10~q\;
\inst|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst2|inst3~q\;
\inst2|ALT_INV_inst100~q\ <= NOT \inst2|inst100~q\;
\inst2|ALT_INV_inst2~q\ <= NOT \inst2|inst2~q\;
\inst2|ALT_INV_inst3~q\ <= NOT \inst2|inst3~q\;
\inst2|ALT_INV_inst4~q\ <= NOT \inst2|inst4~q\;
\inst2|ALT_INV_inst16~q\ <= NOT \inst2|inst16~q\;
\inst2|ALT_INV_inst14~q\ <= NOT \inst2|inst14~q\;
\inst2|ALT_INV_inst12~q\ <= NOT \inst2|inst12~q\;
\inst2|ALT_INV_inst10~q\ <= NOT \inst2|inst10~q\;
\ALT_INV_inst57~combout\ <= NOT \inst57~combout\;
\ALT_INV_inst57~0_combout\ <= NOT \inst57~0_combout\;
\inst8|inst100|inst3|ALT_INV_inst~1_combout\ <= NOT \inst8|inst100|inst3|inst~1_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~3_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~3_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~2_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~2_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst12~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst12~q\;
\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst3|ALT_INV_inst~0_combout\ <= NOT \inst8|inst100|inst3|inst~0_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_5~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|5~0_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst100~q\;
\inst8|inst100|inst|inst|inst3|ALT_INV_5~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|5~0_combout\;
\inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_6~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|6~0_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst2~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst2~q\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_18~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|18~0_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst14~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst14~q\;
\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~1_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~1_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_23~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|23~0_combout\;
\inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_17~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|17~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~2_combout\ <= NOT \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~1_combout\ <= NOT \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst16~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst16~q\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|6~1_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|6~0_combout\;
\inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_11~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|11~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\ <= NOT \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ <= NOT \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst3~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst3~q\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_12~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|12~0_combout\;
\inst8|inst100|inst|inst|inst2|ALT_INV_12~0_combout\ <= NOT \inst8|inst100|inst|inst|inst2|12~0_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_12~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|12~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\ <= NOT \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\ <= NOT \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\;
\inst8|inst100|inst13|ALT_INV_inst4~combout\ <= NOT \inst8|inst100|inst13|inst4~combout\;
\inst8|inst100|inst|inst6|inst3|ALT_INV_12~0_combout\ <= NOT \inst8|inst100|inst|inst6|inst3|12~0_combout\;
\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst4~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst4~q\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|24~0_combout\;
\inst9|inst|inst7|inst4|ALT_INV_6~1_combout\ <= NOT \inst9|inst|inst7|inst4|6~1_combout\;
\inst9|inst|inst7|inst4|ALT_INV_6~0_combout\ <= NOT \inst9|inst|inst7|inst4|6~0_combout\;
\inst9|inst|inst7|inst3|ALT_INV_6~0_combout\ <= NOT \inst9|inst|inst7|inst3|6~0_combout\;
\inst8|inst100|inst|inst|inst2|ALT_INV_24~0_combout\ <= NOT \inst8|inst100|inst|inst|inst2|24~0_combout\;
\inst8|inst100|inst|inst|inst3|ALT_INV_24~0_combout\ <= NOT \inst8|inst100|inst|inst|inst3|24~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\ <= NOT \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\;
\inst8|inst100|inst13|ALT_INV_inst8~0_combout\ <= NOT \inst8|inst100|inst13|inst8~0_combout\;
\inst8|inst100|inst|inst6|inst3|ALT_INV_24~0_combout\ <= NOT \inst8|inst100|inst|inst6|inst3|24~0_combout\;
\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|inst100|inst20|ALT_INV_inst4~q\ <= NOT \inst1|inst100|inst20|inst4~q\;
\inst8|inst100|inst6|inst3|ALT_INV_inst3~combout\ <= NOT \inst8|inst100|inst6|inst3|inst3~combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst3|ALT_INV_inst5~combout\ <= NOT \inst8|inst100|inst6|inst3|inst5~combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst1|inst100|inst20|ALT_INV_inst16~q\ <= NOT \inst1|inst100|inst20|inst16~q\;
\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst9|inst|inst7|inst4|ALT_INV_11~2_combout\ <= NOT \inst9|inst|inst7|inst4|11~2_combout\;
\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst8|inst100|inst6|inst3|ALT_INV_inst7~combout\ <= NOT \inst8|inst100|inst6|inst3|inst7~combout\;
\inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst1|inst100|inst20|ALT_INV_inst14~q\ <= NOT \inst1|inst100|inst20|inst14~q\;
\inst9|inst|inst7|inst4|ALT_INV_11~1_combout\ <= NOT \inst9|inst|inst7|inst4|11~1_combout\;
\inst9|inst|inst7|inst4|ALT_INV_11~0_combout\ <= NOT \inst9|inst|inst7|inst4|11~0_combout\;
\inst8|inst100|inst1|inst28|inst2|ALT_INV_inst10~q\ <= NOT \inst8|inst100|inst1|inst28|inst2|inst10~q\;
\inst9|inst|inst7|inst4|ALT_INV_5~2_combout\ <= NOT \inst9|inst|inst7|inst4|5~2_combout\;
\inst9|inst|inst7|inst4|ALT_INV_5~1_combout\ <= NOT \inst9|inst|inst7|inst4|5~1_combout\;
\inst9|inst|inst7|inst4|ALT_INV_5~0_combout\ <= NOT \inst9|inst|inst7|inst4|5~0_combout\;
\inst1|inst100|inst20|ALT_INV_inst3~q\ <= NOT \inst1|inst100|inst20|inst3~q\;
\inst1|inst100|inst20|ALT_INV_inst100~q\ <= NOT \inst1|inst100|inst20|inst100~q\;
\inst1|inst100|inst20|ALT_INV_inst2~q\ <= NOT \inst1|inst100|inst20|inst2~q\;
\inst1|inst4|ALT_INV_inst100~q\ <= NOT \inst1|inst4|inst100~q\;
\inst1|inst4|ALT_INV_inst2~q\ <= NOT \inst1|inst4|inst2~q\;
\inst1|inst4|ALT_INV_inst3~q\ <= NOT \inst1|inst4|inst3~q\;
\inst1|inst4|ALT_INV_inst4~q\ <= NOT \inst1|inst4|inst4~q\;
\inst1|inst4|ALT_INV_inst16~q\ <= NOT \inst1|inst4|inst16~q\;
\inst1|inst4|ALT_INV_inst14~q\ <= NOT \inst1|inst4|inst14~q\;
\inst1|inst4|ALT_INV_inst12~q\ <= NOT \inst1|inst4|inst12~q\;
\inst1|inst4|ALT_INV_inst10~q\ <= NOT \inst1|inst4|inst10~q\;
\ALT_INV_inst37~combout\ <= NOT \inst37~combout\;
\ALT_INV_inst37~1_combout\ <= NOT \inst37~1_combout\;
\inst34|ALT_INV_inst11~1_combout\ <= NOT \inst34|inst11~1_combout\;
\inst34|ALT_INV_inst11~0_combout\ <= NOT \inst34|inst11~0_combout\;
\inst34|ALT_INV_inst10~1_combout\ <= NOT \inst34|inst10~1_combout\;
\inst34|ALT_INV_inst10~0_combout\ <= NOT \inst34|inst10~0_combout\;
\inst1|inst100|inst2|ALT_INV_inst3~q\ <= NOT \inst1|inst100|inst2|inst3~q\;
\inst1|inst100|inst2|ALT_INV_inst4~q\ <= NOT \inst1|inst100|inst2|inst4~q\;
\inst34|inst6|inst|ALT_INV_inst1~combout\ <= NOT \inst34|inst6|inst|inst1~combout\;
\inst34|inst|inst|ALT_INV_inst1~combout\ <= NOT \inst34|inst|inst|inst1~combout\;
\inst1|inst100|inst2|ALT_INV_inst2~q\ <= NOT \inst1|inst100|inst2|inst2~q\;
\ALT_INV_inst37~0_combout\ <= NOT \inst37~0_combout\;
\inst36|ALT_INV_inst11~1_combout\ <= NOT \inst36|inst11~1_combout\;
\inst17|ALT_INV_inst3~2_combout\ <= NOT \inst17|inst3~2_combout\;
\inst17|ALT_INV_inst3~1_combout\ <= NOT \inst17|inst3~1_combout\;
\inst10|inst100|inst20|ALT_INV_inst3~q\ <= NOT \inst10|inst100|inst20|inst3~q\;
\inst10|inst100|inst20|ALT_INV_inst100~q\ <= NOT \inst10|inst100|inst20|inst100~q\;
\inst10|inst100|inst20|ALT_INV_inst2~q\ <= NOT \inst10|inst100|inst20|inst2~q\;
\inst17|ALT_INV_inst3~0_combout\ <= NOT \inst17|inst3~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\ <= NOT \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\;
\inst10|inst100|inst20|ALT_INV_inst10~q\ <= NOT \inst10|inst100|inst20|inst10~q\;
\inst10|inst100|inst20|ALT_INV_inst16~q\ <= NOT \inst10|inst100|inst20|inst16~q\;
\inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst10|inst100|inst2|ALT_INV_inst3~q\ <= NOT \inst10|inst100|inst2|inst3~q\;
\inst36|ALT_INV_inst11~0_combout\ <= NOT \inst36|inst11~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ <= NOT \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\;
\inst10|inst100|inst2|ALT_INV_inst100~q\ <= NOT \inst10|inst100|inst2|inst100~q\;
\inst10|inst100|inst20|ALT_INV_inst14~q\ <= NOT \inst10|inst100|inst20|inst14~q\;
\inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst10|inst100|inst2|ALT_INV_inst4~q\ <= NOT \inst10|inst100|inst2|inst4~q\;
\inst36|ALT_INV_inst10~1_combout\ <= NOT \inst36|inst10~1_combout\;
\inst33|ALT_INV_inst3~2_combout\ <= NOT \inst33|inst3~2_combout\;
\inst33|ALT_INV_inst3~1_combout\ <= NOT \inst33|inst3~1_combout\;
\inst8|inst130|inst20|ALT_INV_inst3~q\ <= NOT \inst8|inst130|inst20|inst3~q\;
\inst8|inst130|inst20|ALT_INV_inst100~q\ <= NOT \inst8|inst130|inst20|inst100~q\;
\inst8|inst130|inst20|ALT_INV_inst2~q\ <= NOT \inst8|inst130|inst20|inst2~q\;
\inst33|ALT_INV_inst3~0_combout\ <= NOT \inst33|inst3~0_combout\;
\inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\ <= NOT \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\;
\inst8|inst130|inst20|ALT_INV_inst10~q\ <= NOT \inst8|inst130|inst20|inst10~q\;
\inst8|inst130|inst20|ALT_INV_inst16~q\ <= NOT \inst8|inst130|inst20|inst16~q\;
\inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst8|inst130|inst2|ALT_INV_inst3~q\ <= NOT \inst8|inst130|inst2|inst3~q\;
\inst36|ALT_INV_inst10~0_combout\ <= NOT \inst36|inst10~0_combout\;
\inst36|ALT_INV_inst15~0_combout\ <= NOT \inst36|inst15~0_combout\;
\inst1|inst100|inst20|ALT_INV_inst10~q\ <= NOT \inst1|inst100|inst20|inst10~q\;
\inst28|ALT_INV_inst1~0_combout\ <= NOT \inst28|inst1~0_combout\;
\inst1|inst100|inst2|ALT_INV_inst16~q\ <= NOT \inst1|inst100|inst2|inst16~q\;
\inst1|inst100|inst2|ALT_INV_inst12~q\ <= NOT \inst1|inst100|inst2|inst12~q\;
\inst1|inst100|inst2|ALT_INV_inst14~q\ <= NOT \inst1|inst100|inst2|inst14~q\;
\inst1|inst100|inst2|ALT_INV_inst10~q\ <= NOT \inst1|inst100|inst2|inst10~q\;
\inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ <= NOT \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\;
\inst8|inst130|inst2|ALT_INV_inst100~q\ <= NOT \inst8|inst130|inst2|inst100~q\;
\inst8|inst130|inst20|ALT_INV_inst14~q\ <= NOT \inst8|inst130|inst20|inst14~q\;
\inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst8|inst130|inst2|ALT_INV_inst4~q\ <= NOT \inst8|inst130|inst2|inst4~q\;
\inst1|inst100|inst2|ALT_INV_inst100~q\ <= NOT \inst1|inst100|inst2|inst100~q\;
\inst36|inst6|inst|ALT_INV_inst1~combout\ <= NOT \inst36|inst6|inst|inst1~combout\;
\inst10|inst100|inst20|ALT_INV_inst12~q\ <= NOT \inst10|inst100|inst20|inst12~q\;
\inst10|inst100|inst20|ALT_INV_inst4~q\ <= NOT \inst10|inst100|inst20|inst4~q\;
\inst10|inst100|inst2|ALT_INV_inst2~q\ <= NOT \inst10|inst100|inst2|inst2~q\;
\inst16|ALT_INV_inst4~combout\ <= NOT \inst16|inst4~combout\;
\inst10|inst100|inst2|ALT_INV_inst16~q\ <= NOT \inst10|inst100|inst2|inst16~q\;
\inst15|ALT_INV_inst~combout\ <= NOT \inst15|inst~combout\;
\inst10|inst100|inst2|ALT_INV_inst14~q\ <= NOT \inst10|inst100|inst2|inst14~q\;
\inst10|inst100|inst2|ALT_INV_inst10~q\ <= NOT \inst10|inst100|inst2|inst10~q\;
\inst10|inst100|inst2|ALT_INV_inst12~q\ <= NOT \inst10|inst100|inst2|inst12~q\;
\inst36|inst|inst|ALT_INV_inst1~combout\ <= NOT \inst36|inst|inst|inst1~combout\;
\inst8|inst130|inst20|ALT_INV_inst12~q\ <= NOT \inst8|inst130|inst20|inst12~q\;
\inst8|inst130|inst20|ALT_INV_inst4~q\ <= NOT \inst8|inst130|inst20|inst4~q\;
\inst8|inst130|inst2|ALT_INV_inst2~q\ <= NOT \inst8|inst130|inst2|inst2~q\;
\inst1|inst100|inst20|ALT_INV_inst12~q\ <= NOT \inst1|inst100|inst20|inst12~q\;
\inst29|ALT_INV_inst4~combout\ <= NOT \inst29|inst4~combout\;
\inst8|inst130|inst2|ALT_INV_inst16~q\ <= NOT \inst8|inst130|inst2|inst16~q\;
\inst30|ALT_INV_inst~combout\ <= NOT \inst30|inst~combout\;
\inst8|inst130|inst2|ALT_INV_inst14~q\ <= NOT \inst8|inst130|inst2|inst14~q\;
\inst8|inst130|inst2|ALT_INV_inst12~q\ <= NOT \inst8|inst130|inst2|inst12~q\;
\inst8|inst130|inst2|ALT_INV_inst10~q\ <= NOT \inst8|inst130|inst2|inst10~q\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_11~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|11~0_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_17~0_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|17~0_combout\;
\inst8|inst100|inst|inst7|inst3|ALT_INV_6~2_combout\ <= NOT \inst8|inst100|inst|inst7|inst3|6~2_combout\;
\inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\;
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(1);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(2);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(3);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(4);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(5);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(6);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(7);
\inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0) <= NOT \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(0);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(1);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(2);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(3);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(4);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(5);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(6);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(7);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(8) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(8);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(9) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(9);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(10) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(10);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(11) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(11);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(12);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(13);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(14) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(14);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(15);
\inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0) <= NOT \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(0);
\inst10|inst99|ALT_INV_inst100~q\ <= NOT \inst10|inst99|inst100~q\;
\inst10|inst99|ALT_INV_inst2~q\ <= NOT \inst10|inst99|inst2~q\;
\inst10|inst99|ALT_INV_inst3~q\ <= NOT \inst10|inst99|inst3~q\;
\inst10|inst99|ALT_INV_inst4~q\ <= NOT \inst10|inst99|inst4~q\;
\inst10|inst99|ALT_INV_inst16~q\ <= NOT \inst10|inst99|inst16~q\;
\inst10|inst99|ALT_INV_inst14~q\ <= NOT \inst10|inst99|inst14~q\;
\inst10|inst99|ALT_INV_inst12~q\ <= NOT \inst10|inst99|inst12~q\;
\inst10|inst99|ALT_INV_inst10~q\ <= NOT \inst10|inst99|inst10~q\;
\inst1|inst3|ALT_INV_inst4~q\ <= NOT \inst1|inst3|inst4~q\;
\inst1|inst3|ALT_INV_inst3~q\ <= NOT \inst1|inst3|inst3~q\;
\inst1|inst3|ALT_INV_inst14~q\ <= NOT \inst1|inst3|inst14~q\;
\inst1|inst3|ALT_INV_inst16~q\ <= NOT \inst1|inst3|inst16~q\;
\inst1|inst3|ALT_INV_inst100~q\ <= NOT \inst1|inst3|inst100~q\;
\inst1|inst3|ALT_INV_inst2~q\ <= NOT \inst1|inst3|inst2~q\;
\inst1|inst3|ALT_INV_inst10~q\ <= NOT \inst1|inst3|inst10~q\;
\inst1|inst3|ALT_INV_inst12~q\ <= NOT \inst1|inst3|inst12~q\;
\inst1|inst2|ALT_INV_inst100~q\ <= NOT \inst1|inst2|inst100~q\;
\inst1|inst2|ALT_INV_inst2~q\ <= NOT \inst1|inst2|inst2~q\;
\inst1|inst2|ALT_INV_inst3~q\ <= NOT \inst1|inst2|inst3~q\;
\inst1|inst2|ALT_INV_inst4~q\ <= NOT \inst1|inst2|inst4~q\;
\inst1|inst2|ALT_INV_inst16~q\ <= NOT \inst1|inst2|inst16~q\;
\inst1|inst2|ALT_INV_inst14~q\ <= NOT \inst1|inst2|inst14~q\;
\inst1|inst2|ALT_INV_inst12~q\ <= NOT \inst1|inst2|inst12~q\;
\inst1|inst2|ALT_INV_inst10~q\ <= NOT \inst1|inst2|inst10~q\;

-- Location: IOOBUF_X31_Y56_N2
\ALUCONFLICTING~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst37~combout\,
	devoe => ww_devoe,
	o => \ALUCONFLICTING~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\opcode_ALU[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst100|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \opcode_ALU[3]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\opcode_ALU[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst100|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \opcode_ALU[2]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\opcode_ALU[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst100|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \opcode_ALU[1]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\opcode_ALU[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst100|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \opcode_ALU[0]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\A[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\A[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\A[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\A[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\A[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\A[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\A[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\A[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\ALU_PC[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst10~q\,
	devoe => ww_devoe,
	o => \ALU_PC[7]~output_o\);

-- Location: IOOBUF_X7_Y56_N98
\ALU_PC[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst12~q\,
	devoe => ww_devoe,
	o => \ALU_PC[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\ALU_PC[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst14~q\,
	devoe => ww_devoe,
	o => \ALU_PC[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\ALU_PC[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst16~q\,
	devoe => ww_devoe,
	o => \ALU_PC[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\ALU_PC[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst4~q\,
	devoe => ww_devoe,
	o => \ALU_PC[3]~output_o\);

-- Location: IOOBUF_X59_Y51_N67
\ALU_PC[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst3~q\,
	devoe => ww_devoe,
	o => \ALU_PC[2]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\ALU_PC[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst2~q\,
	devoe => ww_devoe,
	o => \ALU_PC[1]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\ALU_PC[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|inst100~q\,
	devoe => ww_devoe,
	o => \ALU_PC[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\Branch_Done~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst61~combout\,
	devoe => ww_devoe,
	o => \Branch_Done~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\JR_Done~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst57~combout\,
	devoe => ww_devoe,
	o => \JR_Done~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\PC[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst10~q\,
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X3_Y56_N95
\PC[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst12~q\,
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\PC[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst14~q\,
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N5
\PC[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst16~q\,
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X8_Y56_N67
\PC[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\PC[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X59_Y7_N98
\PC[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X10_Y56_N5
\PC[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst100~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\RegRead_PC[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[7]~output_o\);

-- Location: IOOBUF_X59_Y9_N33
\RegRead_PC[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[6]~output_o\);

-- Location: IOOBUF_X59_Y51_N5
\RegRead_PC[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[5]~output_o\);

-- Location: IOOBUF_X5_Y56_N98
\RegRead_PC[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[4]~output_o\);

-- Location: IOOBUF_X7_Y56_N67
\RegRead_PC[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\RegRead_PC[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[2]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\RegRead_PC[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[1]~output_o\);

-- Location: IOOBUF_X10_Y56_N67
\RegRead_PC[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst100~q\,
	devoe => ww_devoe,
	o => \RegRead_PC[0]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Last_PC[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst10~q\,
	devoe => ww_devoe,
	o => \Last_PC[7]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Last_PC[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst12~q\,
	devoe => ww_devoe,
	o => \Last_PC[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\Last_PC[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst14~q\,
	devoe => ww_devoe,
	o => \Last_PC[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Last_PC[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst16~q\,
	devoe => ww_devoe,
	o => \Last_PC[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\Last_PC[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst4~q\,
	devoe => ww_devoe,
	o => \Last_PC[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Last_PC[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst3~q\,
	devoe => ww_devoe,
	o => \Last_PC[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\Last_PC[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst2~q\,
	devoe => ww_devoe,
	o => \Last_PC[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\Last_PC[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|inst100~q\,
	devoe => ww_devoe,
	o => \Last_PC[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N98
\opcode_RegRead[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \opcode_RegRead[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N67
\opcode_RegRead[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \opcode_RegRead[2]~output_o\);

-- Location: IOOBUF_X7_Y56_N36
\opcode_RegRead[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \opcode_RegRead[1]~output_o\);

-- Location: IOOBUF_X59_Y48_N36
\opcode_RegRead[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \opcode_RegRead[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N36
\R0[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\R0[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N36
\R0[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N98
\R0[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N33
\R0[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N98
\R0[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\R0[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\R0[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X8_Y56_N2
\R1[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst7~combout\,
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\R1[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst6~combout\,
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\R1[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst4~combout\,
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\R1[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst5~combout\,
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X59_Y49_N36
\R1[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst3~combout\,
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X59_Y49_N67
\R1[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst2~combout\,
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X7_Y56_N2
\R1[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst1~combout\,
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\R1[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst32|inst~combout\,
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\R2[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst7~combout\,
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\R2[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst6~combout\,
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\R2[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst4~combout\,
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\R2[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst5~combout\,
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\R2[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst3~combout\,
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\R2[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst2~combout\,
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\R2[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst1~combout\,
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\R2[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst33|inst~combout\,
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\R3[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst7~combout\,
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\R3[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst6~combout\,
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\R3[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst4~combout\,
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\R3[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst5~combout\,
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X8_Y56_N98
\R3[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst3~combout\,
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\R3[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst2~combout\,
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\R3[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst1~combout\,
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\R3[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst35|inst~combout\,
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\R4[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst7~combout\,
	devoe => ww_devoe,
	o => \R4[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N98
\R4[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst6~combout\,
	devoe => ww_devoe,
	o => \R4[6]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\R4[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst4~combout\,
	devoe => ww_devoe,
	o => \R4[5]~output_o\);

-- Location: IOOBUF_X5_Y56_N36
\R4[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst5~combout\,
	devoe => ww_devoe,
	o => \R4[4]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\R4[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst3~combout\,
	devoe => ww_devoe,
	o => \R4[3]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\R4[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst2~combout\,
	devoe => ww_devoe,
	o => \R4[2]~output_o\);

-- Location: IOOBUF_X59_Y48_N98
\R4[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst1~combout\,
	devoe => ww_devoe,
	o => \R4[1]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\R4[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst36|inst~combout\,
	devoe => ww_devoe,
	o => \R4[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\R5[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst7~combout\,
	devoe => ww_devoe,
	o => \R5[7]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\R5[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst6~combout\,
	devoe => ww_devoe,
	o => \R5[6]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\R5[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst4~combout\,
	devoe => ww_devoe,
	o => \R5[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\R5[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst5~combout\,
	devoe => ww_devoe,
	o => \R5[4]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\R5[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst3~combout\,
	devoe => ww_devoe,
	o => \R5[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N33
\R5[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst2~combout\,
	devoe => ww_devoe,
	o => \R5[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\R5[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst1~combout\,
	devoe => ww_devoe,
	o => \R5[1]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\R5[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst39|inst~combout\,
	devoe => ww_devoe,
	o => \R5[0]~output_o\);

-- Location: IOOBUF_X8_Y56_N36
\R6[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst7~combout\,
	devoe => ww_devoe,
	o => \R6[7]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\R6[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst6~combout\,
	devoe => ww_devoe,
	o => \R6[6]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\R6[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst4~combout\,
	devoe => ww_devoe,
	o => \R6[5]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\R6[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst5~combout\,
	devoe => ww_devoe,
	o => \R6[4]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\R6[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst3~combout\,
	devoe => ww_devoe,
	o => \R6[3]~output_o\);

-- Location: IOOBUF_X5_Y56_N2
\R6[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst2~combout\,
	devoe => ww_devoe,
	o => \R6[2]~output_o\);

-- Location: IOOBUF_X10_Y56_N33
\R6[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst1~combout\,
	devoe => ww_devoe,
	o => \R6[1]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\R6[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst40|inst~combout\,
	devoe => ww_devoe,
	o => \R6[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\R7[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst7~combout\,
	devoe => ww_devoe,
	o => \R7[7]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\R7[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst6~combout\,
	devoe => ww_devoe,
	o => \R7[6]~output_o\);

-- Location: IOOBUF_X10_Y56_N98
\R7[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst4~combout\,
	devoe => ww_devoe,
	o => \R7[5]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\R7[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst5~combout\,
	devoe => ww_devoe,
	o => \R7[4]~output_o\);

-- Location: IOOBUF_X56_Y56_N2
\R7[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst3~combout\,
	devoe => ww_devoe,
	o => \R7[3]~output_o\);

-- Location: IOOBUF_X59_Y7_N67
\R7[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst2~combout\,
	devoe => ww_devoe,
	o => \R7[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\R7[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst1~combout\,
	devoe => ww_devoe,
	o => \R7[1]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\R7[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst41|inst~combout\,
	devoe => ww_devoe,
	o => \R7[0]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X30_Y35_N11
\inst8|inst130|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst10~q\);

-- Location: LABCELL_X27_Y33_N20
\inst1|inst87|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|inst20|ALT_INV_inst2~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y33_N21
\inst1|inst100|inst20|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst2~q\);

-- Location: LABCELL_X30_Y32_N20
\inst|inst6|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(0) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|inst6|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y32_N21
\inst|inst3|inst20|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst100~q\);

-- Location: LABCELL_X27_Y33_N2
\inst1|inst87|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst20|ALT_INV_inst100~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y33_N3
\inst1|inst100|inst20|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst100~q\);

-- Location: LABCELL_X27_Y33_N30
\inst9|inst|inst7|inst4|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|6~0_combout\ = ( \inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (!\inst1|inst100|inst2|inst12~q\ $ (!\inst1|inst100|inst2|inst14~q\))) ) ) # ( !\inst1|inst100|inst2|inst16~q\ & ( 
-- (!\inst1|inst100|inst2|inst14~q\ & !\inst1|inst100|inst2|inst10~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst9|inst|inst7|inst4|6~0_combout\);

-- Location: MLABCELL_X26_Y33_N30
\inst9|inst|inst7|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst3|6~0_combout\ = ( \inst1|inst100|inst20|inst3~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst16~q\ & ((\inst1|inst100|inst20|inst100~q\) # (\inst1|inst100|inst20|inst2~q\)))) ) ) # ( 
-- !\inst1|inst100|inst20|inst3~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst16~q\ & (!\inst1|inst100|inst20|inst2~q\ & !\inst1|inst100|inst20|inst100~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	combout => \inst9|inst|inst7|inst3|6~0_combout\);

-- Location: MLABCELL_X26_Y33_N2
\inst9|inst|inst7|inst4|6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|6~1_combout\ = ( \inst9|inst|inst7|inst3|6~0_combout\ ) # ( !\inst9|inst|inst7|inst3|6~0_combout\ & ( !\inst9|inst|inst7|inst4|6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_6~0_combout\,
	dataf => \inst9|inst|inst7|inst3|ALT_INV_6~0_combout\,
	combout => \inst9|inst|inst7|inst4|6~1_combout\);

-- Location: FF_X30_Y32_N5
\inst8|inst6|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst16~q\);

-- Location: FF_X32_Y32_N33
\inst10|inst4|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst16~q\);

-- Location: FF_X29_Y32_N35
\inst|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst14~q\);

-- Location: FF_X30_Y32_N39
\inst1|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst14~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst14~q\);

-- Location: FF_X30_Y32_N35
\inst8|inst6|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst14~q\);

-- Location: FF_X32_Y32_N15
\inst10|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst14~q\);

-- Location: LABCELL_X27_Y32_N16
\inst2|inst100~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst100~0_combout\ = ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst2|inst100~0_combout\);

-- Location: FF_X27_Y32_N17
\inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst100~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100~q\);

-- Location: LABCELL_X32_Y35_N26
\inst1|inst4|inst100~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst100~0_combout\ = ( !\inst2|inst100~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_inst100~q\,
	combout => \inst1|inst4|inst100~0_combout\);

-- Location: FF_X32_Y35_N27
\inst1|inst4|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst4|inst100~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst100~q\);

-- Location: FF_X29_Y32_N29
\inst8|inst6|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst100~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst100~q\);

-- Location: FF_X32_Y32_N9
\inst10|inst4|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst100~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst100~q\);

-- Location: FF_X27_Y32_N33
\inst|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst4~q\);

-- Location: FF_X32_Y35_N35
\inst1|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst4~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst4~q\);

-- Location: FF_X32_Y35_N29
\inst8|inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst4~q\);

-- Location: FF_X32_Y32_N11
\inst10|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst4~q\);

-- Location: FF_X29_Y32_N27
\inst|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst2~q\);

-- Location: FF_X32_Y35_N25
\inst1|inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst2~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst2~q\);

-- Location: LABCELL_X32_Y35_N0
\inst8|inst6|inst2~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst6|inst2~feeder_combout\ = ( \inst1|inst4|inst2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst4|ALT_INV_inst2~q\,
	combout => \inst8|inst6|inst2~feeder_combout\);

-- Location: FF_X32_Y35_N1
\inst8|inst6|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst6|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst2~q\);

-- Location: FF_X32_Y32_N27
\inst10|inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst2~q\);

-- Location: LABCELL_X32_Y32_N26
\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst3~q\ & ( (\inst10|inst4|inst100~q\ & (\inst10|inst4|inst4~q\ & \inst10|inst4|inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst4|ALT_INV_inst100~q\,
	datac => \inst10|inst4|ALT_INV_inst4~q\,
	datad => \inst10|inst4|ALT_INV_inst2~q\,
	dataf => \inst10|inst4|ALT_INV_inst3~q\,
	combout => \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y32_N28
\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst10|inst4|inst16~q\ & \inst10|inst4|inst14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst4|ALT_INV_inst16~q\,
	datad => \inst10|inst4|ALT_INV_inst14~q\,
	dataf => \inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N17
\inst8|inst4|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|24~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst10~q\);

-- Location: LABCELL_X27_Y33_N32
\inst9|inst|inst7|inst4|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|11~0_combout\ = ( \inst1|inst100|inst20|inst3~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( ((!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst20|inst100~q\) # (\inst1|inst100|inst20|inst2~q\)))) # 
-- (\inst1|inst100|inst2|inst14~q\) ) ) ) # ( !\inst1|inst100|inst20|inst3~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( ((!\inst1|inst100|inst2|inst10~q\ & ((!\inst1|inst100|inst20|inst100~q\) # (\inst1|inst100|inst20|inst2~q\)))) # 
-- (\inst1|inst100|inst2|inst14~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101110011011100111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst9|inst|inst7|inst4|11~0_combout\);

-- Location: LABCELL_X27_Y33_N6
\inst9|inst|inst7|inst4|5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|5~1_combout\ = ( \inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (\inst1|inst100|inst2|inst14~q\ & !\inst1|inst100|inst2|inst10~q\)) ) ) # ( !\inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst14~q\ 
-- & ((!\inst1|inst100|inst2|inst12~q\) # (!\inst1|inst100|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst9|inst|inst7|inst4|5~1_combout\);

-- Location: MLABCELL_X26_Y33_N4
\inst8|inst100|inst|inst7|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|6~0_combout\ = ( \inst9|inst|inst7|inst4|5~0_combout\ & ( \inst9|inst|inst7|inst4|11~1_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ $ (((!\inst9|inst|inst7|inst3|6~0_combout\ & \inst9|inst|inst7|inst4|6~0_combout\))) 
-- ) ) ) # ( !\inst9|inst|inst7|inst4|5~0_combout\ & ( \inst9|inst|inst7|inst4|11~1_combout\ & ( (!\inst9|inst|inst7|inst4|11~0_combout\ & (((!\inst9|inst|inst7|inst4|6~0_combout\)) # (\inst9|inst|inst7|inst3|6~0_combout\))) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\ & (((!\inst9|inst|inst7|inst3|6~0_combout\ & \inst9|inst|inst7|inst4|6~0_combout\)) # (\inst9|inst|inst7|inst4|5~1_combout\))) ) ) ) # ( \inst9|inst|inst7|inst4|5~0_combout\ & ( !\inst9|inst|inst7|inst4|11~1_combout\ 
-- & ( (!\inst9|inst|inst7|inst3|6~0_combout\ & \inst9|inst|inst7|inst4|6~0_combout\) ) ) ) # ( !\inst9|inst|inst7|inst4|5~0_combout\ & ( !\inst9|inst|inst7|inst4|11~1_combout\ & ( ((!\inst9|inst|inst7|inst3|6~0_combout\ & 
-- \inst9|inst|inst7|inst4|6~0_combout\)) # (\inst9|inst|inst7|inst4|5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000000001100110010101111011001111010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst9|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_6~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|6~0_combout\);

-- Location: M9K_X28_Y32_N0
\inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0\ : arriaii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001820E0030C904288001A6027002081420C1082002045",
	clk0_core_clock_enable => "ena2",
	clk0_input_clock_enable => "ena2",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "fibo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "InstFetchCycle:inst|Instruction_Memory:inst150|lpm_ram_io:inst|altram:sram|altsyncram:ram_block|altsyncram_40g1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \ALT_INV_clk~inputclkctrl_outclk\,
	ena2 => VCC,
	portadatain => \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst150|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X31_Y32_N28
\inst|inst6|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(6) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	combout => \inst|inst6|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N29
\inst|inst3|inst20|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst12~q\);

-- Location: LABCELL_X30_Y32_N32
\inst1|inst87|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst20|ALT_INV_inst12~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y32_N33
\inst1|inst100|inst20|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst12~q\);

-- Location: MLABCELL_X31_Y32_N24
\inst|inst6|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(7) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	combout => \inst|inst6|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N25
\inst|inst3|inst20|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst10~q\);

-- Location: MLABCELL_X31_Y32_N36
\inst|inst6|$00000|auto_generated|l1_w10_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(10) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst|inst6|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N37
\inst|inst3|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst3~q\);

-- Location: LABCELL_X30_Y32_N10
\inst1|inst87|$00000|auto_generated|l1_w10_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = (\inst|inst3|inst2|inst3~q\ & !\inst58~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst2|ALT_INV_inst3~q\,
	datac => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y32_N11
\inst1|inst100|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst3~q\);

-- Location: MLABCELL_X31_Y35_N16
\inst8|inst70|$00000|auto_generated|l1_w10_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N17
\inst8|inst130|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w10_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst3~q\);

-- Location: MLABCELL_X31_Y35_N10
\inst8|inst70|$00000|auto_generated|l1_w14_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N11
\inst8|inst130|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst12~q\);

-- Location: LABCELL_X30_Y35_N34
\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst8|inst130|inst2|inst12~q\ & ( (\inst8|inst130|inst2|inst14~q\ & (\inst8|inst130|inst2|inst10~q\ & \inst8|inst130|inst2|inst3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst3~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	combout => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y35_N12
\inst33|inst3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst33|inst3~0_combout\ = ( \inst8|inst130|inst2|inst12~q\ & ( \inst8|inst130|inst2|inst10~q\ & ( (\inst8|inst130|inst2|inst16~q\ & \inst8|inst130|inst2|inst14~q\) ) ) ) # ( \inst8|inst130|inst2|inst12~q\ & ( !\inst8|inst130|inst2|inst10~q\ & ( 
-- (!\inst8|inst130|inst2|inst14~q\) # (\inst8|inst130|inst2|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datae => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	combout => \inst33|inst3~0_combout\);

-- Location: MLABCELL_X31_Y35_N24
\inst8|inst70|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst100~q\ & ( (!\inst37~0_combout\ & !\inst37~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst37~0_combout\,
	datad => \ALT_INV_inst37~1_combout\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N25
\inst8|inst130|inst20|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst100~q\);

-- Location: MLABCELL_X31_Y35_N30
\inst8|inst70|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N31
\inst8|inst130|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst3~q\);

-- Location: MLABCELL_X31_Y35_N2
\inst8|inst70|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N3
\inst8|inst130|inst20|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst2~q\);

-- Location: MLABCELL_X31_Y35_N0
\inst33|inst3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst33|inst3~1_combout\ = ( \inst8|inst130|inst20|inst2~q\ & ( (!\inst8|inst130|inst2|inst14~q\ & (((\inst8|inst130|inst20|inst100~q\ & \inst8|inst130|inst20|inst3~q\)) # (\inst8|inst130|inst2|inst16~q\))) ) ) # ( !\inst8|inst130|inst20|inst2~q\ & ( 
-- (\inst8|inst130|inst2|inst16~q\ & !\inst8|inst130|inst2|inst14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst130|inst20|ALT_INV_inst100~q\,
	datab => \inst8|inst130|inst20|ALT_INV_inst3~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst130|inst20|ALT_INV_inst2~q\,
	combout => \inst33|inst3~1_combout\);

-- Location: LABCELL_X30_Y35_N6
\inst33|inst3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst33|inst3~2_combout\ = ( !\inst8|inst130|inst2|inst12~q\ & ( !\inst8|inst130|inst2|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	combout => \inst33|inst3~2_combout\);

-- Location: MLABCELL_X31_Y32_N14
\inst1|inst87|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst20|inst10~q\ & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst3|inst20|ALT_INV_inst10~q\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N15
\inst1|inst100|inst20|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst10~q\);

-- Location: LABCELL_X30_Y35_N24
\inst36|inst10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst10~1_combout\ = ( \inst33|inst3~2_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst33|inst3~1_combout\) 
-- # (\inst33|inst3~0_combout\)))) # (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (((!\inst33|inst3~1_combout\) # (\inst33|inst3~0_combout\)))) ) ) ) # ( !\inst33|inst3~2_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( 
-- (\inst33|inst3~0_combout\ & ((\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\))) ) ) ) # ( \inst33|inst3~2_combout\ & ( !\inst1|inst100|inst20|inst10~q\ & ( 
-- (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst33|inst3~1_combout\) # (\inst33|inst3~0_combout\)))) ) ) ) # ( !\inst33|inst3~2_combout\ & ( 
-- !\inst1|inst100|inst20|inst10~q\ & ( (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst33|inst3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100010000000100000000111000001110111011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\,
	datab => \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst33|ALT_INV_inst3~0_combout\,
	datad => \inst33|ALT_INV_inst3~1_combout\,
	datae => \inst33|ALT_INV_inst3~2_combout\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	combout => \inst36|inst10~1_combout\);

-- Location: LABCELL_X30_Y35_N28
\inst30|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst30|inst~combout\ = ( \inst8|inst130|inst2|inst10~q\ & ( (\inst8|inst130|inst2|inst14~q\ & \inst8|inst130|inst2|inst12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	combout => \inst30|inst~combout\);

-- Location: LABCELL_X30_Y35_N16
\inst29|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst29|inst4~combout\ = ( \inst8|inst130|inst2|inst12~q\ & ( !\inst8|inst130|inst2|inst10~q\ ) ) # ( !\inst8|inst130|inst2|inst12~q\ & ( (!\inst8|inst130|inst2|inst10~q\ & ((\inst8|inst130|inst2|inst16~q\) # (\inst8|inst130|inst2|inst14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	combout => \inst29|inst4~combout\);

-- Location: MLABCELL_X29_Y35_N10
\inst8|inst70|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst4~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y35_N23
\inst8|inst130|inst20|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst70|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst4~q\);

-- Location: LABCELL_X30_Y32_N6
\inst1|inst87|$00000|auto_generated|l1_w9_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = (\inst|inst3|inst2|inst2~q\ & !\inst58~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst2~q\,
	datac => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y32_N7
\inst1|inst100|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst2~q\);

-- Location: MLABCELL_X29_Y35_N26
\inst8|inst70|$00000|auto_generated|l1_w9_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = (\inst1|inst100|inst2|inst2~q\ & \inst37~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	datac => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y35_N7
\inst8|inst130|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst70|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst2~q\);

-- Location: MLABCELL_X31_Y35_N22
\inst8|inst70|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N23
\inst8|inst130|inst20|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst12~q\);

-- Location: LABCELL_X30_Y35_N2
\inst36|inst|inst|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst|inst|inst1~combout\ = ( \inst8|inst130|inst20|inst12~q\ & ( \inst1|inst100|inst20|inst12~q\ & ( (!\inst30|inst~combout\ & (!\inst29|inst4~combout\ & (!\inst8|inst130|inst20|inst4~q\))) # (\inst30|inst~combout\ & 
-- (((!\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( !\inst8|inst130|inst20|inst12~q\ & ( \inst1|inst100|inst20|inst12~q\ & ( (!\inst30|inst~combout\ & (((!\inst8|inst130|inst20|inst4~q\)) # (\inst29|inst4~combout\))) # (\inst30|inst~combout\ & 
-- (((!\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( \inst8|inst130|inst20|inst12~q\ & ( !\inst1|inst100|inst20|inst12~q\ & ( (!\inst30|inst~combout\ & (((\inst8|inst130|inst20|inst4~q\)) # (\inst29|inst4~combout\))) # (\inst30|inst~combout\ & 
-- (((\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( !\inst8|inst130|inst20|inst12~q\ & ( !\inst1|inst100|inst20|inst12~q\ & ( (!\inst30|inst~combout\ & (!\inst29|inst4~combout\ & (\inst8|inst130|inst20|inst4~q\))) # (\inst30|inst~combout\ & 
-- (((\inst8|inst130|inst2|inst2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101001010100111111111110111101000101101010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_inst~combout\,
	datab => \inst29|ALT_INV_inst4~combout\,
	datac => \inst8|inst130|inst20|ALT_INV_inst4~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst2~q\,
	datae => \inst8|inst130|inst20|ALT_INV_inst12~q\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	combout => \inst36|inst|inst|inst1~combout\);

-- Location: MLABCELL_X31_Y32_N34
\inst|inst6|$00000|auto_generated|l1_w8_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = (!\inst58~combout\ & \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	datad => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(8),
	combout => \inst|inst6|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N35
\inst|inst3|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst100~q\);

-- Location: MLABCELL_X31_Y32_N26
\inst1|inst87|$00000|auto_generated|l1_w8_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst2|inst100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst2|ALT_INV_inst100~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N27
\inst1|inst100|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst100~q\);

-- Location: MLABCELL_X31_Y35_N8
\inst8|inst70|$00000|auto_generated|l1_w8_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst2|ALT_INV_inst100~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N9
\inst8|inst130|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst100~q\);

-- Location: MLABCELL_X31_Y32_N20
\inst|inst6|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(5) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	combout => \inst|inst6|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N21
\inst|inst3|inst20|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst14~q\);

-- Location: MLABCELL_X31_Y33_N20
\inst1|inst87|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|inst20|ALT_INV_inst14~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y33_N21
\inst1|inst100|inst20|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst14~q\);

-- Location: MLABCELL_X31_Y35_N38
\inst8|inst70|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N39
\inst8|inst130|inst20|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst14~q\);

-- Location: MLABCELL_X31_Y35_N32
\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ = ( \inst8|inst130|inst2|inst12~q\ & ( \inst8|inst130|inst2|inst10~q\ & ( (!\inst8|inst130|inst2|inst14~q\ & \inst8|inst130|inst20|inst14~q\) ) ) ) # ( !\inst8|inst130|inst2|inst12~q\ & ( 
-- \inst8|inst130|inst2|inst10~q\ & ( \inst8|inst130|inst20|inst14~q\ ) ) ) # ( \inst8|inst130|inst2|inst12~q\ & ( !\inst8|inst130|inst2|inst10~q\ & ( \inst8|inst130|inst2|inst100~q\ ) ) ) # ( !\inst8|inst130|inst2|inst12~q\ & ( 
-- !\inst8|inst130|inst2|inst10~q\ & ( (!\inst8|inst130|inst2|inst16~q\ & ((!\inst8|inst130|inst2|inst14~q\ & ((\inst8|inst130|inst20|inst14~q\))) # (\inst8|inst130|inst2|inst14~q\ & (\inst8|inst130|inst2|inst100~q\)))) # (\inst8|inst130|inst2|inst16~q\ & 
-- (((\inst8|inst130|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000011110000111100000000111111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datab => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst100~q\,
	datad => \inst8|inst130|inst20|ALT_INV_inst14~q\,
	datae => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	combout => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X31_Y32_N10
\inst|inst6|$00000|auto_generated|l1_w11_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst|inst6|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N11
\inst|inst3|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst4~q\);

-- Location: MLABCELL_X31_Y32_N8
\inst1|inst87|$00000|auto_generated|l1_w11_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst2|inst4~q\ & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst3|inst2|ALT_INV_inst4~q\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N9
\inst1|inst100|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst4~q\);

-- Location: MLABCELL_X31_Y35_N26
\inst8|inst70|$00000|auto_generated|l1_w11_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst4~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N27
\inst8|inst130|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst4~q\);

-- Location: MLABCELL_X31_Y35_N4
\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst8|inst130|inst2|inst10~q\ & ( (\inst8|inst130|inst2|inst4~q\ & (\inst8|inst130|inst2|inst12~q\ & \inst8|inst130|inst2|inst14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst130|inst2|ALT_INV_inst4~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	combout => \inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y35_N36
\inst36|inst15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst15~0_combout\ = ( !\inst1|inst100|inst20|inst12~q\ & ( (!\inst1|inst100|inst20|inst10~q\ & !\inst1|inst100|inst2|inst100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst100~q\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	combout => \inst36|inst15~0_combout\);

-- Location: LABCELL_X30_Y33_N18
\inst28|inst1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst28|inst1~0_combout\ = ( \inst1|inst100|inst2|inst14~q\ & ( !\inst1|inst100|inst2|inst10~q\ ) ) # ( !\inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst2|inst16~q\) # (\inst1|inst100|inst2|inst12~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst28|inst1~0_combout\);

-- Location: LABCELL_X30_Y35_N38
\inst36|inst10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst10~0_combout\ = ( !\inst28|inst1~0_combout\ & ( (!\inst36|inst15~0_combout\ & (!\inst1|inst100|inst2|inst100~q\ $ (((\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- (\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001100000000100100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datab => \inst1|inst100|inst2|ALT_INV_inst100~q\,
	datac => \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst36|ALT_INV_inst15~0_combout\,
	dataf => \inst28|ALT_INV_inst1~0_combout\,
	combout => \inst36|inst10~0_combout\);

-- Location: FF_X29_Y35_N39
\inst10|inst100|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst2~q\);

-- Location: FF_X29_Y35_N13
\inst10|inst100|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst12~q\);

-- Location: FF_X29_Y35_N3
\inst10|inst100|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst10~q\);

-- Location: FF_X29_Y35_N1
\inst10|inst100|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst16~q\);

-- Location: FF_X29_Y35_N21
\inst10|inst100|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst14~q\);

-- Location: MLABCELL_X29_Y35_N22
\inst16|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst16|inst4~combout\ = ( \inst10|inst100|inst2|inst14~q\ & ( !\inst10|inst100|inst2|inst10~q\ ) ) # ( !\inst10|inst100|inst2|inst14~q\ & ( (!\inst10|inst100|inst2|inst10~q\ & ((\inst10|inst100|inst2|inst16~q\) # (\inst10|inst100|inst2|inst12~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst16~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst16|inst4~combout\);

-- Location: FF_X29_Y35_N19
\inst10|inst100|inst20|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst12~q\);

-- Location: FF_X29_Y35_N15
\inst10|inst100|inst20|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst4~q\);

-- Location: MLABCELL_X29_Y35_N2
\inst15|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst15|inst~combout\ = ( \inst10|inst100|inst2|inst14~q\ & ( (\inst10|inst100|inst2|inst12~q\ & \inst10|inst100|inst2|inst10~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst15|inst~combout\);

-- Location: MLABCELL_X29_Y35_N14
\inst36|inst6|inst|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst6|inst|inst1~combout\ = ( \inst10|inst100|inst20|inst4~q\ & ( \inst15|inst~combout\ & ( !\inst10|inst100|inst2|inst2~q\ $ (!\inst1|inst100|inst20|inst12~q\) ) ) ) # ( !\inst10|inst100|inst20|inst4~q\ & ( \inst15|inst~combout\ & ( 
-- !\inst10|inst100|inst2|inst2~q\ $ (!\inst1|inst100|inst20|inst12~q\) ) ) ) # ( \inst10|inst100|inst20|inst4~q\ & ( !\inst15|inst~combout\ & ( !\inst1|inst100|inst20|inst12~q\ $ (((\inst16|inst4~combout\ & !\inst10|inst100|inst20|inst12~q\))) ) ) ) # ( 
-- !\inst10|inst100|inst20|inst4~q\ & ( !\inst15|inst~combout\ & ( !\inst1|inst100|inst20|inst12~q\ $ (((!\inst16|inst4~combout\) # (!\inst10|inst100|inst20|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100110000111100110001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	datac => \inst16|ALT_INV_inst4~combout\,
	datad => \inst10|inst100|inst20|ALT_INV_inst12~q\,
	datae => \inst10|inst100|inst20|ALT_INV_inst4~q\,
	dataf => \inst15|ALT_INV_inst~combout\,
	combout => \inst36|inst6|inst|inst1~combout\);

-- Location: FF_X29_Y35_N35
\inst10|inst100|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst100~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst100~q\);

-- Location: FF_X29_Y35_N17
\inst10|inst100|inst20|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst14~q\);

-- Location: MLABCELL_X29_Y35_N34
\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ = ( \inst10|inst100|inst2|inst100~q\ & ( \inst10|inst100|inst20|inst14~q\ & ( (!\inst10|inst100|inst2|inst12~q\) # ((!\inst10|inst100|inst2|inst10~q\) # (!\inst10|inst100|inst2|inst14~q\)) ) ) 
-- ) # ( !\inst10|inst100|inst2|inst100~q\ & ( \inst10|inst100|inst20|inst14~q\ & ( (!\inst10|inst100|inst2|inst12~q\ & (((!\inst10|inst100|inst2|inst16~q\ & !\inst10|inst100|inst2|inst14~q\)) # (\inst10|inst100|inst2|inst10~q\))) # 
-- (\inst10|inst100|inst2|inst12~q\ & (((\inst10|inst100|inst2|inst10~q\ & !\inst10|inst100|inst2|inst14~q\)))) ) ) ) # ( \inst10|inst100|inst2|inst100~q\ & ( !\inst10|inst100|inst20|inst14~q\ & ( (!\inst10|inst100|inst2|inst10~q\ & 
-- (((\inst10|inst100|inst2|inst14~q\) # (\inst10|inst100|inst2|inst12~q\)) # (\inst10|inst100|inst2|inst16~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100001111000010001111000011001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst16~q\,
	datab => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst10|inst100|inst2|ALT_INV_inst100~q\,
	dataf => \inst10|inst100|inst20|ALT_INV_inst14~q\,
	combout => \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\);

-- Location: FF_X29_Y35_N37
\inst10|inst100|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst4~q\);

-- Location: MLABCELL_X29_Y35_N16
\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst10|inst100|inst2|inst10~q\ & ( (\inst10|inst100|inst2|inst4~q\ & (\inst10|inst100|inst2|inst14~q\ & \inst10|inst100|inst2|inst12~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst100|inst2|ALT_INV_inst4~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y35_N4
\inst36|inst11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst11~0_combout\ = ( \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\inst1|inst100|inst2|inst100~q\ & (!\inst28|inst1~0_combout\ & !\inst36|inst15~0_combout\)) ) ) # ( 
-- !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst28|inst1~0_combout\ & (!\inst36|inst15~0_combout\ & (!\inst1|inst100|inst2|inst100~q\ $ (\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst100~q\,
	datab => \inst28|ALT_INV_inst1~0_combout\,
	datac => \inst36|ALT_INV_inst15~0_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst36|inst11~0_combout\);

-- Location: FF_X29_Y35_N25
\inst10|inst100|inst20|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst2~q\);

-- Location: FF_X29_Y35_N5
\inst10|inst100|inst20|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst100~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst100~q\);

-- Location: FF_X29_Y35_N9
\inst10|inst100|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst3~q\);

-- Location: MLABCELL_X29_Y35_N8
\inst17|inst3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst17|inst3~1_combout\ = ( !\inst10|inst100|inst2|inst14~q\ & ( ((\inst10|inst100|inst20|inst2~q\ & (\inst10|inst100|inst20|inst100~q\ & \inst10|inst100|inst20|inst3~q\))) # (\inst10|inst100|inst2|inst16~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst20|ALT_INV_inst2~q\,
	datab => \inst10|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst10|inst100|inst20|ALT_INV_inst100~q\,
	datad => \inst10|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst17|inst3~1_combout\);

-- Location: FF_X29_Y35_N27
\inst10|inst100|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst2|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst2|inst3~q\);

-- Location: MLABCELL_X29_Y35_N6
\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst10|inst100|inst2|inst12~q\ & ( \inst10|inst100|inst2|inst10~q\ & ( (\inst10|inst100|inst2|inst3~q\ & \inst10|inst100|inst2|inst14~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst100|inst2|ALT_INV_inst3~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y35_N24
\inst17|inst3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst17|inst3~0_combout\ = ( \inst10|inst100|inst2|inst14~q\ & ( (\inst10|inst100|inst2|inst16~q\ & \inst10|inst100|inst2|inst12~q\) ) ) # ( !\inst10|inst100|inst2|inst14~q\ & ( (!\inst10|inst100|inst2|inst10~q\ & \inst10|inst100|inst2|inst12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst17|inst3~0_combout\);

-- Location: MLABCELL_X31_Y35_N6
\inst8|inst70|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst20|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N7
\inst8|inst130|inst20|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst10~q\);

-- Location: FF_X29_Y35_N33
\inst10|inst100|inst20|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst10~q\);

-- Location: MLABCELL_X29_Y35_N18
\inst8|inst70|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = (\inst1|inst100|inst20|inst16~q\ & \inst37~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	datac => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y35_N23
\inst8|inst130|inst20|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst70|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst20|inst16~q\);

-- Location: FF_X29_Y35_N11
\inst10|inst100|inst20|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \inst8|inst130|inst20|inst16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst100|inst20|inst16~q\);

-- Location: MLABCELL_X29_Y35_N32
\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ = ( \inst10|inst100|inst20|inst10~q\ & ( \inst10|inst100|inst20|inst16~q\ & ( (!\inst10|inst100|inst2|inst12~q\) # ((!\inst10|inst100|inst2|inst14~q\) # (!\inst10|inst100|inst2|inst10~q\)) ) ) 
-- ) # ( !\inst10|inst100|inst20|inst10~q\ & ( \inst10|inst100|inst20|inst16~q\ & ( (!\inst10|inst100|inst2|inst12~q\ & (((!\inst10|inst100|inst2|inst16~q\ & !\inst10|inst100|inst2|inst14~q\)) # (\inst10|inst100|inst2|inst10~q\))) # 
-- (\inst10|inst100|inst2|inst12~q\ & (((!\inst10|inst100|inst2|inst14~q\ & \inst10|inst100|inst2|inst10~q\)))) ) ) ) # ( \inst10|inst100|inst20|inst10~q\ & ( !\inst10|inst100|inst20|inst16~q\ & ( (!\inst10|inst100|inst2|inst10~q\ & 
-- (((\inst10|inst100|inst2|inst14~q\) # (\inst10|inst100|inst2|inst12~q\)) # (\inst10|inst100|inst2|inst16~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110000000010000000111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst16~q\,
	datab => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	datae => \inst10|inst100|inst20|ALT_INV_inst10~q\,
	dataf => \inst10|inst100|inst20|ALT_INV_inst16~q\,
	combout => \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X29_Y35_N20
\inst17|inst3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst17|inst3~2_combout\ = (!\inst10|inst100|inst2|inst12~q\ & !\inst10|inst100|inst2|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst10|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst17|inst3~2_combout\);

-- Location: MLABCELL_X29_Y35_N30
\inst36|inst11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst36|inst11~1_combout\ = ( \inst17|inst3~2_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( (!\inst17|inst3~1_combout\ & (((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\)) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) # (\inst17|inst3~1_combout\ & (\inst17|inst3~0_combout\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst17|inst3~2_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( (\inst17|inst3~0_combout\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst17|inst3~2_combout\ & ( !\inst1|inst100|inst20|inst10~q\ & ( (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & ((!\inst17|inst3~1_combout\) # (\inst17|inst3~0_combout\)))) ) ) ) # ( !\inst17|inst3~2_combout\ & ( !\inst1|inst100|inst20|inst10~q\ & ( 
-- (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst17|inst3~0_combout\ & !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000100011000000000000000011000011110010001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_inst3~1_combout\,
	datab => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst17|ALT_INV_inst3~0_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\,
	datae => \inst17|ALT_INV_inst3~2_combout\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	combout => \inst36|inst11~1_combout\);

-- Location: LABCELL_X30_Y35_N20
\inst37~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = ( \inst36|inst11~0_combout\ & ( \inst36|inst11~1_combout\ & ( (!\inst36|inst6|inst|inst1~combout\) # ((\inst36|inst10~1_combout\ & (!\inst36|inst|inst|inst1~combout\ & \inst36|inst10~0_combout\))) ) ) ) # ( !\inst36|inst11~0_combout\ 
-- & ( \inst36|inst11~1_combout\ & ( (\inst36|inst10~1_combout\ & (!\inst36|inst|inst|inst1~combout\ & \inst36|inst10~0_combout\)) ) ) ) # ( \inst36|inst11~0_combout\ & ( !\inst36|inst11~1_combout\ & ( (\inst36|inst10~1_combout\ & 
-- (!\inst36|inst|inst|inst1~combout\ & \inst36|inst10~0_combout\)) ) ) ) # ( !\inst36|inst11~0_combout\ & ( !\inst36|inst11~1_combout\ & ( (\inst36|inst10~1_combout\ & (!\inst36|inst|inst|inst1~combout\ & \inst36|inst10~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001001111111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|ALT_INV_inst10~1_combout\,
	datab => \inst36|inst|inst|ALT_INV_inst1~combout\,
	datac => \inst36|ALT_INV_inst10~0_combout\,
	datad => \inst36|inst6|inst|ALT_INV_inst1~combout\,
	datae => \inst36|ALT_INV_inst11~0_combout\,
	dataf => \inst36|ALT_INV_inst11~1_combout\,
	combout => \inst37~0_combout\);

-- Location: LABCELL_X32_Y34_N4
\inst1|inst3|inst4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst4~1_combout\ = ( \inst37~0_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( !\inst1|inst100|inst20|inst12~q\ ) ) ) # ( !\inst37~0_combout\ & ( \inst1|inst100|inst20|inst10~q\ & ( (!\inst37~1_combout\ & (((\inst|inst3|inst20|inst10~q\ & 
-- !\inst|inst3|inst20|inst12~q\)))) # (\inst37~1_combout\ & (!\inst1|inst100|inst20|inst12~q\)) ) ) ) # ( !\inst37~0_combout\ & ( !\inst1|inst100|inst20|inst10~q\ & ( (\inst|inst3|inst20|inst10~q\ & (!\inst37~1_combout\ & !\inst|inst3|inst20|inst12~q\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000111010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	datab => \inst|inst3|inst20|ALT_INV_inst10~q\,
	datac => \ALT_INV_inst37~1_combout\,
	datad => \inst|inst3|inst20|ALT_INV_inst12~q\,
	datae => \ALT_INV_inst37~0_combout\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	combout => \inst1|inst3|inst4~1_combout\);

-- Location: MLABCELL_X31_Y34_N26
\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst37~0_combout\ & ( \inst1|inst100|inst2|inst100~q\ ) ) # ( !\inst37~0_combout\ & ( (!\inst37~1_combout\ & (\inst|inst3|inst2|inst100~q\)) # (\inst37~1_combout\ & 
-- ((\inst1|inst100|inst2|inst100~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst100~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst100~q\,
	datac => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y34_N28
\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst37~1_combout\ & ( \inst1|inst100|inst20|inst10~q\ ) ) # ( !\inst37~1_combout\ & ( (!\inst37~0_combout\ & ((\inst|inst3|inst20|inst10~q\))) # (\inst37~0_combout\ & 
-- (\inst1|inst100|inst20|inst10~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst20|ALT_INV_inst10~q\,
	datac => \ALT_INV_inst37~0_combout\,
	datad => \inst|inst3|inst20|ALT_INV_inst10~q\,
	dataf => \ALT_INV_inst37~1_combout\,
	combout => \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y34_N18
\inst1|inst3|inst4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst4~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst37~combout\ & (!\inst1|inst100|inst20|inst12~q\)) # (\inst37~combout\ & 
-- ((!\inst|inst3|inst20|inst12~q\))))) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst37~combout\ & (!\inst1|inst100|inst20|inst12~q\)) # (\inst37~combout\ & ((!\inst|inst3|inst20|inst12~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100101011001010110000000000101011000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	datab => \inst|inst3|inst20|ALT_INV_inst12~q\,
	datac => \ALT_INV_inst37~combout\,
	datad => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst4~0_combout\);

-- Location: MLABCELL_X34_Y35_N4
\inst33|inst|26\ : arriaii_lcell_comb
-- Equation(s):
-- \inst33|inst|26~combout\ = ( \inst8|inst130|inst2|inst14~q\ & ( \inst8|inst130|inst2|inst12~q\ & ( (!\inst8|inst130|inst2|inst16~q\) # (\inst8|inst130|inst2|inst10~q\) ) ) ) # ( !\inst8|inst130|inst2|inst14~q\ & ( \inst8|inst130|inst2|inst12~q\ ) ) # ( 
-- \inst8|inst130|inst2|inst14~q\ & ( !\inst8|inst130|inst2|inst12~q\ ) ) # ( !\inst8|inst130|inst2|inst14~q\ & ( !\inst8|inst130|inst2|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	datae => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	combout => \inst33|inst|26~combout\);

-- Location: FF_X32_Y32_N17
\inst10|inst99|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[0]~7_combout\,
	asdata => \inst8|inst4|inst100~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst100~q\);

-- Location: LABCELL_X32_Y32_N18
\inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\inst15|inst~combout\ & ((\inst10|inst99|inst100~q\))) # (\inst15|inst~combout\ & (!\inst10|inst4|inst100~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst15|ALT_INV_inst~combout\,
	datac => \inst10|inst4|ALT_INV_inst100~q\,
	datad => \inst10|inst99|ALT_INV_inst100~q\,
	combout => \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y35_N26
\inst17|inst3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst17|inst3~3_combout\ = ( \inst17|inst3~2_combout\ & ( (!\inst17|inst3~0_combout\ & \inst17|inst3~1_combout\) ) ) # ( !\inst17|inst3~2_combout\ & ( !\inst17|inst3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_inst3~0_combout\,
	datad => \inst17|ALT_INV_inst3~1_combout\,
	dataf => \inst17|ALT_INV_inst3~2_combout\,
	combout => \inst17|inst3~3_combout\);

-- Location: LABCELL_X27_Y35_N32
\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst15|inst~combout\ & ( \inst10|inst100|inst20|inst4~q\ & ( \inst10|inst100|inst2|inst2~q\ ) ) ) # ( !\inst15|inst~combout\ & ( \inst10|inst100|inst20|inst4~q\ & ( 
-- (!\inst16|inst4~combout\) # (\inst10|inst100|inst20|inst12~q\) ) ) ) # ( \inst15|inst~combout\ & ( !\inst10|inst100|inst20|inst4~q\ & ( \inst10|inst100|inst2|inst2~q\ ) ) ) # ( !\inst15|inst~combout\ & ( !\inst10|inst100|inst20|inst4~q\ & ( 
-- (\inst16|inst4~combout\ & \inst10|inst100|inst20|inst12~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101010111110000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst100|inst2|ALT_INV_inst2~q\,
	datac => \inst16|ALT_INV_inst4~combout\,
	datad => \inst10|inst100|inst20|ALT_INV_inst12~q\,
	datae => \inst15|ALT_INV_inst~combout\,
	dataf => \inst10|inst100|inst20|ALT_INV_inst4~q\,
	combout => \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y35_N0
\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ = ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X27_Y35_N14
\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ = ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X27_Y35_N38
\inst1|inst1|inst4|29~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~5_combout\ = ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (!\inst17|inst3~3_combout\ & 
-- !\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst17|ALT_INV_inst3~3_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~5_combout\);

-- Location: CLKCTRL_G10
\inst1|inst1|inst4|29~5clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~5clkctrl_outclk\);

-- Location: MLABCELL_X29_Y34_N2
\inst1|inst1|inst40|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst40|ALT_INV_inst~combout\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst~combout\);

-- Location: LABCELL_X27_Y35_N18
\inst1|inst1|inst4|29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~1_combout\ = ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & ( \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (!\inst17|inst3~3_combout\ & 
-- !\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst17|ALT_INV_inst3~3_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~1_combout\);

-- Location: CLKCTRL_G15
\inst1|inst1|inst4|29~1clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~1clkctrl_outclk\);

-- Location: MLABCELL_X29_Y34_N6
\inst1|inst1|inst33|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst1|inst1|inst33|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst~combout\);

-- Location: LABCELL_X27_Y35_N4
\inst1|inst1|inst4|29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~4_combout\ = ( !\inst17|inst3~3_combout\ & ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	datae => \inst17|ALT_INV_inst3~3_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~4_combout\);

-- Location: CLKCTRL_G3
\inst1|inst1|inst4|29~4clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~4clkctrl_outclk\);

-- Location: MLABCELL_X34_Y34_N6
\inst1|inst1|inst39|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ((\inst1|inst1|inst39|inst~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst39|ALT_INV_inst~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	combout => \inst1|inst1|inst39|inst~combout\);

-- Location: LABCELL_X27_Y35_N30
\inst1|inst1|inst4|29~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~6_combout\ = ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- !\inst17|inst3~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst17|ALT_INV_inst3~3_combout\,
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~6_combout\);

-- Location: CLKCTRL_G2
\inst1|inst1|inst4|29~6clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~6clkctrl_outclk\);

-- Location: MLABCELL_X34_Y34_N4
\inst1|inst1|inst41|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst~combout\ = ( \inst1|inst1|inst41|inst~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst41|inst~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst41|ALT_INV_inst~combout\,
	combout => \inst1|inst1|inst41|inst~combout\);

-- Location: LABCELL_X27_Y35_N24
\inst1|inst1|inst4|29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~2_combout\ = ( \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\clk~input_o\ & (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & 
-- !\inst17|inst3~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	datad => \inst17|ALT_INV_inst3~3_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~2_combout\);

-- Location: CLKCTRL_G5
\inst1|inst1|inst4|29~2clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~2clkctrl_outclk\);

-- Location: MLABCELL_X34_Y34_N30
\inst1|inst1|inst35|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst1|inst1|inst35|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	combout => \inst1|inst1|inst35|inst~combout\);

-- Location: LABCELL_X27_Y35_N8
\inst1|inst1|inst4|29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~0_combout\ = ( \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & ( \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- !\inst17|inst3~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst17|ALT_INV_inst3~3_combout\,
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~0_combout\);

-- Location: CLKCTRL_G6
\inst1|inst1|inst4|29~0clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~0clkctrl_outclk\);

-- Location: MLABCELL_X34_Y34_N28
\inst1|inst1|inst32|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst1|inst1|inst32|inst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	combout => \inst1|inst1|inst32|inst~combout\);

-- Location: MLABCELL_X34_Y34_N22
\inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst~combout\ & ( \inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst~combout\ & ( \inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst41|inst~combout\))))) ) ) ) # ( \inst1|inst1|inst35|inst~combout\ & ( !\inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (((\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst~combout\)) 
-- # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst~combout\))))) ) ) ) # ( !\inst1|inst1|inst35|inst~combout\ & ( !\inst1|inst1|inst32|inst~combout\ & ( 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst41|inst~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datab => \inst1|inst1|inst39|ALT_INV_inst~combout\,
	datac => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst41|ALT_INV_inst~combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst~combout\,
	combout => \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y35_N22
\inst1|inst1|inst4|29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|29~3_combout\ = ( \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~2_combout\ & ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ( (\clk~input_o\ & (!\inst17|inst3~3_combout\ & 
-- !\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \inst17|ALT_INV_inst3~3_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~2_combout\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	combout => \inst1|inst1|inst4|29~3_combout\);

-- Location: CLKCTRL_G14
\inst1|inst1|inst4|29~3clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst1|inst4|29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst1|inst4|29~3clkctrl_outclk\);

-- Location: MLABCELL_X29_Y34_N18
\inst1|inst1|inst36|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ((\inst1|inst1|inst36|inst~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	datad => \inst1|inst1|inst36|ALT_INV_inst~combout\,
	combout => \inst1|inst1|inst36|inst~combout\);

-- Location: MLABCELL_X34_Y34_N12
\inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst36|inst~combout\ & ( (!\inst1|inst3|inst4~1_combout\) # 
-- ((!\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst33|inst~combout\))) # (\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst40|inst~combout\))) ) ) ) # ( !\inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst36|inst~combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (\inst1|inst3|inst4~0_combout\)) # (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst33|inst~combout\))) # (\inst1|inst3|inst4~0_combout\ & 
-- (\inst1|inst1|inst40|inst~combout\)))) ) ) ) # ( \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst36|inst~combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (!\inst1|inst3|inst4~0_combout\)) # 
-- (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst33|inst~combout\))) # (\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst40|inst~combout\)))) ) ) ) # ( 
-- !\inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst36|inst~combout\ & ( (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst33|inst~combout\))) # 
-- (\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst40|inst~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst~combout\,
	datad => \inst1|inst1|inst33|ALT_INV_inst~combout\,
	datae => \inst1|inst3|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst36|ALT_INV_inst~combout\,
	combout => \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X31_Y34_N6
\inst1|inst3|inst4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst4~2_combout\ = ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst37~combout\ & (!\inst1|inst100|inst20|inst12~q\)) # (\inst37~combout\ 
-- & ((!\inst|inst3|inst20|inst12~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011000000101000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst12~q\,
	datab => \inst|inst3|inst20|ALT_INV_inst12~q\,
	datac => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_inst37~combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst4~2_combout\);

-- Location: FF_X34_Y34_N13
\inst1|inst3|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst100~q\);

-- Location: MLABCELL_X26_Y32_N20
\inst8|inst100|inst|inst|inst3|5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|5~1_combout\ = ( \inst1|inst3|inst100~q\ & ( ((!\inst1|inst100|inst2|inst14~q\ & (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst12~q\))) # (\inst1|inst100|inst20|inst100~q\) ) ) # ( !\inst1|inst3|inst100~q\ & ( 
-- (\inst1|inst100|inst20|inst100~q\ & (((\inst1|inst100|inst2|inst12~q\) # (\inst1|inst100|inst2|inst16~q\)) # (\inst1|inst100|inst2|inst14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111110001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst1|inst3|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst|inst|inst3|5~1_combout\);

-- Location: MLABCELL_X26_Y32_N10
\inst8|inst100|inst|inst|inst3|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|5~0_combout\ = ( \inst9|inst|inst7|inst4|5~1_combout\ & ( \inst8|inst100|inst|inst|inst3|5~1_combout\ & ( (!\inst1|inst2|inst100~q\ & ((!\inst9|inst|inst7|inst4|5~0_combout\) # ((\inst1|inst100|inst2|inst10~q\ & 
-- !\inst1|inst3|inst100~q\)))) # (\inst1|inst2|inst100~q\ & (\inst1|inst100|inst2|inst10~q\ & (!\inst1|inst3|inst100~q\ & !\inst9|inst|inst7|inst4|5~0_combout\))) ) ) ) # ( !\inst9|inst|inst7|inst4|5~1_combout\ & ( 
-- \inst8|inst100|inst|inst|inst3|5~1_combout\ & ( (!\inst1|inst2|inst100~q\ & (\inst1|inst100|inst2|inst10~q\ & !\inst1|inst3|inst100~q\)) ) ) ) # ( \inst9|inst|inst7|inst4|5~1_combout\ & ( !\inst8|inst100|inst|inst|inst3|5~1_combout\ & ( 
-- (!\inst1|inst2|inst100~q\ & ((!\inst1|inst100|inst2|inst10~q\) # ((!\inst1|inst3|inst100~q\) # (!\inst9|inst|inst7|inst4|5~0_combout\)))) # (\inst1|inst2|inst100~q\ & (!\inst9|inst|inst7|inst4|5~0_combout\ & ((!\inst1|inst100|inst2|inst10~q\) # 
-- (!\inst1|inst3|inst100~q\)))) ) ) ) # ( !\inst9|inst|inst7|inst4|5~1_combout\ & ( !\inst8|inst100|inst|inst|inst3|5~1_combout\ & ( (!\inst1|inst2|inst100~q\ & ((!\inst1|inst100|inst2|inst10~q\) # (!\inst1|inst3|inst100~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000111111101010100000100000001000001011101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst100~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datac => \inst1|inst3|ALT_INV_inst100~q\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst8|inst100|inst|inst|inst3|ALT_INV_5~1_combout\,
	combout => \inst8|inst100|inst|inst|inst3|5~0_combout\);

-- Location: MLABCELL_X26_Y33_N18
\inst8|inst100|inst|inst7|inst3|6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|6~1_combout\ = ( \inst9|inst|inst7|inst4|5~1_combout\ & ( \inst9|inst|inst7|inst4|5~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~0_combout\) # (\inst9|inst|inst7|inst3|6~0_combout\) ) ) ) # ( 
-- !\inst9|inst|inst7|inst4|5~1_combout\ & ( \inst9|inst|inst7|inst4|5~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~0_combout\) # (\inst9|inst|inst7|inst3|6~0_combout\) ) ) ) # ( \inst9|inst|inst7|inst4|5~1_combout\ & ( !\inst9|inst|inst7|inst4|5~0_combout\ & 
-- ( ((!\inst9|inst|inst7|inst4|6~0_combout\) # ((\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\))) # (\inst9|inst|inst7|inst3|6~0_combout\) ) ) ) # ( !\inst9|inst|inst7|inst4|5~1_combout\ & ( 
-- !\inst9|inst|inst7|inst4|5~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~0_combout\) # (\inst9|inst|inst7|inst3|6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111101111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datab => \inst9|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_6~0_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|6~1_combout\);

-- Location: LABCELL_X24_Y33_N6
\inst8|inst100|inst1|and~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|and~1_combout\ = ( \inst9|inst|inst7|inst4|5~2_combout\ & ( \inst9|inst|inst7|inst4|11~2_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & !\inst8|inst100|inst1|and~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datad => \inst8|inst100|inst1|ALT_INV_and~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	combout => \inst8|inst100|inst1|and~1_combout\);

-- Location: MLABCELL_X29_Y34_N28
\inst1|inst1|inst36|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst1~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ((\inst1|inst1|inst36|inst1~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst36|ALT_INV_inst1~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	combout => \inst1|inst1|inst36|inst1~combout\);

-- Location: MLABCELL_X31_Y33_N30
\inst1|inst1|inst33|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst1~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ((\inst1|inst1|inst33|inst1~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	datad => \inst1|inst1|inst33|ALT_INV_inst1~combout\,
	combout => \inst1|inst1|inst33|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N12
\inst1|inst1|inst39|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst1~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst1|inst1|inst39|inst1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst39|ALT_INV_inst1~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	combout => \inst1|inst1|inst39|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N14
\inst1|inst1|inst41|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst1~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst1|inst1|inst41|inst1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst1~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N0
\inst1|inst1|inst32|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst1~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst1|inst1|inst32|inst1~combout\ & ( \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( 
-- \inst1|inst1|inst32|inst1~combout\ ) ) # ( GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( !\inst1|inst1|inst32|inst1~combout\ & ( \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst1~combout\,
	combout => \inst1|inst1|inst32|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N24
\inst1|inst1|inst35|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst1~combout\ = ( \inst1|inst1|inst35|inst1~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst35|inst1~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst35|ALT_INV_inst1~combout\,
	combout => \inst1|inst1|inst35|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N38
\inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst1~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst1~combout\ ) ) ) # ( 
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst1~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ 
-- & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst1~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst1~combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst1~combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst1~combout\,
	datae => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y34_N34
\inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst33|inst1~combout\ & ( \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~0_combout\) # 
-- ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst1~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst1~combout\)))) ) ) ) # ( !\inst1|inst1|inst33|inst1~combout\ & ( 
-- \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~0_combout\ & (!\inst1|inst3|inst4~1_combout\)) # (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & 
-- (\inst1|inst1|inst36|inst1~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst1~combout\))))) ) ) ) # ( \inst1|inst1|inst33|inst1~combout\ & ( !\inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst3|inst4~0_combout\ & (\inst1|inst3|inst4~1_combout\)) # (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst1~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst1~combout\))))) ) ) 
-- ) # ( !\inst1|inst1|inst33|inst1~combout\ & ( !\inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst1~combout\)) # 
-- (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst1~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datab => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datac => \inst1|inst1|inst36|ALT_INV_inst1~combout\,
	datad => \inst1|inst1|inst40|ALT_INV_inst1~combout\,
	datae => \inst1|inst1|inst33|ALT_INV_inst1~combout\,
	dataf => \inst1|inst3|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X31_Y34_N35
\inst1|inst3|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst2~q\);

-- Location: MLABCELL_X26_Y33_N38
\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst2~q\ & ( \inst1|inst3|inst2~q\ ) ) # ( !\inst1|inst100|inst20|inst2~q\ & ( \inst1|inst3|inst2~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst14~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst2~q\ & ( !\inst1|inst3|inst2~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst14~q\) # 
-- (\inst1|inst100|inst2|inst16~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100001111000010001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	dataf => \inst1|inst3|ALT_INV_inst2~q\,
	combout => \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y32_N30
\inst8|inst100|inst|inst|inst3|6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|6~1_combout\ = ( \inst1|inst100|inst20|inst2~q\ & ( \inst1|inst3|inst2~q\ ) ) # ( !\inst1|inst100|inst20|inst2~q\ & ( \inst1|inst3|inst2~q\ & ( (!\inst1|inst100|inst2|inst16~q\ & (!\inst1|inst100|inst2|inst12~q\ & 
-- !\inst1|inst100|inst2|inst14~q\)) ) ) ) # ( \inst1|inst100|inst20|inst2~q\ & ( !\inst1|inst3|inst2~q\ & ( ((\inst1|inst100|inst2|inst14~q\) # (\inst1|inst100|inst2|inst12~q\)) # (\inst1|inst100|inst2|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111111000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	dataf => \inst1|inst3|ALT_INV_inst2~q\,
	combout => \inst8|inst100|inst|inst|inst3|6~1_combout\);

-- Location: MLABCELL_X26_Y32_N16
\inst8|inst100|inst|inst|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|6~0_combout\ = ( \inst8|inst100|inst|inst|inst3|6~1_combout\ & ( \inst1|inst3|inst2~q\ & ( (!\inst9|inst|inst7|inst4|5~1_combout\) # ((\inst9|inst|inst7|inst4|5~0_combout\) # (\inst1|inst2|inst2~q\)) ) ) ) # ( 
-- !\inst8|inst100|inst|inst|inst3|6~1_combout\ & ( \inst1|inst3|inst2~q\ & ( (!\inst1|inst2|inst2~q\ & (\inst1|inst100|inst2|inst10~q\ & ((!\inst9|inst|inst7|inst4|5~1_combout\) # (\inst9|inst|inst7|inst4|5~0_combout\)))) # (\inst1|inst2|inst2~q\ & 
-- ((!\inst9|inst|inst7|inst4|5~1_combout\) # ((\inst1|inst100|inst2|inst10~q\) # (\inst9|inst|inst7|inst4|5~0_combout\)))) ) ) ) # ( \inst8|inst100|inst|inst|inst3|6~1_combout\ & ( !\inst1|inst3|inst2~q\ & ( (!\inst1|inst2|inst2~q\ & 
-- (!\inst1|inst100|inst2|inst10~q\ & ((!\inst9|inst|inst7|inst4|5~1_combout\) # (\inst9|inst|inst7|inst4|5~0_combout\)))) # (\inst1|inst2|inst2~q\ & ((!\inst9|inst|inst7|inst4|5~1_combout\) # ((!\inst1|inst100|inst2|inst10~q\) # 
-- (\inst9|inst|inst7|inst4|5~0_combout\)))) ) ) ) # ( !\inst8|inst100|inst|inst|inst3|6~1_combout\ & ( !\inst1|inst3|inst2~q\ & ( (\inst1|inst2|inst2~q\ & ((!\inst9|inst|inst7|inst4|5~1_combout\) # (\inst9|inst|inst7|inst4|5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011101111110010001100100011101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datab => \inst1|inst2|ALT_INV_inst2~q\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datae => \inst8|inst100|inst|inst|inst3|ALT_INV_6~1_combout\,
	dataf => \inst1|inst3|ALT_INV_inst2~q\,
	combout => \inst8|inst100|inst|inst|inst3|6~0_combout\);

-- Location: MLABCELL_X26_Y33_N36
\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst100~q\ & ( \inst1|inst3|inst100~q\ ) ) # ( !\inst1|inst100|inst20|inst100~q\ & ( \inst1|inst3|inst100~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst14~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst100~q\ & ( !\inst1|inst3|inst100~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst14~q\) # 
-- (\inst1|inst100|inst2|inst16~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110000000010000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	dataf => \inst1|inst3|ALT_INV_inst100~q\,
	combout => \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y32_N14
\inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst1|inst2|inst100~q\ $ (!\inst1|inst2|inst2~q\ $ (((\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\)))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst100~q\ $ (!\inst1|inst2|inst2~q\ $ (((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\)))) ) ) ) # ( 
-- \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst2~q\ ) ) ) # ( !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111110011010011001010110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst100~q\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datad => \inst1|inst2|ALT_INV_inst2~q\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X23_Y33_N38
\inst8|inst100|inst1|counter|X~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~7_combout\ = ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( !\inst8|inst100|inst1|and~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|counter|X~7_combout\);

-- Location: FF_X23_Y33_N39
\inst8|inst100|inst1|counter|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst100~q\);

-- Location: MLABCELL_X23_Y33_N0
\inst8|inst100|inst1|counter|X~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~6_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst2~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|counter|inst2|inst100~q\ ) ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst2~q\ & ( 
-- !\inst8|inst100|inst1|and~1_combout\ & ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|counter|X~6_combout\);

-- Location: FF_X23_Y33_N1
\inst8|inst100|inst1|counter|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst2~q\);

-- Location: MLABCELL_X23_Y33_N24
\inst8|inst100|inst1|counter|X~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~4_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst3~q\ & ( \inst8|inst100|inst1|counter|inst2|inst100~q\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst8|inst100|inst1|counter|inst2|inst3~q\ & ( 
-- !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( (\inst8|inst100|inst1|counter|inst2|inst2~q\ & !\inst8|inst100|inst1|and~1_combout\) ) ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst3~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( 
-- (!\inst8|inst100|inst1|counter|inst2|inst2~q\ & !\inst8|inst100|inst1|and~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\,
	datad => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst3~q\,
	dataf => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|counter|X~4_combout\);

-- Location: FF_X23_Y33_N25
\inst8|inst100|inst1|counter|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst3~q\);

-- Location: MLABCELL_X23_Y33_N14
\inst8|inst100|inst1|counter|X~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~5_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst4~q\ & ( \inst8|inst100|inst1|counter|inst2|inst100~q\ ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst4~q\ & ( \inst8|inst100|inst1|counter|inst2|inst100~q\ & ( 
-- \inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst8|inst100|inst1|counter|inst2|inst4~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( ((\inst8|inst100|inst1|counter|inst2|inst2~q\) # (\inst8|inst100|inst1|and~1_combout\)) # 
-- (\inst8|inst100|inst1|counter|inst2|inst3~q\) ) ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst4~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( ((!\inst8|inst100|inst1|counter|inst2|inst3~q\ & !\inst8|inst100|inst1|counter|inst2|inst2~q\)) # 
-- (\inst8|inst100|inst1|and~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100110011011101111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst3~q\,
	datab => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datad => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst4~q\,
	dataf => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|counter|X~5_combout\);

-- Location: FF_X23_Y33_N15
\inst8|inst100|inst1|counter|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst4~q\);

-- Location: MLABCELL_X23_Y33_N32
\inst8|inst100|inst1|inst24|inst1|inst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst24|inst1|inst~0_combout\ = ( !\inst8|inst100|inst1|counter|inst2|inst2~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst100~q\ & ( (!\inst8|inst100|inst1|counter|inst2|inst4~q\ & !\inst8|inst100|inst1|counter|inst2|inst3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst4~q\,
	datac => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst3~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst2~q\,
	dataf => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|inst24|inst1|inst~0_combout\);

-- Location: MLABCELL_X23_Y33_N22
\inst8|inst100|inst1|counter|X~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~3_combout\ = ( !\inst8|inst100|inst1|counter|inst2|inst16~q\ & ( \inst8|inst100|inst1|inst24|inst1|inst~0_combout\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst8|inst100|inst1|counter|inst2|inst16~q\ & ( 
-- !\inst8|inst100|inst1|inst24|inst1|inst~0_combout\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\,
	dataf => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	combout => \inst8|inst100|inst1|counter|X~3_combout\);

-- Location: FF_X23_Y33_N23
\inst8|inst100|inst1|counter|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst16~q\);

-- Location: MLABCELL_X23_Y33_N18
\inst8|inst100|inst1|counter|X~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~2_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst14~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (!\inst8|inst100|inst1|inst24|inst1|inst~0_combout\) # (\inst8|inst100|inst1|counter|inst2|inst16~q\) ) ) ) # ( 
-- !\inst8|inst100|inst1|counter|inst2|inst14~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (\inst8|inst100|inst1|inst24|inst1|inst~0_combout\ & !\inst8|inst100|inst1|counter|inst2|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101011111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datac => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|counter|X~2_combout\);

-- Location: FF_X23_Y33_N19
\inst8|inst100|inst1|counter|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst14~q\);

-- Location: MLABCELL_X23_Y33_N10
\inst8|inst100|inst1|counter|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~0_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst12~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (!\inst8|inst100|inst1|inst24|inst1|inst~0_combout\) # ((\inst8|inst100|inst1|counter|inst2|inst14~q\) # 
-- (\inst8|inst100|inst1|counter|inst2|inst16~q\)) ) ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst12~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (\inst8|inst100|inst1|inst24|inst1|inst~0_combout\ & (!\inst8|inst100|inst1|counter|inst2|inst16~q\ & 
-- !\inst8|inst100|inst1|counter|inst2|inst14~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000101110111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datab => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|counter|X~0_combout\);

-- Location: FF_X23_Y33_N11
\inst8|inst100|inst1|counter|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst12~q\);

-- Location: MLABCELL_X23_Y33_N6
\inst8|inst100|inst1|counter|X~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|counter|X~1_combout\ = ( \inst8|inst100|inst1|counter|inst2|inst10~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (!\inst8|inst100|inst1|inst24|inst1|inst~0_combout\) # (((\inst8|inst100|inst1|counter|inst2|inst14~q\) # 
-- (\inst8|inst100|inst1|counter|inst2|inst16~q\)) # (\inst8|inst100|inst1|counter|inst2|inst12~q\)) ) ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst10~q\ & ( !\inst8|inst100|inst1|and~1_combout\ & ( (\inst8|inst100|inst1|inst24|inst1|inst~0_combout\ & 
-- (!\inst8|inst100|inst1|counter|inst2|inst12~q\ & (!\inst8|inst100|inst1|counter|inst2|inst16~q\ & !\inst8|inst100|inst1|counter|inst2|inst14~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000101111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datab => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst12~q\,
	datac => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst10~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|counter|X~1_combout\);

-- Location: FF_X23_Y33_N7
\inst8|inst100|inst1|counter|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|counter|X~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|counter|inst2|inst10~q\);

-- Location: MLABCELL_X23_Y33_N28
\inst8|inst100|inst1|inst24|inst1|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst24|inst1|inst~combout\ = ( \inst8|inst100|inst1|counter|inst2|inst14~q\ & ( \inst8|inst100|inst1|counter|inst2|inst10~q\ ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst14~q\ & ( \inst8|inst100|inst1|counter|inst2|inst10~q\ ) ) # 
-- ( \inst8|inst100|inst1|counter|inst2|inst14~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst10~q\ ) ) # ( !\inst8|inst100|inst1|counter|inst2|inst14~q\ & ( !\inst8|inst100|inst1|counter|inst2|inst10~q\ & ( 
-- (!\inst8|inst100|inst1|inst24|inst1|inst~0_combout\) # ((\inst8|inst100|inst1|counter|inst2|inst12~q\) # (\inst8|inst100|inst1|counter|inst2|inst16~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datab => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst12~q\,
	datae => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst100|inst1|counter|inst2|ALT_INV_inst10~q\,
	combout => \inst8|inst100|inst1|inst24|inst1|inst~combout\);

-- Location: FF_X26_Y32_N1
\inst8|inst100|inst1|inst28|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst2~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst2~q\);

-- Location: MLABCELL_X26_Y32_N0
\inst8|inst100|inst|inst7|inst3|6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|6~2_combout\ = ( !\inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (((\inst8|inst100|inst1|inst28|inst2|inst2~q\)))) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- ((((\inst8|inst100|inst|inst|inst3|6~0_combout\))))) ) ) # ( \inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- ((((!\inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (!\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ $ 
-- ((!\inst1|inst2|inst2~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111101111101011111000001010010111110001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datab => \inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst2|ALT_INV_inst2~q\,
	datad => \inst8|inst100|inst|inst|inst3|ALT_INV_6~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datag => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst2~q\,
	combout => \inst8|inst100|inst|inst7|inst3|6~2_combout\);

-- Location: FF_X29_Y32_N11
\inst8|inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst2~q\);

-- Location: LABCELL_X27_Y33_N14
\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ = ( \inst1|inst100|inst2|inst12~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & \inst1|inst100|inst20|inst3~q\) ) ) # ( !\inst1|inst100|inst2|inst12~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & 
-- (\inst1|inst100|inst20|inst3~q\ & ((\inst1|inst100|inst2|inst14~q\) # (\inst1|inst100|inst2|inst16~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	combout => \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\);

-- Location: MLABCELL_X29_Y34_N14
\inst1|inst1|inst33|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst2~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst1|inst1|inst33|inst2~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst2~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst2~combout\);

-- Location: MLABCELL_X29_Y34_N12
\inst1|inst1|inst40|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst2~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst2~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst2~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst2~combout\);

-- Location: LABCELL_X32_Y34_N20
\inst1|inst1|inst41|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst2~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst1|inst1|inst41|inst2~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst2~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst2~combout\);

-- Location: LABCELL_X32_Y34_N2
\inst1|inst1|inst39|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst2~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst1|inst1|inst39|inst2~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst39|ALT_INV_inst2~combout\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	combout => \inst1|inst1|inst39|inst2~combout\);

-- Location: LABCELL_X32_Y34_N34
\inst1|inst1|inst32|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst2~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ((\inst1|inst1|inst32|inst2~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst2~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	combout => \inst1|inst1|inst32|inst2~combout\);

-- Location: LABCELL_X32_Y34_N38
\inst1|inst1|inst35|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst2~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ((\inst1|inst1|inst35|inst2~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst2~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	combout => \inst1|inst1|inst35|inst2~combout\);

-- Location: LABCELL_X32_Y34_N10
\inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst2~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst2~combout\ ) ) ) # ( 
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst2~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ 
-- & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst2~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst41|ALT_INV_inst2~combout\,
	datab => \inst1|inst1|inst39|ALT_INV_inst2~combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst2~combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst2~combout\,
	datae => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N26
\inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst36|inst2~combout\ & ( \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\) # 
-- ((!\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst33|inst2~combout\)) # (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst40|inst2~combout\)))) ) ) ) # ( !\inst1|inst1|inst36|inst2~combout\ & ( 
-- \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (((!\inst1|inst3|inst4~0_combout\)))) # (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & 
-- (\inst1|inst1|inst33|inst2~combout\)) # (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst40|inst2~combout\))))) ) ) ) # ( \inst1|inst1|inst36|inst2~combout\ & ( !\inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst3|inst4~1_combout\ & (((\inst1|inst3|inst4~0_combout\)))) # (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst33|inst2~combout\)) # (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst40|inst2~combout\))))) 
-- ) ) ) # ( !\inst1|inst1|inst36|inst2~combout\ & ( !\inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst33|inst2~combout\)) # 
-- (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst40|inst2~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst1|inst1|inst33|ALT_INV_inst2~combout\,
	datac => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst1|inst1|inst40|ALT_INV_inst2~combout\,
	datae => \inst1|inst1|inst36|ALT_INV_inst2~combout\,
	dataf => \inst1|inst3|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X29_Y34_N27
\inst1|inst3|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst3~q\);

-- Location: LABCELL_X27_Y34_N10
\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ = ( \inst1|inst100|inst2|inst14~q\ & ( \inst1|inst100|inst2|inst10~q\ & ( \inst1|inst3|inst3~q\ ) ) ) # ( !\inst1|inst100|inst2|inst14~q\ & ( \inst1|inst100|inst2|inst10~q\ & ( 
-- \inst1|inst3|inst3~q\ ) ) ) # ( !\inst1|inst100|inst2|inst14~q\ & ( !\inst1|inst100|inst2|inst10~q\ & ( (\inst1|inst3|inst3~q\ & (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst12~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|ALT_INV_inst3~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datae => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X26_Y33_N20
\inst8|inst100|inst|inst|inst3|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|11~0_combout\ = ( \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( (\inst9|inst|inst7|inst4|5~2_combout\) # (\inst1|inst2|inst3~q\) ) ) # ( !\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( 
-- (!\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & (\inst1|inst2|inst3~q\ & \inst9|inst|inst7|inst4|5~2_combout\)) # (\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~2_combout\ & ((\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (\inst1|inst2|inst3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~2_combout\,
	datac => \inst1|inst2|ALT_INV_inst3~q\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	combout => \inst8|inst100|inst|inst|inst3|11~0_combout\);

-- Location: LABCELL_X27_Y33_N8
\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst3~q\ & ( \inst1|inst3|inst3~q\ ) ) # ( !\inst1|inst100|inst20|inst3~q\ & ( \inst1|inst3|inst3~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst14~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst3~q\ & ( !\inst1|inst3|inst3~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst14~q\) # 
-- (\inst1|inst100|inst2|inst16~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010101010101011010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \inst1|inst3|ALT_INV_inst3~q\,
	combout => \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y33_N34
\inst8|inst100|inst6|inst3|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst3|inst3~combout\ = ( \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\) ) ) # ( 
-- !\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst3|inst3~combout\);

-- Location: MLABCELL_X26_Y33_N24
\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst2|inst100~q\ & (\inst1|inst2|inst2~q\ & ((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\)))) # (\inst1|inst2|inst100~q\ & (((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst1|inst2|inst2~q\)) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst2~q\ ) ) ) # ( 
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst100~q\ & (!\inst9|inst|inst7|inst4|11~0_combout\ & (\inst9|inst|inst7|inst4|11~1_combout\ & 
-- \inst1|inst2|inst2~q\))) # (\inst1|inst2|inst100~q\ & (((!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\)) # (\inst1|inst2|inst2~q\))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000100011101100000000111111110011000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst100~q\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst1|inst2|ALT_INV_inst2~q\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y33_N28
\inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst3~q\ $ 
-- (\inst8|inst100|inst6|inst3|inst3~combout\) ) ) # ( !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst3~q\ $ (!\inst8|inst100|inst6|inst3|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst3~q\,
	datad => \inst8|inst100|inst6|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N22
\inst1|inst2|inst10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst10~1_combout\ = ( \inst|inst3|inst2|inst3~q\ & ( \inst37~1_combout\ & ( (!\inst1|inst100|inst2|inst2~q\ & \inst1|inst100|inst2|inst3~q\) ) ) ) # ( !\inst|inst3|inst2|inst3~q\ & ( \inst37~1_combout\ & ( (!\inst1|inst100|inst2|inst2~q\ & 
-- \inst1|inst100|inst2|inst3~q\) ) ) ) # ( \inst|inst3|inst2|inst3~q\ & ( !\inst37~1_combout\ & ( (!\inst37~0_combout\ & (!\inst|inst3|inst2|inst2~q\)) # (\inst37~0_combout\ & (((!\inst1|inst100|inst2|inst2~q\ & \inst1|inst100|inst2|inst3~q\)))) ) ) ) # ( 
-- !\inst|inst3|inst2|inst3~q\ & ( !\inst37~1_combout\ & ( (!\inst1|inst100|inst2|inst2~q\ & (\inst1|inst100|inst2|inst3~q\ & \inst37~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100101010100000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	datad => \ALT_INV_inst37~0_combout\,
	datae => \inst|inst3|inst2|ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst37~1_combout\,
	combout => \inst1|inst2|inst10~1_combout\);

-- Location: MLABCELL_X31_Y33_N22
\inst1|inst1|inst36|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst3~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( \inst1|inst1|inst36|inst3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst3~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	combout => \inst1|inst1|inst36|inst3~combout\);

-- Location: MLABCELL_X31_Y33_N16
\inst1|inst1|inst40|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst3~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst40|ALT_INV_inst3~combout\,
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N20
\inst1|inst1|inst39|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst3~combout\ = ( \inst1|inst1|inst39|inst3~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst39|inst3~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst39|ALT_INV_inst3~combout\,
	combout => \inst1|inst1|inst39|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N30
\inst1|inst1|inst41|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst3~combout\ = ( \inst1|inst1|inst41|inst3~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst41|inst3~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst41|ALT_INV_inst3~combout\,
	combout => \inst1|inst1|inst41|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N16
\inst1|inst1|inst35|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst3~combout\ = ( \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst1|inst1|inst35|inst3~combout\) # (GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\)) ) ) # ( 
-- !\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & \inst1|inst1|inst35|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	datad => \inst1|inst1|inst35|ALT_INV_inst3~combout\,
	dataf => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|inst35|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N4
\inst1|inst1|inst32|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst3~combout\ = ( \inst1|inst1|inst32|inst3~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst32|inst3~combout\ & ( 
-- (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst3~combout\,
	combout => \inst1|inst1|inst32|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N10
\inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst3~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst3~combout\ ) ) ) # ( 
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst3~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ 
-- & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst3~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst3~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst3~combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst3~combout\,
	datad => \inst1|inst1|inst32|ALT_INV_inst3~combout\,
	datae => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y33_N0
\inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst33|inst3~combout\ & ( \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~0_combout\) # 
-- ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst3~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst3~combout\)))) ) ) ) # ( !\inst1|inst1|inst33|inst3~combout\ & ( 
-- \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~0_combout\ & (((!\inst1|inst3|inst4~1_combout\)))) # (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & 
-- (\inst1|inst1|inst36|inst3~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst3~combout\))))) ) ) ) # ( \inst1|inst1|inst33|inst3~combout\ & ( !\inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst3|inst4~0_combout\ & (((\inst1|inst3|inst4~1_combout\)))) # (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst3~combout\)) # (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst3~combout\))))) 
-- ) ) ) # ( !\inst1|inst1|inst33|inst3~combout\ & ( !\inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst36|inst3~combout\)) # 
-- (\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst40|inst3~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datab => \inst1|inst1|inst36|ALT_INV_inst3~combout\,
	datac => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datad => \inst1|inst1|inst40|ALT_INV_inst3~combout\,
	datae => \inst1|inst1|inst33|ALT_INV_inst3~combout\,
	dataf => \inst1|inst3|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X31_Y33_N1
\inst1|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst4~q\);

-- Location: MLABCELL_X31_Y33_N8
\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst2|inst12~q\ & ( \inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst20|inst4~q\))) # (\inst1|inst100|inst2|inst10~q\ & 
-- (\inst1|inst3|inst4~q\)) ) ) ) # ( !\inst1|inst100|inst2|inst12~q\ & ( \inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst20|inst4~q\))) # (\inst1|inst100|inst2|inst10~q\ & (\inst1|inst3|inst4~q\)) ) ) ) # ( 
-- \inst1|inst100|inst2|inst12~q\ & ( !\inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst20|inst4~q\))) # (\inst1|inst100|inst2|inst10~q\ & (\inst1|inst3|inst4~q\)) ) ) ) # ( !\inst1|inst100|inst2|inst12~q\ & ( 
-- !\inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst16~q\ & (\inst1|inst3|inst4~q\)) # (\inst1|inst100|inst2|inst16~q\ & ((!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst20|inst4~q\))) # (\inst1|inst100|inst2|inst10~q\ & 
-- (\inst1|inst3|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010101001100110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~q\,
	datab => \inst1|inst100|inst20|ALT_INV_inst4~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datae => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y33_N32
\inst8|inst100|inst13|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst13|inst4~combout\ = ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst4~q\ ) ) # ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst4~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst13|inst4~combout\);

-- Location: LABCELL_X32_Y33_N2
\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ = ( \inst1|inst100|inst2|inst10~q\ & ( \inst1|inst100|inst2|inst16~q\ & ( \inst1|inst3|inst4~q\ ) ) ) # ( \inst1|inst100|inst2|inst10~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( 
-- \inst1|inst3|inst4~q\ ) ) ) # ( !\inst1|inst100|inst2|inst10~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( (\inst1|inst3|inst4~q\ & (!\inst1|inst100|inst2|inst12~q\ & !\inst1|inst100|inst2|inst14~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X32_Y33_N4
\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ = ( !\inst1|inst100|inst2|inst10~q\ & ( \inst1|inst100|inst2|inst16~q\ & ( \inst1|inst100|inst20|inst4~q\ ) ) ) # ( !\inst1|inst100|inst2|inst10~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( 
-- (\inst1|inst100|inst20|inst4~q\ & ((\inst1|inst100|inst2|inst12~q\) # (\inst1|inst100|inst2|inst14~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst20|ALT_INV_inst4~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datae => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X32_Y33_N24
\inst8|inst100|inst|inst|inst3|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|12~0_combout\ = ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ & ( \inst9|inst|inst7|inst4|5~2_combout\ & ( (!\inst1|inst2|inst4~q\ & !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\) ) ) ) # 
-- ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ & ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( !\inst1|inst2|inst4~q\ ) ) ) # ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ & ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( 
-- (!\inst1|inst2|inst4~q\) # (!\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst4~q\,
	datad => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	combout => \inst8|inst100|inst|inst|inst3|12~0_combout\);

-- Location: MLABCELL_X31_Y33_N14
\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst9|inst|inst7|inst4|11~1_combout\ & ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ 
-- $ (\inst1|inst2|inst4~q\) ) ) ) # ( !\inst9|inst|inst7|inst4|11~1_combout\ & ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst4~q\ ) ) ) # ( \inst9|inst|inst7|inst4|11~1_combout\ & ( 
-- !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ $ (!\inst1|inst2|inst4~q\) ) ) ) # ( !\inst9|inst|inst7|inst4|11~1_combout\ & ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( 
-- !\inst1|inst2|inst4~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000011111111000000000000111111111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datad => \inst1|inst2|ALT_INV_inst4~q\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y33_N26
\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ = ( \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst2|inst100~q\ & (\inst1|inst2|inst2~q\ & ((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\)))) # (\inst1|inst2|inst100~q\ & (((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst1|inst2|inst2~q\)) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst2~q\ ) ) ) # ( 
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst100~q\ & (!\inst9|inst|inst7|inst4|11~0_combout\ & (\inst1|inst2|inst2~q\ & 
-- \inst9|inst|inst7|inst4|11~1_combout\))) # (\inst1|inst2|inst100~q\ & (((!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\)) # (\inst1|inst2|inst2~q\))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ( !\inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000110010101100001111000011110011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst100~q\,
	datac => \inst1|inst2|ALT_INV_inst2~q\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\);

-- Location: MLABCELL_X31_Y33_N6
\inst8|inst100|inst|inst|inst2|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst2|12~0_combout\ = ( \inst8|inst100|inst13|inst4~combout\ & ( \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst8|inst100|inst6|inst3|inst3~combout\) # (\inst1|inst2|inst3~q\)))) ) ) ) # ( !\inst8|inst100|inst13|inst4~combout\ & ( 
-- \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (\inst9|inst|inst7|inst4|5~2_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst8|inst100|inst6|inst3|inst3~combout\) # (\inst1|inst2|inst3~q\))))) ) ) ) # ( \inst8|inst100|inst13|inst4~combout\ & ( 
-- !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst3~q\ & !\inst8|inst100|inst6|inst3|inst3~combout\)))) ) ) ) # ( !\inst8|inst100|inst13|inst4~combout\ & ( 
-- !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (\inst9|inst|inst7|inst4|5~2_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst3~q\ & !\inst8|inst100|inst6|inst3|inst3~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100110000111011011111110000000011001000011100111111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst3~q\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst6|inst3|ALT_INV_inst3~combout\,
	datae => \inst8|inst100|inst13|ALT_INV_inst4~combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\,
	combout => \inst8|inst100|inst|inst|inst2|12~0_combout\);

-- Location: FF_X32_Y32_N7
\inst8|inst100|inst1|inst28|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst4~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst4~q\);

-- Location: LABCELL_X32_Y32_N6
\inst8|inst100|inst|inst6|inst3|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst6|inst3|12~0_combout\ = ( \inst8|inst100|inst1|inst28|inst2|inst4~q\ & ( \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst8|inst100|inst6|inst3|inst3~combout\) # (\inst1|inst2|inst3~q\)))) # (\inst9|inst|inst7|inst4|5~2_combout\) ) ) ) # ( 
-- !\inst8|inst100|inst1|inst28|inst2|inst4~q\ & ( \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst8|inst100|inst6|inst3|inst3~combout\) # (\inst1|inst2|inst3~q\))))) ) ) ) # ( \inst8|inst100|inst1|inst28|inst2|inst4~q\ & ( 
-- !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst3~q\ & 
-- !\inst8|inst100|inst6|inst3|inst3~combout\)))) # (\inst9|inst|inst7|inst4|5~2_combout\) ) ) ) # ( !\inst8|inst100|inst1|inst28|inst2|inst4~q\ & ( 
-- !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst3~q\ & !\inst8|inst100|inst6|inst3|inst3~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010100000110101111111010100001010100000100101111111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datab => \inst1|inst2|ALT_INV_inst3~q\,
	datac => \inst8|inst100|inst6|inst|inst7|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst6|inst3|ALT_INV_inst3~combout\,
	datae => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst4~q\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\,
	combout => \inst8|inst100|inst|inst6|inst3|12~0_combout\);

-- Location: LABCELL_X32_Y32_N34
\inst8|inst100|inst|inst7|inst3|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|12~0_combout\ = ( \inst8|inst100|inst|inst|inst2|12~0_combout\ & ( \inst8|inst100|inst|inst6|inst3|12~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst8|inst100|inst|inst|inst3|12~0_combout\) # 
-- (\inst9|inst|inst7|inst4|11~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst9|inst|inst7|inst4|11~2_combout\)) # (\inst8|inst100|inst13|inst4~combout\))) ) ) ) # ( !\inst8|inst100|inst|inst|inst2|12~0_combout\ & ( 
-- \inst8|inst100|inst|inst6|inst3|12~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst8|inst100|inst|inst|inst3|12~0_combout\) # (\inst9|inst|inst7|inst4|11~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & 
-- (\inst8|inst100|inst13|inst4~combout\ & (\inst9|inst|inst7|inst4|11~2_combout\))) ) ) ) # ( \inst8|inst100|inst|inst|inst2|12~0_combout\ & ( !\inst8|inst100|inst|inst6|inst3|12~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & 
-- (((!\inst9|inst|inst7|inst4|11~2_combout\ & !\inst8|inst100|inst|inst|inst3|12~0_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst9|inst|inst7|inst4|11~2_combout\)) # (\inst8|inst100|inst13|inst4~combout\))) ) ) ) # ( 
-- !\inst8|inst100|inst|inst|inst2|12~0_combout\ & ( !\inst8|inst100|inst|inst6|inst3|12~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst9|inst|inst7|inst4|11~2_combout\ & !\inst8|inst100|inst|inst|inst3|12~0_combout\)))) # 
-- (\inst9|inst|inst7|inst4|6~1_combout\ & (\inst8|inst100|inst13|inst4~combout\ & (\inst9|inst|inst7|inst4|11~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000001111100010011000111001101000011011111110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst13|ALT_INV_inst4~combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datad => \inst8|inst100|inst|inst|inst3|ALT_INV_12~0_combout\,
	datae => \inst8|inst100|inst|inst|inst2|ALT_INV_12~0_combout\,
	dataf => \inst8|inst100|inst|inst6|inst3|ALT_INV_12~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|12~0_combout\);

-- Location: FF_X32_Y32_N35
\inst8|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst|inst7|inst3|12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst4~q\);

-- Location: MLABCELL_X29_Y34_N20
\inst1|inst1|inst40|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst5~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst5~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst5~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst5~combout\);

-- Location: MLABCELL_X29_Y34_N22
\inst1|inst1|inst36|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst5~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ((\inst1|inst1|inst36|inst5~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst36|ALT_INV_inst5~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	combout => \inst1|inst1|inst36|inst5~combout\);

-- Location: LABCELL_X32_Y34_N32
\inst1|inst1|inst39|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst5~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst1|inst1|inst39|inst5~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst39|ALT_INV_inst5~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	combout => \inst1|inst1|inst39|inst5~combout\);

-- Location: LABCELL_X32_Y34_N26
\inst1|inst1|inst41|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst5~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst1|inst1|inst41|inst5~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst5~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst5~combout\);

-- Location: LABCELL_X32_Y34_N0
\inst1|inst1|inst35|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst5~combout\ = ( \inst1|inst1|inst35|inst5~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst35|inst5~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst35|ALT_INV_inst5~combout\,
	combout => \inst1|inst1|inst35|inst5~combout\);

-- Location: LABCELL_X32_Y34_N22
\inst1|inst1|inst32|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst5~combout\ = ( \inst1|inst1|inst32|inst5~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst32|inst5~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst5~combout\,
	combout => \inst1|inst1|inst32|inst5~combout\);

-- Location: LABCELL_X32_Y34_N28
\inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst5~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst5~combout\ ) ) ) # ( 
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst5~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ 
-- & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst5~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst5~combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst5~combout\,
	datad => \inst1|inst1|inst32|ALT_INV_inst5~combout\,
	datae => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N36
\inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst3|inst4~0_combout\ & ( \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- ((\inst1|inst1|inst36|inst5~combout\))) # (\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst40|inst5~combout\)) ) ) ) # ( !\inst1|inst3|inst4~0_combout\ & ( \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst3|inst4~1_combout\) # (\inst1|inst1|inst33|inst5~combout\) ) ) ) # ( \inst1|inst3|inst4~0_combout\ & ( !\inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- ((\inst1|inst1|inst36|inst5~combout\))) # (\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst40|inst5~combout\)) ) ) ) # ( !\inst1|inst3|inst4~0_combout\ & ( !\inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst1|inst3|inst4~1_combout\ & \inst1|inst1|inst33|inst5~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst1|inst1|inst33|ALT_INV_inst5~combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst5~combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst5~combout\,
	datae => \inst1|inst3|ALT_INV_inst4~0_combout\,
	dataf => \inst1|inst3|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X29_Y34_N37
\inst1|inst3|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst16~q\);

-- Location: LABCELL_X27_Y33_N10
\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst16~q\ & ( \inst1|inst3|inst16~q\ ) ) # ( !\inst1|inst100|inst20|inst16~q\ & ( \inst1|inst3|inst16~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst14~q\ & !\inst1|inst100|inst2|inst16~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst16~q\ & ( !\inst1|inst3|inst16~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst16~q\) # 
-- (\inst1|inst100|inst2|inst14~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010101010101011010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	dataf => \inst1|inst3|ALT_INV_inst16~q\,
	combout => \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y33_N18
\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst4~q\ & 
-- !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst4~q\ & ((!\inst1|inst2|inst3~q\) # 
-- (!\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) # (\inst1|inst2|inst4~q\ & (!\inst1|inst2|inst3~q\ & !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst3~q\ & ((!\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (!\inst1|inst2|inst4~q\)) # 
-- (\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((\inst9|inst|inst7|inst4|11~1_combout\))))) # (\inst1|inst2|inst3~q\ & (!\inst1|inst2|inst4~q\ & (!\inst9|inst|inst7|inst4|11~1_combout\ $ 
-- (\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst3~q\ & 
-- ((!\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((!\inst9|inst|inst7|inst4|11~1_combout\))) # (\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (!\inst1|inst2|inst4~q\)))) # (\inst1|inst2|inst3~q\ & 
-- (!\inst1|inst2|inst4~q\ & (!\inst9|inst|inst7|inst4|11~1_combout\ $ (\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010001010101010000000111011101110100010001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst4~q\,
	datab => \inst1|inst2|ALT_INV_inst3~q\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y33_N6
\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst9|inst|inst7|inst4|11~0_combout\ & ( ((\inst1|inst2|inst3~q\ & 
-- \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)) # (\inst1|inst2|inst4~q\) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst9|inst|inst7|inst4|11~0_combout\ & ( (\inst1|inst2|inst4~q\ & 
-- (\inst1|inst2|inst3~q\ & \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)) ) ) ) # ( \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst3~q\ & 
-- (\inst1|inst2|inst4~q\ & (!\inst9|inst|inst7|inst4|11~1_combout\))) # (\inst1|inst2|inst3~q\ & ((!\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\inst1|inst2|inst4~q\)) # (\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- ((!\inst9|inst|inst7|inst4|11~1_combout\))))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( (!\inst1|inst2|inst3~q\ & (\inst1|inst2|inst4~q\ & 
-- (\inst9|inst|inst7|inst4|11~1_combout\))) # (\inst1|inst2|inst3~q\ & ((!\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((\inst9|inst|inst7|inst4|11~1_combout\))) # (\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100010101010100010111000000000000000100010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst4~q\,
	datab => \inst1|inst2|ALT_INV_inst3~q\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y33_N12
\inst8|inst100|inst6|inst3|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst3|inst5~combout\ = ( \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\) ) ) # ( 
-- !\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst3|inst5~combout\);

-- Location: MLABCELL_X29_Y33_N2
\inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst1|inst2|inst16~q\ $ (!\inst8|inst100|inst6|inst3|inst5~combout\)) ) ) # ( 
-- !\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst1|inst2|inst16~q\ $ 
-- (\inst8|inst100|inst6|inst3|inst5~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst6|inst3|ALT_INV_inst5~combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X26_Y33_N0
\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\ = ( !\inst1|inst100|inst2|inst10~q\ & ( (\inst1|inst100|inst20|inst16~q\ & (((\inst1|inst100|inst2|inst16~q\) # (\inst1|inst100|inst2|inst12~q\)) # (\inst1|inst100|inst2|inst14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datab => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X27_Y34_N28
\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\ = ( \inst1|inst100|inst2|inst12~q\ & ( \inst1|inst100|inst2|inst10~q\ & ( \inst1|inst3|inst16~q\ ) ) ) # ( !\inst1|inst100|inst2|inst12~q\ & ( \inst1|inst100|inst2|inst10~q\ & ( 
-- \inst1|inst3|inst16~q\ ) ) ) # ( !\inst1|inst100|inst2|inst12~q\ & ( !\inst1|inst100|inst2|inst10~q\ & ( (!\inst1|inst100|inst2|inst16~q\ & (\inst1|inst3|inst16~q\ & !\inst1|inst100|inst2|inst14~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst3|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	combout => \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X26_Y33_N32
\inst8|inst100|inst|inst|inst3|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|17~0_combout\ = ( \inst9|inst|inst7|inst4|5~2_combout\ & ( ((\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\) # (\inst1|inst2|inst16~q\)) # (\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\) ) ) # 
-- ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( (\inst1|inst2|inst16~q\ & ((\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~1_combout\) # (\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~2_combout\,
	datac => \inst1|inst2|ALT_INV_inst16~q\,
	datad => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~1_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	combout => \inst8|inst100|inst|inst|inst3|17~0_combout\);

-- Location: LABCELL_X30_Y36_N30
\inst1|inst1|inst40|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst4~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst40|ALT_INV_inst4~combout\,
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst4~combout\);

-- Location: LABCELL_X30_Y36_N36
\inst1|inst1|inst33|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst4~combout\ = ( \inst1|inst1|inst33|inst4~combout\ & ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst1|inst1|inst33|inst4~combout\ & ( 
-- GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) ) # ( \inst1|inst1|inst33|inst4~combout\ & ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst33|ALT_INV_inst4~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N0
\inst1|inst1|inst39|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( 
-- \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst4~combout\ ) ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( !\inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst39|inst4~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst39|ALT_INV_inst4~combout\,
	datae => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	dataf => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|inst39|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N26
\inst1|inst1|inst41|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst1|inst1|inst41|inst4~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst41|ALT_INV_inst4~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N30
\inst1|inst1|inst35|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst1|inst1|inst35|inst4~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst35|ALT_INV_inst4~combout\,
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	combout => \inst1|inst1|inst35|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N22
\inst1|inst1|inst32|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst1|inst1|inst32|inst4~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst32|ALT_INV_inst4~combout\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	combout => \inst1|inst1|inst32|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N32
\inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst4~combout\ & ( \inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst4~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst4~combout\ & ( \inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst41|inst4~combout\))))) ) ) ) # ( \inst1|inst1|inst35|inst4~combout\ & ( !\inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (((\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) 
-- # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst4~combout\))))) ) ) ) # ( !\inst1|inst1|inst35|inst4~combout\ & ( !\inst1|inst1|inst32|inst4~combout\ & ( 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst41|inst4~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst4~combout\,
	datab => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst4~combout\,
	datad => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst4~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst4~combout\,
	combout => \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y36_N18
\inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst3|inst4~0_combout\ & ( \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- ((\inst1|inst1|inst36|inst4~combout\))) # (\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst40|inst4~combout\)) ) ) ) # ( !\inst1|inst3|inst4~0_combout\ & ( \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst3|inst4~1_combout\) # (\inst1|inst1|inst33|inst4~combout\) ) ) ) # ( \inst1|inst3|inst4~0_combout\ & ( !\inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- ((\inst1|inst1|inst36|inst4~combout\))) # (\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst40|inst4~combout\)) ) ) ) # ( !\inst1|inst3|inst4~0_combout\ & ( !\inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst1|inst1|inst33|inst4~combout\ & \inst1|inst3|inst4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst40|ALT_INV_inst4~combout\,
	datab => \inst1|inst1|inst33|ALT_INV_inst4~combout\,
	datac => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst4~combout\,
	datae => \inst1|inst3|ALT_INV_inst4~0_combout\,
	dataf => \inst1|inst3|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X31_Y36_N19
\inst1|inst3|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst14~q\);

-- Location: MLABCELL_X29_Y33_N26
\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst14~q\ & ( \inst1|inst3|inst14~q\ ) ) # ( !\inst1|inst100|inst20|inst14~q\ & ( \inst1|inst3|inst14~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst14~q\ & !\inst1|inst100|inst2|inst16~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst14~q\ & ( !\inst1|inst3|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst16~q\) # 
-- (\inst1|inst100|inst2|inst14~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011001100110010110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	dataf => \inst1|inst3|ALT_INV_inst14~q\,
	combout => \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y33_N34
\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst14~q\ $ (((!\inst9|inst|inst7|inst4|11~1_combout\) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) # ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst14~q\ $ (((!\inst9|inst|inst7|inst4|11~0_combout\ & \inst9|inst|inst7|inst4|11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100100010110111010010001000100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst1|inst2|ALT_INV_inst14~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y33_N4
\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ = ( \inst1|inst100|inst2|inst14~q\ & ( (\inst1|inst100|inst20|inst14~q\ & !\inst1|inst100|inst2|inst10~q\) ) ) # ( !\inst1|inst100|inst2|inst14~q\ & ( (\inst1|inst100|inst20|inst14~q\ & 
-- (!\inst1|inst100|inst2|inst10~q\ & ((\inst1|inst100|inst2|inst16~q\) # (\inst1|inst100|inst2|inst12~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y33_N38
\inst8|inst100|inst|inst7|inst3|18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|18~2_combout\ = ( !\inst9|inst|inst7|inst4|11~2_combout\ & ( \inst9|inst|inst7|inst4|5~2_combout\ & ( (!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & (!\inst1|inst2|inst14~q\ & ((!\inst1|inst3|inst14~q\) # 
-- (\inst28|inst1~0_combout\)))) ) ) ) # ( \inst9|inst|inst7|inst4|11~2_combout\ & ( !\inst9|inst|inst7|inst4|5~2_combout\ ) ) # ( !\inst9|inst|inst7|inst4|11~2_combout\ & ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( (!\inst1|inst2|inst14~q\) # 
-- ((!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ((!\inst1|inst3|inst14~q\) # (\inst28|inst1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101110111111111111111110000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\,
	datab => \inst1|inst2|ALT_INV_inst14~q\,
	datac => \inst1|inst3|ALT_INV_inst14~q\,
	datad => \inst28|ALT_INV_inst1~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|18~2_combout\);

-- Location: FF_X30_Y33_N31
\inst8|inst100|inst1|inst28|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst14~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst14~q\);

-- Location: LABCELL_X30_Y33_N16
\inst8|inst100|inst|inst7|inst3|18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|18~3_combout\ = ( \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst14~q\ ) ) # ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst14~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|18~3_combout\);

-- Location: LABCELL_X30_Y33_N30
\inst8|inst100|inst|inst7|inst3|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|18~0_combout\ = ( \inst8|inst100|inst1|inst28|inst2|inst14~q\ & ( \inst8|inst100|inst|inst7|inst3|18~3_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst8|inst100|inst|inst7|inst3|18~2_combout\) # 
-- ((\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst9|inst|inst7|inst4|5~2_combout\)) # (\inst9|inst|inst7|inst4|11~2_combout\))) ) ) ) # ( 
-- !\inst8|inst100|inst1|inst28|inst2|inst14~q\ & ( \inst8|inst100|inst|inst7|inst3|18~3_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst8|inst100|inst|inst7|inst3|18~2_combout\ & ((!\inst9|inst|inst7|inst4|11~2_combout\) # 
-- (!\inst9|inst|inst7|inst4|5~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst9|inst|inst7|inst4|5~2_combout\)) # (\inst9|inst|inst7|inst4|11~2_combout\))) ) ) ) # ( \inst8|inst100|inst1|inst28|inst2|inst14~q\ & ( 
-- !\inst8|inst100|inst|inst7|inst3|18~3_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst8|inst100|inst|inst7|inst3|18~2_combout\) # ((\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)))) ) ) ) # ( 
-- !\inst8|inst100|inst1|inst28|inst2|inst14~q\ & ( !\inst8|inst100|inst|inst7|inst3|18~3_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst8|inst100|inst|inst7|inst3|18~2_combout\ & ((!\inst9|inst|inst7|inst4|11~2_combout\) # 
-- (!\inst9|inst|inst7|inst4|5~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110011000000010011111001001100011111110100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_18~2_combout\,
	datae => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_18~3_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|18~0_combout\);

-- Location: MLABCELL_X26_Y33_N14
\inst8|inst100|inst|inst7|inst3|23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~0_combout\ = ( \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst9|inst|inst7|inst4|11~2_combout\ 
-- & (\inst9|inst|inst7|inst4|6~1_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)) # (\inst9|inst|inst7|inst4|11~2_combout\ & (!\inst9|inst|inst7|inst4|6~1_combout\ & !\inst9|inst|inst7|inst4|5~2_combout\)))) ) ) ) # ( 
-- \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|11~2_combout\ & (\inst9|inst|inst7|inst4|6~1_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)) # (\inst9|inst|inst7|inst4|11~2_combout\ & (!\inst9|inst|inst7|inst4|6~1_combout\ & !\inst9|inst|inst7|inst4|5~2_combout\)) ) ) ) # ( 
-- !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst9|inst|inst7|inst4|11~2_combout\ & (\inst9|inst|inst7|inst4|6~1_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)) # 
-- (\inst9|inst|inst7|inst4|11~2_combout\ & (!\inst9|inst|inst7|inst4|6~1_combout\ & !\inst9|inst|inst7|inst4|5~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000010010000100100001000000000000000000100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datad => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~0_combout\);

-- Location: LABCELL_X24_Y33_N26
\inst8|inst100|inst|inst7|inst3|23~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ = ( \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & 
-- ((!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)))) ) ) ) # 
-- ( \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)) ) ) ) # ( 
-- !\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # 
-- (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000000001001000010010000000000000000000000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datad => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\,
	datae => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\);

-- Location: MLABCELL_X29_Y33_N12
\inst8|inst100|inst|inst7|inst3|18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|18~1_combout\ = ( \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( ((!\inst1|inst2|inst16~q\ & ((!\inst8|inst100|inst6|inst3|inst5~combout\) # 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst1|inst2|inst16~q\ & ((\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst8|inst100|inst6|inst3|inst5~combout\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst16~q\ & !\inst8|inst100|inst6|inst3|inst5~combout\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( 
-- \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( !\inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (((!\inst8|inst100|inst6|inst3|inst5~combout\) # (\inst1|inst2|inst16~q\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( !\inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( 
-- \inst8|inst100|inst|inst7|inst3|18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001011011111111110110100111111111011110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst16~q\,
	datab => \inst8|inst100|inst6|inst3|ALT_INV_inst5~combout\,
	datac => \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_18~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~0_combout\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~1DUPLICATE_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|18~1_combout\);

-- Location: FF_X29_Y33_N5
\inst8|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|18~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst14~q\);

-- Location: MLABCELL_X29_Y33_N36
\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|11~0_combout\ & (\inst9|inst|inst7|inst4|11~1_combout\ & ((!\inst1|inst2|inst14~q\) # (!\inst1|inst2|inst16~q\)))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( 
-- \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst14~q\ & (((!\inst1|inst2|inst16~q\) # (!\inst9|inst|inst7|inst4|11~1_combout\)) # (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) ) # ( 
-- \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst14~q\ & ((!\inst1|inst2|inst16~q\) # ((!\inst9|inst|inst7|inst4|11~0_combout\ & 
-- \inst9|inst|inst7|inst4|11~1_combout\)))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst14~q\ & 
-- (((!\inst9|inst|inst7|inst4|11~1_combout\)) # (\inst9|inst|inst7|inst4|11~0_combout\))) # (\inst1|inst2|inst14~q\ & (!\inst1|inst2|inst16~q\ & ((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000110010101000001010100010101010101000100000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst14~q\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datac => \inst1|inst2|ALT_INV_inst16~q\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: M9K_X33_Y32_N0
\inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0\ : arriaii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena2",
	clk0_input_clock_enable => "ena2",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DataFetchCycle:inst10|Data_Memory:inst98|lpm_ram_io:inst|altram:sram|altsyncram:ram_block|altsyncram_n3e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst11|inst|27~combout\,
	portare => VCC,
	clk0 => \ALT_INV_clk~inputclkctrl_outclk\,
	ena2 => VCC,
	portadatain => \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst10|inst98|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X32_Y32_N0
\inst10|gdfx_temp0[2]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[2]~5_combout\ = ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(2) & ( (!\inst11|inst|27~combout\) # (\inst8|inst4|inst3~q\) ) ) # ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(2) & ( (\inst11|inst|27~combout\ & 
-- \inst8|inst4|inst3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|ALT_INV_27~combout\,
	datad => \inst8|inst4|ALT_INV_inst3~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	combout => \inst10|gdfx_temp0[2]~5_combout\);

-- Location: LABCELL_X32_Y32_N24
\inst10|gdfx_temp0[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[6]~1_combout\ = ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(6) & ( (!\inst11|inst|27~combout\) # (\inst8|inst4|inst12~q\) ) ) # ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(6) & ( (\inst8|inst4|inst12~q\ & 
-- \inst11|inst|27~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst4|ALT_INV_inst12~q\,
	datac => \inst11|inst|ALT_INV_27~combout\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	combout => \inst10|gdfx_temp0[6]~1_combout\);

-- Location: FF_X32_Y32_N25
\inst10|inst99|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[6]~1_combout\,
	asdata => \inst8|inst4|inst12~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst12~q\);

-- Location: FF_X30_Y32_N3
\inst|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst12~q\);

-- Location: FF_X30_Y32_N19
\inst1|inst4|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst12~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst12~q\);

-- Location: FF_X31_Y32_N33
\inst8|inst6|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst12~q\);

-- Location: FF_X32_Y32_N37
\inst10|inst4|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst12~q\);

-- Location: LABCELL_X32_Y32_N36
\inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst12~q\ & ( \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst15|inst~combout\ & (((\inst10|inst99|inst12~q\)))) # 
-- (\inst15|inst~combout\ & ((!\inst10|inst4|inst16~q\) # ((!\inst10|inst4|inst14~q\)))) ) ) ) # ( !\inst10|inst4|inst12~q\ & ( \inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst15|inst~combout\ & 
-- (((\inst10|inst99|inst12~q\)))) # (\inst15|inst~combout\ & (\inst10|inst4|inst16~q\ & (\inst10|inst4|inst14~q\))) ) ) ) # ( \inst10|inst4|inst12~q\ & ( !\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst10|inst99|inst12~q\) # (\inst15|inst~combout\) ) ) ) # ( !\inst10|inst4|inst12~q\ & ( !\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst15|inst~combout\ & \inst10|inst99|inst12~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100000001110011010011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|ALT_INV_inst16~q\,
	datab => \inst15|ALT_INV_inst~combout\,
	datac => \inst10|inst4|ALT_INV_inst14~q\,
	datad => \inst10|inst99|ALT_INV_inst12~q\,
	datae => \inst10|inst4|ALT_INV_inst12~q\,
	dataf => \inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N28
\inst1|inst1|inst33|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst6~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst1|inst1|inst33|inst6~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst6~combout\);

-- Location: LABCELL_X35_Y34_N18
\inst1|inst1|inst36|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst6~combout\ = ( \inst1|inst1|inst36|inst6~combout\ & ( GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst1|inst1|inst36|inst6~combout\ & ( 
-- GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) ) # ( \inst1|inst1|inst36|inst6~combout\ & ( !GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst36|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	combout => \inst1|inst1|inst36|inst6~combout\);

-- Location: LABCELL_X30_Y34_N30
\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst37~0_combout\ & ( \inst1|inst100|inst2|inst3~q\ ) ) # ( !\inst37~0_combout\ & ( (!\inst37~1_combout\ & ((\inst|inst3|inst2|inst3~q\))) # (\inst37~1_combout\ & 
-- (\inst1|inst100|inst2|inst3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	datac => \ALT_INV_inst37~1_combout\,
	datad => \inst|inst3|inst2|ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y35_N28
\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst37~0_combout\ & ( \inst1|inst100|inst2|inst4~q\ ) ) # ( !\inst37~0_combout\ & ( (!\inst37~1_combout\ & ((\inst|inst3|inst2|inst4~q\))) # (\inst37~1_combout\ & 
-- (\inst1|inst100|inst2|inst4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst3|inst2|ALT_INV_inst4~q\,
	datad => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y34_N0
\inst1|inst1|inst39|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst6~combout\ = ( \inst1|inst1|inst39|inst6~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst39|inst6~combout\ & ( 
-- (GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst39|ALT_INV_inst6~combout\,
	combout => \inst1|inst1|inst39|inst6~combout\);

-- Location: MLABCELL_X34_Y34_N34
\inst1|inst1|inst41|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst6~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ((\inst1|inst1|inst41|inst6~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst6~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst6~combout\);

-- Location: MLABCELL_X34_Y34_N2
\inst1|inst1|inst35|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst6~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ( \inst1|inst1|inst35|inst6~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	combout => \inst1|inst1|inst35|inst6~combout\);

-- Location: MLABCELL_X34_Y34_N32
\inst1|inst1|inst32|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst6~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ( \inst1|inst1|inst32|inst6~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	combout => \inst1|inst1|inst32|inst6~combout\);

-- Location: MLABCELL_X34_Y34_N24
\inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst6~combout\ & ( \inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst6~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst6~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst6~combout\ & ( \inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((\inst1|inst1|inst39|inst6~combout\)))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst6~combout\)))) ) ) ) # ( 
-- \inst1|inst1|inst35|inst6~combout\ & ( !\inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst1|inst39|inst6~combout\))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # ((\inst1|inst1|inst41|inst6~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst6~combout\ & ( !\inst1|inst1|inst32|inst6~combout\ & ( (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst1|inst39|inst6~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst6~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst39|ALT_INV_inst6~combout\,
	datad => \inst1|inst1|inst41|ALT_INV_inst6~combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst6~combout\,
	combout => \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y35_N8
\inst1|inst1|inst40|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst6~combout\ = ( \inst1|inst1|inst40|inst6~combout\ & ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst1|inst1|inst40|inst6~combout\ & ( 
-- GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) ) # ( \inst1|inst1|inst40|inst6~combout\ & ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst40|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst6~combout\);

-- Location: LABCELL_X30_Y34_N36
\inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (((!\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst36|inst6~combout\)))) # (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst33|inst6~combout\))) ) ) ) # ( 
-- !\inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((\inst1|inst1|inst36|inst6~combout\ & \inst1|inst2|inst10~0_combout\)))) # 
-- (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst33|inst6~combout\))) ) ) ) # ( \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst40|inst6~combout\ & ( 
-- (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst36|inst6~combout\)))) # (\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst33|inst6~combout\ & ((!\inst1|inst2|inst10~0_combout\)))) ) ) ) # ( 
-- !\inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((\inst1|inst1|inst36|inst6~combout\ & \inst1|inst2|inst10~0_combout\)))) # 
-- (\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst33|inst6~combout\ & ((!\inst1|inst2|inst10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst33|ALT_INV_inst6~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst1|inst36|ALT_INV_inst6~combout\,
	datad => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datae => \inst1|inst2|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst40|ALT_INV_inst6~combout\,
	combout => \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y34_N18
\inst1|inst2|inst10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst10~2_combout\ = ( \inst37~combout\ & ( (!\inst|inst3|inst2|inst2~q\ & (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) ) ) # ( 
-- !\inst37~combout\ & ( (!\inst1|inst100|inst2|inst2~q\ & (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	datac => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst1|inst2|inst10~2_combout\);

-- Location: FF_X30_Y34_N37
\inst1|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst12~q\);

-- Location: MLABCELL_X34_Y34_N8
\inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst6~combout\ & ( \inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst39|inst6~combout\))) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst41|inst6~combout\))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst6~combout\ & ( \inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst39|inst6~combout\))) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst1|inst41|inst6~combout\)))) ) ) ) # ( \inst1|inst1|inst35|inst6~combout\ & ( !\inst1|inst1|inst32|inst6~combout\ & ( (!\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (((\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst39|inst6~combout\))) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst41|inst6~combout\)))) ) ) ) # ( !\inst1|inst1|inst35|inst6~combout\ & ( !\inst1|inst1|inst32|inst6~combout\ & ( 
-- (\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst39|inst6~combout\))) # (\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst1|inst41|inst6~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst6~combout\,
	datac => \inst1|inst1|inst39|ALT_INV_inst6~combout\,
	datad => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst6~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst6~combout\,
	combout => \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y34_N18
\inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- ((!\inst1|inst3|inst4~0_combout\) # ((\inst1|inst1|inst36|inst6~combout\)))) # (\inst1|inst3|inst4~1_combout\ & (((\inst1|inst1|inst33|inst6~combout\)) # (\inst1|inst3|inst4~0_combout\))) ) ) ) # ( 
-- !\inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst36|inst6~combout\)))) # 
-- (\inst1|inst3|inst4~1_combout\ & (((\inst1|inst1|inst33|inst6~combout\)) # (\inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst40|inst6~combout\ & ( 
-- (!\inst1|inst3|inst4~1_combout\ & ((!\inst1|inst3|inst4~0_combout\) # ((\inst1|inst1|inst36|inst6~combout\)))) # (\inst1|inst3|inst4~1_combout\ & (!\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst33|inst6~combout\))) ) ) ) # ( 
-- !\inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|inst40|inst6~combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (\inst1|inst3|inst4~0_combout\ & ((\inst1|inst1|inst36|inst6~combout\)))) # 
-- (\inst1|inst3|inst4~1_combout\ & (!\inst1|inst3|inst4~0_combout\ & (\inst1|inst1|inst33|inst6~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst6~combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst6~combout\,
	datae => \inst1|inst3|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|inst40|ALT_INV_inst6~combout\,
	combout => \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X34_Y34_N19
\inst1|inst3|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst12~q\);

-- Location: MLABCELL_X29_Y33_N24
\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst14~q\ & ( \inst1|inst3|inst12~q\ ) ) # ( !\inst1|inst100|inst20|inst14~q\ & ( \inst1|inst3|inst12~q\ & ( ((!\inst1|inst100|inst2|inst12~q\ & 
-- (!\inst1|inst100|inst2|inst16~q\ & !\inst1|inst100|inst2|inst14~q\))) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( \inst1|inst100|inst20|inst14~q\ & ( !\inst1|inst3|inst12~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (((\inst1|inst100|inst2|inst14~q\) # 
-- (\inst1|inst100|inst2|inst16~q\)) # (\inst1|inst100|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011001100110010110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	dataf => \inst1|inst3|ALT_INV_inst12~q\,
	combout => \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y33_N10
\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst2|inst12~q\ & ( \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~1_combout\) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\) ) ) ) # ( !\inst1|inst2|inst12~q\ & ( \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\) ) ) ) # ( 
-- \inst1|inst2|inst12~q\ & ( !\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\) ) ) ) # ( !\inst1|inst2|inst12~q\ & ( 
-- !\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst9|inst|inst7|inst4|11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111001100110000000000110011000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datae => \inst1|inst2|ALT_INV_inst12~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y33_N22
\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|11~0_combout\ & (!\inst9|inst|inst7|inst4|11~1_combout\ & ((\inst1|inst2|inst16~q\) # (\inst1|inst2|inst14~q\)))) # (\inst9|inst|inst7|inst4|11~0_combout\ & (((\inst1|inst2|inst16~q\) # (\inst1|inst2|inst14~q\)))) ) ) ) # ( 
-- !\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst14~q\ & (((!\inst9|inst|inst7|inst4|11~1_combout\) # (\inst1|inst2|inst16~q\)) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) ) # ( \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst14~q\ & (((!\inst9|inst|inst7|inst4|11~0_combout\ & 
-- \inst9|inst|inst7|inst4|11~1_combout\)) # (\inst1|inst2|inst16~q\))) ) ) ) # ( !\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|11~0_combout\ & 
-- (\inst9|inst|inst7|inst4|11~1_combout\ & ((\inst1|inst2|inst16~q\) # (\inst1|inst2|inst14~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100000111100001101000011110000110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst2|ALT_INV_inst16~q\,
	datae => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y32_N12
\inst8|inst100|inst|inst7|inst3|23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~4_combout\ = ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( \inst9|inst|inst7|inst4|11~2_combout\ ) ) # ( \inst9|inst|inst7|inst4|5~2_combout\ & ( !\inst9|inst|inst7|inst4|11~2_combout\ & ( 
-- (!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & (!\inst1|inst2|inst12~q\ & ((!\inst1|inst3|inst12~q\) # (\inst28|inst1~0_combout\)))) ) ) ) # ( !\inst9|inst|inst7|inst4|5~2_combout\ & ( !\inst9|inst|inst7|inst4|11~2_combout\ & ( 
-- (!\inst1|inst2|inst12~q\) # ((!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ((!\inst1|inst3|inst12~q\) # (\inst28|inst1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101110100000001000100011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\,
	datab => \inst1|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst3|ALT_INV_inst12~q\,
	datad => \inst28|ALT_INV_inst1~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~4_combout\);

-- Location: FF_X26_Y32_N9
\inst8|inst100|inst1|inst9|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst100~q\);

-- Location: MLABCELL_X26_Y32_N32
\inst8|inst100|inst1|inst8|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst8|5~0_combout\ = ( \inst8|inst100|inst1|and~1_combout\ & ( \inst1|inst2|inst100~q\ ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|inst9|inst2|inst100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|inst8|5~0_combout\);

-- Location: MLABCELL_X23_Y32_N36
\inst8|inst100|inst1|Rt1|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Rt1|X~0_combout\ = ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|Rt1|X~0_combout\);

-- Location: FF_X23_Y32_N37
\inst8|inst100|inst1|Rt1|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Rt1|X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Rt1|inst2|inst100~q\);

-- Location: FF_X26_Y33_N7
\inst8|inst100|inst1|inst9|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst16~q\);

-- Location: MLABCELL_X26_Y32_N36
\inst8|inst100|inst1|Result1|inst1|inst3|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ = ( \inst8|inst100|inst1|Rt1|inst2|inst100~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (\inst8|inst100|inst1|inst9|inst2|inst16~q\)) # (\inst8|inst100|inst1|and~1_combout\ & 
-- ((\inst1|inst2|inst16~q\))) ) ) # ( !\inst8|inst100|inst1|Rt1|inst2|inst100~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|inst9|inst2|inst16~q\ $ (((!\inst8|inst100|inst1|Result1|inst2|inst100~q\))))) # 
-- (\inst8|inst100|inst1|and~1_combout\ & (((\inst1|inst2|inst16~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101001001111000110100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datab => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst16~q\,
	datac => \inst1|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\);

-- Location: FF_X26_Y32_N25
\inst8|inst100|inst1|inst9|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst12~q\);

-- Location: LABCELL_X24_Y32_N18
\inst8|inst100|inst1|inst20\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst20~combout\ = ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( !\inst8|inst100|inst1|Rt1|inst2|inst100~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datae => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|inst20~combout\);

-- Location: MLABCELL_X26_Y32_N24
\inst8|inst100|inst1|Result1|inst1|inst3|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ = ( \inst8|inst100|inst1|inst20~combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & ((!\inst8|inst100|inst1|inst9|inst2|inst12~q\))) # (\inst8|inst100|inst1|and~1_combout\ & 
-- (!\inst1|inst2|inst12~q\)) ) ) # ( !\inst8|inst100|inst1|inst20~combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & ((\inst8|inst100|inst1|inst9|inst2|inst12~q\))) # (\inst8|inst100|inst1|and~1_combout\ & (\inst1|inst2|inst12~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111111111010010100001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst12~q\,
	datad => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\);

-- Location: MLABCELL_X29_Y34_N30
\inst1|inst1|inst40|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst7~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst7~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst7~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst7~combout\);

-- Location: MLABCELL_X29_Y34_N8
\inst1|inst1|inst36|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst7~combout\ = ( \inst1|inst1|inst36|inst7~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\) ) ) # ( !\inst1|inst1|inst36|inst7~combout\ & ( 
-- (\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ & GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	dataf => \inst1|inst1|inst36|ALT_INV_inst7~combout\,
	combout => \inst1|inst1|inst36|inst7~combout\);

-- Location: LABCELL_X32_Y34_N12
\inst1|inst1|inst39|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst39|inst7~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~4clkctrl_outclk\) & ( \inst1|inst1|inst39|inst7~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datad => \inst1|inst1|inst39|ALT_INV_inst7~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~4clkctrl_outclk\,
	combout => \inst1|inst1|inst39|inst7~combout\);

-- Location: LABCELL_X32_Y34_N36
\inst1|inst1|inst41|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst41|inst7~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~6clkctrl_outclk\) & ( \inst1|inst1|inst41|inst7~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datad => \inst1|inst1|inst41|ALT_INV_inst7~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~6clkctrl_outclk\,
	combout => \inst1|inst1|inst41|inst7~combout\);

-- Location: LABCELL_X32_Y34_N24
\inst1|inst1|inst32|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst32|inst7~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & ((\inst1|inst1|inst32|inst7~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~0clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst7~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~0clkctrl_outclk\,
	combout => \inst1|inst1|inst32|inst7~combout\);

-- Location: LABCELL_X32_Y34_N14
\inst1|inst1|inst35|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst35|inst7~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & ((\inst1|inst1|inst35|inst7~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~2clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst7~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~2clkctrl_outclk\,
	combout => \inst1|inst1|inst35|inst7~combout\);

-- Location: LABCELL_X32_Y34_N16
\inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst7~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst7~combout\ ) ) ) # ( 
-- \inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst7~combout\ ) ) ) # ( !\inst1|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ 
-- & ( !\inst1|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst7~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst7~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst7~combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst7~combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst7~combout\,
	datae => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N34
\inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst33|inst7~combout\ & ( \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~0_combout\) # 
-- ((!\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst36|inst7~combout\))) # (\inst1|inst3|inst4~1_combout\ & (\inst1|inst1|inst40|inst7~combout\))) ) ) ) # ( !\inst1|inst1|inst33|inst7~combout\ & ( 
-- \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & (((!\inst1|inst3|inst4~0_combout\) # (\inst1|inst1|inst36|inst7~combout\)))) # (\inst1|inst3|inst4~1_combout\ & 
-- (\inst1|inst1|inst40|inst7~combout\ & (\inst1|inst3|inst4~0_combout\))) ) ) ) # ( \inst1|inst1|inst33|inst7~combout\ & ( !\inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst3|inst4~1_combout\ & 
-- (((\inst1|inst3|inst4~0_combout\ & \inst1|inst1|inst36|inst7~combout\)))) # (\inst1|inst3|inst4~1_combout\ & (((!\inst1|inst3|inst4~0_combout\)) # (\inst1|inst1|inst40|inst7~combout\))) ) ) ) # ( !\inst1|inst1|inst33|inst7~combout\ & ( 
-- !\inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst3|inst4~0_combout\ & ((!\inst1|inst3|inst4~1_combout\ & ((\inst1|inst1|inst36|inst7~combout\))) # (\inst1|inst3|inst4~1_combout\ & 
-- (\inst1|inst1|inst40|inst7~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_inst4~1_combout\,
	datab => \inst1|inst1|inst40|ALT_INV_inst7~combout\,
	datac => \inst1|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst7~combout\,
	datae => \inst1|inst1|inst33|ALT_INV_inst7~combout\,
	dataf => \inst1|inst3|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X29_Y34_N35
\inst1|inst3|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst3|inst4~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|inst10~q\);

-- Location: LABCELL_X30_Y33_N12
\inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst1|inst3|inst10~q\ & ( \inst1|inst100|inst2|inst14~q\ & ( (\inst1|inst100|inst20|inst14~q\) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( !\inst1|inst3|inst10~q\ & ( 
-- \inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & \inst1|inst100|inst20|inst14~q\) ) ) ) # ( \inst1|inst3|inst10~q\ & ( !\inst1|inst100|inst2|inst14~q\ & ( (((!\inst1|inst100|inst2|inst12~q\ & !\inst1|inst100|inst2|inst16~q\)) # 
-- (\inst1|inst100|inst20|inst14~q\)) # (\inst1|inst100|inst2|inst10~q\) ) ) ) # ( !\inst1|inst3|inst10~q\ & ( !\inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (\inst1|inst100|inst20|inst14~q\ & ((\inst1|inst100|inst2|inst16~q\) # 
-- (\inst1|inst100|inst2|inst12~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010111101110111011100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datae => \inst1|inst3|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X23_Y32_N15
\inst8|inst100|inst1|inst9|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst10~q\);

-- Location: MLABCELL_X23_Y32_N12
\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|inst20~combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & 
-- (\inst8|inst100|inst1|inst9|inst2|inst10~q\)) # (\inst8|inst100|inst1|and~1_combout\ & ((\inst1|inst2|inst10~q\))) ) ) ) # ( !\inst8|inst100|inst1|inst20~combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & 
-- (!\inst8|inst100|inst1|inst9|inst2|inst10~q\)) # (\inst8|inst100|inst1|and~1_combout\ & ((!\inst1|inst2|inst10~q\))) ) ) ) # ( \inst8|inst100|inst1|inst20~combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ 
-- & (!\inst8|inst100|inst1|inst9|inst2|inst10~q\)) # (\inst8|inst100|inst1|and~1_combout\ & ((!\inst1|inst2|inst10~q\))) ) ) ) # ( !\inst8|inst100|inst1|inst20~combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( 
-- (!\inst8|inst100|inst1|and~1_combout\ & (\inst8|inst100|inst1|inst9|inst2|inst10~q\)) # (\inst8|inst100|inst1|and~1_combout\ & ((\inst1|inst2|inst10~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111110011111100000011001111110000000011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst10~q\,
	datac => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datad => \inst1|inst2|ALT_INV_inst10~q\,
	datae => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst32~q\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y32_N0
\inst8|inst100|inst1|inst19\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst19~combout\ = ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( \inst8|inst100|inst1|Rt1|inst2|inst100~q\ ) ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( !\inst8|inst100|inst1|Rt1|inst2|inst100~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datae => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|inst19~combout\);

-- Location: LABCELL_X24_Y32_N22
\inst8|inst100|inst1|Result1|X~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|X~1_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & !\inst8|inst100|inst1|Rt1|inst2|inst100~q\) ) ) # ( !\inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( 
-- (!\inst8|inst100|inst1|and~1_combout\ & \inst8|inst100|inst1|Rt1|inst2|inst100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datac => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|Result1|X~1_combout\);

-- Location: FF_X30_Y33_N9
\inst8|inst100|inst1|inst9|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst14~q\);

-- Location: MLABCELL_X31_Y33_N28
\inst8|inst100|inst1|inst8|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst8|18~0_combout\ = ( \inst8|inst100|inst1|and~1_combout\ & ( \inst1|inst2|inst14~q\ ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|inst9|inst2|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|inst8|18~0_combout\);

-- Location: MLABCELL_X23_Y32_N22
\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|inst8|18~0_combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst31~q\ & 
-- (\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ & (\inst8|inst100|inst1|Result1|inst2|inst30~q\ & !\inst8|inst100|inst1|inst20~combout\))) # (\inst8|inst100|inst1|Result1|inst2|inst31~q\ & ((!\inst8|inst100|inst1|inst20~combout\) # 
-- ((\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ & \inst8|inst100|inst1|Result1|inst2|inst30~q\)))) ) ) # ( !\inst8|inst100|inst1|inst8|18~0_combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst31~q\ & 
-- (\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ & (\inst8|inst100|inst1|Result1|inst2|inst30~q\ & \inst8|inst100|inst1|inst20~combout\))) # (\inst8|inst100|inst1|Result1|inst2|inst31~q\ & (((\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ 
-- & \inst8|inst100|inst1|Result1|inst2|inst30~q\)) # (\inst8|inst100|inst1|inst20~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100110111000000010011011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\,
	datad => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_18~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y32_N4
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst24~q\ & ( \inst8|inst100|inst1|inst8|5~0_combout\ ) ) # ( \inst8|inst100|inst1|Result1|inst2|inst24~q\ & ( 
-- !\inst8|inst100|inst1|inst8|5~0_combout\ & ( \inst8|inst100|inst1|inst20~combout\ ) ) ) # ( !\inst8|inst100|inst1|Result1|inst2|inst24~q\ & ( !\inst8|inst100|inst1|inst8|5~0_combout\ & ( \inst8|inst100|inst1|inst20~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	datae => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst24~q\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_5~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\);

-- Location: FF_X26_Y32_N23
\inst8|inst100|inst1|inst9|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst2~q\);

-- Location: MLABCELL_X26_Y32_N22
\inst8|inst100|inst1|inst8|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst8|6~0_combout\ = ( \inst8|inst100|inst1|and~1_combout\ & ( \inst1|inst2|inst2~q\ ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|inst9|inst2|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst2~q\,
	datad => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst2~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|inst8|6~0_combout\);

-- Location: LABCELL_X24_Y32_N26
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|inst20~combout\ & ( \inst8|inst100|inst1|inst8|6~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst2|inst27~q\ & 
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) ) ) ) # ( !\inst8|inst100|inst1|inst20~combout\ & ( \inst8|inst100|inst1|inst8|6~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) # 
-- (\inst8|inst100|inst1|Result1|inst2|inst27~q\) ) ) ) # ( \inst8|inst100|inst1|inst20~combout\ & ( !\inst8|inst100|inst1|inst8|6~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) # 
-- (\inst8|inst100|inst1|Result1|inst2|inst27~q\) ) ) ) # ( !\inst8|inst100|inst1|inst20~combout\ & ( !\inst8|inst100|inst1|inst8|6~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst2|inst27~q\ & 
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100001111111111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst27~q\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\,
	datae => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_6~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X26_Y33_N9
\inst8|inst100|inst1|inst9|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst3~q\);

-- Location: MLABCELL_X26_Y32_N26
\inst8|inst100|inst1|Result1|inst1|inst3|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\ = ( \inst1|inst2|inst3~q\ & ( (!\inst8|inst100|inst1|inst9|inst2|inst3~q\ $ (((!\inst8|inst100|inst1|Result1|inst2|inst100~q\) # (\inst8|inst100|inst1|Rt1|inst2|inst100~q\)))) # 
-- (\inst8|inst100|inst1|and~1_combout\) ) ) # ( !\inst1|inst2|inst3~q\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|inst9|inst2|inst3~q\ $ (((!\inst8|inst100|inst1|Result1|inst2|inst100~q\) # 
-- (\inst8|inst100|inst1|Rt1|inst2|inst100~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000100010001010000010001001111101011101110111110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datab => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst3~q\,
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datad => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	dataf => \inst1|inst2|ALT_INV_inst3~q\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\);

-- Location: FF_X31_Y33_N19
\inst8|inst100|inst1|inst9|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst19|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst8|inst100|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst9|inst2|inst4~q\);

-- Location: MLABCELL_X31_Y33_N18
\inst8|inst100|inst1|inst8|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst8|12~0_combout\ = ( \inst8|inst100|inst1|and~1_combout\ & ( \inst1|inst2|inst4~q\ ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|inst9|inst2|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst4~q\,
	datad => \inst8|inst100|inst1|inst9|inst2|ALT_INV_inst4~q\,
	dataf => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|inst8|12~0_combout\);

-- Location: LABCELL_X24_Y32_N38
\inst8|inst100|inst1|Result1|inst1|inst3|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ = ( \inst8|inst100|inst1|inst8|12~0_combout\ & ( !\inst8|inst100|inst1|inst20~combout\ ) ) # ( !\inst8|inst100|inst1|inst8|12~0_combout\ & ( \inst8|inst100|inst1|inst20~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_12~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\);

-- Location: LABCELL_X24_Y32_N8
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst28~q\ & 
-- (!\inst8|inst100|inst1|Result1|inst2|inst29~q\ & !\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\)) ) ) # ( !\inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst29~q\) # 
-- ((!\inst8|inst100|inst1|Result1|inst2|inst28~q\ & !\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111011101100110010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y32_N10
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|inst8|12~0_combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst29~q\ & 
-- (\inst8|inst100|inst1|Result1|inst2|inst28~q\ & (\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\ & !\inst8|inst100|inst1|inst20~combout\))) # (\inst8|inst100|inst1|Result1|inst2|inst29~q\ & ((!\inst8|inst100|inst1|inst20~combout\) # 
-- ((\inst8|inst100|inst1|Result1|inst2|inst28~q\ & \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\)))) ) ) # ( !\inst8|inst100|inst1|inst8|12~0_combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst29~q\ & 
-- (\inst8|inst100|inst1|Result1|inst2|inst28~q\ & (\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\ & \inst8|inst100|inst1|inst20~combout\))) # (\inst8|inst100|inst1|Result1|inst2|inst29~q\ & (((\inst8|inst100|inst1|Result1|inst2|inst28~q\ & 
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\)) # (\inst8|inst100|inst1|inst20~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100110111000000010011011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	datad => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_12~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X23_Y32_N28
\inst8|inst100|inst1|Result1|inst1|inst3|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\ = ( \inst8|inst100|inst1|inst8|18~0_combout\ & ( !\inst8|inst100|inst1|inst20~combout\ ) ) # ( !\inst8|inst100|inst1|inst8|18~0_combout\ & ( \inst8|inst100|inst1|inst20~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|ALT_INV_inst20~combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_18~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\);

-- Location: MLABCELL_X23_Y32_N20
\inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst31~q\ & 
-- (!\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ & !\inst8|inst100|inst1|Result1|inst2|inst30~q\)) ) ) # ( !\inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\ & ( (!\inst8|inst100|inst1|Result1|inst2|inst31~q\) # 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ & !\inst8|inst100|inst1|Result1|inst2|inst30~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datad => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X23_Y32_N30
\inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) # ( !\inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111101011101011111110101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X23_Y32_N10
\inst8|inst100|inst1|Result1|X~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|X~4_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst8|inst100|inst1|Result1|X~1_combout\)) # (\inst8|inst100|inst1|inst19~combout\) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst100|inst1|Result1|X~1_combout\ & 
-- (!\inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ $ (!\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\inst8|inst100|inst1|Result1|X~1_combout\ & (!\inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ $ 
-- (!\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst8|inst100|inst1|inst19~combout\) ) ) ) # ( !\inst8|inst100|inst1|Result1|inst2|inst32~q\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- \inst8|inst100|inst1|Result1|X~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110110111100000000011001100000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\,
	datab => \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst1|ALT_INV_inst19~combout\,
	datad => \inst8|inst100|inst1|Result1|ALT_INV_X~1_combout\,
	datae => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst32~q\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|X~4_combout\);

-- Location: FF_X23_Y32_N11
\inst8|inst100|inst1|Result1|inst2|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst32~q\);

-- Location: LABCELL_X24_Y32_N28
\inst8|inst100|inst1|Result1|inst2|inst31~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst8|inst100|inst1|Result1|inst2|inst100~q\ $ (\inst8|inst100|inst1|Rt1|inst2|inst100~q\)))) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst100~q\ $ 
-- (\inst8|inst100|inst1|Rt1|inst2|inst100~q\))) ) ) ) # ( !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & ((!\inst8|inst100|inst1|Result1|inst2|inst100~q\ $ 
-- (\inst8|inst100|inst1|Rt1|inst2|inst100~q\)) # (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011110000100100001001000011110000111100001111000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datab => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\);

-- Location: MLABCELL_X23_Y32_N24
\inst8|inst100|inst1|Result1|inst2|inst31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & ((!\inst8|inst100|inst1|Rt1|inst2|inst100~q\ $ 
-- (\inst8|inst100|inst1|Result1|inst2|inst100~q\)) # (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Rt1|inst2|inst100~q\ $ 
-- (\inst8|inst100|inst1|Result1|inst2|inst100~q\))) ) ) ) # ( !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & 
-- ((!\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst8|inst100|inst1|Rt1|inst2|inst100~q\ $ (\inst8|inst100|inst1|Result1|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000010100000101000001010101010101010101000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datab => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\);

-- Location: MLABCELL_X23_Y32_N2
\inst8|inst100|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( 
-- \inst8|inst100|inst1|Result1|inst2|inst32~q\ ) ) ) # ( !\inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ $ 
-- (!\inst8|inst100|inst1|Result1|inst2|inst32~q\ $ (\inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( \inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst1|inst3|inst7~combout\ $ (!\inst8|inst100|inst1|Result1|inst2|inst32~q\ $ 
-- (!\inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010110011001101001011010010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst32~q\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X23_Y32_N3
\inst8|inst100|inst1|Result1|inst2|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst31~q\);

-- Location: MLABCELL_X23_Y32_N4
\inst8|inst100|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst30~q\ & ( \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst31~q\ $ (((!\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ $ (\inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\)) # (\inst8|inst100|inst1|Result1|inst2|inst31~1_combout\))) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst30~q\ & ( \inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst31~q\ $ (((!\inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\) # 
-- (\inst8|inst100|inst1|Result1|inst2|inst31~1_combout\))) ) ) ) # ( \inst8|inst100|inst1|Result1|inst2|inst30~q\ & ( !\inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ & 
-- (!\inst8|inst100|inst1|Result1|inst2|inst31~q\ $ (\inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\))) ) ) ) # ( !\inst8|inst100|inst1|Result1|inst2|inst30~q\ & ( !\inst8|inst100|inst1|Result1|inst2|inst31~0_combout\ & ( 
-- (\inst8|inst100|inst1|Result1|inst2|inst31~1_combout\ & (!\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\ $ (!\inst8|inst100|inst1|Result1|inst2|inst31~q\ $ (\inst8|inst100|inst1|Result1|inst1|inst3|inst6~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101001000000001100001100111100001100110110100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\,
	datad => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~1_combout\,
	datae => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst31~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X23_Y32_N5
\inst8|inst100|inst1|Result1|inst2|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst30~q\);

-- Location: MLABCELL_X23_Y32_N32
\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X23_Y32_N34
\inst8|inst100|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst30~q\ $ (((\inst8|inst100|inst1|inst19~combout\) # (\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\))))) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst30~q\ $ 
-- (((!\inst8|inst100|inst1|Result1|inst1|inst3|inst5~combout\) # (\inst8|inst100|inst1|inst19~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100000000011000110000000010010011000000001001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst30~q\,
	datac => \inst8|inst100|inst1|ALT_INV_inst19~combout\,
	datad => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X23_Y32_N35
\inst8|inst100|inst1|Result1|inst2|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst29~q\);

-- Location: LABCELL_X24_Y32_N36
\inst8|inst100|inst1|Result1|X~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|X~2_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst29~q\ $ 
-- (!\inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ $ (((\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\) # (\inst8|inst100|inst1|Result1|inst2|inst28~q\)))) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst29~q\ $ (!\inst8|inst100|inst1|Result1|inst1|inst3|inst4~combout\ $ 
-- (((\inst8|inst100|inst1|Result1|inst2|inst28~q\ & \inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\,
	datad => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|X~2_combout\);

-- Location: LABCELL_X24_Y32_N20
\inst8|inst100|inst1|Result1|X~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|X~3_combout\ = ( \inst8|inst100|inst1|Result1|X~1_combout\ & ( ((\inst8|inst100|inst1|Result1|inst2|inst29~q\ & \inst8|inst100|inst1|inst19~combout\)) # (\inst8|inst100|inst1|Result1|X~2_combout\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|X~1_combout\ & ( (\inst8|inst100|inst1|Result1|inst2|inst29~q\ & \inst8|inst100|inst1|inst19~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst8|inst100|inst1|ALT_INV_inst19~combout\,
	datad => \inst8|inst100|inst1|Result1|ALT_INV_X~2_combout\,
	dataf => \inst8|inst100|inst1|Result1|ALT_INV_X~1_combout\,
	combout => \inst8|inst100|inst1|Result1|X~3_combout\);

-- Location: FF_X24_Y32_N21
\inst8|inst100|inst1|Result1|inst2|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|X~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst28~q\);

-- Location: LABCELL_X24_Y32_N14
\inst8|inst100|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst8|inst100|inst1|and~1_combout\ & ( 
-- \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst28~q\ $ (((\inst8|inst100|inst1|inst19~combout\) # 
-- (\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\))) ) ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst28~q\ $ (((!\inst8|inst100|inst1|Result1|inst1|inst3|inst3~combout\) # (\inst8|inst100|inst1|inst19~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001010101000000000000000010011001010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datab => \inst8|inst100|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	datad => \inst8|inst100|inst1|ALT_INV_inst19~combout\,
	datae => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X24_Y32_N15
\inst8|inst100|inst1|Result1|inst2|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst27~q\);

-- Location: LABCELL_X24_Y32_N34
\inst8|inst100|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ & ( \inst8|inst100|inst1|inst8|6~0_combout\ & ( 
-- (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst27~q\ $ (((!\inst8|inst100|inst1|Result1|inst2|inst100~q\) # (\inst8|inst100|inst1|Rt1|inst2|inst100~q\))))) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ & ( \inst8|inst100|inst1|inst8|6~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst27~q\ $ 
-- (((!\inst8|inst100|inst1|Rt1|inst2|inst100~q\) # (\inst8|inst100|inst1|Result1|inst2|inst100~q\))))) ) ) ) # ( \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ & ( !\inst8|inst100|inst1|inst8|6~0_combout\ & ( 
-- (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst27~q\ $ (((!\inst8|inst100|inst1|Rt1|inst2|inst100~q\) # (\inst8|inst100|inst1|Result1|inst2|inst100~q\))))) ) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ & ( !\inst8|inst100|inst1|inst8|6~0_combout\ & ( (!\inst8|inst100|inst1|and~1_combout\ & (!\inst8|inst100|inst1|Result1|inst2|inst27~q\ $ 
-- (((!\inst8|inst100|inst1|Result1|inst2|inst100~q\) # (\inst8|inst100|inst1|Rt1|inst2|inst100~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010000010001010000000101000101000000010100000101010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datab => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst27~q\,
	datad => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datae => \inst8|inst100|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\,
	dataf => \inst8|inst100|inst1|inst8|ALT_INV_6~0_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X24_Y32_N35
\inst8|inst100|inst1|Result1|inst2|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst24~q\);

-- Location: MLABCELL_X23_Y32_N16
\inst8|inst100|inst1|Result1|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|X~0_combout\ = ( \inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( \inst1|inst2|inst10~q\ ) ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( \inst8|inst100|inst1|Result1|inst2|inst100~q\ 
-- & ( !\inst8|inst100|inst1|Result1|inst2|inst24~q\ $ (((!\inst8|inst100|inst1|inst8|5~0_combout\) # (\inst8|inst100|inst1|Rt1|inst2|inst100~q\))) ) ) ) # ( \inst8|inst100|inst1|and~1_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( 
-- \inst1|inst2|inst10~q\ ) ) ) # ( !\inst8|inst100|inst1|and~1_combout\ & ( !\inst8|inst100|inst1|Result1|inst2|inst100~q\ & ( !\inst8|inst100|inst1|Result1|inst2|inst24~q\ $ (((!\inst8|inst100|inst1|inst8|5~0_combout\) # 
-- (!\inst8|inst100|inst1|Rt1|inst2|inst100~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000000001111111101001011010010110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|inst8|ALT_INV_5~0_combout\,
	datab => \inst8|inst100|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst24~q\,
	datad => \inst1|inst2|ALT_INV_inst10~q\,
	datae => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst8|inst100|inst1|Result1|X~0_combout\);

-- Location: FF_X23_Y32_N17
\inst8|inst100|inst1|Result1|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst10~q\);

-- Location: LABCELL_X30_Y33_N0
\inst8|inst100|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst10~q\ & ( (!\inst8|inst100|inst1|and~1_combout\) # (\inst1|inst2|inst12~q\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst10~q\ & ( (\inst8|inst100|inst1|and~1_combout\ & \inst1|inst2|inst12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datad => \inst1|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst10~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y33_N1
\inst8|inst100|inst1|Result1|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst12~q\);

-- Location: FF_X29_Y32_N9
\inst8|inst100|inst1|inst28|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst12~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst12~q\);

-- Location: LABCELL_X30_Y32_N8
\inst8|inst100|inst|inst7|inst3|23~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~5_combout\ = ( \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( !\inst1|inst2|inst12~q\ ) ) # ( !\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|ALT_INV_inst12~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~5_combout\);

-- Location: MLABCELL_X29_Y32_N8
\inst8|inst100|inst|inst7|inst3|23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~2_combout\ = ( \inst8|inst100|inst1|inst28|inst2|inst12~q\ & ( \inst8|inst100|inst|inst7|inst3|23~5_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst8|inst100|inst|inst7|inst3|23~4_combout\) # 
-- ((\inst9|inst|inst7|inst4|5~2_combout\ & \inst9|inst|inst7|inst4|11~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\) # ((\inst9|inst|inst7|inst4|11~2_combout\)))) ) ) ) # ( 
-- !\inst8|inst100|inst1|inst28|inst2|inst12~q\ & ( \inst8|inst100|inst|inst7|inst3|23~5_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst8|inst100|inst|inst7|inst3|23~4_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst9|inst|inst7|inst4|11~2_combout\)))) # (\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\) # ((\inst9|inst|inst7|inst4|11~2_combout\)))) ) ) ) # ( \inst8|inst100|inst1|inst28|inst2|inst12~q\ & ( 
-- !\inst8|inst100|inst|inst7|inst3|23~5_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst8|inst100|inst|inst7|inst3|23~4_combout\) # ((\inst9|inst|inst7|inst4|5~2_combout\ & \inst9|inst|inst7|inst4|11~2_combout\)))) ) ) ) # ( 
-- !\inst8|inst100|inst1|inst28|inst2|inst12~q\ & ( !\inst8|inst100|inst|inst7|inst3|23~5_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst8|inst100|inst|inst7|inst3|23~4_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst9|inst|inst7|inst4|11~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001010001011100100110101011110010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~4_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datae => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst12~q\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~5_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~2_combout\);

-- Location: LABCELL_X24_Y33_N24
\inst8|inst100|inst|inst7|inst3|23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~1_combout\ = ( \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & 
-- ((!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)))) ) ) ) # 
-- ( \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)) ) ) ) # ( 
-- !\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0DUPLICATE_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & !\inst9|inst|inst7|inst4|6~1_combout\)) # 
-- (\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & \inst9|inst|inst7|inst4|6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000000001000100100010000000000000000000000001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datac => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0DUPLICATE_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datae => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~1_combout\);

-- Location: MLABCELL_X29_Y32_N30
\inst8|inst100|inst|inst7|inst3|23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|23~3_combout\ = ( \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~1_combout\ & ( ((!\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ((!\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst8|inst100|inst|inst7|inst3|23~2_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( 
-- \inst8|inst100|inst|inst7|inst3|23~1_combout\ & ( (!\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst8|inst100|inst|inst7|inst3|23~2_combout\) ) ) ) # ( \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( 
-- !\inst8|inst100|inst|inst7|inst3|23~1_combout\ & ( (!\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst8|inst100|inst|inst7|inst3|23~2_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( 
-- !\inst8|inst100|inst|inst7|inst3|23~1_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011001101111111111000011111111111110011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst8|inst100|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~2_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~0_combout\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~1_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|23~3_combout\);

-- Location: FF_X29_Y32_N23
\inst8|inst4|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|23~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst12~q\);

-- Location: MLABCELL_X34_Y32_N30
\inst10|gdfx_temp0[5]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[5]~2_combout\ = ( \inst8|inst4|inst14~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(5) ) ) # ( !\inst8|inst4|inst14~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(5) & ( !\inst11|inst|27~combout\ ) ) ) # ( 
-- \inst8|inst4|inst14~q\ & ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(5) & ( \inst11|inst|27~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|ALT_INV_27~combout\,
	datae => \inst8|inst4|ALT_INV_inst14~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	combout => \inst10|gdfx_temp0[5]~2_combout\);

-- Location: FF_X34_Y32_N31
\inst10|inst99|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[5]~2_combout\,
	asdata => \inst8|inst4|inst14~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst14~q\);

-- Location: MLABCELL_X31_Y36_N20
\inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst16~q\ & ( (!\inst15|inst~combout\ & (((\inst10|inst99|inst14~q\)))) # (\inst15|inst~combout\ & 
-- (!\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ ((!\inst10|inst4|inst14~q\)))) ) ) # ( !\inst10|inst4|inst16~q\ & ( (!\inst15|inst~combout\ & ((\inst10|inst99|inst14~q\))) # (\inst15|inst~combout\ & 
-- (\inst10|inst4|inst14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ALT_INV_inst~combout\,
	datab => \inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst10|inst4|ALT_INV_inst14~q\,
	datad => \inst10|inst99|ALT_INV_inst14~q\,
	dataf => \inst10|inst4|ALT_INV_inst16~q\,
	combout => \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y36_N24
\inst1|inst1|inst36|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst4~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( \inst1|inst1|inst36|inst4~combout\ & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( 
-- \inst1|inst1|inst36|inst4~combout\ ) ) # ( GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ( !\inst1|inst1|inst36|inst4~combout\ & ( \inst20|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	dataf => \inst1|inst1|inst36|ALT_INV_inst4~combout\,
	combout => \inst1|inst1|inst36|inst4~combout\);

-- Location: MLABCELL_X31_Y36_N38
\inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst4~combout\ & ( \inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst4~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst4~combout\ & ( \inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # 
-- (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ 
-- & ((\inst1|inst1|inst41|inst4~combout\))))) ) ) ) # ( \inst1|inst1|inst35|inst4~combout\ & ( !\inst1|inst1|inst32|inst4~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (((\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) # (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst41|inst4~combout\))))) ) ) ) # ( !\inst1|inst1|inst35|inst4~combout\ & ( !\inst1|inst1|inst32|inst4~combout\ & ( 
-- (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst39|inst4~combout\)) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ 
-- & ((\inst1|inst1|inst41|inst4~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst4~combout\,
	datab => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst4~combout\,
	datad => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst4~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst4~combout\,
	combout => \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y36_N34
\inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst40|inst4~combout\ & ( \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (((!\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst36|inst4~combout\))) # (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst33|inst4~combout\)))) ) ) ) # ( !\inst1|inst1|inst40|inst4~combout\ & ( 
-- \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst36|inst4~combout\))) # (\inst1|inst2|inst10~1_combout\ & 
-- (((\inst1|inst1|inst33|inst4~combout\ & !\inst1|inst2|inst10~0_combout\)))) ) ) ) # ( \inst1|inst1|inst40|inst4~combout\ & ( !\inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (\inst1|inst1|inst36|inst4~combout\ & ((\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst33|inst4~combout\)))) ) ) ) # ( !\inst1|inst1|inst40|inst4~combout\ & ( 
-- !\inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst36|inst4~combout\ & ((\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & 
-- (((\inst1|inst1|inst33|inst4~combout\ & !\inst1|inst2|inst10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst36|ALT_INV_inst4~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst4~combout\,
	datad => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datae => \inst1|inst1|inst40|ALT_INV_inst4~combout\,
	dataf => \inst1|inst2|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y36_N35
\inst1|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst14~q\);

-- Location: LABCELL_X30_Y33_N6
\inst8|inst100|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst12~q\ & ( (!\inst8|inst100|inst1|and~1_combout\) # (\inst1|inst2|inst14~q\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst12~q\ & ( (\inst1|inst2|inst14~q\ & \inst8|inst100|inst1|and~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_inst14~q\,
	datad => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst12~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y33_N7
\inst8|inst100|inst1|Result1|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst14~q\);

-- Location: LABCELL_X30_Y33_N26
\inst8|inst100|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst14~q\ & ( (!\inst8|inst100|inst1|and~1_combout\) # (\inst1|inst2|inst16~q\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst14~q\ & ( (\inst8|inst100|inst1|and~1_combout\ & \inst1|inst2|inst16~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datad => \inst1|inst2|ALT_INV_inst16~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst14~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X30_Y33_N27
\inst8|inst100|inst1|Result1|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst16~q\);

-- Location: FF_X29_Y33_N9
\inst8|inst100|inst1|inst28|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst16~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst16~q\);

-- Location: MLABCELL_X29_Y33_N8
\inst8|inst100|inst|inst7|inst3|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|17~0_combout\ = ( !\inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( ((!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (\inst8|inst100|inst1|inst28|inst2|inst16~q\)) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- (((\inst8|inst100|inst|inst|inst3|17~0_combout\))))) ) ) # ( \inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- ((((!\inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (!\inst19|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ $ 
-- ((!\inst1|inst2|inst16~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100110111100001001000111111001111111101111000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datab => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datac => \inst1|inst2|ALT_INV_inst16~q\,
	datad => \inst8|inst100|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\,
	dataf => \inst8|inst100|inst|inst|inst3|ALT_INV_17~0_combout\,
	datag => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst16~q\,
	combout => \inst8|inst100|inst|inst7|inst3|17~0_combout\);

-- Location: FF_X29_Y32_N1
\inst8|inst4|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst16~q\);

-- Location: LABCELL_X32_Y32_N20
\inst10|gdfx_temp0[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[3]~4_combout\ = ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(3) & ( (!\inst11|inst|27~combout\) # (\inst8|inst4|inst4~q\) ) ) # ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(3) & ( (\inst11|inst|27~combout\ & 
-- \inst8|inst4|inst4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|ALT_INV_27~combout\,
	datad => \inst8|inst4|ALT_INV_inst4~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	combout => \inst10|gdfx_temp0[3]~4_combout\);

-- Location: FF_X32_Y32_N21
\inst10|inst99|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[3]~4_combout\,
	asdata => \inst8|inst4|inst4~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst4~q\);

-- Location: LABCELL_X32_Y32_N10
\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst4~q\ & ( \inst10|inst4|inst2~q\ & ( (!\inst15|inst~combout\ & (\inst10|inst99|inst4~q\)) # (\inst15|inst~combout\ & (((!\inst10|inst4|inst100~q\) # 
-- (!\inst10|inst4|inst3~q\)))) ) ) ) # ( !\inst10|inst4|inst4~q\ & ( \inst10|inst4|inst2~q\ & ( (!\inst15|inst~combout\ & (\inst10|inst99|inst4~q\)) # (\inst15|inst~combout\ & (((\inst10|inst4|inst100~q\ & \inst10|inst4|inst3~q\)))) ) ) ) # ( 
-- \inst10|inst4|inst4~q\ & ( !\inst10|inst4|inst2~q\ & ( (\inst15|inst~combout\) # (\inst10|inst99|inst4~q\) ) ) ) # ( !\inst10|inst4|inst4~q\ & ( !\inst10|inst4|inst2~q\ & ( (\inst10|inst99|inst4~q\ & !\inst15|inst~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011101000100010001110111011101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst99|ALT_INV_inst4~q\,
	datab => \inst15|ALT_INV_inst~combout\,
	datac => \inst10|inst4|ALT_INV_inst100~q\,
	datad => \inst10|inst4|ALT_INV_inst3~q\,
	datae => \inst10|inst4|ALT_INV_inst4~q\,
	dataf => \inst10|inst4|ALT_INV_inst2~q\,
	combout => \inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y33_N34
\inst1|inst1|inst33|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst3~combout\ = ( \inst1|inst1|inst33|inst3~combout\ & ( (!GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\)) # (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|inst1|inst33|inst3~combout\ & ( 
-- (\inst20|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	dataf => \inst1|inst1|inst33|ALT_INV_inst3~combout\,
	combout => \inst1|inst1|inst33|inst3~combout\);

-- Location: MLABCELL_X31_Y34_N8
\inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst3~combout\ ) ) ) # ( !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst3~combout\ ) ) ) # ( 
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst3~combout\ ) ) ) # ( 
-- !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst3~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst3~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst3~combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst3~combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst3~combout\,
	datae => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N14
\inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst40|inst3~combout\ & ( \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & 
-- ((!\inst1|inst2|inst10~1_combout\) # ((\inst1|inst1|inst33|inst3~combout\)))) # (\inst1|inst2|inst10~0_combout\ & (((\inst1|inst1|inst36|inst3~combout\)) # (\inst1|inst2|inst10~1_combout\))) ) ) ) # ( !\inst1|inst1|inst40|inst3~combout\ & ( 
-- \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & ((!\inst1|inst2|inst10~1_combout\) # ((\inst1|inst1|inst33|inst3~combout\)))) # (\inst1|inst2|inst10~0_combout\ & 
-- (!\inst1|inst2|inst10~1_combout\ & ((\inst1|inst1|inst36|inst3~combout\)))) ) ) ) # ( \inst1|inst1|inst40|inst3~combout\ & ( !\inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & 
-- (\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst33|inst3~combout\))) # (\inst1|inst2|inst10~0_combout\ & (((\inst1|inst1|inst36|inst3~combout\)) # (\inst1|inst2|inst10~1_combout\))) ) ) ) # ( !\inst1|inst1|inst40|inst3~combout\ & ( 
-- !\inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & (\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst33|inst3~combout\))) # (\inst1|inst2|inst10~0_combout\ & 
-- (!\inst1|inst2|inst10~1_combout\ & ((\inst1|inst1|inst36|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst1|inst33|ALT_INV_inst3~combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst3~combout\,
	datae => \inst1|inst1|inst40|ALT_INV_inst3~combout\,
	dataf => \inst1|inst2|inst33|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N15
\inst1|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst4~q\);

-- Location: LABCELL_X32_Y33_N18
\inst8|inst100|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst2|inst4~q\ & ( \inst8|inst100|inst1|Result1|inst2|inst16~q\ ) ) # ( !\inst1|inst2|inst4~q\ & ( 
-- \inst8|inst100|inst1|Result1|inst2|inst16~q\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( \inst1|inst2|inst4~q\ & ( !\inst8|inst100|inst1|Result1|inst2|inst16~q\ & ( \inst8|inst100|inst1|and~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datae => \inst1|inst2|ALT_INV_inst4~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst16~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y33_N19
\inst8|inst100|inst1|Result1|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst4~q\);

-- Location: LABCELL_X32_Y32_N22
\inst8|inst100|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\inst8|inst100|inst1|and~1_combout\ & (\inst8|inst100|inst1|Result1|inst2|inst4~q\)) # (\inst8|inst100|inst1|and~1_combout\ & 
-- ((\inst1|inst2|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst4~q\,
	datac => \inst1|inst2|ALT_INV_inst3~q\,
	datad => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y32_N13
\inst8|inst100|inst1|Result1|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst3~q\);

-- Location: FF_X26_Y32_N37
\inst8|inst100|inst1|inst28|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst3~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst3~q\);

-- Location: MLABCELL_X26_Y33_N10
\inst8|inst100|inst|inst7|inst3|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|11~0_combout\ = ( !\inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (((\inst8|inst100|inst1|inst28|inst2|inst3~q\)))) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- (\inst8|inst100|inst|inst|inst3|11~0_combout\)) ) ) # ( \inst8|inst100|inst|inst7|inst3|6~1_combout\ & ( ((!\inst8|inst100|inst|inst7|inst3|6~0_combout\ & 
-- (((!\inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & (!\inst1|inst2|inst3~q\ $ 
-- (((!\inst19|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101110011110000001100011101000111011111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst|inst|inst3|ALT_INV_11~0_combout\,
	datab => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datac => \inst1|inst2|ALT_INV_inst3~q\,
	datad => \inst8|inst100|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datag => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst3~q\,
	combout => \inst8|inst100|inst|inst7|inst3|11~0_combout\);

-- Location: FF_X29_Y32_N25
\inst8|inst4|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst3~q\);

-- Location: LABCELL_X32_Y32_N12
\inst10|gdfx_temp0[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[1]~6_combout\ = ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(1) & ( (!\inst11|inst|27~combout\) # (\inst8|inst4|inst2~q\) ) ) # ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(1) & ( (\inst11|inst|27~combout\ & 
-- \inst8|inst4|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|ALT_INV_27~combout\,
	datad => \inst8|inst4|ALT_INV_inst2~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	combout => \inst10|gdfx_temp0[1]~6_combout\);

-- Location: FF_X32_Y32_N13
\inst10|inst99|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[1]~6_combout\,
	asdata => \inst8|inst4|inst2~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst2~q\);

-- Location: LABCELL_X32_Y32_N14
\inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst15|inst~combout\ & ( !\inst10|inst4|inst2~q\ $ (!\inst10|inst4|inst100~q\) ) ) # ( !\inst15|inst~combout\ & ( \inst10|inst99|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|ALT_INV_inst2~q\,
	datab => \inst10|inst4|ALT_INV_inst100~q\,
	datac => \inst10|inst99|ALT_INV_inst2~q\,
	dataf => \inst15|ALT_INV_inst~combout\,
	combout => \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N10
\inst1|inst1|inst40|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst40|inst1~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~5clkctrl_outclk\) & ( \inst1|inst1|inst40|inst1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst1~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~5clkctrl_outclk\,
	combout => \inst1|inst1|inst40|inst1~combout\);

-- Location: MLABCELL_X31_Y34_N36
\inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst1~combout\ ) ) ) # ( !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst1~combout\ ) ) ) # ( 
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst1~combout\ ) ) ) # ( 
-- !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst1~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst1~combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst1~combout\,
	datad => \inst1|inst1|inst32|ALT_INV_inst1~combout\,
	datae => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N6
\inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst33|inst1~combout\ & ( \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\) # 
-- ((!\inst1|inst2|inst10~1_combout\ & ((\inst1|inst1|inst36|inst1~combout\))) # (\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst40|inst1~combout\))) ) ) ) # ( !\inst1|inst1|inst33|inst1~combout\ & ( 
-- \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst36|inst1~combout\)))) # (\inst1|inst2|inst10~1_combout\ & 
-- (\inst1|inst1|inst40|inst1~combout\ & (\inst1|inst2|inst10~0_combout\))) ) ) ) # ( \inst1|inst1|inst33|inst1~combout\ & ( !\inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (((\inst1|inst2|inst10~0_combout\ & \inst1|inst1|inst36|inst1~combout\)))) # (\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst40|inst1~combout\))) ) ) ) # ( !\inst1|inst1|inst33|inst1~combout\ & ( 
-- !\inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst10~0_combout\ & ((!\inst1|inst2|inst10~1_combout\ & ((\inst1|inst1|inst36|inst1~combout\))) # (\inst1|inst2|inst10~1_combout\ & 
-- (\inst1|inst1|inst40|inst1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst40|ALT_INV_inst1~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datad => \inst1|inst1|inst36|ALT_INV_inst1~combout\,
	datae => \inst1|inst1|inst33|ALT_INV_inst1~combout\,
	dataf => \inst1|inst2|inst18|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N7
\inst1|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst2~q\);

-- Location: MLABCELL_X26_Y32_N38
\inst8|inst100|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst3~q\ & ( (!\inst8|inst100|inst1|and~1_combout\) # (\inst1|inst2|inst2~q\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst3~q\ & ( (\inst8|inst100|inst1|and~1_combout\ & \inst1|inst2|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst2~q\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst3~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X26_Y32_N39
\inst8|inst100|inst1|Result1|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst2~q\);

-- Location: MLABCELL_X26_Y32_N34
\inst8|inst100|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|Result1|inst2|inst2~q\ & ( (!\inst8|inst100|inst1|and~1_combout\) # (\inst1|inst2|inst100~q\) ) ) # ( 
-- !\inst8|inst100|inst1|Result1|inst2|inst2~q\ & ( (\inst1|inst2|inst100~q\ & \inst8|inst100|inst1|and~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst100~q\,
	datab => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	dataf => \inst8|inst100|inst1|Result1|inst2|ALT_INV_inst2~q\,
	combout => \inst8|inst100|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X26_Y32_N35
\inst8|inst100|inst1|Result1|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|Result1|inst2|inst100~q\);

-- Location: FF_X26_Y32_N7
\inst8|inst100|inst1|inst28|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst100~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst100~q\);

-- Location: MLABCELL_X26_Y32_N6
\inst8|inst100|inst|inst7|inst3|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|5~0_combout\ = ( \inst8|inst100|inst1|inst28|inst2|inst100~q\ & ( \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~1_combout\ & 
-- ((!\inst8|inst100|inst|inst7|inst3|6~0_combout\) # ((!\inst8|inst100|inst|inst|inst3|5~0_combout\)))) # (\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (((!\inst1|inst2|inst100~q\)))) ) ) ) # ( !\inst8|inst100|inst1|inst28|inst2|inst100~q\ & ( 
-- \inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & ((!\inst8|inst100|inst|inst|inst3|5~0_combout\)))) # 
-- (\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (((!\inst1|inst2|inst100~q\)))) ) ) ) # ( \inst8|inst100|inst1|inst28|inst2|inst100~q\ & ( !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~1_combout\ & 
-- ((!\inst8|inst100|inst|inst7|inst3|6~0_combout\) # ((!\inst8|inst100|inst|inst|inst3|5~0_combout\)))) # (\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (((\inst1|inst2|inst100~q\)))) ) ) ) # ( !\inst8|inst100|inst1|inst28|inst2|inst100~q\ & ( 
-- !\inst19|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (\inst8|inst100|inst|inst7|inst3|6~0_combout\ & ((!\inst8|inst100|inst|inst|inst3|5~0_combout\)))) # 
-- (\inst8|inst100|inst|inst7|inst3|6~1_combout\ & (((\inst1|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110011111110100011001101010000110011001111101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst100~q\,
	datac => \inst8|inst100|inst|inst|inst3|ALT_INV_5~0_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~1_combout\,
	datae => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst100~q\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|5~0_combout\);

-- Location: FF_X29_Y32_N33
\inst8|inst4|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst|inst7|inst3|5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst4|inst100~q\);

-- Location: LABCELL_X32_Y32_N16
\inst10|gdfx_temp0[0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[0]~7_combout\ = ( \inst11|inst|27~combout\ & ( \inst8|inst4|inst100~q\ ) ) # ( !\inst11|inst|27~combout\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst4|ALT_INV_inst100~q\,
	datac => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst11|inst|ALT_INV_27~combout\,
	combout => \inst10|gdfx_temp0[0]~7_combout\);

-- Location: MLABCELL_X34_Y32_N26
\inst10|gdfx_temp0[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[7]~0_combout\ = ( \inst8|inst4|inst10~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(7) ) ) # ( !\inst8|inst4|inst10~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(7) & ( !\inst11|inst|27~combout\ ) ) ) # ( 
-- \inst8|inst4|inst10~q\ & ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(7) & ( \inst11|inst|27~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|ALT_INV_27~combout\,
	datae => \inst8|inst4|ALT_INV_inst10~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	combout => \inst10|gdfx_temp0[7]~0_combout\);

-- Location: FF_X34_Y32_N27
\inst10|inst99|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[7]~0_combout\,
	asdata => \inst8|inst4|inst10~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst10~q\);

-- Location: FF_X30_Y32_N1
\inst|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst10~q\);

-- Location: FF_X30_Y32_N31
\inst1|inst4|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst10~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst10~q\);

-- Location: FF_X30_Y32_N15
\inst8|inst6|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst10~q\);

-- Location: FF_X32_Y32_N5
\inst10|inst4|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst10~q\);

-- Location: LABCELL_X32_Y32_N30
\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ = ( \inst10|inst4|inst10~q\ & ( (!\inst15|inst~combout\ & (((\inst10|inst99|inst10~q\)))) # (\inst15|inst~combout\ & ((!\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\) # 
-- ((!\inst10|inst4|inst12~q\)))) ) ) # ( !\inst10|inst4|inst10~q\ & ( (!\inst15|inst~combout\ & (((\inst10|inst99|inst10~q\)))) # (\inst15|inst~combout\ & (\inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ((\inst10|inst4|inst12~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datab => \inst10|inst99|ALT_INV_inst10~q\,
	datac => \inst15|ALT_INV_inst~combout\,
	datad => \inst10|inst4|ALT_INV_inst12~q\,
	dataf => \inst10|inst4|ALT_INV_inst10~q\,
	combout => \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X29_Y34_N4
\inst1|inst1|inst33|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst7~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst1|inst1|inst33|inst7~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	datad => \inst1|inst1|inst33|ALT_INV_inst7~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst7~combout\);

-- Location: LABCELL_X32_Y34_N18
\inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst7~combout\ ) ) ) # ( !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst7~combout\ ) ) ) # ( 
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst7~combout\ ) ) ) # ( 
-- !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst7~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst7~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst7~combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst7~combout\,
	datad => \inst1|inst1|inst32|ALT_INV_inst7~combout\,
	datae => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N34
\inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst36|inst7~combout\ & ( \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\) # 
-- ((!\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst33|inst7~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst7~combout\)))) ) ) ) # ( !\inst1|inst1|inst36|inst7~combout\ & ( 
-- \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & 
-- (\inst1|inst1|inst33|inst7~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst7~combout\))))) ) ) ) # ( \inst1|inst1|inst36|inst7~combout\ & ( !\inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst33|inst7~combout\)) # (\inst1|inst2|inst10~0_combout\ & 
-- ((\inst1|inst1|inst40|inst7~combout\))))) ) ) ) # ( !\inst1|inst1|inst36|inst7~combout\ & ( !\inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & 
-- (\inst1|inst1|inst33|inst7~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst7~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst33|ALT_INV_inst7~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datad => \inst1|inst1|inst40|ALT_INV_inst7~combout\,
	datae => \inst1|inst1|inst36|ALT_INV_inst7~combout\,
	dataf => \inst1|inst2|inst15|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N35
\inst1|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst15|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst10~q\);

-- Location: LABCELL_X30_Y33_N24
\inst8|inst100|inst|inst|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst3|24~0_combout\ = ( \inst9|inst|inst7|inst4|5~2_combout\ & ( (!\inst1|inst2|inst10~q\ & (!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ((!\inst1|inst3|inst10~q\) # (\inst28|inst1~0_combout\)))) ) ) # ( 
-- !\inst9|inst|inst7|inst4|5~2_combout\ & ( (!\inst1|inst2|inst10~q\) # ((!\inst19|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ((!\inst1|inst3|inst10~q\) # (\inst28|inst1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101010111011111010101010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst3|ALT_INV_inst10~q\,
	datac => \inst28|ALT_INV_inst1~0_combout\,
	datad => \inst19|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	combout => \inst8|inst100|inst|inst|inst3|24~0_combout\);

-- Location: LABCELL_X30_Y33_N32
\inst8|inst100|inst13|inst8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst13|inst8~0_combout\ = ( \inst1|inst2|inst10~q\ & ( !\inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ ) ) # ( !\inst1|inst2|inst10~q\ & ( \inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst19|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst2|ALT_INV_inst10~q\,
	combout => \inst8|inst100|inst13|inst8~0_combout\);

-- Location: LABCELL_X30_Y33_N2
\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst2|inst10~q\ & ( !\inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ $ (((!\inst9|inst|inst7|inst4|11~1_combout\) # 
-- (\inst9|inst|inst7|inst4|11~0_combout\))) ) ) # ( !\inst1|inst2|inst10~q\ & ( !\inst19|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ $ (((\inst9|inst|inst7|inst4|11~1_combout\ & !\inst9|inst|inst7|inst4|11~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110101010101001011010101001011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	dataf => \inst1|inst2|ALT_INV_inst10~q\,
	combout => \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y33_N0
\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # ((!\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((!\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((\inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000001110100000000011111111110001011111111111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst8|inst100|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y33_N31
\inst8|inst100|inst1|inst28|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst100|inst1|Result1|inst2|inst10~q\,
	sload => VCC,
	ena => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst28|inst2|inst10~q\);

-- Location: MLABCELL_X31_Y33_N26
\inst8|inst100|inst6|inst3|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst6|inst3|inst7~combout\ = ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( \inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( \inst9|inst|inst7|inst4|11~1_combout\ ) ) ) # ( \inst9|inst|inst7|inst4|11~0_combout\ & ( 
-- !\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) # ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( !\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( !\inst9|inst|inst7|inst4|11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	dataf => \inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst6|inst3|inst7~combout\);

-- Location: MLABCELL_X29_Y33_N30
\inst8|inst100|inst|inst6|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst6|inst3|24~0_combout\ = ( \inst8|inst100|inst1|inst28|inst2|inst10~q\ & ( \inst8|inst100|inst6|inst3|inst7~combout\ & ( (!\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (((\inst1|inst2|inst12~q\ & \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst9|inst|inst7|inst4|5~2_combout\) ) ) ) # ( !\inst8|inst100|inst1|inst28|inst2|inst10~q\ & ( 
-- \inst8|inst100|inst6|inst3|inst7~combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\ & (!\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst12~q\ & 
-- \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) ) # ( \inst8|inst100|inst1|inst28|inst2|inst10~q\ & ( !\inst8|inst100|inst6|inst3|inst7~combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst1|inst2|inst12~q\)))) # 
-- (\inst9|inst|inst7|inst4|5~2_combout\) ) ) ) # ( !\inst8|inst100|inst1|inst28|inst2|inst10~q\ & ( !\inst8|inst100|inst6|inst3|inst7~combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\ & 
-- (!\inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst1|inst2|inst12~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000001100101101110011111111000000100001001111001110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst12~q\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst8|inst100|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst1|inst28|inst2|ALT_INV_inst10~q\,
	dataf => \inst8|inst100|inst6|inst3|ALT_INV_inst7~combout\,
	combout => \inst8|inst100|inst|inst6|inst3|24~0_combout\);

-- Location: MLABCELL_X29_Y33_N20
\inst8|inst100|inst|inst|inst2|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst|inst2|24~0_combout\ = ( \inst8|inst100|inst13|inst8~0_combout\ & ( \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- ((!\inst1|inst2|inst12~q\ & ((!\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\))) # (\inst1|inst2|inst12~q\ & (\inst9|inst|inst7|inst4|11~2_combout\))) ) ) ) # ( !\inst8|inst100|inst13|inst8~0_combout\ & ( 
-- \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst9|inst|inst7|inst4|5~2_combout\ & ((!\inst1|inst2|inst12~q\ & ((\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\))) # 
-- (\inst1|inst2|inst12~q\ & (!\inst9|inst|inst7|inst4|11~2_combout\)))) ) ) ) # ( \inst8|inst100|inst13|inst8~0_combout\ & ( !\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|5~2_combout\) # ((!\inst1|inst2|inst12~q\ & (!\inst9|inst|inst7|inst4|11~2_combout\)) # (\inst1|inst2|inst12~q\ & ((!\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- !\inst8|inst100|inst13|inst8~0_combout\ & ( !\inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst9|inst|inst7|inst4|5~2_combout\ & ((!\inst1|inst2|inst12~q\ & 
-- (\inst9|inst|inst7|inst4|11~2_combout\)) # (\inst1|inst2|inst12~q\ & ((\inst19|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111111111111101100000000000010011101111111110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst12~q\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datac => \inst19|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datae => \inst8|inst100|inst13|ALT_INV_inst8~0_combout\,
	dataf => \inst8|inst100|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst100|inst|inst|inst2|24~0_combout\);

-- Location: MLABCELL_X29_Y33_N32
\inst8|inst100|inst|inst7|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|24~0_combout\ = ( \inst8|inst100|inst|inst6|inst3|24~0_combout\ & ( \inst8|inst100|inst|inst|inst2|24~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (((!\inst8|inst100|inst|inst|inst3|24~0_combout\)) # 
-- (\inst9|inst|inst7|inst4|11~2_combout\))) # (\inst9|inst|inst7|inst4|6~1_combout\ & ((!\inst9|inst|inst7|inst4|11~2_combout\) # ((\inst8|inst100|inst13|inst8~0_combout\)))) ) ) ) # ( !\inst8|inst100|inst|inst6|inst3|24~0_combout\ & ( 
-- \inst8|inst100|inst|inst|inst2|24~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & (!\inst8|inst100|inst|inst|inst3|24~0_combout\))) # (\inst9|inst|inst7|inst4|6~1_combout\ & 
-- ((!\inst9|inst|inst7|inst4|11~2_combout\) # ((\inst8|inst100|inst13|inst8~0_combout\)))) ) ) ) # ( \inst8|inst100|inst|inst6|inst3|24~0_combout\ & ( !\inst8|inst100|inst|inst|inst2|24~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & 
-- (((!\inst8|inst100|inst|inst|inst3|24~0_combout\)) # (\inst9|inst|inst7|inst4|11~2_combout\))) # (\inst9|inst|inst7|inst4|6~1_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & ((\inst8|inst100|inst13|inst8~0_combout\)))) ) ) ) # ( 
-- !\inst8|inst100|inst|inst6|inst3|24~0_combout\ & ( !\inst8|inst100|inst|inst|inst2|24~0_combout\ & ( (!\inst9|inst|inst7|inst4|6~1_combout\ & (!\inst9|inst|inst7|inst4|11~2_combout\ & (!\inst8|inst100|inst|inst|inst3|24~0_combout\))) # 
-- (\inst9|inst|inst7|inst4|6~1_combout\ & (\inst9|inst|inst7|inst4|11~2_combout\ & ((\inst8|inst100|inst13|inst8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010010001101000101011001111000100110101011110011011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	datac => \inst8|inst100|inst|inst|inst3|ALT_INV_24~0_combout\,
	datad => \inst8|inst100|inst13|ALT_INV_inst8~0_combout\,
	datae => \inst8|inst100|inst|inst6|inst3|ALT_INV_24~0_combout\,
	dataf => \inst8|inst100|inst|inst|inst2|ALT_INV_24~0_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|24~0_combout\);

-- Location: MLABCELL_X29_Y33_N14
\inst8|inst100|inst|inst7|inst3|18~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst|inst7|inst3|18~1DUPLICATE_combout\ = ( \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( ((!\inst1|inst2|inst16~q\ & ((!\inst8|inst100|inst6|inst3|inst5~combout\) # 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst1|inst2|inst16~q\ & ((\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst8|inst100|inst6|inst3|inst5~combout\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( \inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( 
-- (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst1|inst2|inst16~q\ & !\inst8|inst100|inst6|inst3|inst5~combout\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( 
-- \inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( !\inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( (!\inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (((!\inst8|inst100|inst6|inst3|inst5~combout\) # (\inst1|inst2|inst16~q\)))) # (\inst8|inst100|inst|inst7|inst3|18~0_combout\) ) ) ) # ( !\inst8|inst100|inst|inst7|inst3|23~0_combout\ & ( !\inst8|inst100|inst|inst7|inst3|23~1DUPLICATE_combout\ & ( 
-- \inst8|inst100|inst|inst7|inst3|18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001011111101111110111111010011111011111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst16~q\,
	datab => \inst8|inst100|inst6|inst3|ALT_INV_inst5~combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_18~0_combout\,
	datad => \inst8|inst100|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~0_combout\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~1DUPLICATE_combout\,
	combout => \inst8|inst100|inst|inst7|inst3|18~1DUPLICATE_combout\);

-- Location: MLABCELL_X29_Y32_N4
\inst8|inst100|inst3|inst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst3|inst~0_combout\ = ( !\inst8|inst100|inst|inst7|inst3|6~2_combout\ & ( !\inst8|inst100|inst|inst7|inst3|5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_5~0_combout\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_6~2_combout\,
	combout => \inst8|inst100|inst3|inst~0_combout\);

-- Location: MLABCELL_X29_Y32_N2
\inst8|inst100|inst3|inst~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst3|inst~1_combout\ = ( !\inst8|inst100|inst|inst7|inst3|12~0_combout\ & ( !\inst8|inst100|inst|inst7|inst3|17~0_combout\ & ( (!\inst8|inst100|inst|inst7|inst3|11~0_combout\ & (!\inst8|inst100|inst|inst7|inst3|18~1DUPLICATE_combout\ & 
-- (!\inst8|inst100|inst|inst7|inst3|23~3_combout\ & \inst8|inst100|inst3|inst~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst|inst7|inst3|ALT_INV_11~0_combout\,
	datab => \inst8|inst100|inst|inst7|inst3|ALT_INV_18~1DUPLICATE_combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_23~3_combout\,
	datad => \inst8|inst100|inst3|ALT_INV_inst~0_combout\,
	datae => \inst8|inst100|inst|inst7|inst3|ALT_INV_12~0_combout\,
	dataf => \inst8|inst100|inst|inst7|inst3|ALT_INV_17~0_combout\,
	combout => \inst8|inst100|inst3|inst~1_combout\);

-- Location: LABCELL_X27_Y32_N24
\inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ & 
-- (\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y32_N28
\inst3|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\ $ 
-- (((!\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\) # ((!\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\) # (!\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\)))) ) ) # ( 
-- !\inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0DUPLICATE_combout\,
	datab => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~3_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~3_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~3_combout\,
	dataf => \inst3|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst3|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N29
\inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10~q\);

-- Location: MLABCELL_X31_Y32_N32
\inst53~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst53~0_combout\ = ( \inst|inst3|inst2|inst12~q\ & ( (\inst|inst3|inst2|inst10~q\ & \inst|inst3|inst2|inst14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst3|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst3|inst2|ALT_INV_inst12~q\,
	combout => \inst53~0_combout\);

-- Location: MLABCELL_X31_Y32_N2
\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst53~0_combout\ & ( \inst|inst3|inst20|inst10~q\ ) ) # ( !\inst53~0_combout\ & ( \inst2|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst20|ALT_INV_inst10~q\,
	datad => \inst2|ALT_INV_inst10~q\,
	dataf => \ALT_INV_inst53~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y33_N38
\inst57~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst57~0_combout\ = ( \inst1|inst100|inst20|inst2~q\ & ( !\inst1|inst100|inst2|inst14~q\ & ( (!\inst1|inst100|inst2|inst10~q\ & (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst16~q\ & \inst1|inst100|inst20|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	combout => \inst57~0_combout\);

-- Location: LABCELL_X30_Y32_N28
\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ = ( \inst37~1_combout\ & ( \inst37~0_combout\ & ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst37~1_combout\ & ( \inst37~0_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ ) ) ) # ( \inst37~1_combout\ & ( !\inst37~0_combout\ & ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst37~1_combout\ & ( !\inst37~0_combout\ & ( 
-- (!\inst1|inst100|inst20|inst100~q\ & (\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)) # (\inst1|inst100|inst20|inst100~q\ & ((!\inst57~0_combout\ & (\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)) # (\inst57~0_combout\ & 
-- ((\inst1|inst2|inst10~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datab => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datac => \inst1|inst2|ALT_INV_inst10~q\,
	datad => \ALT_INV_inst57~0_combout\,
	datae => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y32_N4
\inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst4|inst14~q\ & ( (!\inst1|inst100|inst20|inst14~q\ & (!\inst1|inst100|inst20|inst16~q\ & !\inst1|inst4|inst16~q\)) ) ) # ( !\inst1|inst4|inst14~q\ & ( 
-- (!\inst1|inst100|inst20|inst14~q\) # ((!\inst1|inst100|inst20|inst16~q\ & !\inst1|inst4|inst16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	datad => \inst1|inst4|ALT_INV_inst16~q\,
	dataf => \inst1|inst4|ALT_INV_inst14~q\,
	combout => \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y32_N34
\inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst16~q\ & ( (!\inst1|inst4|inst16~q\ & (\inst1|inst100|inst20|inst14~q\ & \inst1|inst4|inst14~q\)) # (\inst1|inst4|inst16~q\ & 
-- ((\inst1|inst4|inst14~q\) # (\inst1|inst100|inst20|inst14~q\))) ) ) # ( !\inst1|inst100|inst20|inst16~q\ & ( (\inst1|inst100|inst20|inst14~q\ & \inst1|inst4|inst14~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_inst16~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	datad => \inst1|inst4|ALT_INV_inst14~q\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	combout => \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y35_N28
\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst100|inst20|inst100~q\ & ( (!\inst1|inst4|inst2~q\ & !\inst1|inst100|inst20|inst2~q\) ) ) # ( !\inst1|inst100|inst20|inst100~q\ & ( (!\inst1|inst4|inst2~q\ 
-- & ((!\inst1|inst100|inst20|inst2~q\) # (!\inst1|inst4|inst100~q\))) # (\inst1|inst4|inst2~q\ & (!\inst1|inst100|inst20|inst2~q\ & !\inst1|inst4|inst100~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_inst2~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	datad => \inst1|inst4|ALT_INV_inst100~q\,
	dataf => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	combout => \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y35_N32
\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst4|inst3~q\ & ( \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst4|inst4~q\ & 
-- (\inst1|inst100|inst20|inst4~q\ & \inst1|inst100|inst20|inst3~q\)) # (\inst1|inst4|inst4~q\ & ((\inst1|inst100|inst20|inst3~q\) # (\inst1|inst100|inst20|inst4~q\))) ) ) ) # ( !\inst1|inst4|inst3~q\ & ( 
-- \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst4|inst4~q\ & \inst1|inst100|inst20|inst4~q\) ) ) ) # ( \inst1|inst4|inst3~q\ & ( 
-- !\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst100|inst20|inst4~q\) # (\inst1|inst4|inst4~q\) ) ) ) # ( !\inst1|inst4|inst3~q\ & ( 
-- !\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst4|inst4~q\ & (\inst1|inst100|inst20|inst4~q\ & \inst1|inst100|inst20|inst3~q\)) # (\inst1|inst4|inst4~q\ & ((\inst1|inst100|inst20|inst3~q\) # 
-- (\inst1|inst100|inst20|inst4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111001111110011111100000011000000110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|ALT_INV_inst4~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst4~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	datae => \inst1|inst4|ALT_INV_inst3~q\,
	dataf => \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y32_N36
\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\ = ( \inst1|inst100|inst20|inst14~q\ & ( \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst10~q\ $ 
-- (((!\inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst1|inst4|inst12~q\))) ) ) ) # ( !\inst1|inst100|inst20|inst14~q\ & ( \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst1|inst4|inst10~q\ $ (((!\inst1|inst4|inst12~q\) # (\inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst1|inst100|inst20|inst14~q\ & ( 
-- !\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst10~q\ $ (((\inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst1|inst4|inst12~q\))) ) ) ) # ( 
-- !\inst1|inst100|inst20|inst14~q\ & ( !\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst10~q\ $ (((!\inst1|inst4|inst12~q\) # 
-- (!\inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110100110010011001101100011011000110011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_inst12~q\,
	datab => \inst1|inst4|ALT_INV_inst10~q\,
	datac => \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	dataf => \inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X30_Y32_N0
\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\ = ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\ ) ) # ( 
-- !\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\ & ( (\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & (!\inst9|inst|inst7|inst4|5~2_combout\ $ 
-- (((!\inst8|inst100|inst3|inst~1_combout\) # (\inst8|inst100|inst|inst7|inst3|24~0_combout\))))) ) ) ) # ( \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~1_combout\ & ( !\inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~2_combout\ & ( 
-- (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) # (!\inst9|inst|inst7|inst4|5~2_combout\ $ (((!\inst8|inst100|inst|inst7|inst3|24~0_combout\ & \inst8|inst100|inst3|inst~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101101111000010001001000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datab => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datad => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	datae => \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~1_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~2_combout\,
	combout => \inst63|$00000|auto_generated|l1_w7_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X31_Y32_N0
\inst|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(2) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	combout => \inst|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N1
\inst|inst3|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst3~q\);

-- Location: LABCELL_X27_Y33_N18
\inst1|inst87|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst20|ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y33_N19
\inst1|inst100|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst3~q\);

-- Location: LABCELL_X27_Y33_N26
\inst9|inst|inst7|inst4|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|5~0_combout\ = ( \inst1|inst100|inst20|inst3~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst10~q\ & ((!\inst1|inst100|inst20|inst100~q\) # 
-- (\inst1|inst100|inst20|inst2~q\)))) ) ) ) # ( !\inst1|inst100|inst20|inst3~q\ & ( !\inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst10~q\ & (!\inst1|inst100|inst20|inst2~q\ $ 
-- (\inst1|inst100|inst20|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000110001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datae => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst9|inst|inst7|inst4|5~0_combout\);

-- Location: LABCELL_X27_Y33_N4
\inst9|inst|inst7|inst4|5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|5~2_combout\ = ( \inst9|inst|inst7|inst4|5~1_combout\ & ( \inst9|inst|inst7|inst4|5~0_combout\ ) ) # ( !\inst9|inst|inst7|inst4|5~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst|inst7|inst4|ALT_INV_5~0_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_5~1_combout\,
	combout => \inst9|inst|inst7|inst4|5~2_combout\);

-- Location: MLABCELL_X31_Y35_N20
\inst34|inst10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst10~0_combout\ = ( \inst1|inst100|inst2|inst3~q\ & ( !\inst1|inst100|inst2|inst4~q\ $ (((\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # (\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\))) ) ) # ( 
-- !\inst1|inst100|inst2|inst3~q\ & ( (!\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ((!\inst1|inst100|inst2|inst4~q\ & (!\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst1|inst100|inst2|inst2~q\)) # 
-- (\inst1|inst100|inst2|inst4~q\ & (\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) # (\inst31|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (\inst1|inst100|inst2|inst4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110010011000100111001001110010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datab => \inst1|inst100|inst2|ALT_INV_inst4~q\,
	datac => \inst31|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	combout => \inst34|inst10~0_combout\);

-- Location: MLABCELL_X29_Y35_N38
\inst34|inst6|inst|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst6|inst|inst1~combout\ = ( \inst10|inst100|inst2|inst2~q\ & ( \inst15|inst~combout\ & ( !\inst1|inst100|inst2|inst2~q\ ) ) ) # ( !\inst10|inst100|inst2|inst2~q\ & ( \inst15|inst~combout\ & ( \inst1|inst100|inst2|inst2~q\ ) ) ) # ( 
-- \inst10|inst100|inst2|inst2~q\ & ( !\inst15|inst~combout\ & ( !\inst1|inst100|inst2|inst2~q\ $ (((!\inst16|inst4~combout\ & (!\inst10|inst100|inst20|inst4~q\)) # (\inst16|inst4~combout\ & ((!\inst10|inst100|inst20|inst12~q\))))) ) ) ) # ( 
-- !\inst10|inst100|inst2|inst2~q\ & ( !\inst15|inst~combout\ & ( !\inst1|inst100|inst2|inst2~q\ $ (((!\inst16|inst4~combout\ & (!\inst10|inst100|inst20|inst4~q\)) # (\inst16|inst4~combout\ & ((!\inst10|inst100|inst20|inst12~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101101010011001010110101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	datab => \inst10|inst100|inst20|ALT_INV_inst4~q\,
	datac => \inst16|ALT_INV_inst4~combout\,
	datad => \inst10|inst100|inst20|ALT_INV_inst12~q\,
	datae => \inst10|inst100|inst2|ALT_INV_inst2~q\,
	dataf => \inst15|ALT_INV_inst~combout\,
	combout => \inst34|inst6|inst|inst1~combout\);

-- Location: LABCELL_X30_Y35_N0
\inst34|inst|inst|inst1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst|inst|inst1~combout\ = ( \inst8|inst130|inst20|inst12~q\ & ( \inst1|inst100|inst2|inst2~q\ & ( (!\inst30|inst~combout\ & (!\inst29|inst4~combout\ & ((!\inst8|inst130|inst20|inst4~q\)))) # (\inst30|inst~combout\ & 
-- (((!\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( !\inst8|inst130|inst20|inst12~q\ & ( \inst1|inst100|inst2|inst2~q\ & ( (!\inst30|inst~combout\ & (((!\inst8|inst130|inst20|inst4~q\)) # (\inst29|inst4~combout\))) # (\inst30|inst~combout\ & 
-- (((!\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( \inst8|inst130|inst20|inst12~q\ & ( !\inst1|inst100|inst2|inst2~q\ & ( (!\inst30|inst~combout\ & (((\inst8|inst130|inst20|inst4~q\)) # (\inst29|inst4~combout\))) # (\inst30|inst~combout\ & 
-- (((\inst8|inst130|inst2|inst2~q\)))) ) ) ) # ( !\inst8|inst130|inst20|inst12~q\ & ( !\inst1|inst100|inst2|inst2~q\ & ( (!\inst30|inst~combout\ & (!\inst29|inst4~combout\ & ((\inst8|inst130|inst20|inst4~q\)))) # (\inst30|inst~combout\ & 
-- (((\inst8|inst130|inst2|inst2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111111111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_inst~combout\,
	datab => \inst29|ALT_INV_inst4~combout\,
	datac => \inst8|inst130|inst2|ALT_INV_inst2~q\,
	datad => \inst8|inst130|inst20|ALT_INV_inst4~q\,
	datae => \inst8|inst130|inst20|ALT_INV_inst12~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	combout => \inst34|inst|inst|inst1~combout\);

-- Location: LABCELL_X30_Y35_N30
\inst34|inst11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst11~0_combout\ = ( \inst1|inst100|inst2|inst2~q\ & ( !\inst1|inst100|inst2|inst4~q\ $ (((\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # (\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst1|inst100|inst2|inst2~q\ & ( (!\inst1|inst100|inst2|inst4~q\ & (\inst1|inst100|inst2|inst3~q\ & (!\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\))) # 
-- (\inst1|inst100|inst2|inst4~q\ & (((\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # (\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010101010101001001010101010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst4~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	combout => \inst34|inst11~0_combout\);

-- Location: MLABCELL_X29_Y35_N28
\inst34|inst11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst11~1_combout\ = ( \inst17|inst3~2_combout\ & ( \inst1|inst100|inst2|inst3~q\ & ( (!\inst17|inst3~1_combout\ & (((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\)) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) # (\inst17|inst3~1_combout\ & (\inst17|inst3~0_combout\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst17|inst3~2_combout\ & ( \inst1|inst100|inst2|inst3~q\ & ( (\inst17|inst3~0_combout\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst17|inst3~2_combout\ & ( !\inst1|inst100|inst2|inst3~q\ & ( (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & ((!\inst17|inst3~1_combout\) # (\inst17|inst3~0_combout\)))) ) ) ) # ( !\inst17|inst3~2_combout\ & ( !\inst1|inst100|inst2|inst3~q\ & ( 
-- (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (!\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & \inst17|inst3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000100000001100000000000000001111110010101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_inst3~1_combout\,
	datab => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\,
	datad => \inst17|ALT_INV_inst3~0_combout\,
	datae => \inst17|ALT_INV_inst3~2_combout\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	combout => \inst34|inst11~1_combout\);

-- Location: LABCELL_X30_Y35_N14
\inst37~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst37~1DUPLICATE_combout\ = ( \inst34|inst11~0_combout\ & ( \inst34|inst11~1_combout\ & ( (!\inst34|inst6|inst|inst1~combout\) # ((\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\))) ) ) ) # ( 
-- !\inst34|inst11~0_combout\ & ( \inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\)) ) ) ) # ( \inst34|inst11~0_combout\ & ( !\inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & 
-- (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\)) ) ) ) # ( !\inst34|inst11~0_combout\ & ( !\inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_inst10~1_combout\,
	datab => \inst34|ALT_INV_inst10~0_combout\,
	datac => \inst34|inst6|inst|ALT_INV_inst1~combout\,
	datad => \inst34|inst|inst|ALT_INV_inst1~combout\,
	datae => \inst34|ALT_INV_inst11~0_combout\,
	dataf => \inst34|ALT_INV_inst11~1_combout\,
	combout => \inst37~1DUPLICATE_combout\);

-- Location: LABCELL_X27_Y32_N18
\inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\ $ 
-- (((!\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\) # (!\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\))) ) ) # ( !\inst3|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~3_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~3_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst3|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N19
\inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst12~q\);

-- Location: LABCELL_X27_Y32_N2
\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst53~0_combout\ & ( \inst|inst3|inst20|inst12~q\ ) ) # ( !\inst53~0_combout\ & ( \inst2|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst20|ALT_INV_inst12~q\,
	datad => \inst2|ALT_INV_inst12~q\,
	dataf => \ALT_INV_inst53~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y32_N26
\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\ = ( \inst1|inst2|inst12~q\ & ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ ) ) # ( !\inst1|inst2|inst12~q\ & ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & 
-- ( (!\inst1|inst100|inst20|inst100~q\) # ((!\inst57~0_combout\) # ((\inst37~0_combout\) # (\inst37~1DUPLICATE_combout\))) ) ) ) # ( \inst1|inst2|inst12~q\ & ( !\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( 
-- (\inst1|inst100|inst20|inst100~q\ & (\inst57~0_combout\ & (!\inst37~1DUPLICATE_combout\ & !\inst37~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000011101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datab => \ALT_INV_inst57~0_combout\,
	datac => \ALT_INV_inst37~1DUPLICATE_combout\,
	datad => \ALT_INV_inst37~0_combout\,
	datae => \inst1|inst2|ALT_INV_inst12~q\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X31_Y32_N22
\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\ = ( \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst65|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst1|inst4|inst12~q\ $ (!\inst1|inst100|inst20|inst14~q\)) ) ) # ( !\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst65|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst1|inst4|inst12~q\ $ (\inst1|inst100|inst20|inst14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst65|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|inst4|ALT_INV_inst12~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	dataf => \inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X30_Y32_N2
\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\ = ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\ ) ) # ( 
-- !\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\ & ( (\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & (!\inst9|inst|inst7|inst4|5~2_combout\ $ 
-- (((!\inst8|inst100|inst3|inst~1_combout\) # (\inst8|inst100|inst|inst7|inst3|24~0_combout\))))) ) ) ) # ( \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~1_combout\ & ( !\inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~2_combout\ & ( 
-- (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) # (!\inst9|inst|inst7|inst4|5~2_combout\ $ (((\inst8|inst100|inst3|inst~1_combout\ & !\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011011110111000010010000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datab => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datac => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datae => \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~1_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~2_combout\,
	combout => \inst63|$00000|auto_generated|l1_w6_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X27_Y32_N12
\inst|inst6|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(4) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	combout => \inst|inst6|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N13
\inst|inst3|inst20|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst16~q\);

-- Location: MLABCELL_X26_Y33_N22
\inst1|inst87|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst3|inst20|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst20|ALT_INV_inst16~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X26_Y33_N23
\inst1|inst100|inst20|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst16~q\);

-- Location: LABCELL_X30_Y32_N22
\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\ = ( \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst14~q\ $ (!\inst1|inst100|inst20|inst14~q\ $ (((\inst1|inst4|inst16~q\) # 
-- (\inst1|inst100|inst20|inst16~q\)))) ) ) # ( !\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst14~q\ $ (!\inst1|inst100|inst20|inst14~q\ $ (((\inst1|inst100|inst20|inst16~q\ & \inst1|inst4|inst16~q\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	datab => \inst1|inst4|ALT_INV_inst14~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst14~q\,
	datad => \inst1|inst4|ALT_INV_inst16~q\,
	dataf => \inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X27_Y32_N8
\inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- !\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ $ (((!\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\) # ((!\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- (!\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ ) ) ) # ( \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ ) ) ) # ( !\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\,
	datab => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~3_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datae => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N9
\inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst14~q\);

-- Location: MLABCELL_X31_Y32_N38
\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst53~0_combout\ & ( \inst|inst3|inst20|inst14~q\ ) ) # ( !\inst53~0_combout\ & ( \inst2|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst20|ALT_INV_inst14~q\,
	datac => \inst2|ALT_INV_inst14~q\,
	dataf => \ALT_INV_inst53~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y32_N24
\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ = ( \inst1|inst2|inst14~q\ & ( \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ ) ) # ( !\inst1|inst2|inst14~q\ & ( \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & 
-- ( (!\inst1|inst100|inst20|inst100~q\) # ((!\inst57~0_combout\) # ((\inst37~1DUPLICATE_combout\) # (\inst37~0_combout\))) ) ) ) # ( \inst1|inst2|inst14~q\ & ( !\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( 
-- (\inst1|inst100|inst20|inst100~q\ & (\inst57~0_combout\ & (!\inst37~0_combout\ & !\inst37~1DUPLICATE_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000011101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datab => \ALT_INV_inst57~0_combout\,
	datac => \ALT_INV_inst37~0_combout\,
	datad => \ALT_INV_inst37~1DUPLICATE_combout\,
	datae => \inst1|inst2|ALT_INV_inst14~q\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X29_Y32_N34
\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\ = ( \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ( \inst8|inst100|inst3|inst~1_combout\ & ( ((!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) # 
-- (!\inst9|inst|inst7|inst4|5~2_combout\ $ (!\inst8|inst100|inst|inst7|inst3|24~0_combout\))) # (\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\) ) ) ) # ( !\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ( 
-- \inst8|inst100|inst3|inst~1_combout\ & ( (\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\ & (\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & (!\inst9|inst|inst7|inst4|5~2_combout\ $ 
-- (\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) ) ) ) # ( \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & ( ((!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\)) # (\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\) ) ) ) # ( !\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~1_combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & 
-- ( (\inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~2_combout\ & (\inst9|inst|inst7|inst4|5~2_combout\ & \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111101110100000000010000011111111101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datad => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datae => \inst63|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~1_combout\,
	dataf => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	combout => \inst63|$00000|auto_generated|l1_w5_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X31_Y32_N18
\inst|inst6|$00000|auto_generated|l1_w13_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|inst6|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N19
\inst|inst3|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst14~q\);

-- Location: LABCELL_X27_Y33_N22
\inst1|inst100|inst2|inst14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst100|inst2|inst14~0_combout\ = ( \inst1|inst8~combout\ & ( (\inst|inst3|inst2|inst14~q\ & !\inst58~combout\) ) ) # ( !\inst1|inst8~combout\ & ( \inst1|inst100|inst2|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst2|ALT_INV_inst14~q\,
	datac => \ALT_INV_inst58~combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	dataf => \inst1|ALT_INV_inst8~combout\,
	combout => \inst1|inst100|inst2|inst14~0_combout\);

-- Location: FF_X27_Y33_N23
\inst1|inst100|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst100|inst2|inst14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst14~q\);

-- Location: MLABCELL_X31_Y35_N36
\inst8|inst70|$00000|auto_generated|l1_w13_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst14~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N37
\inst8|inst130|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w13_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst14~q\);

-- Location: MLABCELL_X34_Y35_N34
\inst11|inst|27\ : arriaii_lcell_comb
-- Equation(s):
-- \inst11|inst|27~combout\ = ( \inst8|inst130|inst2|inst14~q\ & ( \inst8|inst130|inst2|inst12~q\ & ( (!\inst8|inst130|inst2|inst10~q\ & !\inst8|inst130|inst2|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datae => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	dataf => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	combout => \inst11|inst|27~combout\);

-- Location: MLABCELL_X34_Y32_N32
\inst10|gdfx_temp0[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst10|gdfx_temp0[4]~3_combout\ = ( \inst8|inst4|inst16~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(4) ) ) # ( !\inst8|inst4|inst16~q\ & ( \inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(4) & ( !\inst11|inst|27~combout\ ) ) ) # ( 
-- \inst8|inst4|inst16~q\ & ( !\inst10|inst98|inst|sram|ram_block|auto_generated|q_a\(4) & ( \inst11|inst|27~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst11|inst|ALT_INV_27~combout\,
	datae => \inst8|inst4|ALT_INV_inst16~q\,
	dataf => \inst10|inst98|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	combout => \inst10|gdfx_temp0[4]~3_combout\);

-- Location: FF_X34_Y32_N33
\inst10|inst99|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[4]~3_combout\,
	asdata => \inst8|inst4|inst16~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst16~q\);

-- Location: MLABCELL_X31_Y36_N24
\inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst16~q\ & ( (!\inst15|inst~combout\ & (\inst10|inst99|inst16~q\)) # (\inst15|inst~combout\ & 
-- ((!\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\inst10|inst4|inst16~q\ & ( (!\inst15|inst~combout\ & (\inst10|inst99|inst16~q\)) # (\inst15|inst~combout\ & 
-- ((\inst21|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst99|ALT_INV_inst16~q\,
	datac => \inst15|ALT_INV_inst~combout\,
	datad => \inst21|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst10|inst4|ALT_INV_inst16~q\,
	combout => \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N16
\inst1|inst1|inst33|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst33|inst5~combout\ = ( GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst20|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) ) # ( !GLOBAL(\inst1|inst1|inst4|29~1clkctrl_outclk\) & ( \inst1|inst1|inst33|inst5~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datad => \inst1|inst1|inst33|ALT_INV_inst5~combout\,
	dataf => \inst1|inst1|inst4|ALT_INV_29~1clkctrl_outclk\,
	combout => \inst1|inst1|inst33|inst5~combout\);

-- Location: LABCELL_X32_Y34_N30
\inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst5~combout\ ) ) ) # ( !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst5~combout\ ) ) ) # ( 
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst5~combout\ ) ) ) # ( 
-- !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst39|ALT_INV_inst5~combout\,
	datab => \inst1|inst1|inst41|ALT_INV_inst5~combout\,
	datac => \inst1|inst1|inst32|ALT_INV_inst5~combout\,
	datad => \inst1|inst1|inst35|ALT_INV_inst5~combout\,
	datae => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N2
\inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst36|inst5~combout\ & ( \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\) # 
-- ((!\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst33|inst5~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst5~combout\)))) ) ) ) # ( !\inst1|inst1|inst36|inst5~combout\ & ( 
-- \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & 
-- (\inst1|inst1|inst33|inst5~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst5~combout\))))) ) ) ) # ( \inst1|inst1|inst36|inst5~combout\ & ( !\inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst2|inst10~1_combout\ & (((\inst1|inst2|inst10~0_combout\)))) # (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst33|inst5~combout\)) # (\inst1|inst2|inst10~0_combout\ & 
-- ((\inst1|inst1|inst40|inst5~combout\))))) ) ) ) # ( !\inst1|inst1|inst36|inst5~combout\ & ( !\inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst10~1_combout\ & ((!\inst1|inst2|inst10~0_combout\ & 
-- (\inst1|inst1|inst33|inst5~combout\)) # (\inst1|inst2|inst10~0_combout\ & ((\inst1|inst1|inst40|inst5~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst33|ALT_INV_inst5~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datad => \inst1|inst1|inst40|ALT_INV_inst5~combout\,
	datae => \inst1|inst1|inst36|ALT_INV_inst5~combout\,
	dataf => \inst1|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N3
\inst1|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst16~q\);

-- Location: LABCELL_X27_Y32_N4
\inst3|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ $ 
-- (((!\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\) # ((!\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # (!\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) ) # ( 
-- !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\,
	datab => \inst63|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst3|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N5
\inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst16~q\);

-- Location: LABCELL_X30_Y35_N18
inst57 : arriaii_lcell_comb
-- Equation(s):
-- \inst57~combout\ = ( !\inst37~0_combout\ & ( (\inst57~0_combout\ & (\inst1|inst100|inst20|inst100~q\ & !\inst37~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst57~0_combout\,
	datac => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datad => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst57~combout\);

-- Location: MLABCELL_X29_Y32_N14
\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst57~combout\ & ( \inst8|inst100|inst3|inst~1_combout\ & ( (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) # (!\inst9|inst|inst7|inst4|5~2_combout\ $ 
-- (!\inst8|inst100|inst|inst7|inst3|24~0_combout\)) ) ) ) # ( !\inst57~combout\ & ( \inst8|inst100|inst3|inst~1_combout\ & ( (\inst53~0_combout\ & ((!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) # 
-- (!\inst9|inst|inst7|inst4|5~2_combout\ $ (!\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) ) ) ) # ( \inst57~combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & ( (!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst57~combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & ( (\inst53~0_combout\ & ((!\inst9|inst|inst7|inst4|5~2_combout\) # 
-- (!\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100111111111100110001010101000101001111111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst53~0_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datad => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_inst57~combout\,
	dataf => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	combout => \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y32_N36
\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst20|inst16~q\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst58~combout\) # (\inst1|inst2|inst16~q\) ) ) ) # ( !\inst|inst3|inst20|inst16~q\ & ( 
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst16~q\ & \inst58~combout\) ) ) ) # ( \inst|inst3|inst20|inst16~q\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst58~combout\ & 
-- ((\inst2|inst16~q\))) # (\inst58~combout\ & (\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst|inst3|inst20|inst16~q\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst58~combout\ & ((\inst2|inst16~q\))) # (\inst58~combout\ & (\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst16~q\,
	datac => \inst2|ALT_INV_inst16~q\,
	datad => \ALT_INV_inst58~combout\,
	datae => \inst|inst3|inst20|ALT_INV_inst16~q\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N37
\inst|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst16~q\);

-- Location: FF_X27_Y32_N11
\inst1|inst4|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|inst16~q\,
	sload => VCC,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst16~q\);

-- Location: LABCELL_X27_Y32_N0
\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst16~q\ $ (\inst1|inst100|inst20|inst16~q\) ) ) # ( 
-- !\inst65|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst4|inst16~q\ $ (!\inst1|inst100|inst20|inst16~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|ALT_INV_inst16~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst16~q\,
	dataf => \inst65|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y32_N38
\inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\ = ( \inst|inst3|inst20|inst16~q\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst58~combout\) # (\inst1|inst2|inst16~q\) ) ) ) # ( 
-- !\inst|inst3|inst20|inst16~q\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst1|inst2|inst16~q\ & \inst58~combout\) ) ) ) # ( \inst|inst3|inst20|inst16~q\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst58~combout\ & ((\inst2|inst16~q\))) # (\inst58~combout\ & (\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst|inst3|inst20|inst16~q\ & ( 
-- !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst58~combout\ & ((\inst2|inst16~q\))) # (\inst58~combout\ & (\inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst1|inst2|ALT_INV_inst16~q\,
	datac => \ALT_INV_inst58~combout\,
	datad => \inst2|ALT_INV_inst16~q\,
	datae => \inst|inst3|inst20|ALT_INV_inst16~q\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w4_n0_mux_dataout~0DUPLICATE_combout\);

-- Location: LABCELL_X27_Y32_N6
\inst|inst6|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst|inst6|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N7
\inst|inst3|inst20|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst4~q\);

-- Location: MLABCELL_X31_Y33_N36
\inst1|inst87|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst87|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst20|inst4~q\ & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|inst3|inst20|ALT_INV_inst4~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst87|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y33_N37
\inst1|inst100|inst20|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst87|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst20|inst4~q\);

-- Location: LABCELL_X32_Y35_N36
\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ = ( \inst1|inst4|inst4~q\ & ( \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst4~q\ $ (((\inst1|inst4|inst3~q\ & 
-- \inst1|inst100|inst20|inst3~q\))) ) ) ) # ( !\inst1|inst4|inst4~q\ & ( \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst4~q\ $ (((!\inst1|inst4|inst3~q\) # 
-- (!\inst1|inst100|inst20|inst3~q\))) ) ) ) # ( \inst1|inst4|inst4~q\ & ( !\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst4~q\ $ (((\inst1|inst100|inst20|inst3~q\) # 
-- (\inst1|inst4|inst3~q\))) ) ) ) # ( !\inst1|inst4|inst4~q\ & ( !\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst4~q\ $ (((!\inst1|inst4|inst3~q\ & !\inst1|inst100|inst20|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010101001010101010101010101010110101010101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst20|ALT_INV_inst4~q\,
	datac => \inst1|inst4|ALT_INV_inst3~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	datae => \inst1|inst4|ALT_INV_inst4~q\,
	dataf => \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X27_Y32_N26
\inst3|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ $ 
-- (((!\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # (!\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) ) ) # ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~3_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst3|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N27
\inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4~q\);

-- Location: LABCELL_X27_Y32_N14
\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst53~0_combout\ & ( \inst|inst3|inst20|inst4~q\ ) ) # ( !\inst53~0_combout\ & ( \inst2|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst20|ALT_INV_inst4~q\,
	datac => \inst2|ALT_INV_inst4~q\,
	dataf => \ALT_INV_inst53~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y32_N20
\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ = ( \inst37~1DUPLICATE_combout\ & ( \inst37~0_combout\ & ( \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst37~1DUPLICATE_combout\ & ( \inst37~0_combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ ) ) ) # ( \inst37~1DUPLICATE_combout\ & ( !\inst37~0_combout\ & ( \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst37~1DUPLICATE_combout\ & ( !\inst37~0_combout\ & 
-- ( (!\inst57~0_combout\ & (((\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) # (\inst57~0_combout\ & ((!\inst1|inst100|inst20|inst100~q\ & ((\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) # 
-- (\inst1|inst100|inst20|inst100~q\ & (\inst1|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst57~0_combout\,
	datab => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datac => \inst1|inst2|ALT_INV_inst4~q\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_inst37~1DUPLICATE_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X27_Y32_N32
\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\ = ( \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & ( \inst8|inst100|inst3|inst~1_combout\ & ( (!\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ & 
-- (\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ & (!\inst9|inst|inst7|inst4|5~2_combout\ $ (!\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) # (\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\ & 
-- ((!\inst9|inst|inst7|inst4|5~2_combout\ $ (\inst8|inst100|inst|inst7|inst3|24~0_combout\)) # (\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\))) ) ) ) # ( !\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst100|inst3|inst~1_combout\ & ( \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ ) ) ) # ( \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & ( 
-- (!\inst9|inst|inst7|inst4|5~2_combout\ & ((\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\))) # (\inst9|inst|inst7|inst4|5~2_combout\ & (\inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~2_combout\)) ) ) ) # ( 
-- !\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & ( !\inst8|inst100|inst3|inst~1_combout\ & ( \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111010001110100001111000011110100011100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~2_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~1_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datae => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	combout => \inst63|$00000|auto_generated|l1_w3_n0_mux_dataout~3_combout\);

-- Location: MLABCELL_X31_Y32_N6
\inst|inst6|$00000|auto_generated|l1_w14_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(14) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(14),
	combout => \inst|inst6|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N7
\inst|inst3|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w14_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst12~q\);

-- Location: LABCELL_X27_Y33_N16
\inst1|inst100|inst2|inst12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst100|inst2|inst12~0_combout\ = ( \inst58~combout\ & ( (!\inst1|inst8~combout\ & \inst1|inst100|inst2|inst12~q\) ) ) # ( !\inst58~combout\ & ( (!\inst1|inst8~combout\ & ((\inst1|inst100|inst2|inst12~q\))) # (\inst1|inst8~combout\ & 
-- (\inst|inst3|inst2|inst12~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst12~q\,
	datac => \inst1|ALT_INV_inst8~combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst100|inst2|inst12~0_combout\);

-- Location: FF_X27_Y33_N17
\inst1|inst100|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst100|inst2|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst12~q\);

-- Location: LABCELL_X27_Y33_N38
\inst9|inst|inst7|inst4|11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|11~1_combout\ = ( \inst1|inst100|inst2|inst16~q\ & ( (!\inst1|inst100|inst2|inst12~q\ & (!\inst1|inst100|inst2|inst14~q\ $ (!\inst1|inst100|inst2|inst10~q\))) ) ) # ( !\inst1|inst100|inst2|inst16~q\ & ( 
-- (!\inst1|inst100|inst2|inst12~q\ & ((!\inst1|inst100|inst2|inst14~q\) # (!\inst1|inst100|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst2|ALT_INV_inst12~q\,
	datac => \inst1|inst100|inst2|ALT_INV_inst14~q\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	combout => \inst9|inst|inst7|inst4|11~1_combout\);

-- Location: LABCELL_X27_Y33_N36
\inst9|inst|inst7|inst4|11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst7|inst4|11~2_combout\ = ( !\inst9|inst|inst7|inst4|11~0_combout\ & ( \inst9|inst|inst7|inst4|11~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~0_combout\,
	combout => \inst9|inst|inst7|inst4|11~2_combout\);

-- Location: LABCELL_X24_Y33_N18
\inst8|inst100|inst1|regByte|inst3~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|regByte|inst3~feeder_combout\ = ( \inst9|inst|inst7|inst4|11~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	combout => \inst8|inst100|inst1|regByte|inst3~feeder_combout\);

-- Location: FF_X24_Y33_N19
\inst8|inst100|inst1|regByte|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|regByte|inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|regByte|inst3~q\);

-- Location: FF_X24_Y33_N13
\inst8|inst100|inst1|regByte|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst9|inst|inst7|inst4|5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|regByte|inst100~q\);

-- Location: LABCELL_X24_Y33_N2
\inst8|inst100|inst1|regByte|inst2~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|regByte|inst2~feeder_combout\ = ( \inst9|inst|inst7|inst4|6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	combout => \inst8|inst100|inst1|regByte|inst2~feeder_combout\);

-- Location: FF_X24_Y33_N3
\inst8|inst100|inst1|regByte|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|regByte|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|regByte|inst2~q\);

-- Location: LABCELL_X24_Y33_N20
\inst8|inst100|inst1|and~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|and~0_combout\ = ( \inst8|inst100|inst1|regByte|inst100~q\ & ( !\inst8|inst100|inst1|regByte|inst2~q\ & ( \inst8|inst100|inst1|regByte|inst3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst100|inst1|regByte|ALT_INV_inst3~q\,
	datae => \inst8|inst100|inst1|regByte|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|regByte|ALT_INV_inst2~q\,
	combout => \inst8|inst100|inst1|and~0_combout\);

-- Location: LABCELL_X24_Y33_N36
\inst8|inst100|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst8|inst100|inst1|inst10|inst2|inst100~q\ & ( \inst8|inst100|inst1|inst24|inst1|inst~combout\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( 
-- \inst8|inst100|inst1|inst10|inst2|inst100~q\ & ( !\inst8|inst100|inst1|inst24|inst1|inst~combout\ & ( !\inst8|inst100|inst1|and~1_combout\ ) ) ) # ( !\inst8|inst100|inst1|inst10|inst2|inst100~q\ & ( !\inst8|inst100|inst1|inst24|inst1|inst~combout\ & ( 
-- !\inst8|inst100|inst1|and~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst100|inst1|ALT_INV_and~1_combout\,
	datae => \inst8|inst100|inst1|inst10|inst2|ALT_INV_inst100~q\,
	dataf => \inst8|inst100|inst1|inst24|inst1|ALT_INV_inst~combout\,
	combout => \inst8|inst100|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X24_Y33_N37
\inst8|inst100|inst1|inst10|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst100|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst100|inst1|inst10|inst2|inst100~q\);

-- Location: LABCELL_X24_Y33_N10
\inst8|inst100|inst8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst100|inst8~combout\ = ( \inst9|inst|inst7|inst4|11~2_combout\ & ( ((!\inst9|inst|inst7|inst4|5~2_combout\) # ((\inst8|inst100|inst1|and~0_combout\ & \inst8|inst100|inst1|inst10|inst2|inst100~q\))) # (\inst9|inst|inst7|inst4|6~1_combout\) ) ) # ( 
-- !\inst9|inst|inst7|inst4|11~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000111111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|inst1|ALT_INV_and~0_combout\,
	datab => \inst8|inst100|inst1|inst10|inst2|ALT_INV_inst100~q\,
	datac => \inst9|inst|inst7|inst4|ALT_INV_6~1_combout\,
	datad => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	dataf => \inst9|inst|inst7|inst4|ALT_INV_11~2_combout\,
	combout => \inst8|inst100|inst8~combout\);

-- Location: MLABCELL_X29_Y35_N0
\inst1|inst8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst8~combout\ = ( !\inst37~0_combout\ & ( (\inst8|inst100|inst8~combout\ & !\inst37~1DUPLICATE_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst100|ALT_INV_inst8~combout\,
	datac => \ALT_INV_inst37~1DUPLICATE_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst1|inst8~combout\);

-- Location: FF_X29_Y32_N21
\inst|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst3~q\);

-- Location: LABCELL_X32_Y35_N12
\inst1|inst4|inst3~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst3~feeder_combout\ = ( \inst|inst2|inst3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst2|ALT_INV_inst3~q\,
	combout => \inst1|inst4|inst3~feeder_combout\);

-- Location: FF_X32_Y35_N13
\inst1|inst4|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst4|inst3~feeder_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|inst3~q\);

-- Location: FF_X32_Y35_N15
\inst8|inst6|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst4|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst6|inst3~q\);

-- Location: FF_X32_Y32_N39
\inst10|inst4|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|inst6|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst3~q\);

-- Location: FF_X32_Y32_N1
\inst10|inst99|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|gdfx_temp0[2]~5_combout\,
	asdata => \inst8|inst4|inst3~q\,
	sload => \inst33|inst|26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst99|inst3~q\);

-- Location: LABCELL_X32_Y32_N2
\inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst10|inst4|inst2~q\ & ( (!\inst15|inst~combout\ & (((\inst10|inst99|inst3~q\)))) # (\inst15|inst~combout\ & (!\inst10|inst4|inst3~q\ $ ((!\inst10|inst4|inst100~q\)))) ) ) # ( 
-- !\inst10|inst4|inst2~q\ & ( (!\inst15|inst~combout\ & ((\inst10|inst99|inst3~q\))) # (\inst15|inst~combout\ & (\inst10|inst4|inst3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|ALT_INV_inst3~q\,
	datab => \inst10|inst4|ALT_INV_inst100~q\,
	datac => \inst15|ALT_INV_inst~combout\,
	datad => \inst10|inst99|ALT_INV_inst3~q\,
	dataf => \inst10|inst4|ALT_INV_inst2~q\,
	combout => \inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y34_N0
\inst1|inst1|inst36|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst36|inst2~combout\ = (!GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & ((\inst1|inst1|inst36|inst2~combout\))) # (GLOBAL(\inst1|inst1|inst4|29~3clkctrl_outclk\) & (\inst20|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst36|ALT_INV_inst2~combout\,
	datad => \inst1|inst1|inst4|ALT_INV_29~3clkctrl_outclk\,
	combout => \inst1|inst1|inst36|inst2~combout\);

-- Location: LABCELL_X32_Y34_N8
\inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- \inst1|inst1|inst41|inst2~combout\ ) ) ) # ( !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( \inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst35|inst2~combout\ ) ) ) # ( 
-- \inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst39|inst2~combout\ ) ) ) # ( 
-- !\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( !\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst1|inst1|inst32|inst2~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst41|ALT_INV_inst2~combout\,
	datab => \inst1|inst1|inst39|ALT_INV_inst2~combout\,
	datac => \inst1|inst1|inst35|ALT_INV_inst2~combout\,
	datad => \inst1|inst1|inst32|ALT_INV_inst2~combout\,
	datae => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N10
\inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst1|inst40|inst2~combout\ & ( \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (((!\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst36|inst2~combout\))) # (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst1|inst33|inst2~combout\) # (\inst1|inst2|inst10~0_combout\)))) ) ) ) # ( !\inst1|inst1|inst40|inst2~combout\ & ( 
-- \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (((!\inst1|inst2|inst10~0_combout\)) # (\inst1|inst1|inst36|inst2~combout\))) # (\inst1|inst2|inst10~1_combout\ & 
-- (((!\inst1|inst2|inst10~0_combout\ & \inst1|inst1|inst33|inst2~combout\)))) ) ) ) # ( \inst1|inst1|inst40|inst2~combout\ & ( !\inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & 
-- (\inst1|inst1|inst36|inst2~combout\ & (\inst1|inst2|inst10~0_combout\))) # (\inst1|inst2|inst10~1_combout\ & (((\inst1|inst1|inst33|inst2~combout\) # (\inst1|inst2|inst10~0_combout\)))) ) ) ) # ( !\inst1|inst1|inst40|inst2~combout\ & ( 
-- !\inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~1_combout\ & (\inst1|inst1|inst36|inst2~combout\ & (\inst1|inst2|inst10~0_combout\))) # (\inst1|inst2|inst10~1_combout\ & 
-- (((!\inst1|inst2|inst10~0_combout\ & \inst1|inst1|inst33|inst2~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst36|ALT_INV_inst2~combout\,
	datab => \inst1|inst2|ALT_INV_inst10~1_combout\,
	datac => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datad => \inst1|inst1|inst33|ALT_INV_inst2~combout\,
	datae => \inst1|inst1|inst40|ALT_INV_inst2~combout\,
	dataf => \inst1|inst2|inst35|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N11
\inst1|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst3~q\);

-- Location: MLABCELL_X29_Y32_N38
\inst3|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # 
-- (!\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) ) # ( !\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst3|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y32_N39
\inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3~q\);

-- Location: LABCELL_X32_Y35_N10
\inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst3~q\ $ (!\inst1|inst4|inst3~q\) ) ) # ( 
-- !\inst65|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst1|inst100|inst20|inst3~q\ $ (\inst1|inst4|inst3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst20|ALT_INV_inst3~q\,
	datad => \inst1|inst4|ALT_INV_inst3~q\,
	dataf => \inst65|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y32_N20
\inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst58~combout\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst3~q\ ) ) ) # ( !\inst58~combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst3|inst20|inst3~q\ ) ) ) # ( \inst58~combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst58~combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst2|inst3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst3~q\,
	datab => \inst|inst3|inst20|ALT_INV_inst3~q\,
	datac => \inst2|ALT_INV_inst3~q\,
	datad => \inst65|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_inst58~combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y32_N30
\inst|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( !\inst58~combout\ & ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X27_Y32_N31
\inst|inst3|inst20|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst20|inst2~q\);

-- Location: MLABCELL_X29_Y32_N6
\inst3|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) # ( 
-- !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst63|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst3|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X29_Y32_N7
\inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2~q\);

-- Location: LABCELL_X32_Y35_N8
\inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst4|inst2~q\ & ( !\inst1|inst100|inst20|inst2~q\ $ (((\inst1|inst4|inst100~q\) # (\inst1|inst100|inst20|inst100~q\))) ) ) # ( !\inst1|inst4|inst2~q\ & ( 
-- !\inst1|inst100|inst20|inst2~q\ $ (((!\inst1|inst100|inst20|inst100~q\ & !\inst1|inst4|inst100~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datac => \inst1|inst100|inst20|ALT_INV_inst2~q\,
	datad => \inst1|inst4|ALT_INV_inst100~q\,
	dataf => \inst1|inst4|ALT_INV_inst2~q\,
	combout => \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y32_N26
\inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst58~combout\ & ( \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst1|inst2|inst2~q\ ) ) ) # ( !\inst58~combout\ & ( 
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst3|inst20|inst2~q\ ) ) ) # ( \inst58~combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) ) # ( !\inst58~combout\ & ( !\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst2|inst2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst20|ALT_INV_inst2~q\,
	datab => \inst1|inst2|ALT_INV_inst2~q\,
	datac => \inst2|ALT_INV_inst2~q\,
	datad => \inst65|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_inst58~combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst63|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y32_N12
\inst|inst6|$00000|auto_generated|l1_w9_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(9) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(9),
	combout => \inst|inst6|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N13
\inst|inst3|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w9_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst2~q\);

-- Location: LABCELL_X30_Y34_N16
\inst1|inst2|inst10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst10~0_combout\ = ( \inst37~combout\ & ( (!\inst|inst3|inst2|inst2~q\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst37~combout\ & ( (!\inst1|inst100|inst2|inst2~q\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst2~q\,
	datab => \inst1|inst100|inst2|ALT_INV_inst2~q\,
	datac => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst1|inst2|inst10~0_combout\);

-- Location: MLABCELL_X34_Y34_N36
\inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst1|inst35|inst~combout\ & ( \inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst1|inst1|inst39|inst~combout\))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst41|inst~combout\))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst~combout\ & ( \inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # 
-- ((\inst1|inst1|inst39|inst~combout\)))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst41|inst~combout\))) ) ) ) # ( 
-- \inst1|inst1|inst35|inst~combout\ & ( !\inst1|inst1|inst32|inst~combout\ & ( (!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst39|inst~combout\)))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\) # ((\inst1|inst1|inst41|inst~combout\)))) ) ) ) # ( 
-- !\inst1|inst1|inst35|inst~combout\ & ( !\inst1|inst1|inst32|inst~combout\ & ( (\inst1|inst120|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ((!\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- ((\inst1|inst1|inst39|inst~combout\))) # (\inst1|inst120|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst1|inst1|inst41|inst~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \inst1|inst120|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst1|inst1|inst41|ALT_INV_inst~combout\,
	datad => \inst1|inst1|inst39|ALT_INV_inst~combout\,
	datae => \inst1|inst1|inst35|ALT_INV_inst~combout\,
	dataf => \inst1|inst1|inst32|ALT_INV_inst~combout\,
	combout => \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y34_N26
\inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst1|inst2|inst10~1_combout\ & ( \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & 
-- ((\inst1|inst1|inst33|inst~combout\))) # (\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst40|inst~combout\)) ) ) ) # ( !\inst1|inst2|inst10~1_combout\ & ( \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst1|inst2|inst10~0_combout\) # (\inst1|inst1|inst36|inst~combout\) ) ) ) # ( \inst1|inst2|inst10~1_combout\ & ( !\inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst1|inst2|inst10~0_combout\ & 
-- ((\inst1|inst1|inst33|inst~combout\))) # (\inst1|inst2|inst10~0_combout\ & (\inst1|inst1|inst40|inst~combout\)) ) ) ) # ( !\inst1|inst2|inst10~1_combout\ & ( !\inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst1|inst2|inst10~0_combout\ & \inst1|inst1|inst36|inst~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst10~0_combout\,
	datab => \inst1|inst1|inst36|ALT_INV_inst~combout\,
	datac => \inst1|inst1|inst40|ALT_INV_inst~combout\,
	datad => \inst1|inst1|inst33|ALT_INV_inst~combout\,
	datae => \inst1|inst2|ALT_INV_inst10~1_combout\,
	dataf => \inst1|inst2|inst21|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X30_Y34_N27
\inst1|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	sclr => \inst1|inst2|inst10~2_combout\,
	ena => \inst8|inst100|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst100~q\);

-- Location: MLABCELL_X29_Y32_N16
\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( !\inst58~combout\ & ( (((!\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst2|inst100~q\))) # (\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (\inst|inst3|inst20|inst100~q\)))) ) ) # ( \inst58~combout\ & ( ((!\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst1|inst4|inst100~q\ $ (\inst1|inst100|inst20|inst100~q\)))) # 
-- (\inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\inst1|inst2|inst100~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111100000000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst3|inst20|ALT_INV_inst100~q\,
	datac => \inst1|inst4|ALT_INV_inst100~q\,
	datad => \inst1|inst100|inst20|ALT_INV_inst100~q\,
	datae => \ALT_INV_inst58~combout\,
	dataf => \inst63|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datag => \inst2|ALT_INV_inst100~q\,
	combout => \inst63|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X31_Y32_N4
\inst|inst6|$00000|auto_generated|l1_w15_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(15) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|inst6|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N5
\inst|inst3|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst10~q\);

-- Location: LABCELL_X27_Y33_N0
\inst1|inst100|inst2|inst10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst100|inst2|inst10~0_combout\ = ( \inst1|inst8~combout\ & ( (\inst|inst3|inst2|inst10~q\ & !\inst58~combout\) ) ) # ( !\inst1|inst8~combout\ & ( \inst1|inst100|inst2|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst10~q\,
	datac => \ALT_INV_inst58~combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	dataf => \inst1|ALT_INV_inst8~combout\,
	combout => \inst1|inst100|inst2|inst10~0_combout\);

-- Location: FF_X27_Y33_N1
\inst1|inst100|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst100|inst2|inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst10~q\);

-- Location: LABCELL_X30_Y35_N32
\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ = ( !\inst37~0_combout\ & ( (\inst1|inst100|inst2|inst10~q\ & !\inst37~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datad => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y32_N36
inst58 : arriaii_lcell_comb
-- Equation(s):
-- \inst58~combout\ = ( \inst8|inst100|inst3|inst~1_combout\ & ( ((\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & (!\inst9|inst|inst7|inst4|5~2_combout\ $ (\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) # (\inst57~combout\) ) ) # ( 
-- !\inst8|inst100|inst3|inst~1_combout\ & ( ((\inst8|inst70|$00000|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & \inst9|inst|inst7|inst4|5~2_combout\)) # (\inst57~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111101001111000111110100111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst70|$00000|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	datab => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	datac => \ALT_INV_inst57~combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	dataf => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	combout => \inst58~combout\);

-- Location: MLABCELL_X31_Y32_N30
\inst|inst6|$00000|auto_generated|l1_w12_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\ = ( \inst|inst150|inst|sram|ram_block|auto_generated|q_a\(12) & ( !\inst58~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst58~combout\,
	dataf => \inst|inst150|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|inst6|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y32_N31
\inst|inst3|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\,
	ena => \inst1|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2|inst16~q\);

-- Location: LABCELL_X27_Y33_N28
\inst1|inst100|inst2|inst16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst1|inst100|inst2|inst16~0_combout\ = ( \inst58~combout\ & ( (!\inst1|inst8~combout\ & \inst1|inst100|inst2|inst16~q\) ) ) # ( !\inst58~combout\ & ( (!\inst1|inst8~combout\ & ((\inst1|inst100|inst2|inst16~q\))) # (\inst1|inst8~combout\ & 
-- (\inst|inst3|inst2|inst16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2|ALT_INV_inst16~q\,
	datac => \inst1|ALT_INV_inst8~combout\,
	datad => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	dataf => \ALT_INV_inst58~combout\,
	combout => \inst1|inst100|inst2|inst16~0_combout\);

-- Location: FF_X27_Y33_N29
\inst1|inst100|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst100|inst2|inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst100|inst2|inst16~q\);

-- Location: MLABCELL_X31_Y35_N18
\inst8|inst70|$00000|auto_generated|l1_w12_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst8|inst70|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\ = ( \inst37~combout\ & ( \inst1|inst100|inst2|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst100|inst2|ALT_INV_inst16~q\,
	dataf => \ALT_INV_inst37~combout\,
	combout => \inst8|inst70|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y35_N19
\inst8|inst130|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|inst70|$00000|auto_generated|l1_w12_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst130|inst2|inst16~q\);

-- Location: LABCELL_X30_Y35_N8
\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ = ( \inst8|inst130|inst20|inst16~q\ & ( \inst8|inst130|inst20|inst10~q\ & ( (!\inst8|inst130|inst2|inst10~q\) # ((!\inst8|inst130|inst2|inst14~q\) # (!\inst8|inst130|inst2|inst12~q\)) ) ) ) # ( 
-- !\inst8|inst130|inst20|inst16~q\ & ( \inst8|inst130|inst20|inst10~q\ & ( (!\inst8|inst130|inst2|inst10~q\ & (((\inst8|inst130|inst2|inst12~q\) # (\inst8|inst130|inst2|inst14~q\)) # (\inst8|inst130|inst2|inst16~q\))) ) ) ) # ( 
-- \inst8|inst130|inst20|inst16~q\ & ( !\inst8|inst130|inst20|inst10~q\ & ( (!\inst8|inst130|inst2|inst10~q\ & (!\inst8|inst130|inst2|inst16~q\ & (!\inst8|inst130|inst2|inst14~q\ & !\inst8|inst130|inst2|inst12~q\))) # (\inst8|inst130|inst2|inst10~q\ & 
-- (((!\inst8|inst130|inst2|inst14~q\) # (!\inst8|inst130|inst2|inst12~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100110011000001001100110011001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst130|inst2|ALT_INV_inst16~q\,
	datab => \inst8|inst130|inst2|ALT_INV_inst10~q\,
	datac => \inst8|inst130|inst2|ALT_INV_inst14~q\,
	datad => \inst8|inst130|inst2|ALT_INV_inst12~q\,
	datae => \inst8|inst130|inst20|ALT_INV_inst16~q\,
	dataf => \inst8|inst130|inst20|ALT_INV_inst10~q\,
	combout => \inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X30_Y35_N26
\inst34|inst10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst34|inst10~1_combout\ = ( \inst33|inst3~2_combout\ & ( \inst1|inst100|inst2|inst3~q\ & ( (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst33|inst3~1_combout\) # 
-- (\inst33|inst3~0_combout\)))) # (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (((!\inst33|inst3~1_combout\) # (\inst33|inst3~0_combout\)))) ) ) ) # ( !\inst33|inst3~2_combout\ & ( \inst1|inst100|inst2|inst3~q\ & ( 
-- (\inst33|inst3~0_combout\ & ((\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\))) ) ) ) # ( \inst33|inst3~2_combout\ & ( !\inst1|inst100|inst2|inst3~q\ & ( 
-- (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst33|inst3~1_combout\) # (\inst33|inst3~0_combout\)))) ) ) ) # ( !\inst33|inst3~2_combout\ & ( 
-- !\inst1|inst100|inst2|inst3~q\ & ( (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~1_combout\ & (!\inst31|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst33|inst3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100000001000100000000000011101110111000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~1_combout\,
	datab => \inst31|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst33|ALT_INV_inst3~1_combout\,
	datad => \inst33|ALT_INV_inst3~0_combout\,
	datae => \inst33|ALT_INV_inst3~2_combout\,
	dataf => \inst1|inst100|inst2|ALT_INV_inst3~q\,
	combout => \inst34|inst10~1_combout\);

-- Location: LABCELL_X30_Y35_N12
\inst37~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst37~1_combout\ = ( \inst34|inst11~0_combout\ & ( \inst34|inst11~1_combout\ & ( (!\inst34|inst6|inst|inst1~combout\) # ((\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\))) ) ) ) # ( !\inst34|inst11~0_combout\ 
-- & ( \inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\)) ) ) ) # ( \inst34|inst11~0_combout\ & ( !\inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ 
-- & !\inst34|inst|inst|inst1~combout\)) ) ) ) # ( !\inst34|inst11~0_combout\ & ( !\inst34|inst11~1_combout\ & ( (\inst34|inst10~1_combout\ & (\inst34|inst10~0_combout\ & !\inst34|inst|inst|inst1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100001111111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|ALT_INV_inst10~1_combout\,
	datab => \inst34|ALT_INV_inst10~0_combout\,
	datac => \inst34|inst|inst|ALT_INV_inst1~combout\,
	datad => \inst34|inst6|inst|ALT_INV_inst1~combout\,
	datae => \inst34|ALT_INV_inst11~0_combout\,
	dataf => \inst34|ALT_INV_inst11~1_combout\,
	combout => \inst37~1_combout\);

-- Location: MLABCELL_X31_Y34_N22
inst37 : arriaii_lcell_comb
-- Equation(s):
-- \inst37~combout\ = ( !\inst37~0_combout\ & ( !\inst37~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst37~1_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst37~combout\);

-- Location: LABCELL_X30_Y32_N16
inst61 : arriaii_lcell_comb
-- Equation(s):
-- \inst61~combout\ = ( \inst9|inst|inst7|inst4|5~2_combout\ & ( !\inst37~0_combout\ & ( (\inst1|inst100|inst2|inst10~q\ & (!\inst37~1_combout\ & ((!\inst8|inst100|inst3|inst~1_combout\) # (\inst8|inst100|inst|inst7|inst3|24~0_combout\)))) ) ) ) # ( 
-- !\inst9|inst|inst7|inst4|5~2_combout\ & ( !\inst37~0_combout\ & ( (\inst1|inst100|inst2|inst10~q\ & (\inst8|inst100|inst3|inst~1_combout\ & (!\inst37~1_combout\ & !\inst8|inst100|inst|inst7|inst3|24~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst100|inst2|ALT_INV_inst10~q\,
	datab => \inst8|inst100|inst3|ALT_INV_inst~1_combout\,
	datac => \ALT_INV_inst37~1_combout\,
	datad => \inst8|inst100|inst|inst7|inst3|ALT_INV_24~0_combout\,
	datae => \inst9|inst|inst7|inst4|ALT_INV_5~2_combout\,
	dataf => \ALT_INV_inst37~0_combout\,
	combout => \inst61~combout\);

ww_ALUCONFLICTING <= \ALUCONFLICTING~output_o\;

ww_opcode_ALU(3) <= \opcode_ALU[3]~output_o\;

ww_opcode_ALU(2) <= \opcode_ALU[2]~output_o\;

ww_opcode_ALU(1) <= \opcode_ALU[1]~output_o\;

ww_opcode_ALU(0) <= \opcode_ALU[0]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_ALU_PC(7) <= \ALU_PC[7]~output_o\;

ww_ALU_PC(6) <= \ALU_PC[6]~output_o\;

ww_ALU_PC(5) <= \ALU_PC[5]~output_o\;

ww_ALU_PC(4) <= \ALU_PC[4]~output_o\;

ww_ALU_PC(3) <= \ALU_PC[3]~output_o\;

ww_ALU_PC(2) <= \ALU_PC[2]~output_o\;

ww_ALU_PC(1) <= \ALU_PC[1]~output_o\;

ww_ALU_PC(0) <= \ALU_PC[0]~output_o\;

ww_Branch_Done <= \Branch_Done~output_o\;

ww_JR_Done <= \JR_Done~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_RegRead_PC(7) <= \RegRead_PC[7]~output_o\;

ww_RegRead_PC(6) <= \RegRead_PC[6]~output_o\;

ww_RegRead_PC(5) <= \RegRead_PC[5]~output_o\;

ww_RegRead_PC(4) <= \RegRead_PC[4]~output_o\;

ww_RegRead_PC(3) <= \RegRead_PC[3]~output_o\;

ww_RegRead_PC(2) <= \RegRead_PC[2]~output_o\;

ww_RegRead_PC(1) <= \RegRead_PC[1]~output_o\;

ww_RegRead_PC(0) <= \RegRead_PC[0]~output_o\;

ww_Last_PC(7) <= \Last_PC[7]~output_o\;

ww_Last_PC(6) <= \Last_PC[6]~output_o\;

ww_Last_PC(5) <= \Last_PC[5]~output_o\;

ww_Last_PC(4) <= \Last_PC[4]~output_o\;

ww_Last_PC(3) <= \Last_PC[3]~output_o\;

ww_Last_PC(2) <= \Last_PC[2]~output_o\;

ww_Last_PC(1) <= \Last_PC[1]~output_o\;

ww_Last_PC(0) <= \Last_PC[0]~output_o\;

ww_opcode_RegRead(3) <= \opcode_RegRead[3]~output_o\;

ww_opcode_RegRead(2) <= \opcode_RegRead[2]~output_o\;

ww_opcode_RegRead(1) <= \opcode_RegRead[1]~output_o\;

ww_opcode_RegRead(0) <= \opcode_RegRead[0]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(0) <= \R0[0]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;

ww_R4(7) <= \R4[7]~output_o\;

ww_R4(6) <= \R4[6]~output_o\;

ww_R4(5) <= \R4[5]~output_o\;

ww_R4(4) <= \R4[4]~output_o\;

ww_R4(3) <= \R4[3]~output_o\;

ww_R4(2) <= \R4[2]~output_o\;

ww_R4(1) <= \R4[1]~output_o\;

ww_R4(0) <= \R4[0]~output_o\;

ww_R5(7) <= \R5[7]~output_o\;

ww_R5(6) <= \R5[6]~output_o\;

ww_R5(5) <= \R5[5]~output_o\;

ww_R5(4) <= \R5[4]~output_o\;

ww_R5(3) <= \R5[3]~output_o\;

ww_R5(2) <= \R5[2]~output_o\;

ww_R5(1) <= \R5[1]~output_o\;

ww_R5(0) <= \R5[0]~output_o\;

ww_R6(7) <= \R6[7]~output_o\;

ww_R6(6) <= \R6[6]~output_o\;

ww_R6(5) <= \R6[5]~output_o\;

ww_R6(4) <= \R6[4]~output_o\;

ww_R6(3) <= \R6[3]~output_o\;

ww_R6(2) <= \R6[2]~output_o\;

ww_R6(1) <= \R6[1]~output_o\;

ww_R6(0) <= \R6[0]~output_o\;

ww_R7(7) <= \R7[7]~output_o\;

ww_R7(6) <= \R7[6]~output_o\;

ww_R7(5) <= \R7[5]~output_o\;

ww_R7(4) <= \R7[4]~output_o\;

ww_R7(3) <= \R7[3]~output_o\;

ww_R7(2) <= \R7[2]~output_o\;

ww_R7(1) <= \R7[1]~output_o\;

ww_R7(0) <= \R7[0]~output_o\;
END structure;


