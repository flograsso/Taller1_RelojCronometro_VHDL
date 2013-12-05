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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/05/2013 00:20:56"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	reloj IS
    PORT (
	HEX3 : OUT std_logic_vector(0 TO 7);
	HEX2 : OUT std_logic_vector(0 TO 7);
	HEX1 : OUT std_logic_vector(0 TO 7);
	HEX0 : OUT std_logic_vector(0 TO 7);
	SW : IN std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	U_S1 : OUT STD.STANDARD.integer;
	D_S1 : OUT STD.STANDARD.integer;
	U_M1 : OUT STD.STANDARD.integer;
	estado : OUT STD.STANDARD.integer;
	clk_out : OUT STD.STANDARD.integer
	);
END reloj;

-- Design Ports Information
-- HEX3[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- U_S1[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[5]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[7]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[9]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[10]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[15]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[16]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[17]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[18]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[20]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[22]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[24]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[25]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[26]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[28]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[29]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[30]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_S1[31]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[15]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[16]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[17]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[18]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[19]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[20]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[22]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[23]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[24]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[25]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[27]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[28]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[29]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[30]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_S1[31]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[5]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[6]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[9]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[10]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[11]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[16]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[18]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[19]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[21]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[22]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[23]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[25]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[26]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[27]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[29]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[30]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U_M1[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[6]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[11]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[14]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[16]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[17]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[18]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[19]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[20]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[21]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[22]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[23]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[24]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[25]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[26]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[27]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[28]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[29]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[30]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[31]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[2]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[8]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[16]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[19]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[20]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[21]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[22]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[23]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[24]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[25]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[26]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[27]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[28]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[30]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reloj IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX3 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 7);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_U_S1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D_S1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_U_M1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_MS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \U_HH[5]~42_combout\ : std_logic;
SIGNAL \U_HH[6]~44_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \U_HH[27]~90_combout\ : std_logic;
SIGNAL \U_HH[30]~97\ : std_logic;
SIGNAL \U_HH[31]~98_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \D1|Equal0~1_combout\ : std_logic;
SIGNAL \D1|Equal0~2_combout\ : std_logic;
SIGNAL \D1|Equal0~3_combout\ : std_logic;
SIGNAL \D1|Equal0~4_combout\ : std_logic;
SIGNAL \D1|Equal0~5_combout\ : std_logic;
SIGNAL \D1|Equal0~6_combout\ : std_logic;
SIGNAL \D1|Equal0~7_combout\ : std_logic;
SIGNAL \D1|Equal0~11_combout\ : std_logic;
SIGNAL \D1|Equal0~16_combout\ : std_logic;
SIGNAL \D1|Equal0~18_combout\ : std_logic;
SIGNAL \D2|Equal0~1_combout\ : std_logic;
SIGNAL \D2|Equal0~3_combout\ : std_logic;
SIGNAL \D2|Equal0~4_combout\ : std_logic;
SIGNAL \D2|Equal0~5_combout\ : std_logic;
SIGNAL \D2|Equal0~6_combout\ : std_logic;
SIGNAL \D2|Equal0~7_combout\ : std_logic;
SIGNAL \D2|Equal0~9_combout\ : std_logic;
SIGNAL \D2|Equal0~13_combout\ : std_logic;
SIGNAL \D2|Equal0~21_combout\ : std_logic;
SIGNAL \D2|Equal0~25_combout\ : std_logic;
SIGNAL \D3|Equal0~6_combout\ : std_logic;
SIGNAL \D3|Equal0~10_combout\ : std_logic;
SIGNAL \D3|Equal0~11_combout\ : std_logic;
SIGNAL \D3|Equal0~12_combout\ : std_logic;
SIGNAL \D3|Equal0~13_combout\ : std_logic;
SIGNAL \D3|Equal0~14_combout\ : std_logic;
SIGNAL \D3|Equal0~18_combout\ : std_logic;
SIGNAL \D3|Equal0~21_combout\ : std_logic;
SIGNAL \D3|Equal8~0_combout\ : std_logic;
SIGNAL \D3|WideOr2~2_combout\ : std_logic;
SIGNAL \D4|Equal0~3_combout\ : std_logic;
SIGNAL \D4|Equal0~4_combout\ : std_logic;
SIGNAL \D4|Equal0~5_combout\ : std_logic;
SIGNAL \D4|Equal0~6_combout\ : std_logic;
SIGNAL \D4|Equal0~7_combout\ : std_logic;
SIGNAL \D4|Equal0~11_combout\ : std_logic;
SIGNAL \D4|Equal0~16_combout\ : std_logic;
SIGNAL \D4|Equal0~19_combout\ : std_logic;
SIGNAL \D4|Equal8~0_combout\ : std_logic;
SIGNAL \D4|WideOr2~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \D_HH[15]~5_combout\ : std_logic;
SIGNAL \D_HH[15]~10_combout\ : std_logic;
SIGNAL \D_HH[15]~11_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \Equal11~7_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~8_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~9_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Selector112~1_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Selector114~1_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector121~1_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \CLOCK_MS~0_combout\ : std_logic;
SIGNAL \D_SS~2_combout\ : std_logic;
SIGNAL \D_CC~1_combout\ : std_logic;
SIGNAL \estadoBT2~0_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \U_S1[0]~output_o\ : std_logic;
SIGNAL \U_S1[1]~output_o\ : std_logic;
SIGNAL \U_S1[2]~output_o\ : std_logic;
SIGNAL \U_S1[3]~output_o\ : std_logic;
SIGNAL \U_S1[4]~output_o\ : std_logic;
SIGNAL \U_S1[5]~output_o\ : std_logic;
SIGNAL \U_S1[6]~output_o\ : std_logic;
SIGNAL \U_S1[7]~output_o\ : std_logic;
SIGNAL \U_S1[8]~output_o\ : std_logic;
SIGNAL \U_S1[9]~output_o\ : std_logic;
SIGNAL \U_S1[10]~output_o\ : std_logic;
SIGNAL \U_S1[11]~output_o\ : std_logic;
SIGNAL \U_S1[12]~output_o\ : std_logic;
SIGNAL \U_S1[13]~output_o\ : std_logic;
SIGNAL \U_S1[14]~output_o\ : std_logic;
SIGNAL \U_S1[15]~output_o\ : std_logic;
SIGNAL \U_S1[16]~output_o\ : std_logic;
SIGNAL \U_S1[17]~output_o\ : std_logic;
SIGNAL \U_S1[18]~output_o\ : std_logic;
SIGNAL \U_S1[19]~output_o\ : std_logic;
SIGNAL \U_S1[20]~output_o\ : std_logic;
SIGNAL \U_S1[21]~output_o\ : std_logic;
SIGNAL \U_S1[22]~output_o\ : std_logic;
SIGNAL \U_S1[23]~output_o\ : std_logic;
SIGNAL \U_S1[24]~output_o\ : std_logic;
SIGNAL \U_S1[25]~output_o\ : std_logic;
SIGNAL \U_S1[26]~output_o\ : std_logic;
SIGNAL \U_S1[27]~output_o\ : std_logic;
SIGNAL \U_S1[28]~output_o\ : std_logic;
SIGNAL \U_S1[29]~output_o\ : std_logic;
SIGNAL \U_S1[30]~output_o\ : std_logic;
SIGNAL \U_S1[31]~output_o\ : std_logic;
SIGNAL \D_S1[0]~output_o\ : std_logic;
SIGNAL \D_S1[1]~output_o\ : std_logic;
SIGNAL \D_S1[2]~output_o\ : std_logic;
SIGNAL \D_S1[3]~output_o\ : std_logic;
SIGNAL \D_S1[4]~output_o\ : std_logic;
SIGNAL \D_S1[5]~output_o\ : std_logic;
SIGNAL \D_S1[6]~output_o\ : std_logic;
SIGNAL \D_S1[7]~output_o\ : std_logic;
SIGNAL \D_S1[8]~output_o\ : std_logic;
SIGNAL \D_S1[9]~output_o\ : std_logic;
SIGNAL \D_S1[10]~output_o\ : std_logic;
SIGNAL \D_S1[11]~output_o\ : std_logic;
SIGNAL \D_S1[12]~output_o\ : std_logic;
SIGNAL \D_S1[13]~output_o\ : std_logic;
SIGNAL \D_S1[14]~output_o\ : std_logic;
SIGNAL \D_S1[15]~output_o\ : std_logic;
SIGNAL \D_S1[16]~output_o\ : std_logic;
SIGNAL \D_S1[17]~output_o\ : std_logic;
SIGNAL \D_S1[18]~output_o\ : std_logic;
SIGNAL \D_S1[19]~output_o\ : std_logic;
SIGNAL \D_S1[20]~output_o\ : std_logic;
SIGNAL \D_S1[21]~output_o\ : std_logic;
SIGNAL \D_S1[22]~output_o\ : std_logic;
SIGNAL \D_S1[23]~output_o\ : std_logic;
SIGNAL \D_S1[24]~output_o\ : std_logic;
SIGNAL \D_S1[25]~output_o\ : std_logic;
SIGNAL \D_S1[26]~output_o\ : std_logic;
SIGNAL \D_S1[27]~output_o\ : std_logic;
SIGNAL \D_S1[28]~output_o\ : std_logic;
SIGNAL \D_S1[29]~output_o\ : std_logic;
SIGNAL \D_S1[30]~output_o\ : std_logic;
SIGNAL \D_S1[31]~output_o\ : std_logic;
SIGNAL \U_M1[0]~output_o\ : std_logic;
SIGNAL \U_M1[1]~output_o\ : std_logic;
SIGNAL \U_M1[2]~output_o\ : std_logic;
SIGNAL \U_M1[3]~output_o\ : std_logic;
SIGNAL \U_M1[4]~output_o\ : std_logic;
SIGNAL \U_M1[5]~output_o\ : std_logic;
SIGNAL \U_M1[6]~output_o\ : std_logic;
SIGNAL \U_M1[7]~output_o\ : std_logic;
SIGNAL \U_M1[8]~output_o\ : std_logic;
SIGNAL \U_M1[9]~output_o\ : std_logic;
SIGNAL \U_M1[10]~output_o\ : std_logic;
SIGNAL \U_M1[11]~output_o\ : std_logic;
SIGNAL \U_M1[12]~output_o\ : std_logic;
SIGNAL \U_M1[13]~output_o\ : std_logic;
SIGNAL \U_M1[14]~output_o\ : std_logic;
SIGNAL \U_M1[15]~output_o\ : std_logic;
SIGNAL \U_M1[16]~output_o\ : std_logic;
SIGNAL \U_M1[17]~output_o\ : std_logic;
SIGNAL \U_M1[18]~output_o\ : std_logic;
SIGNAL \U_M1[19]~output_o\ : std_logic;
SIGNAL \U_M1[20]~output_o\ : std_logic;
SIGNAL \U_M1[21]~output_o\ : std_logic;
SIGNAL \U_M1[22]~output_o\ : std_logic;
SIGNAL \U_M1[23]~output_o\ : std_logic;
SIGNAL \U_M1[24]~output_o\ : std_logic;
SIGNAL \U_M1[25]~output_o\ : std_logic;
SIGNAL \U_M1[26]~output_o\ : std_logic;
SIGNAL \U_M1[27]~output_o\ : std_logic;
SIGNAL \U_M1[28]~output_o\ : std_logic;
SIGNAL \U_M1[29]~output_o\ : std_logic;
SIGNAL \U_M1[30]~output_o\ : std_logic;
SIGNAL \U_M1[31]~output_o\ : std_logic;
SIGNAL \estado[0]~output_o\ : std_logic;
SIGNAL \estado[1]~output_o\ : std_logic;
SIGNAL \estado[2]~output_o\ : std_logic;
SIGNAL \estado[3]~output_o\ : std_logic;
SIGNAL \estado[4]~output_o\ : std_logic;
SIGNAL \estado[5]~output_o\ : std_logic;
SIGNAL \estado[6]~output_o\ : std_logic;
SIGNAL \estado[7]~output_o\ : std_logic;
SIGNAL \estado[8]~output_o\ : std_logic;
SIGNAL \estado[9]~output_o\ : std_logic;
SIGNAL \estado[10]~output_o\ : std_logic;
SIGNAL \estado[11]~output_o\ : std_logic;
SIGNAL \estado[12]~output_o\ : std_logic;
SIGNAL \estado[13]~output_o\ : std_logic;
SIGNAL \estado[14]~output_o\ : std_logic;
SIGNAL \estado[15]~output_o\ : std_logic;
SIGNAL \estado[16]~output_o\ : std_logic;
SIGNAL \estado[17]~output_o\ : std_logic;
SIGNAL \estado[18]~output_o\ : std_logic;
SIGNAL \estado[19]~output_o\ : std_logic;
SIGNAL \estado[20]~output_o\ : std_logic;
SIGNAL \estado[21]~output_o\ : std_logic;
SIGNAL \estado[22]~output_o\ : std_logic;
SIGNAL \estado[23]~output_o\ : std_logic;
SIGNAL \estado[24]~output_o\ : std_logic;
SIGNAL \estado[25]~output_o\ : std_logic;
SIGNAL \estado[26]~output_o\ : std_logic;
SIGNAL \estado[27]~output_o\ : std_logic;
SIGNAL \estado[28]~output_o\ : std_logic;
SIGNAL \estado[29]~output_o\ : std_logic;
SIGNAL \estado[30]~output_o\ : std_logic;
SIGNAL \estado[31]~output_o\ : std_logic;
SIGNAL \clk_out[0]~output_o\ : std_logic;
SIGNAL \clk_out[1]~output_o\ : std_logic;
SIGNAL \clk_out[2]~output_o\ : std_logic;
SIGNAL \clk_out[3]~output_o\ : std_logic;
SIGNAL \clk_out[4]~output_o\ : std_logic;
SIGNAL \clk_out[5]~output_o\ : std_logic;
SIGNAL \clk_out[6]~output_o\ : std_logic;
SIGNAL \clk_out[7]~output_o\ : std_logic;
SIGNAL \clk_out[8]~output_o\ : std_logic;
SIGNAL \clk_out[9]~output_o\ : std_logic;
SIGNAL \clk_out[10]~output_o\ : std_logic;
SIGNAL \clk_out[11]~output_o\ : std_logic;
SIGNAL \clk_out[12]~output_o\ : std_logic;
SIGNAL \clk_out[13]~output_o\ : std_logic;
SIGNAL \clk_out[14]~output_o\ : std_logic;
SIGNAL \clk_out[15]~output_o\ : std_logic;
SIGNAL \clk_out[16]~output_o\ : std_logic;
SIGNAL \clk_out[17]~output_o\ : std_logic;
SIGNAL \clk_out[18]~output_o\ : std_logic;
SIGNAL \clk_out[19]~output_o\ : std_logic;
SIGNAL \clk_out[20]~output_o\ : std_logic;
SIGNAL \clk_out[21]~output_o\ : std_logic;
SIGNAL \clk_out[22]~output_o\ : std_logic;
SIGNAL \clk_out[23]~output_o\ : std_logic;
SIGNAL \clk_out[24]~output_o\ : std_logic;
SIGNAL \clk_out[25]~output_o\ : std_logic;
SIGNAL \clk_out[26]~output_o\ : std_logic;
SIGNAL \clk_out[27]~output_o\ : std_logic;
SIGNAL \clk_out[28]~output_o\ : std_logic;
SIGNAL \clk_out[29]~output_o\ : std_logic;
SIGNAL \clk_out[30]~output_o\ : std_logic;
SIGNAL \clk_out[31]~output_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \EA.S2~q\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \EA.S1~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ESTADO_CRON~12_combout\ : std_logic;
SIGNAL \ESTADO_CRON.RESET~q\ : std_logic;
SIGNAL \estadoBT1~1_combout\ : std_logic;
SIGNAL \estadoBT1~q\ : std_logic;
SIGNAL \ESTADO_CRON~11_combout\ : std_logic;
SIGNAL \ESTADO_CRON~9_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \estadoBT2~1_combout\ : std_logic;
SIGNAL \estadoBT2~q\ : std_logic;
SIGNAL \ESTADO_CRON~10_combout\ : std_logic;
SIGNAL \ESTADO_CRON.PAUSE~q\ : std_logic;
SIGNAL \ESTADO_CRON~8_combout\ : std_logic;
SIGNAL \ESTADO_CRON.RUN~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector60~1_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector92~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector110~1_combout\ : std_logic;
SIGNAL \Selector127~1_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \D_HH[15]~15_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \U_SS~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \U_CC[0]~feeder_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \U_CC~1_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \U_CC~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \D_CC~0_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \D_CC[16]~feeder_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \D_CC[18]~feeder_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \U_SS[29]~0_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \U_SS~1_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \U_SS[2]~feeder_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \U_SS[0]~feeder_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \D_SS[0]~0_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Equal8~8_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \Equal8~7_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \D_SS~1_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \D_SS[0]~feeder_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Equal8~10_combout\ : std_logic;
SIGNAL \U_HH[30]~49_combout\ : std_logic;
SIGNAL \U_HH[30]~50_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Equal9~7_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \U_MM~0_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \U_MM~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \D4|Equal0~1_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~9_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \CLK~1_combout\ : std_logic;
SIGNAL \D_MM[11]~0_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \D_MM~2_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \D_MM~1_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~25\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Add10~29\ : std_logic;
SIGNAL \Add10~31\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Add10~35\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~39\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \Add10~41\ : std_logic;
SIGNAL \Add10~43\ : std_logic;
SIGNAL \Add10~45\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \Add10~47\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal10~10_combout\ : std_logic;
SIGNAL \D_HH[15]~16_combout\ : std_logic;
SIGNAL \D_HH[15]~22_combout\ : std_logic;
SIGNAL \D_HH[15]~17_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \Add12~25\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \D_HH[1]~21_combout\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \Add12~33\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \Add12~37\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~45\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \Add12~44_combout\ : std_logic;
SIGNAL \Equal11~6_combout\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add12~49\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \Add12~51\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add12~53\ : std_logic;
SIGNAL \Add12~55\ : std_logic;
SIGNAL \Add12~56_combout\ : std_logic;
SIGNAL \Add12~57\ : std_logic;
SIGNAL \Add12~59\ : std_logic;
SIGNAL \Add12~60_combout\ : std_logic;
SIGNAL \Add12~58_combout\ : std_logic;
SIGNAL \Equal11~8_combout\ : std_logic;
SIGNAL \Add12~38_combout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \Equal11~9_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal11~10_combout\ : std_logic;
SIGNAL \D_HH[15]~18_combout\ : std_logic;
SIGNAL \D_HH[0]~19_combout\ : std_logic;
SIGNAL \D_HH[0]~20_combout\ : std_logic;
SIGNAL \primerDig[0]~2_combout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Selector124~1_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \primerDig[3]~1_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Selector120~1_combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \Selector122~1_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Selector116~1_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Selector117~1_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Selector119~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Selector125~1_combout\ : std_logic;
SIGNAL \Selector125~2_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Selector123~1_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Selector118~1_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Selector115~1_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Selector113~1_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Selector111~1_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Selector110~2_combout\ : std_logic;
SIGNAL \Selector110~3_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Selector109~1_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \D1|Equal0~21_combout\ : std_logic;
SIGNAL \D1|Equal0~19_combout\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \D1|Equal0~20_combout\ : std_logic;
SIGNAL \D1|Equal0~22_combout\ : std_logic;
SIGNAL \D1|Equal0~15_combout\ : std_logic;
SIGNAL \Add12~61\ : std_logic;
SIGNAL \Add12~62_combout\ : std_logic;
SIGNAL \D1|Equal0~14_combout\ : std_logic;
SIGNAL \D1|Equal0~13_combout\ : std_logic;
SIGNAL \D1|Equal0~17_combout\ : std_logic;
SIGNAL \D1|Equal0~10_combout\ : std_logic;
SIGNAL \D1|Equal0~9_combout\ : std_logic;
SIGNAL \D1|Equal0~8_combout\ : std_logic;
SIGNAL \D1|Equal0~12_combout\ : std_logic;
SIGNAL \D1|Equal0~23_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \D1|Equal0~0_combout\ : std_logic;
SIGNAL \D1|Equal0~24_combout\ : std_logic;
SIGNAL \primerDig[2]~0_combout\ : std_logic;
SIGNAL \D1|Equal0~25_combout\ : std_logic;
SIGNAL \primerDig[1]~3_combout\ : std_logic;
SIGNAL \D1|Equal0~26_combout\ : std_logic;
SIGNAL \D1|WideNor0~0_combout\ : std_logic;
SIGNAL \D1|WideOr2~2_combout\ : std_logic;
SIGNAL \D1|Equal8~0_combout\ : std_logic;
SIGNAL \D1|WideOr2~3_combout\ : std_logic;
SIGNAL \D1|WideOr5~combout\ : std_logic;
SIGNAL \D1|WideOr4~combout\ : std_logic;
SIGNAL \D1|WideNor0~1_combout\ : std_logic;
SIGNAL \D1|WideNor0~3_combout\ : std_logic;
SIGNAL \D1|Equal6~0_combout\ : std_logic;
SIGNAL \D1|WideOr2~combout\ : std_logic;
SIGNAL \D1|WideNor0~2_combout\ : std_logic;
SIGNAL \D1|WideOr1~combout\ : std_logic;
SIGNAL \D1|WideNor0~4_combout\ : std_logic;
SIGNAL \D1|WideOr0~combout\ : std_logic;
SIGNAL \segundoDig[3]~1_combout\ : std_logic;
SIGNAL \D2|Equal0~0_combout\ : std_logic;
SIGNAL \D2|Equal0~2_combout\ : std_logic;
SIGNAL \U_HH[0]~32_combout\ : std_logic;
SIGNAL \U_HH[3]~38_combout\ : std_logic;
SIGNAL \U_HH[30]~48_combout\ : std_logic;
SIGNAL \U_HH[30]~51_combout\ : std_logic;
SIGNAL \U_HH[15]~66_combout\ : std_logic;
SIGNAL \U_HH[13]~62_combout\ : std_logic;
SIGNAL \D_HH[15]~9_combout\ : std_logic;
SIGNAL \U_HH[22]~81\ : std_logic;
SIGNAL \U_HH[23]~82_combout\ : std_logic;
SIGNAL \U_HH[23]~83\ : std_logic;
SIGNAL \U_HH[24]~84_combout\ : std_logic;
SIGNAL \U_HH[24]~85\ : std_logic;
SIGNAL \U_HH[25]~86_combout\ : std_logic;
SIGNAL \U_HH[25]~87\ : std_logic;
SIGNAL \U_HH[26]~88_combout\ : std_logic;
SIGNAL \U_HH[26]~89\ : std_logic;
SIGNAL \U_HH[27]~91\ : std_logic;
SIGNAL \U_HH[28]~92_combout\ : std_logic;
SIGNAL \U_HH[28]~93\ : std_logic;
SIGNAL \U_HH[29]~95\ : std_logic;
SIGNAL \U_HH[30]~96_combout\ : std_logic;
SIGNAL \U_HH[29]~94_combout\ : std_logic;
SIGNAL \D_HH[15]~4_combout\ : std_logic;
SIGNAL \U_HH[19]~74_combout\ : std_logic;
SIGNAL \D_HH[15]~7_combout\ : std_logic;
SIGNAL \U_HH[21]~78_combout\ : std_logic;
SIGNAL \D_HH[15]~6_combout\ : std_logic;
SIGNAL \D_HH[15]~8_combout\ : std_logic;
SIGNAL \D_HH[15]~12_combout\ : std_logic;
SIGNAL \D_HH[15]~13_combout\ : std_logic;
SIGNAL \D_HH[15]~14_combout\ : std_logic;
SIGNAL \U_HH[0]~33\ : std_logic;
SIGNAL \U_HH[1]~34_combout\ : std_logic;
SIGNAL \U_HH[1]~35\ : std_logic;
SIGNAL \U_HH[2]~36_combout\ : std_logic;
SIGNAL \U_HH[2]~37\ : std_logic;
SIGNAL \U_HH[3]~39\ : std_logic;
SIGNAL \U_HH[4]~40_combout\ : std_logic;
SIGNAL \U_HH[4]~41\ : std_logic;
SIGNAL \U_HH[5]~43\ : std_logic;
SIGNAL \U_HH[6]~45\ : std_logic;
SIGNAL \U_HH[7]~46_combout\ : std_logic;
SIGNAL \U_HH[7]~47\ : std_logic;
SIGNAL \U_HH[8]~52_combout\ : std_logic;
SIGNAL \U_HH[8]~53\ : std_logic;
SIGNAL \U_HH[9]~54_combout\ : std_logic;
SIGNAL \U_HH[9]~55\ : std_logic;
SIGNAL \U_HH[10]~56_combout\ : std_logic;
SIGNAL \U_HH[10]~57\ : std_logic;
SIGNAL \U_HH[11]~59\ : std_logic;
SIGNAL \U_HH[12]~60_combout\ : std_logic;
SIGNAL \U_HH[12]~61\ : std_logic;
SIGNAL \U_HH[13]~63\ : std_logic;
SIGNAL \U_HH[14]~64_combout\ : std_logic;
SIGNAL \U_HH[14]~65\ : std_logic;
SIGNAL \U_HH[15]~67\ : std_logic;
SIGNAL \U_HH[16]~68_combout\ : std_logic;
SIGNAL \U_HH[16]~69\ : std_logic;
SIGNAL \U_HH[17]~70_combout\ : std_logic;
SIGNAL \U_HH[17]~71\ : std_logic;
SIGNAL \U_HH[18]~72_combout\ : std_logic;
SIGNAL \U_HH[18]~73\ : std_logic;
SIGNAL \U_HH[19]~75\ : std_logic;
SIGNAL \U_HH[20]~76_combout\ : std_logic;
SIGNAL \U_HH[20]~77\ : std_logic;
SIGNAL \U_HH[21]~79\ : std_logic;
SIGNAL \U_HH[22]~80_combout\ : std_logic;
SIGNAL \D2|Equal0~10_combout\ : std_logic;
SIGNAL \D2|Equal0~11_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \D2|Equal0~8_combout\ : std_logic;
SIGNAL \D2|Equal0~12_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \Selector79~2_combout\ : std_logic;
SIGNAL \D2|Equal0~15_combout\ : std_logic;
SIGNAL \D2|Equal0~14_combout\ : std_logic;
SIGNAL \D2|Equal0~16_combout\ : std_logic;
SIGNAL \D2|Equal0~17_combout\ : std_logic;
SIGNAL \U_HH[11]~58_combout\ : std_logic;
SIGNAL \D2|Equal0~19_combout\ : std_logic;
SIGNAL \D2|Equal0~18_combout\ : std_logic;
SIGNAL \D2|Equal0~20_combout\ : std_logic;
SIGNAL \D2|Equal0~22_combout\ : std_logic;
SIGNAL \D2|Equal0~23_combout\ : std_logic;
SIGNAL \D2|Equal0~24_combout\ : std_logic;
SIGNAL \segundoDig[1]~3_combout\ : std_logic;
SIGNAL \segundoDig[2]~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \segundoDig[0]~2_combout\ : std_logic;
SIGNAL \D2|WideNor0~0_combout\ : std_logic;
SIGNAL \D2|WideNor0~1_combout\ : std_logic;
SIGNAL \D2|WideOr2~2_combout\ : std_logic;
SIGNAL \D2|WideOr2~3_combout\ : std_logic;
SIGNAL \D2|WideOr5~combout\ : std_logic;
SIGNAL \D2|WideOr4~combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \D2|Equal8~0_combout\ : std_logic;
SIGNAL \D2|Equal8~1_combout\ : std_logic;
SIGNAL \D2|WideNor0~3_combout\ : std_logic;
SIGNAL \D2|Equal6~0_combout\ : std_logic;
SIGNAL \D2|WideOr2~combout\ : std_logic;
SIGNAL \D2|WideNor0~2_combout\ : std_logic;
SIGNAL \D2|WideOr1~combout\ : std_logic;
SIGNAL \D2|WideNor0~4_combout\ : std_logic;
SIGNAL \D2|WideOr0~combout\ : std_logic;
SIGNAL \tercerDig[2]~1_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \D3|Equal0~2_combout\ : std_logic;
SIGNAL \tercerDig[3]~0_combout\ : std_logic;
SIGNAL \D3|Equal0~3_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \D3|Equal0~4_combout\ : std_logic;
SIGNAL \D3|Equal0~26_combout\ : std_logic;
SIGNAL \tercerDig[0]~2_combout\ : std_logic;
SIGNAL \D3|WideNor0~0_combout\ : std_logic;
SIGNAL \D3|Equal0~16_combout\ : std_logic;
SIGNAL \D3|Equal0~15_combout\ : std_logic;
SIGNAL \D3|Equal0~17_combout\ : std_logic;
SIGNAL \D3|Equal0~19_combout\ : std_logic;
SIGNAL \D3|Equal0~23_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \D3|Equal0~22_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \D3|Equal0~20_combout\ : std_logic;
SIGNAL \D3|Equal0~24_combout\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \D3|Equal0~5_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \D3|Equal0~7_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \D3|Equal0~8_combout\ : std_logic;
SIGNAL \D3|Equal0~9_combout\ : std_logic;
SIGNAL \D3|Equal0~25_combout\ : std_logic;
SIGNAL \D3|Equal8~1_combout\ : std_logic;
SIGNAL \D3|WideNor0~1_combout\ : std_logic;
SIGNAL \D3|WideOr2~3_combout\ : std_logic;
SIGNAL \D3|Equal0~27_combout\ : std_logic;
SIGNAL \tercerDig[1]~3_combout\ : std_logic;
SIGNAL \D3|WideOr5~combout\ : std_logic;
SIGNAL \D3|WideOr4~combout\ : std_logic;
SIGNAL \D3|WideNor0~3_combout\ : std_logic;
SIGNAL \D3|Equal6~2_combout\ : std_logic;
SIGNAL \D3|WideOr2~combout\ : std_logic;
SIGNAL \D3|WideNor0~2_combout\ : std_logic;
SIGNAL \D3|WideOr1~combout\ : std_logic;
SIGNAL \D3|WideNor0~4_combout\ : std_logic;
SIGNAL \D3|WideOr0~combout\ : std_logic;
SIGNAL \cuartoDig[1]~3_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \D4|Equal0~0_combout\ : std_logic;
SIGNAL \D4|Equal0~2_combout\ : std_logic;
SIGNAL \D4|Equal0~21_combout\ : std_logic;
SIGNAL \D4|Equal0~20_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \D4|Equal0~18_combout\ : std_logic;
SIGNAL \D4|Equal0~22_combout\ : std_logic;
SIGNAL \D4|Equal0~14_combout\ : std_logic;
SIGNAL \D4|Equal0~15_combout\ : std_logic;
SIGNAL \D4|Equal0~13_combout\ : std_logic;
SIGNAL \D4|Equal0~17_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \D4|Equal0~10_combout\ : std_logic;
SIGNAL \D4|Equal0~9_combout\ : std_logic;
SIGNAL \D4|Equal0~8_combout\ : std_logic;
SIGNAL \D4|Equal0~12_combout\ : std_logic;
SIGNAL \D4|Equal0~23_combout\ : std_logic;
SIGNAL \cuartoDig[3]~1_combout\ : std_logic;
SIGNAL \D4|Equal0~25_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \cuartoDig[0]~2_combout\ : std_logic;
SIGNAL \D4|WideNor0~0_combout\ : std_logic;
SIGNAL \D4|Equal8~1_combout\ : std_logic;
SIGNAL \D4|WideNor0~1_combout\ : std_logic;
SIGNAL \D4|WideOr2~3_combout\ : std_logic;
SIGNAL \cuartoDig[2]~0_combout\ : std_logic;
SIGNAL \D4|Equal0~24_combout\ : std_logic;
SIGNAL \D4|WideOr5~combout\ : std_logic;
SIGNAL \D4|WideOr4~combout\ : std_logic;
SIGNAL \D4|WideNor0~3_combout\ : std_logic;
SIGNAL \D4|Equal6~0_combout\ : std_logic;
SIGNAL \D4|WideOr2~combout\ : std_logic;
SIGNAL \D4|WideNor0~2_combout\ : std_logic;
SIGNAL \D4|WideOr1~combout\ : std_logic;
SIGNAL \D4|WideNor0~4_combout\ : std_logic;
SIGNAL \D4|WideOr0~combout\ : std_logic;
SIGNAL \estado[0]$latch~combout\ : std_logic;
SIGNAL \CLOCK_MS~feeder_combout\ : std_logic;
SIGNAL \CLOCK_MS~q\ : std_logic;
SIGNAL \CLOCK_MS~clkctrl_outclk\ : std_logic;
SIGNAL \clk_out[0]~reg0_q\ : std_logic;
SIGNAL \clk_out[1]~reg0_q\ : std_logic;
SIGNAL \clk_out[31]~reg0_q\ : std_logic;
SIGNAL U_CC_CRON : std_logic_vector(31 DOWNTO 0);
SIGNAL D_HH : std_logic_vector(31 DOWNTO 0);
SIGNAL U_CC : std_logic_vector(31 DOWNTO 0);
SIGNAL D_SS_CRON : std_logic_vector(31 DOWNTO 0);
SIGNAL U_SS_CRON : std_logic_vector(31 DOWNTO 0);
SIGNAL D_CC_CRON : std_logic_vector(31 DOWNTO 0);
SIGNAL U_HH : std_logic_vector(31 DOWNTO 0);
SIGNAL U_MM : std_logic_vector(31 DOWNTO 0);
SIGNAL U_SS : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL D_MM : std_logic_vector(31 DOWNTO 0);
SIGNAL D_CC : std_logic_vector(31 DOWNTO 0);
SIGNAL D_SS : std_logic_vector(31 DOWNTO 0);
SIGNAL \D1|salida\ : std_logic_vector(0 TO 6);
SIGNAL \D2|salida\ : std_logic_vector(0 TO 6);
SIGNAL \D3|salida\ : std_logic_vector(0 TO 6);
SIGNAL \D4|salida\ : std_logic_vector(0 TO 6);
SIGNAL \ALT_INV_ESTADO_CRON.RUN~q\ : std_logic;

BEGIN

HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
U_S1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_U_S1));
D_S1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_D_S1));
U_M1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_U_M1));
estado <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_estado));
clk_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_clk_out));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_MS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_MS~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_ESTADO_CRON.RUN~q\ <= NOT \ESTADO_CRON.RUN~q\;

-- Location: FF_X17_Y24_N13
\U_HH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[6]~44_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(6));

-- Location: FF_X17_Y24_N11
\U_HH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[5]~42_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(5));

-- Location: FF_X17_Y23_N31
\U_HH[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[31]~98_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(31));

-- Location: FF_X17_Y23_N23
\U_HH[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[27]~90_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(27));

-- Location: LCCOMB_X20_Y27_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (D_SS_CRON(1) & (!\Add4~1\)) # (!D_SS_CRON(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!D_SS_CRON(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X20_Y27_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (D_SS_CRON(3) & (!\Add4~5\)) # (!D_SS_CRON(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!D_SS_CRON(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X20_Y27_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (D_SS_CRON(5) & (!\Add4~9\)) # (!D_SS_CRON(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!D_SS_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X20_Y27_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (D_SS_CRON(6) & (\Add4~11\ $ (GND))) # (!D_SS_CRON(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((D_SS_CRON(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X20_Y27_N14
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (D_SS_CRON(7) & (!\Add4~13\)) # (!D_SS_CRON(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!D_SS_CRON(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X20_Y27_N26
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (D_SS_CRON(13) & (!\Add4~25\)) # (!D_SS_CRON(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!D_SS_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X20_Y27_N30
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (D_SS_CRON(15) & (!\Add4~29\)) # (!D_SS_CRON(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!D_SS_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X15_Y25_N10
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (D_HH(5) & (!\Add12~9\)) # (!D_HH(5) & ((\Add12~9\) # (GND)))
-- \Add12~11\ = CARRY((!\Add12~9\) # (!D_HH(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X15_Y24_N22
\Add12~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (D_HH(27) & (!\Add12~53\)) # (!D_HH(27) & ((\Add12~53\) # (GND)))
-- \Add12~55\ = CARRY((!\Add12~53\) # (!D_HH(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(27),
	datad => VCC,
	cin => \Add12~53\,
	combout => \Add12~54_combout\,
	cout => \Add12~55\);

-- Location: LCCOMB_X19_Y22_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (U_SS_CRON(1) & (!\Add3~1\)) # (!U_SS_CRON(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!U_SS_CRON(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X19_Y22_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (U_SS_CRON(2) & (\Add3~3\ $ (GND))) # (!U_SS_CRON(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((U_SS_CRON(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X19_Y22_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (U_SS_CRON(7) & (!\Add3~13\)) # (!U_SS_CRON(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!U_SS_CRON(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X17_Y24_N10
\U_HH[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[5]~42_combout\ = (U_HH(5) & (!\U_HH[4]~41\)) # (!U_HH(5) & ((\U_HH[4]~41\) # (GND)))
-- \U_HH[5]~43\ = CARRY((!\U_HH[4]~41\) # (!U_HH(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(5),
	datad => VCC,
	cin => \U_HH[4]~41\,
	combout => \U_HH[5]~42_combout\,
	cout => \U_HH[5]~43\);

-- Location: LCCOMB_X17_Y24_N12
\U_HH[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[6]~44_combout\ = (U_HH(6) & (\U_HH[5]~43\ $ (GND))) # (!U_HH(6) & (!\U_HH[5]~43\ & VCC))
-- \U_HH[6]~45\ = CARRY((U_HH(6) & !\U_HH[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(6),
	datad => VCC,
	cin => \U_HH[5]~43\,
	combout => \U_HH[6]~44_combout\,
	cout => \U_HH[6]~45\);

-- Location: LCCOMB_X19_Y22_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (U_SS_CRON(8) & (\Add3~15\ $ (GND))) # (!U_SS_CRON(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((U_SS_CRON(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X19_Y22_N22
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (U_SS_CRON(11) & (!\Add3~21\)) # (!U_SS_CRON(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!U_SS_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X17_Y23_N22
\U_HH[27]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[27]~90_combout\ = (U_HH(27) & (!\U_HH[26]~89\)) # (!U_HH(27) & ((\U_HH[26]~89\) # (GND)))
-- \U_HH[27]~91\ = CARRY((!\U_HH[26]~89\) # (!U_HH(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(27),
	datad => VCC,
	cin => \U_HH[26]~89\,
	combout => \U_HH[27]~90_combout\,
	cout => \U_HH[27]~91\);

-- Location: LCCOMB_X17_Y23_N28
\U_HH[30]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[30]~96_combout\ = (U_HH(30) & (\U_HH[29]~95\ $ (GND))) # (!U_HH(30) & (!\U_HH[29]~95\ & VCC))
-- \U_HH[30]~97\ = CARRY((U_HH(30) & !\U_HH[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(30),
	datad => VCC,
	cin => \U_HH[29]~95\,
	combout => \U_HH[30]~96_combout\,
	cout => \U_HH[30]~97\);

-- Location: LCCOMB_X17_Y23_N30
\U_HH[31]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[31]~98_combout\ = U_HH(31) $ (\U_HH[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(31),
	cin => \U_HH[30]~97\,
	combout => \U_HH[31]~98_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (D_CC_CRON(1) & (!\Add2~1\)) # (!D_CC_CRON(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!D_CC_CRON(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y24_N10
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (D_MM(5) & (!\Add10~9\)) # (!D_MM(5) & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!D_MM(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(5),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X19_Y24_N26
\Add10~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (D_MM(13) & (!\Add10~25\)) # (!D_MM(13) & ((\Add10~25\) # (GND)))
-- \Add10~27\ = CARRY((!\Add10~25\) # (!D_MM(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(13),
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X23_Y24_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (D_CC_CRON(8) & (\Add2~15\ $ (GND))) # (!D_CC_CRON(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((D_CC_CRON(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X23_Y24_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (D_CC_CRON(10) & (\Add2~19\ $ (GND))) # (!D_CC_CRON(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((D_CC_CRON(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X23_Y24_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (D_CC_CRON(11) & (!\Add2~21\)) # (!D_CC_CRON(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!D_CC_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X23_Y23_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (D_CC_CRON(16) & (\Add2~31\ $ (GND))) # (!D_CC_CRON(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((D_CC_CRON(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X23_Y23_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (D_CC_CRON(17) & (!\Add2~33\)) # (!D_CC_CRON(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!D_CC_CRON(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X23_Y23_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (D_CC_CRON(19) & (!\Add2~37\)) # (!D_CC_CRON(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!D_CC_CRON(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X23_Y23_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (D_CC_CRON(20) & (\Add2~39\ $ (GND))) # (!D_CC_CRON(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((D_CC_CRON(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X23_Y23_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (D_CC_CRON(23) & (!\Add2~45\)) # (!D_CC_CRON(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!D_CC_CRON(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X23_Y23_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (D_CC_CRON(30) & (\Add2~59\ $ (GND))) # (!D_CC_CRON(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((D_CC_CRON(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X23_Y23_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (D_CC_CRON(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => D_CC_CRON(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X19_Y23_N26
\Add10~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~58_combout\ = (D_MM(29) & (!\Add10~57\)) # (!D_MM(29) & ((\Add10~57\) # (GND)))
-- \Add10~59\ = CARRY((!\Add10~57\) # (!D_MM(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(29),
	datad => VCC,
	cin => \Add10~57\,
	combout => \Add10~58_combout\,
	cout => \Add10~59\);

-- Location: LCCOMB_X22_Y21_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = U_CC_CRON(0) $ (VCC)
-- \Add1~1\ = CARRY(U_CC_CRON(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y21_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (U_CC_CRON(1) & (!\Add1~1\)) # (!U_CC_CRON(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!U_CC_CRON(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X16_Y21_N12
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (U_MM(6) & (\Add9~11\ $ (GND))) # (!U_MM(6) & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((U_MM(6) & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X22_Y21_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (U_CC_CRON(11) & (!\Add1~21\)) # (!U_CC_CRON(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!U_CC_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X22_Y21_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (U_CC_CRON(12) & (\Add1~23\ $ (GND))) # (!U_CC_CRON(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((U_CC_CRON(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X22_Y20_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (U_CC_CRON(26) & (\Add1~51\ $ (GND))) # (!U_CC_CRON(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((U_CC_CRON(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X22_Y20_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (U_CC_CRON(27) & (!\Add1~53\)) # (!U_CC_CRON(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!U_CC_CRON(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X22_Y20_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (U_CC_CRON(28) & (\Add1~55\ $ (GND))) # (!U_CC_CRON(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((U_CC_CRON(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X22_Y20_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (U_CC_CRON(29) & (!\Add1~57\)) # (!U_CC_CRON(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!U_CC_CRON(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X22_Y20_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (U_CC_CRON(30) & (\Add1~59\ $ (GND))) # (!U_CC_CRON(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((U_CC_CRON(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X22_Y20_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = U_CC_CRON(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X16_Y21_N22
\Add9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (U_MM(11) & (!\Add9~21\)) # (!U_MM(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!U_MM(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X16_Y20_N20
\Add9~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (U_MM(26) & (\Add9~51\ $ (GND))) # (!U_MM(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((U_MM(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X16_Y20_N22
\Add9~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (U_MM(27) & (!\Add9~53\)) # (!U_MM(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!U_MM(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X16_Y20_N24
\Add9~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (U_MM(28) & (\Add9~55\ $ (GND))) # (!U_MM(28) & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((U_MM(28) & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(28),
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X16_Y20_N26
\Add9~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (U_MM(29) & (!\Add9~57\)) # (!U_MM(29) & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!U_MM(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(29),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X16_Y20_N28
\Add9~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (U_MM(30) & (\Add9~59\ $ (GND))) # (!U_MM(30) & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((U_MM(30) & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(30),
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X16_Y20_N30
\Add9~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = U_MM(31) $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X11_Y23_N4
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (D_SS(2) & (\Add8~3\ $ (GND))) # (!D_SS(2) & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((D_SS(2) & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X11_Y23_N10
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (D_SS(5) & (!\Add8~9\)) # (!D_SS(5) & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!D_SS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X11_Y23_N12
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (D_SS(6) & (\Add8~11\ $ (GND))) # (!D_SS(6) & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((D_SS(6) & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(6),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X11_Y23_N30
\Add8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (D_SS(15) & (!\Add8~29\)) # (!D_SS(15) & ((\Add8~29\) # (GND)))
-- \Add8~31\ = CARRY((!\Add8~29\) # (!D_SS(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(15),
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X11_Y22_N22
\Add8~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (D_SS(27) & (!\Add8~53\)) # (!D_SS(27) & ((\Add8~53\) # (GND)))
-- \Add8~55\ = CARRY((!\Add8~53\) # (!D_SS(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(27),
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X11_Y22_N24
\Add8~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (D_SS(28) & (\Add8~55\ $ (GND))) # (!D_SS(28) & (!\Add8~55\ & VCC))
-- \Add8~57\ = CARRY((D_SS(28) & !\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(28),
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X11_Y22_N26
\Add8~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (D_SS(29) & (!\Add8~57\)) # (!D_SS(29) & ((\Add8~57\) # (GND)))
-- \Add8~59\ = CARRY((!\Add8~57\) # (!D_SS(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(29),
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

-- Location: LCCOMB_X11_Y22_N28
\Add8~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = (D_SS(30) & (\Add8~59\ $ (GND))) # (!D_SS(30) & (!\Add8~59\ & VCC))
-- \Add8~61\ = CARRY((D_SS(30) & !\Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(30),
	datad => VCC,
	cin => \Add8~59\,
	combout => \Add8~60_combout\,
	cout => \Add8~61\);

-- Location: LCCOMB_X11_Y22_N30
\Add8~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~62_combout\ = D_SS(31) $ (\Add8~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(31),
	cin => \Add8~61\,
	combout => \Add8~62_combout\);

-- Location: LCCOMB_X14_Y20_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (U_CC(6) & (\Add5~11\ $ (GND))) # (!U_CC(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((U_CC(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X14_Y20_N22
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (U_CC(11) & (!\Add5~21\)) # (!U_CC(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!U_CC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X14_Y20_N26
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (U_CC(13) & (!\Add5~25\)) # (!U_CC(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!U_CC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X14_Y19_N10
\Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (U_CC(21) & (!\Add5~41\)) # (!U_CC(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!U_CC(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X14_Y19_N22
\Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (U_CC(27) & (!\Add5~53\)) # (!U_CC(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!U_CC(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X14_Y22_N2
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (D_CC(1) & (!\Add6~1\)) # (!D_CC(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!D_CC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X14_Y22_N22
\Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (D_CC(11) & (!\Add6~21\)) # (!D_CC(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!D_CC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X14_Y21_N22
\Add6~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (D_CC(27) & (!\Add6~53\)) # (!D_CC(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!D_CC(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X12_Y25_N22
\Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (U_SS(11) & (!\Add7~21\)) # (!U_SS(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!U_SS(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X12_Y25_N26
\Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (U_SS(13) & (!\Add7~25\)) # (!U_SS(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!U_SS(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X12_Y24_N6
\Add7~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (U_SS(19) & (!\Add7~37\)) # (!U_SS(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!U_SS(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X12_Y24_N10
\Add7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (U_SS(21) & (!\Add7~41\)) # (!U_SS(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!U_SS(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X12_Y24_N22
\Add7~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (U_SS(27) & (!\Add7~53\)) # (!U_SS(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!U_SS(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X23_Y13_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y13_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y13_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y13_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y13_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y13_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y13_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y13_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y13_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X23_Y13_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X23_Y13_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X23_Y13_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X23_Y13_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X23_Y13_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X23_Y13_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X23_Y13_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X23_Y12_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X23_Y12_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X23_Y12_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X23_Y12_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X23_Y12_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X23_Y12_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X23_Y12_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X23_Y12_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X23_Y12_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X23_Y12_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X23_Y12_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X23_Y12_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X23_Y12_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X23_Y12_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X23_Y12_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X23_Y12_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X21_Y22_N0
\D1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~1_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(19))))) # (!\EA.S1~q\ & (!D_HH(19) & ((!D_HH(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_HH(19),
	datac => D_SS_CRON(19),
	datad => D_HH(20),
	combout => \D1|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y22_N20
\D1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~2_combout\ = (\D1|Equal0~1_combout\ & ((\EA.S1~q\ & (!D_SS_CRON(18))) # (!\EA.S1~q\ & ((!D_HH(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(18),
	datab => D_HH(18),
	datac => \EA.S1~q\,
	datad => \D1|Equal0~1_combout\,
	combout => \D1|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y22_N26
\D1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~3_combout\ = (\EA.S1~q\ & (!D_SS_CRON(17) & (!D_SS_CRON(16)))) # (!\EA.S1~q\ & (((!D_HH(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(17),
	datab => D_SS_CRON(16),
	datac => \EA.S1~q\,
	datad => D_HH(17),
	combout => \D1|Equal0~3_combout\);

-- Location: FF_X19_Y27_N13
\D_SS_CRON[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector112~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(15));

-- Location: LCCOMB_X16_Y26_N8
\D1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~4_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(15))))) # (!\EA.S1~q\ & (!D_HH(16) & ((!D_HH(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(16),
	datab => D_SS_CRON(15),
	datac => D_HH(15),
	datad => \EA.S1~q\,
	combout => \D1|Equal0~4_combout\);

-- Location: FF_X19_Y27_N17
\D_SS_CRON[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector114~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(13));

-- Location: LCCOMB_X19_Y27_N2
\D1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~5_combout\ = (\EA.S1~q\ & (!D_SS_CRON(14) & ((!D_SS_CRON(13))))) # (!\EA.S1~q\ & (((!D_HH(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(14),
	datab => D_HH(14),
	datac => \EA.S1~q\,
	datad => D_SS_CRON(13),
	combout => \D1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y27_N26
\D1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~6_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(12))))) # (!\EA.S1~q\ & (!D_HH(13) & ((!D_HH(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(13),
	datab => D_SS_CRON(12),
	datac => \EA.S1~q\,
	datad => D_HH(12),
	combout => \D1|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y27_N8
\D1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~7_combout\ = (\D1|Equal0~4_combout\ & (\D1|Equal0~3_combout\ & (\D1|Equal0~6_combout\ & \D1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~4_combout\,
	datab => \D1|Equal0~3_combout\,
	datac => \D1|Equal0~6_combout\,
	datad => \D1|Equal0~5_combout\,
	combout => \D1|Equal0~7_combout\);

-- Location: FF_X21_Y27_N7
\D_SS_CRON[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector121~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(6));

-- Location: LCCOMB_X19_Y25_N12
\D1|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~11_combout\ = (\EA.S1~q\ & (!D_SS_CRON(6))) # (!\EA.S1~q\ & (((!D_HH(7) & !D_HH(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(6),
	datab => D_HH(7),
	datac => D_HH(6),
	datad => \EA.S1~q\,
	combout => \D1|Equal0~11_combout\);

-- Location: FF_X15_Y25_N11
\D_HH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~10_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(5));

-- Location: LCCOMB_X19_Y26_N12
\D1|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~16_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(28))))) # (!\EA.S1~q\ & (!D_HH(29) & (!D_HH(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(29),
	datab => D_HH(28),
	datac => \EA.S1~q\,
	datad => D_SS_CRON(28),
	combout => \D1|Equal0~16_combout\);

-- Location: FF_X15_Y24_N23
\D_HH[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~54_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(27));

-- Location: LCCOMB_X21_Y26_N12
\D1|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~18_combout\ = (\EA.S1~q\ & (!D_SS_CRON(27) & (!D_SS_CRON(26)))) # (!\EA.S1~q\ & (((!D_HH(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_SS_CRON(27),
	datac => D_SS_CRON(26),
	datad => D_HH(27),
	combout => \D1|Equal0~18_combout\);

-- Location: LCCOMB_X17_Y22_N26
\D2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~1_combout\ = (U_HH(6)) # ((U_HH(7)) # ((U_HH(4)) # (U_HH(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(6),
	datab => U_HH(7),
	datac => U_HH(4),
	datad => U_HH(5),
	combout => \D2|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y21_N20
\D2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~3_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(31) & !U_SS_CRON(30))))) # (!\EA.S1~q\ & (!U_HH(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(31),
	datab => U_SS_CRON(31),
	datac => \EA.S1~q\,
	datad => U_SS_CRON(30),
	combout => \D2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y23_N4
\D2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~4_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(29))))) # (!\EA.S1~q\ & (!U_HH(30) & ((!U_HH(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_HH(30),
	datac => U_SS_CRON(29),
	datad => U_HH(29),
	combout => \D2|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y21_N4
\D2|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~5_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(28) & !U_SS_CRON(27))))) # (!\EA.S1~q\ & (!U_HH(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(28),
	datab => U_SS_CRON(28),
	datac => \EA.S1~q\,
	datad => U_SS_CRON(27),
	combout => \D2|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y23_N14
\D2|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~6_combout\ = (\EA.S1~q\ & (!U_SS_CRON(26))) # (!\EA.S1~q\ & (((!U_HH(26) & !U_HH(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(26),
	datab => \EA.S1~q\,
	datac => U_HH(26),
	datad => U_HH(27),
	combout => \D2|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y21_N16
\D2|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~7_combout\ = (\D2|Equal0~6_combout\ & (\D2|Equal0~4_combout\ & (\D2|Equal0~5_combout\ & \D2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~6_combout\,
	datab => \D2|Equal0~4_combout\,
	datac => \D2|Equal0~5_combout\,
	datad => \D2|Equal0~3_combout\,
	combout => \D2|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y20_N30
\D2|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~9_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(23))))) # (!\EA.S1~q\ & (!U_HH(24) & (!U_HH(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(24),
	datab => \EA.S1~q\,
	datac => U_HH(23),
	datad => U_SS_CRON(23),
	combout => \D2|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y20_N10
\D2|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~13_combout\ = (\EA.S1~q\ & (!U_SS_CRON(19) & ((!U_SS_CRON(18))))) # (!\EA.S1~q\ & (((!U_HH(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(19),
	datab => \EA.S1~q\,
	datac => U_HH(19),
	datad => U_SS_CRON(18),
	combout => \D2|Equal0~13_combout\);

-- Location: LCCOMB_X17_Y25_N12
\D2|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~21_combout\ = (\EA.S1~q\ & (!U_SS_CRON(8))) # (!\EA.S1~q\ & (((!U_HH(8) & !U_HH(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_SS_CRON(8),
	datac => U_HH(8),
	datad => U_HH(9),
	combout => \D2|Equal0~21_combout\);

-- Location: LCCOMB_X23_Y25_N30
\D2|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~25_combout\ = (\D2|Equal0~2_combout\ & (!\segundoDig[3]~1_combout\ & \D2|Equal0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~2_combout\,
	datac => \segundoDig[3]~1_combout\,
	datad => \D2|Equal0~23_combout\,
	combout => \D2|Equal0~25_combout\);

-- Location: FF_X19_Y24_N11
\D_MM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~10_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(5));

-- Location: FF_X22_Y23_N21
\D_CC_CRON[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector32~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(31));

-- Location: FF_X19_Y23_N27
\D_MM[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~58_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(29));

-- Location: LCCOMB_X21_Y23_N26
\D3|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~6_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(29))))) # (!\EA.S1~q\ & (!D_MM(30) & (!D_MM(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(30),
	datab => \EA.S1~q\,
	datac => D_MM(29),
	datad => D_CC_CRON(29),
	combout => \D3|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y23_N26
\D3|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~10_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(24) & !D_CC_CRON(23))))) # (!\EA.S1~q\ & (!D_MM(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(24),
	datab => D_CC_CRON(24),
	datac => D_CC_CRON(23),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~10_combout\);

-- Location: LCCOMB_X24_Y23_N22
\D3|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~11_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(22))))) # (!\EA.S1~q\ & (!D_MM(23) & (!D_MM(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(23),
	datab => \EA.S1~q\,
	datac => D_MM(22),
	datad => D_CC_CRON(22),
	combout => \D3|Equal0~11_combout\);

-- Location: FF_X24_Y23_N7
\D_CC_CRON[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(20));

-- Location: LCCOMB_X24_Y23_N16
\D3|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~12_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(21) & !D_CC_CRON(20))))) # (!\EA.S1~q\ & (!D_MM(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(21),
	datab => \EA.S1~q\,
	datac => D_CC_CRON(21),
	datad => D_CC_CRON(20),
	combout => \D3|Equal0~12_combout\);

-- Location: FF_X24_Y23_N31
\D_CC_CRON[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(19));

-- Location: LCCOMB_X22_Y23_N14
\D3|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~13_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(19))))) # (!\EA.S1~q\ & (!D_MM(20) & (!D_MM(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(20),
	datab => D_MM(19),
	datac => D_CC_CRON(19),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~13_combout\);

-- Location: LCCOMB_X24_Y23_N12
\D3|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~14_combout\ = (\D3|Equal0~11_combout\ & (\D3|Equal0~13_combout\ & (\D3|Equal0~10_combout\ & \D3|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~11_combout\,
	datab => \D3|Equal0~13_combout\,
	datac => \D3|Equal0~10_combout\,
	datad => \D3|Equal0~12_combout\,
	combout => \D3|Equal0~14_combout\);

-- Location: FF_X19_Y24_N27
\D_MM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~26_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(13));

-- Location: LCCOMB_X20_Y24_N24
\D3|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~18_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(13))))) # (!\EA.S1~q\ & (!D_MM(13) & (!D_MM(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(13),
	datab => D_MM(14),
	datac => \EA.S1~q\,
	datad => D_CC_CRON(13),
	combout => \D3|Equal0~18_combout\);

-- Location: FF_X22_Y23_N9
\D_CC_CRON[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(10));

-- Location: LCCOMB_X21_Y24_N22
\D3|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~21_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(10))))) # (!\EA.S1~q\ & (!D_MM(11) & (!D_MM(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_MM(11),
	datac => D_MM(10),
	datad => D_CC_CRON(10),
	combout => \D3|Equal0~21_combout\);

-- Location: LCCOMB_X14_Y23_N20
\D3|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal8~0_combout\ = (!\tercerDig[1]~3_combout\ & (!\tercerDig[2]~1_combout\ & \tercerDig[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tercerDig[1]~3_combout\,
	datab => \tercerDig[2]~1_combout\,
	datad => \tercerDig[3]~0_combout\,
	combout => \D3|Equal8~0_combout\);

-- Location: LCCOMB_X14_Y25_N12
\D3|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr2~2_combout\ = ((\tercerDig[1]~3_combout\ $ (\tercerDig[2]~1_combout\)) # (!\tercerDig[0]~2_combout\)) # (!\D3|Equal0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tercerDig[1]~3_combout\,
	datab => \tercerDig[2]~1_combout\,
	datac => \D3|Equal0~26_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideOr2~2_combout\);

-- Location: FF_X16_Y21_N13
\U_MM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~12_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(6));

-- Location: FF_X21_Y20_N21
\U_CC_CRON[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(31));

-- Location: FF_X21_Y20_N31
\U_CC_CRON[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(30));

-- Location: FF_X16_Y20_N31
\U_MM[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~62_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(31));

-- Location: LCCOMB_X20_Y20_N12
\D4|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~3_combout\ = (\EA.S1~q\ & (!U_CC_CRON(30) & ((!U_CC_CRON(31))))) # (!\EA.S1~q\ & (((!U_MM(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(30),
	datab => U_MM(31),
	datac => U_CC_CRON(31),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~3_combout\);

-- Location: FF_X16_Y20_N29
\U_MM[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~60_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(30));

-- Location: FF_X16_Y20_N27
\U_MM[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~58_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(29));

-- Location: FF_X20_Y20_N3
\U_CC_CRON[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(29));

-- Location: LCCOMB_X17_Y20_N20
\D4|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~4_combout\ = (\EA.S1~q\ & (!U_CC_CRON(29))) # (!\EA.S1~q\ & (((!U_MM(29) & !U_MM(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_CC_CRON(29),
	datac => U_MM(29),
	datad => U_MM(30),
	combout => \D4|Equal0~4_combout\);

-- Location: FF_X21_Y20_N17
\U_CC_CRON[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(28));

-- Location: FF_X21_Y20_N3
\U_CC_CRON[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(27));

-- Location: FF_X16_Y20_N25
\U_MM[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~56_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(28));

-- Location: LCCOMB_X20_Y20_N28
\D4|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~5_combout\ = (\EA.S1~q\ & (!U_CC_CRON(27) & (!U_CC_CRON(28)))) # (!\EA.S1~q\ & (((!U_MM(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(27),
	datab => U_CC_CRON(28),
	datac => U_MM(28),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~5_combout\);

-- Location: FF_X16_Y20_N23
\U_MM[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~54_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(27));

-- Location: LCCOMB_X20_Y20_N20
\D4|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~6_combout\ = (\EA.S1~q\ & (!U_CC_CRON(26))) # (!\EA.S1~q\ & (((!U_MM(27) & !U_MM(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(26),
	datab => \EA.S1~q\,
	datac => U_MM(27),
	datad => U_MM(26),
	combout => \D4|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y20_N14
\D4|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~7_combout\ = (\D4|Equal0~3_combout\ & (\D4|Equal0~5_combout\ & (\D4|Equal0~4_combout\ & \D4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal0~3_combout\,
	datab => \D4|Equal0~5_combout\,
	datac => \D4|Equal0~4_combout\,
	datad => \D4|Equal0~6_combout\,
	combout => \D4|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y21_N22
\D4|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~11_combout\ = (\EA.S1~q\ & (((!U_CC_CRON(20))))) # (!\EA.S1~q\ & (!U_MM(20) & ((!U_MM(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(20),
	datab => \EA.S1~q\,
	datac => U_CC_CRON(20),
	datad => U_MM(21),
	combout => \D4|Equal0~11_combout\);

-- Location: LCCOMB_X17_Y21_N28
\D4|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~16_combout\ = (\EA.S1~q\ & (!U_CC_CRON(14))) # (!\EA.S1~q\ & (((!U_MM(15) & !U_MM(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(14),
	datab => U_MM(15),
	datac => \EA.S1~q\,
	datad => U_MM(14),
	combout => \D4|Equal0~16_combout\);

-- Location: FF_X21_Y20_N7
\U_CC_CRON[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(12));

-- Location: FF_X16_Y21_N23
\U_MM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~22_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(11));

-- Location: FF_X21_Y21_N13
\U_CC_CRON[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(11));

-- Location: LCCOMB_X17_Y21_N18
\D4|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~19_combout\ = (\EA.S1~q\ & (!U_CC_CRON(11))) # (!\EA.S1~q\ & (((!U_MM(12) & !U_MM(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(11),
	datab => U_MM(12),
	datac => \EA.S1~q\,
	datad => U_MM(11),
	combout => \D4|Equal0~19_combout\);

-- Location: LCCOMB_X23_Y21_N6
\D4|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal8~0_combout\ = (!\cuartoDig[2]~0_combout\ & ((\EA.S1~q\ & (!U_CC_CRON(1))) # (!\EA.S1~q\ & ((!U_MM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[2]~0_combout\,
	datab => U_CC_CRON(1),
	datac => U_MM(1),
	datad => \EA.S1~q\,
	combout => \D4|Equal8~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\D4|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr2~2_combout\ = ((\cuartoDig[2]~0_combout\ $ (\cuartoDig[1]~3_combout\)) # (!\cuartoDig[0]~2_combout\)) # (!\D4|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[2]~0_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal0~25_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideOr2~2_combout\);

-- Location: LCCOMB_X21_Y21_N24
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!U_CC_CRON(6) & (!U_CC_CRON(7) & (!U_CC_CRON(4) & !U_CC_CRON(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(6),
	datab => U_CC_CRON(7),
	datac => U_CC_CRON(4),
	datad => U_CC_CRON(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y20_N24
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!U_CC_CRON(30) & (!U_CC_CRON(29) & (!U_CC_CRON(31) & !U_CC_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(30),
	datab => U_CC_CRON(29),
	datac => U_CC_CRON(31),
	datad => U_CC_CRON(28),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X22_Y23_N12
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (D_CC_CRON(9)) # ((D_CC_CRON(8)) # ((D_CC_CRON(10)) # (D_CC_CRON(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(9),
	datab => D_CC_CRON(8),
	datac => D_CC_CRON(10),
	datad => D_CC_CRON(11),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (D_CC_CRON(27)) # (D_CC_CRON(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_CC_CRON(27),
	datad => D_CC_CRON(26),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X21_Y23_N6
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (D_CC_CRON(30)) # ((D_CC_CRON(29)) # ((D_CC_CRON(31)) # (D_CC_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(30),
	datab => D_CC_CRON(29),
	datac => D_CC_CRON(31),
	datad => D_CC_CRON(28),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X21_Y23_N20
\Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (D_CC_CRON(24)) # ((D_CC_CRON(25)) # ((\Equal2~7_combout\) # (\Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(24),
	datab => D_CC_CRON(25),
	datac => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X20_Y24_N30
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (((U_SS_CRON(1)) # (U_SS_CRON(2))) # (!U_SS_CRON(0))) # (!U_SS_CRON(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(3),
	datab => U_SS_CRON(0),
	datac => U_SS_CRON(1),
	datad => U_SS_CRON(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X20_Y21_N22
\Equal3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (U_SS_CRON(25)) # ((U_SS_CRON(27)) # ((U_SS_CRON(26)) # (U_SS_CRON(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(25),
	datab => U_SS_CRON(27),
	datac => U_SS_CRON(26),
	datad => U_SS_CRON(24),
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X16_Y23_N10
\D_HH[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~5_combout\ = (!U_HH(26) & (!U_HH(27) & (!U_HH(24) & !U_HH(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(26),
	datab => U_HH(27),
	datac => U_HH(24),
	datad => U_HH(25),
	combout => \D_HH[15]~5_combout\);

-- Location: LCCOMB_X17_Y25_N22
\D_HH[15]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~10_combout\ = (!U_HH(10) & (!U_HH(8) & (!U_HH(11) & !U_HH(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(10),
	datab => U_HH(8),
	datac => U_HH(11),
	datad => U_HH(9),
	combout => \D_HH[15]~10_combout\);

-- Location: LCCOMB_X16_Y24_N24
\D_HH[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~11_combout\ = (!U_HH(4) & (!U_HH(5) & (!U_HH(6) & !U_HH(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(4),
	datab => U_HH(5),
	datac => U_HH(6),
	datad => U_HH(7),
	combout => \D_HH[15]~11_combout\);

-- Location: LCCOMB_X16_Y25_N26
\Equal11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (!D_HH(5) & (!D_HH(2) & (!D_HH(3) & !D_HH(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(5),
	datab => D_HH(2),
	datac => D_HH(3),
	datad => D_HH(4),
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X16_Y25_N30
\Equal11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~7_combout\ = (!D_HH(27) & (!D_HH(24) & (!D_HH(25) & !D_HH(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(27),
	datab => D_HH(24),
	datac => D_HH(25),
	datad => D_HH(26),
	combout => \Equal11~7_combout\);

-- Location: LCCOMB_X17_Y21_N30
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (U_MM(8)) # ((U_MM(11)) # ((U_MM(10)) # (U_MM(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(8),
	datab => U_MM(11),
	datac => U_MM(10),
	datad => U_MM(9),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Equal9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~8_combout\ = (U_MM(31)) # ((U_MM(30)) # ((U_MM(29)) # (U_MM(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(31),
	datab => U_MM(30),
	datac => U_MM(29),
	datad => U_MM(28),
	combout => \Equal9~8_combout\);

-- Location: LCCOMB_X20_Y24_N26
\Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (D_MM(4)) # ((D_MM(5)) # ((D_MM(7)) # (D_MM(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(4),
	datab => D_MM(5),
	datac => D_MM(7),
	datad => D_MM(6),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X21_Y23_N2
\Equal10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (D_MM(30)) # ((D_MM(28)) # ((D_MM(29)) # (D_MM(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(30),
	datab => D_MM(28),
	datac => D_MM(29),
	datad => D_MM(31),
	combout => \Equal10~9_combout\);

-- Location: FF_X14_Y24_N31
\D_SS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_SS~2_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(2));

-- Location: FF_X11_Y23_N11
\D_SS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~10_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(5));

-- Location: FF_X11_Y23_N13
\D_SS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~12_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(6));

-- Location: LCCOMB_X10_Y23_N0
\Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (D_SS(4)) # ((D_SS(5)) # ((D_SS(6)) # (D_SS(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(4),
	datab => D_SS(5),
	datac => D_SS(6),
	datad => D_SS(7),
	combout => \Equal8~1_combout\);

-- Location: FF_X11_Y23_N31
\D_SS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~30_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(15));

-- Location: FF_X11_Y22_N25
\D_SS[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~56_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(28));

-- Location: FF_X11_Y22_N27
\D_SS[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~58_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(29));

-- Location: FF_X11_Y22_N29
\D_SS[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~60_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(30));

-- Location: FF_X11_Y22_N31
\D_SS[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~62_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(31));

-- Location: LCCOMB_X10_Y22_N6
\Equal8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~9_combout\ = (D_SS(31)) # ((D_SS(30)) # ((D_SS(28)) # (D_SS(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(31),
	datab => D_SS(30),
	datac => D_SS(28),
	datad => D_SS(29),
	combout => \Equal8~9_combout\);

-- Location: FF_X14_Y20_N13
\U_CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(6));

-- Location: FF_X14_Y20_N23
\U_CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(11));

-- Location: LCCOMB_X15_Y20_N10
\Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!U_CC(8) & (!U_CC(11) & (!U_CC(9) & !U_CC(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(8),
	datab => U_CC(11),
	datac => U_CC(9),
	datad => U_CC(10),
	combout => \Equal5~2_combout\);

-- Location: FF_X14_Y20_N27
\U_CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(13));

-- Location: FF_X14_Y19_N11
\U_CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(21));

-- Location: FF_X14_Y19_N23
\U_CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(27));

-- Location: LCCOMB_X15_Y20_N22
\Equal5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!U_CC(25) & (!U_CC(24) & (!U_CC(27) & !U_CC(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(25),
	datab => U_CC(24),
	datac => U_CC(27),
	datad => U_CC(26),
	combout => \Equal5~8_combout\);

-- Location: FF_X14_Y24_N5
\D_CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_CC~1_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(1));

-- Location: LCCOMB_X14_Y24_N6
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (D_CC(3) & (!D_CC(1) & (!D_CC(2) & D_CC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(3),
	datab => D_CC(1),
	datac => D_CC(2),
	datad => D_CC(0),
	combout => \Equal6~0_combout\);

-- Location: FF_X14_Y22_N23
\D_CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~22_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(11));

-- Location: FF_X14_Y21_N23
\D_CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~54_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(27));

-- Location: LCCOMB_X14_Y24_N26
\Equal6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!D_CC(24) & (!D_CC(26) & (!D_CC(25) & !D_CC(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(24),
	datab => D_CC(26),
	datac => D_CC(25),
	datad => D_CC(27),
	combout => \Equal6~8_combout\);

-- Location: FF_X12_Y25_N23
\U_SS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~22_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(11));

-- Location: LCCOMB_X11_Y24_N12
\Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!U_SS(11) & (!U_SS(9) & (!U_SS(10) & !U_SS(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(11),
	datab => U_SS(9),
	datac => U_SS(10),
	datad => U_SS(8),
	combout => \Equal7~2_combout\);

-- Location: FF_X12_Y25_N27
\U_SS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~26_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(13));

-- Location: FF_X12_Y24_N7
\U_SS[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~38_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(19));

-- Location: LCCOMB_X11_Y24_N30
\Equal7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!U_SS(18) & (!U_SS(17) & (!U_SS(16) & !U_SS(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(18),
	datab => U_SS(17),
	datac => U_SS(16),
	datad => U_SS(19),
	combout => \Equal7~5_combout\);

-- Location: FF_X12_Y24_N11
\U_SS[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~42_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(21));

-- Location: FF_X12_Y24_N23
\U_SS[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~54_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(27));

-- Location: LCCOMB_X19_Y27_N18
\Selector112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (D_SS_CRON(15) & ((\ESTADO_CRON.PAUSE~q\) # ((\Selector110~0_combout\ & \Add4~30_combout\)))) # (!D_SS_CRON(15) & (((\Selector110~0_combout\ & \Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(15),
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => \Selector110~0_combout\,
	datad => \Add4~30_combout\,
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X19_Y27_N12
\Selector112~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector112~1_combout\ = (\Selector112~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(15),
	datad => \Selector112~0_combout\,
	combout => \Selector112~1_combout\);

-- Location: LCCOMB_X19_Y27_N10
\Selector114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\Add4~26_combout\ & ((\Selector110~0_combout\) # ((D_SS_CRON(13) & \ESTADO_CRON.PAUSE~q\)))) # (!\Add4~26_combout\ & (D_SS_CRON(13) & ((\ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => D_SS_CRON(13),
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X19_Y27_N16
\Selector114~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector114~1_combout\ = (\Selector114~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(13),
	datad => \Selector114~0_combout\,
	combout => \Selector114~1_combout\);

-- Location: LCCOMB_X21_Y27_N18
\Selector121~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\Add4~12_combout\ & ((\Selector110~0_combout\) # ((D_SS_CRON(6) & \ESTADO_CRON.PAUSE~q\)))) # (!\Add4~12_combout\ & (D_SS_CRON(6) & (\ESTADO_CRON.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => D_SS_CRON(6),
	datac => \ESTADO_CRON.PAUSE~q\,
	datad => \Selector110~0_combout\,
	combout => \Selector121~0_combout\);

-- Location: LCCOMB_X21_Y27_N6
\Selector121~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector121~1_combout\ = (\Selector121~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(6),
	datad => \Selector121~0_combout\,
	combout => \Selector121~1_combout\);

-- Location: LCCOMB_X19_Y27_N6
\Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!D_SS_CRON(15) & (!D_SS_CRON(12) & (!D_SS_CRON(14) & !D_SS_CRON(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(15),
	datab => D_SS_CRON(12),
	datac => D_SS_CRON(14),
	datad => D_SS_CRON(13),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X21_Y26_N10
\Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!D_SS_CRON(22) & (!D_SS_CRON(21) & (!D_SS_CRON(20) & !D_SS_CRON(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(22),
	datab => D_SS_CRON(21),
	datac => D_SS_CRON(20),
	datad => D_SS_CRON(23),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X17_Y22_N10
\Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\Equal1~10_combout\ & (!\ESTADO_CRON.RUN~q\ & (!\Equal2~10_combout\ & \Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal2~10_combout\,
	datad => \Add3~14_combout\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X22_Y23_N20
\Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(31)) # ((\Selector32~0_combout\ & \Add2~62_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(31),
	datad => \Add2~62_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X24_Y23_N6
\Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Selector32~0_combout\ & ((\Add2~40_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(20))))) # (!\Selector32~0_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(20),
	datad => \Add2~40_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(19)) # ((\Add2~38_combout\ & \Selector32~0_combout\)))) # (!\Selector33~0_combout\ & (\Add2~38_combout\ & ((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Add2~38_combout\,
	datac => D_CC_CRON(19),
	datad => \Selector32~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X22_Y23_N8
\Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(10)) # ((\Add2~20_combout\ & \Selector32~0_combout\)))) # (!\Selector33~0_combout\ & (\Add2~20_combout\ & ((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Add2~20_combout\,
	datac => D_CC_CRON(10),
	datad => \Selector32~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(31)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~62_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(31),
	datad => \Add1~62_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(30)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~60_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(30),
	datad => \Add1~60_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(29)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~58_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(29),
	datad => \Add1~58_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(28)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~56_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(28),
	datad => \Add1~56_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X21_Y20_N2
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(27)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~54_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(27),
	datad => \Add1~54_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(12)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~24_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(12),
	datad => \Add1~24_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(11)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~22_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(11),
	datad => \Add1~22_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X22_Y13_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X22_Y13_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: FF_X23_Y13_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X23_Y13_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X22_Y13_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(2) & (count(1) & (count(0) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Equal0~0_combout\);

-- Location: FF_X23_Y13_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: FF_X23_Y13_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X23_Y13_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X23_Y13_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X22_Y13_N24
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(7) & (!count(6) & (!count(5) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(5),
	datad => count(4),
	combout => \Equal0~1_combout\);

-- Location: FF_X23_Y13_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: FF_X23_Y13_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: FF_X23_Y13_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: FF_X23_Y13_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X22_Y13_N22
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(10) & (!count(9) & (!count(11) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(9),
	datac => count(11),
	datad => count(8),
	combout => \Equal0~2_combout\);

-- Location: FF_X23_Y13_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: FF_X23_Y13_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X23_Y13_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X23_Y13_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X22_Y13_N28
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(15) & (!count(12) & (!count(13) & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(12),
	datac => count(13),
	datad => count(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X23_Y12_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: FF_X23_Y12_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: FF_X23_Y12_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: FF_X23_Y12_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X22_Y12_N4
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(19) & (!count(18) & (!count(16) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(18),
	datac => count(16),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: FF_X23_Y12_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: FF_X23_Y12_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: FF_X23_Y12_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: FF_X23_Y12_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X22_Y12_N6
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(23) & (!count(20) & (!count(21) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(20),
	datac => count(21),
	datad => count(22),
	combout => \Equal0~6_combout\);

-- Location: FF_X23_Y12_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: FF_X23_Y12_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X22_Y12_N0
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(26) & !count(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(26),
	datad => count(27),
	combout => \Equal0~7_combout\);

-- Location: FF_X23_Y12_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: FF_X23_Y12_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X23_Y12_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: FF_X23_Y12_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X22_Y12_N2
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(31) & (!count(28) & (!count(29) & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(28),
	datac => count(29),
	datad => count(30),
	combout => \Equal0~8_combout\);

-- Location: FF_X23_Y12_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: FF_X23_Y12_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X22_Y13_N18
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(25) & (!count(24) & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(24),
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X22_Y13_N12
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X22_Y13_N14
\CLOCK_MS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK_MS~0_combout\ = \CLOCK_MS~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_MS~q\,
	datad => \Equal0~10_combout\,
	combout => \CLOCK_MS~0_combout\);

-- Location: LCCOMB_X14_Y24_N30
\D_SS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_SS~2_combout\ = (\Add8~4_combout\ & \Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => \Equal8~10_combout\,
	combout => \D_SS~2_combout\);

-- Location: LCCOMB_X14_Y24_N4
\D_CC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_CC~1_combout\ = (!\Equal6~10_combout\ & \Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~2_combout\,
	combout => \D_CC~1_combout\);

-- Location: LCCOMB_X15_Y22_N0
\estadoBT2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoBT2~0_combout\ = (\estadoBT2~q\) # ((\EA.S1~q\ & ((\KEY[0]~input_o\) # (\estadoBT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoBT2~q\,
	datab => \EA.S1~q\,
	datac => \KEY[0]~input_o\,
	datad => \estadoBT1~q\,
	combout => \estadoBT2~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~2_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = !\Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \count[0]~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOOBUF_X39_Y29_N23
\HEX3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideOr5~combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideNor0~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|salida\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideOr5~combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideNor0~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|salida\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\HEX1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideOr5~combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideNor0~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|salida\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\HEX0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideOr5~combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideNor0~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|salida\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\U_S1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \U_S1[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\U_S1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\U_S1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\U_S1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\U_S1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\U_S1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[5]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\U_S1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[6]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\U_S1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[7]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\U_S1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[8]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\U_S1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[9]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\U_S1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\U_S1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[11]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\U_S1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[12]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\U_S1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[13]~output_o\);

-- Location: IOOBUF_X41_Y27_N9
\U_S1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[14]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\U_S1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[15]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\U_S1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[16]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\U_S1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[17]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\U_S1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[18]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\U_S1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[19]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\U_S1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[20]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\U_S1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\U_S1[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[22]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\U_S1[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[23]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\U_S1[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[24]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\U_S1[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[25]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\U_S1[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[26]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\U_S1[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[27]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\U_S1[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[28]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\U_S1[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[29]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\U_S1[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_S1[30]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\U_S1[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \U_S1[31]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\D_S1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D_S1[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\D_S1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\D_S1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\D_S1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\D_S1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[4]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\D_S1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\D_S1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\D_S1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\D_S1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\D_S1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\D_S1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[10]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\D_S1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\D_S1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\D_S1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[13]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\D_S1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[14]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\D_S1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[15]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\D_S1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[16]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\D_S1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[17]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\D_S1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\D_S1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[19]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\D_S1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[20]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\D_S1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[21]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\D_S1[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[22]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\D_S1[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[23]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\D_S1[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[24]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\D_S1[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[25]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\D_S1[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[26]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\D_S1[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[27]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\D_S1[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[28]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\D_S1[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\D_S1[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_S1[30]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\D_S1[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D_S1[31]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\U_M1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \U_M1[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\U_M1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\U_M1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\U_M1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\U_M1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[4]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\U_M1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[5]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\U_M1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\U_M1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\U_M1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[8]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\U_M1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[9]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\U_M1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[10]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\U_M1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[11]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\U_M1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\U_M1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[13]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\U_M1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\U_M1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[15]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\U_M1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[16]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\U_M1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[17]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\U_M1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[18]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\U_M1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[19]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\U_M1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[20]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\U_M1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[21]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\U_M1[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[22]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\U_M1[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[23]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\U_M1[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[24]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\U_M1[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\U_M1[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[26]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\U_M1[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[27]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\U_M1[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\U_M1[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[29]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\U_M1[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \U_M1[30]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\U_M1[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \U_M1[31]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\estado[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado[0]$latch~combout\,
	devoe => ww_devoe,
	o => \estado[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\estado[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\estado[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\estado[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\estado[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\estado[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[5]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\estado[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[6]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\estado[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[7]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\estado[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[8]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\estado[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\estado[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\estado[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[11]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\estado[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[12]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\estado[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[13]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\estado[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[14]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\estado[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\estado[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[16]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\estado[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[17]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\estado[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[18]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\estado[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[19]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\estado[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[20]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\estado[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[21]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\estado[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[22]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\estado[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\estado[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\estado[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[25]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\estado[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[26]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\estado[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[27]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\estado[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[28]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\estado[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[29]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\estado[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[30]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\estado[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estado[31]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\clk_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \clk_out[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\clk_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \clk_out[1]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\clk_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\clk_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\clk_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\clk_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\clk_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[6]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\clk_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\clk_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[8]~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\clk_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\clk_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\clk_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\clk_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\clk_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[13]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\clk_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\clk_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\clk_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[16]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\clk_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\clk_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[18]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\clk_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[19]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\clk_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[20]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\clk_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[21]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\clk_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[22]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\clk_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[23]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\clk_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[24]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\clk_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[25]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\clk_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[26]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\clk_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[27]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\clk_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[28]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\clk_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[29]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\clk_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out[30]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\clk_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out[31]~reg0_q\,
	devoe => ww_devoe,
	o => \clk_out[31]~output_o\);

-- Location: LCCOMB_X20_Y27_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = D_SS_CRON(0) $ (VCC)
-- \Add4~1\ = CARRY(D_SS_CRON(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X16_Y24_N10
\Selector132~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\SW[1]~input_o\ & (((!\EA.S1~q\ & \EA.S2~q\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \EA.S1~q\,
	datac => \SW[0]~input_o\,
	datad => \EA.S2~q\,
	combout => \Selector132~0_combout\);

-- Location: FF_X16_Y24_N3
\EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Selector132~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S2~q\);

-- Location: LCCOMB_X16_Y24_N20
\Selector131~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\SW[0]~input_o\ & ((!\EA.S2~q\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \EA.S2~q\,
	combout => \Selector131~0_combout\);

-- Location: FF_X16_Y24_N21
\EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector131~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S1~q\);

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X15_Y22_N22
\ESTADO_CRON~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO_CRON~12_combout\ = (\EA.S1~q\ & (!\estadoBT1~q\ & (!\KEY[0]~input_o\ & !\ESTADO_CRON.RESET~q\))) # (!\EA.S1~q\ & (((\ESTADO_CRON.RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoBT1~q\,
	datab => \EA.S1~q\,
	datac => \KEY[0]~input_o\,
	datad => \ESTADO_CRON.RESET~q\,
	combout => \ESTADO_CRON~12_combout\);

-- Location: FF_X15_Y22_N19
\ESTADO_CRON.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	asdata => \ESTADO_CRON~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO_CRON.RESET~q\);

-- Location: LCCOMB_X15_Y22_N16
\estadoBT1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoBT1~1_combout\ = (!\KEY[0]~input_o\ & ((\EA.S1~q\) # (\estadoBT1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S1~q\,
	datac => \KEY[0]~input_o\,
	datad => \estadoBT1~q\,
	combout => \estadoBT1~1_combout\);

-- Location: FF_X15_Y22_N21
estadoBT1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	asdata => \estadoBT1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoBT1~q\);

-- Location: LCCOMB_X15_Y22_N24
\ESTADO_CRON~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO_CRON~11_combout\ = (\ESTADO_CRON.RESET~q\) # ((!\ESTADO_CRON.PAUSE~q\ & ((\KEY[0]~input_o\) # (\estadoBT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \ESTADO_CRON.RESET~q\,
	datac => \ESTADO_CRON.PAUSE~q\,
	datad => \estadoBT1~q\,
	combout => \ESTADO_CRON~11_combout\);

-- Location: LCCOMB_X15_Y22_N30
\ESTADO_CRON~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO_CRON~9_combout\ = (!\ESTADO_CRON.RESET~q\ & ((\KEY[0]~input_o\) # (\estadoBT1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.RESET~q\,
	datac => \KEY[0]~input_o\,
	datad => \estadoBT1~q\,
	combout => \ESTADO_CRON~9_combout\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X16_Y22_N12
\estadoBT2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoBT2~1_combout\ = (\estadoBT2~0_combout\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoBT2~0_combout\,
	datac => \KEY[1]~input_o\,
	combout => \estadoBT2~1_combout\);

-- Location: FF_X16_Y22_N13
estadoBT2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \estadoBT2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoBT2~q\);

-- Location: LCCOMB_X16_Y22_N30
\ESTADO_CRON~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO_CRON~10_combout\ = (\EA.S1~q\ & (((!\KEY[1]~input_o\ & !\estadoBT2~q\)) # (!\ESTADO_CRON~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ESTADO_CRON~9_combout\,
	datac => \EA.S1~q\,
	datad => \estadoBT2~q\,
	combout => \ESTADO_CRON~10_combout\);

-- Location: FF_X15_Y22_N25
\ESTADO_CRON.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \ESTADO_CRON~11_combout\,
	ena => \ESTADO_CRON~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO_CRON.PAUSE~q\);

-- Location: LCCOMB_X15_Y22_N12
\ESTADO_CRON~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO_CRON~8_combout\ = ((\ESTADO_CRON.RESET~q\) # ((!\estadoBT1~q\ & !\KEY[0]~input_o\))) # (!\ESTADO_CRON.PAUSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoBT1~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => \KEY[0]~input_o\,
	datad => \ESTADO_CRON.RESET~q\,
	combout => \ESTADO_CRON~8_combout\);

-- Location: FF_X17_Y22_N5
\ESTADO_CRON.RUN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	asdata => \ESTADO_CRON~8_combout\,
	sload => VCC,
	ena => \ESTADO_CRON~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO_CRON.RUN~q\);

-- Location: LCCOMB_X23_Y21_N0
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\Equal1~10_combout\ & !\ESTADO_CRON.RUN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \ESTADO_CRON.RUN~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\Add1~2_combout\ & ((\Selector30~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(1))))) # (!\Add1~2_combout\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(1),
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: FF_X23_Y21_N19
\U_CC_CRON[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector30~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(1));

-- Location: LCCOMB_X22_Y21_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (U_CC_CRON(2) & (\Add1~3\ $ (GND))) # (!U_CC_CRON(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((U_CC_CRON(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y21_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (U_CC_CRON(3) & (!\Add1~5\)) # (!U_CC_CRON(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!U_CC_CRON(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y21_N8
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((U_CC_CRON(3)) # ((\Add1~6_combout\ & \Selector30~0_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Add1~6_combout\ & ((\Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Add1~6_combout\,
	datac => U_CC_CRON(3),
	datad => \Selector30~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X23_Y21_N9
\U_CC_CRON[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(3));

-- Location: LCCOMB_X22_Y21_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (U_CC_CRON(4) & (\Add1~7\ $ (GND))) # (!U_CC_CRON(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((U_CC_CRON(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X22_Y21_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (U_CC_CRON(5) & (!\Add1~9\)) # (!U_CC_CRON(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!U_CC_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y21_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (U_CC_CRON(6) & (\Add1~11\ $ (GND))) # (!U_CC_CRON(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((U_CC_CRON(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y21_N6
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\ESTADO_CRON.RUN~q\ & (((U_CC_CRON(6) & \ESTADO_CRON.PAUSE~q\)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~12_combout\) # ((U_CC_CRON(6) & \ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Add1~12_combout\,
	datac => U_CC_CRON(6),
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X21_Y21_N7
\U_CC_CRON[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(6));

-- Location: LCCOMB_X22_Y21_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (U_CC_CRON(7) & (!\Add1~13\)) # (!U_CC_CRON(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!U_CC_CRON(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X21_Y21_N20
\Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\ESTADO_CRON.RUN~q\ & (((U_CC_CRON(7) & \ESTADO_CRON.PAUSE~q\)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~14_combout\) # ((U_CC_CRON(7) & \ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Add1~14_combout\,
	datac => U_CC_CRON(7),
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X21_Y21_N21
\U_CC_CRON[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(7));

-- Location: LCCOMB_X22_Y21_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (U_CC_CRON(8) & (\Add1~15\ $ (GND))) # (!U_CC_CRON(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((U_CC_CRON(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y21_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (U_CC_CRON(9) & (!\Add1~17\)) # (!U_CC_CRON(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!U_CC_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X21_Y21_N4
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(9)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~18_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(9),
	datad => \Add1~18_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X21_Y21_N5
\U_CC_CRON[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(9));

-- Location: LCCOMB_X22_Y21_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (U_CC_CRON(10) & (\Add1~19\ $ (GND))) # (!U_CC_CRON(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((U_CC_CRON(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X21_Y21_N18
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(10)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~20_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(10),
	datad => \Add1~20_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X21_Y21_N19
\U_CC_CRON[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(10));

-- Location: LCCOMB_X22_Y21_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (U_CC_CRON(13) & (!\Add1~25\)) # (!U_CC_CRON(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!U_CC_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X22_Y21_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (U_CC_CRON(14) & (\Add1~27\ $ (GND))) # (!U_CC_CRON(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((U_CC_CRON(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X22_Y21_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (U_CC_CRON(15) & (!\Add1~29\)) # (!U_CC_CRON(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!U_CC_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X22_Y20_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (U_CC_CRON(16) & (\Add1~31\ $ (GND))) # (!U_CC_CRON(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((U_CC_CRON(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X22_Y20_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (U_CC_CRON(17) & (!\Add1~33\)) # (!U_CC_CRON(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!U_CC_CRON(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X22_Y20_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (U_CC_CRON(18) & (\Add1~35\ $ (GND))) # (!U_CC_CRON(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((U_CC_CRON(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X21_Y20_N4
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(18)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~36_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(18),
	datad => \Add1~36_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X21_Y20_N5
\U_CC_CRON[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(18));

-- Location: LCCOMB_X22_Y20_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (U_CC_CRON(19) & (!\Add1~37\)) # (!U_CC_CRON(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!U_CC_CRON(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X22_Y20_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (U_CC_CRON(20) & (\Add1~39\ $ (GND))) # (!U_CC_CRON(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((U_CC_CRON(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X17_Y20_N26
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(20)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~40_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(20),
	datad => \Add1~40_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X17_Y20_N27
\U_CC_CRON[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(20));

-- Location: LCCOMB_X22_Y20_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (U_CC_CRON(21) & (!\Add1~41\)) # (!U_CC_CRON(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!U_CC_CRON(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X22_Y20_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (U_CC_CRON(22) & (\Add1~43\ $ (GND))) # (!U_CC_CRON(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((U_CC_CRON(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X22_Y20_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (U_CC_CRON(23) & (!\Add1~45\)) # (!U_CC_CRON(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!U_CC_CRON(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X17_Y20_N30
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(23)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~46_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(23),
	datad => \Add1~46_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X17_Y20_N31
\U_CC_CRON[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(23));

-- Location: LCCOMB_X22_Y20_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (U_CC_CRON(24) & (\Add1~47\ $ (GND))) # (!U_CC_CRON(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((U_CC_CRON(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X21_Y20_N28
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(24)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~48_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(24),
	datad => \Add1~48_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X21_Y20_N29
\U_CC_CRON[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(24));

-- Location: LCCOMB_X22_Y20_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (U_CC_CRON(25) & (!\Add1~49\)) # (!U_CC_CRON(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!U_CC_CRON(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X20_Y20_N8
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(25)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~50_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(25),
	datad => \Add1~50_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X20_Y20_N9
\U_CC_CRON[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(25));

-- Location: LCCOMB_X20_Y20_N30
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(26)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~52_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(26),
	datad => \Add1~52_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X20_Y20_N31
\U_CC_CRON[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(26));

-- Location: LCCOMB_X20_Y20_N22
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!U_CC_CRON(27) & (!U_CC_CRON(25) & (!U_CC_CRON(26) & !U_CC_CRON(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(27),
	datab => U_CC_CRON(25),
	datac => U_CC_CRON(26),
	datad => U_CC_CRON(24),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X21_Y20_N14
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(19)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~38_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(19),
	datad => \Add1~38_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X21_Y20_N15
\U_CC_CRON[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(19));

-- Location: LCCOMB_X21_Y20_N8
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((U_CC_CRON(16)) # ((\Add1~32_combout\ & !\ESTADO_CRON.RUN~q\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Add1~32_combout\ & ((!\ESTADO_CRON.RUN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Add1~32_combout\,
	datac => U_CC_CRON(16),
	datad => \ESTADO_CRON.RUN~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X21_Y20_N9
\U_CC_CRON[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(16));

-- Location: LCCOMB_X21_Y20_N10
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(17)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~34_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(17),
	datad => \Add1~34_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X21_Y20_N11
\U_CC_CRON[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(17));

-- Location: LCCOMB_X21_Y20_N22
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!U_CC_CRON(16) & !U_CC_CRON(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U_CC_CRON(16),
	datad => U_CC_CRON(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X17_Y20_N18
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(22)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~44_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(22),
	datad => \Add1~44_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X17_Y20_N19
\U_CC_CRON[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(22));

-- Location: LCCOMB_X17_Y20_N16
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(21)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~42_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(21),
	datad => \Add1~42_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X17_Y20_N17
\U_CC_CRON[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(21));

-- Location: LCCOMB_X17_Y20_N10
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!U_CC_CRON(20) & (!U_CC_CRON(22) & (!U_CC_CRON(23) & !U_CC_CRON(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(20),
	datab => U_CC_CRON(22),
	datac => U_CC_CRON(23),
	datad => U_CC_CRON(21),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X20_Y23_N22
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!U_CC_CRON(18) & (!U_CC_CRON(19) & (\Equal1~5_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(18),
	datab => U_CC_CRON(19),
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((U_CC_CRON(2)) # ((\Add1~4_combout\ & !\ESTADO_CRON.RUN~q\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Add1~4_combout\ & ((!\ESTADO_CRON.RUN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Add1~4_combout\,
	datac => U_CC_CRON(2),
	datad => \ESTADO_CRON.RUN~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X23_Y21_N21
\U_CC_CRON[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(2));

-- Location: LCCOMB_X23_Y21_N14
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (U_CC_CRON(0) & (!U_CC_CRON(1) & (U_CC_CRON(3) & !U_CC_CRON(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(0),
	datab => U_CC_CRON(1),
	datac => U_CC_CRON(3),
	datad => U_CC_CRON(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(8)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~16_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(8),
	datad => \Add1~16_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X21_Y21_N9
\U_CC_CRON[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(8));

-- Location: LCCOMB_X21_Y21_N22
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!U_CC_CRON(11) & (!U_CC_CRON(9) & (!U_CC_CRON(8) & !U_CC_CRON(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(11),
	datab => U_CC_CRON(9),
	datac => U_CC_CRON(8),
	datad => U_CC_CRON(10),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y20_N18
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((U_CC_CRON(15)) # ((\Add1~30_combout\ & !\ESTADO_CRON.RUN~q\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Add1~30_combout\ & ((!\ESTADO_CRON.RUN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Add1~30_combout\,
	datac => U_CC_CRON(15),
	datad => \ESTADO_CRON.RUN~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X21_Y20_N19
\U_CC_CRON[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(15));

-- Location: LCCOMB_X21_Y20_N26
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(14)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~28_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(14),
	datad => \Add1~28_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X21_Y20_N27
\U_CC_CRON[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(14));

-- Location: LCCOMB_X21_Y20_N12
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\ESTADO_CRON.RUN~q\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(13)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~26_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(13),
	datad => \Add1~26_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X21_Y20_N13
\U_CC_CRON[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(13));

-- Location: LCCOMB_X21_Y20_N24
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!U_CC_CRON(12) & (!U_CC_CRON(15) & (!U_CC_CRON(14) & !U_CC_CRON(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(12),
	datab => U_CC_CRON(15),
	datac => U_CC_CRON(14),
	datad => U_CC_CRON(13),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X20_Y23_N20
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X20_Y23_N12
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (\Equal1~8_combout\ & (\Equal1~7_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X21_Y23_N14
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\ESTADO_CRON.PAUSE~q\) # ((!\ESTADO_CRON.RUN~q\ & !\Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\ESTADO_CRON.RUN~q\ & \Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Add2~34_combout\ & ((\Selector32~0_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(17))))) # (!\Add2~34_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(17),
	datad => \Selector32~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X24_Y23_N25
\D_CC_CRON[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(17));

-- Location: LCCOMB_X24_Y23_N18
\Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Add2~32_combout\ & ((\Selector32~0_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(16))))) # (!\Add2~32_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(16),
	datad => \Selector32~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X24_Y23_N19
\D_CC_CRON[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(16));

-- Location: LCCOMB_X24_Y24_N10
\Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (!\ESTADO_CRON.RUN~q\ & (\Equal2~10_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal2~10_combout\,
	datad => \Equal1~10_combout\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X24_Y24_N12
\Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Add2~2_combout\ & ((\Selector60~0_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(1))))) # (!\Add2~2_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(1),
	datad => \Selector60~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X24_Y24_N13
\D_CC_CRON[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(1));

-- Location: LCCOMB_X23_Y24_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = D_CC_CRON(0) $ (VCC)
-- \Add2~1\ = CARRY(D_CC_CRON(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X23_Y24_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (D_CC_CRON(2) & (\Add2~3\ $ (GND))) # (!D_CC_CRON(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((D_CC_CRON(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y24_N18
\Selector61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Selector32~0_combout\ & ((\Add2~4_combout\) # ((D_CC_CRON(2) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(2) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~4_combout\,
	datac => D_CC_CRON(2),
	datad => \Selector33~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X24_Y24_N19
\D_CC_CRON[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(2));

-- Location: LCCOMB_X23_Y24_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (D_CC_CRON(3) & (!\Add2~5\)) # (!D_CC_CRON(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!D_CC_CRON(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X24_Y24_N26
\Selector60~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector60~1_combout\ = (\Selector60~0_combout\ & ((\Add2~6_combout\) # ((D_CC_CRON(3) & \Selector33~0_combout\)))) # (!\Selector60~0_combout\ & (((D_CC_CRON(3) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \Add2~6_combout\,
	datac => D_CC_CRON(3),
	datad => \Selector33~0_combout\,
	combout => \Selector60~1_combout\);

-- Location: FF_X24_Y24_N27
\D_CC_CRON[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector60~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(3));

-- Location: LCCOMB_X23_Y24_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (D_CC_CRON(4) & (\Add2~7\ $ (GND))) # (!D_CC_CRON(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((D_CC_CRON(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X24_Y24_N22
\Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Selector32~0_combout\ & ((\Add2~8_combout\) # ((D_CC_CRON(4) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(4) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~8_combout\,
	datac => D_CC_CRON(4),
	datad => \Selector33~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X24_Y24_N23
\D_CC_CRON[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(4));

-- Location: LCCOMB_X23_Y24_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (D_CC_CRON(5) & (!\Add2~9\)) # (!D_CC_CRON(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!D_CC_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X23_Y24_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (D_CC_CRON(6) & (\Add2~11\ $ (GND))) # (!D_CC_CRON(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((D_CC_CRON(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y24_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (D_CC_CRON(7) & (!\Add2~13\)) # (!D_CC_CRON(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!D_CC_CRON(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X24_Y24_N8
\Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Selector32~0_combout\ & ((\Add2~14_combout\) # ((D_CC_CRON(7) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(7) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~14_combout\,
	datac => D_CC_CRON(7),
	datad => \Selector33~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X24_Y24_N9
\D_CC_CRON[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(7));

-- Location: LCCOMB_X23_Y24_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (D_CC_CRON(9) & (!\Add2~17\)) # (!D_CC_CRON(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!D_CC_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X22_Y23_N26
\Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(9)) # ((\Add2~18_combout\ & \Selector32~0_combout\)))) # (!\Selector33~0_combout\ & (\Add2~18_combout\ & ((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Add2~18_combout\,
	datac => D_CC_CRON(9),
	datad => \Selector32~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X22_Y23_N27
\D_CC_CRON[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(9));

-- Location: LCCOMB_X23_Y24_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (D_CC_CRON(12) & (\Add2~23\ $ (GND))) # (!D_CC_CRON(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((D_CC_CRON(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X23_Y24_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (D_CC_CRON(13) & (!\Add2~25\)) # (!D_CC_CRON(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!D_CC_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X22_Y24_N18
\Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Selector32~0_combout\ & ((\Add2~26_combout\) # ((D_CC_CRON(13) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(13) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~26_combout\,
	datac => D_CC_CRON(13),
	datad => \Selector33~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X22_Y24_N19
\D_CC_CRON[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(13));

-- Location: LCCOMB_X23_Y24_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (D_CC_CRON(14) & (\Add2~27\ $ (GND))) # (!D_CC_CRON(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((D_CC_CRON(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X22_Y24_N30
\Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Selector32~0_combout\ & ((\Add2~28_combout\) # ((D_CC_CRON(14) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(14) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~28_combout\,
	datac => D_CC_CRON(14),
	datad => \Selector33~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X22_Y24_N31
\D_CC_CRON[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(14));

-- Location: LCCOMB_X23_Y24_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (D_CC_CRON(15) & (!\Add2~29\)) # (!D_CC_CRON(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!D_CC_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X23_Y23_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (D_CC_CRON(18) & (\Add2~35\ $ (GND))) # (!D_CC_CRON(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((D_CC_CRON(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X24_Y23_N14
\Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(18)) # ((\Add2~36_combout\ & \Selector32~0_combout\)))) # (!\Selector33~0_combout\ & (\Add2~36_combout\ & ((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Add2~36_combout\,
	datac => D_CC_CRON(18),
	datad => \Selector32~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X24_Y23_N15
\D_CC_CRON[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(18));

-- Location: LCCOMB_X24_Y23_N20
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (D_CC_CRON(19)) # ((D_CC_CRON(17)) # ((D_CC_CRON(18)) # (D_CC_CRON(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(19),
	datab => D_CC_CRON(17),
	datac => D_CC_CRON(18),
	datad => D_CC_CRON(16),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X24_Y23_N8
\Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Add2~46_combout\ & ((\Selector32~0_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(23))))) # (!\Add2~46_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(23),
	datad => \Selector32~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X24_Y23_N9
\D_CC_CRON[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(23));

-- Location: LCCOMB_X23_Y23_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (D_CC_CRON(21) & (!\Add2~41\)) # (!D_CC_CRON(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!D_CC_CRON(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X24_Y23_N4
\Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Selector32~0_combout\ & ((\Add2~42_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(21))))) # (!\Selector32~0_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(21),
	datad => \Add2~42_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X24_Y23_N5
\D_CC_CRON[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(21));

-- Location: LCCOMB_X23_Y23_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (D_CC_CRON(22) & (\Add2~43\ $ (GND))) # (!D_CC_CRON(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((D_CC_CRON(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X24_Y23_N28
\Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Selector32~0_combout\ & ((\Add2~44_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(22))))) # (!\Selector32~0_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(22),
	datad => \Add2~44_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X24_Y23_N29
\D_CC_CRON[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(22));

-- Location: LCCOMB_X24_Y23_N10
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (D_CC_CRON(20)) # ((D_CC_CRON(23)) # ((D_CC_CRON(21)) # (D_CC_CRON(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(20),
	datab => D_CC_CRON(23),
	datac => D_CC_CRON(21),
	datad => D_CC_CRON(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X24_Y24_N4
\Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\Selector32~0_combout\ & ((\Add2~0_combout\) # ((D_CC_CRON(0) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(0) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~0_combout\,
	datac => D_CC_CRON(0),
	datad => \Selector33~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X24_Y24_N5
\D_CC_CRON[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(0));

-- Location: LCCOMB_X24_Y24_N30
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (D_CC_CRON(1)) # (((D_CC_CRON(2)) # (!D_CC_CRON(3))) # (!D_CC_CRON(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(1),
	datab => D_CC_CRON(0),
	datac => D_CC_CRON(3),
	datad => D_CC_CRON(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Selector32~0_combout\ & ((\Add2~24_combout\) # ((D_CC_CRON(12) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(12) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~24_combout\,
	datac => D_CC_CRON(12),
	datad => \Selector33~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X22_Y24_N9
\D_CC_CRON[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(12));

-- Location: LCCOMB_X22_Y24_N16
\Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Selector32~0_combout\ & ((\Add2~30_combout\) # ((D_CC_CRON(15) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(15) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~30_combout\,
	datac => D_CC_CRON(15),
	datad => \Selector33~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X22_Y24_N17
\D_CC_CRON[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(15));

-- Location: LCCOMB_X22_Y24_N22
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (D_CC_CRON(14)) # ((D_CC_CRON(13)) # ((D_CC_CRON(12)) # (D_CC_CRON(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(14),
	datab => D_CC_CRON(13),
	datac => D_CC_CRON(12),
	datad => D_CC_CRON(15),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X24_Y24_N20
\Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\Selector32~0_combout\ & ((\Add2~12_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(6))))) # (!\Selector32~0_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(6),
	datad => \Add2~12_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X24_Y24_N21
\D_CC_CRON[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(6));

-- Location: LCCOMB_X24_Y24_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (D_CC_CRON(5)) # ((D_CC_CRON(7)) # ((D_CC_CRON(4)) # (D_CC_CRON(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(5),
	datab => D_CC_CRON(7),
	datac => D_CC_CRON(4),
	datad => D_CC_CRON(6),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X20_Y23_N6
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\) # ((\Equal2~0_combout\) # ((\Equal2~3_combout\) # (\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X20_Y23_N16
\Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~9_combout\) # ((\Equal2~5_combout\) # ((\Equal2~6_combout\) # (\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X20_Y21_N26
\Selector65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\ESTADO_CRON.PAUSE~q\) # ((!\ESTADO_CRON.RUN~q\ & ((\Equal2~10_combout\) # (!\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Equal2~10_combout\,
	datac => \ESTADO_CRON.PAUSE~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\Equal1~10_combout\ & (!\ESTADO_CRON.RUN~q\ & !\Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datad => \Equal2~10_combout\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X20_Y23_N30
\Selector79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (!\ESTADO_CRON.RUN~q\ & ((\Equal2~10_combout\) # (!\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datad => \Equal2~10_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X17_Y25_N10
\Selector84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\Add3~22_combout\ & ((\Selector64~0_combout\) # ((U_SS_CRON(11) & \Selector79~0_combout\)))) # (!\Add3~22_combout\ & (U_SS_CRON(11) & (\Selector79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => U_SS_CRON(11),
	datac => \Selector79~0_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X17_Y25_N8
\Selector84~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (\Selector84~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(11),
	datad => \Selector84~0_combout\,
	combout => \Selector84~1_combout\);

-- Location: FF_X17_Y25_N9
\U_SS_CRON[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector84~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(11));

-- Location: LCCOMB_X17_Y22_N12
\Selector88~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\Selector88~0_combout\) # ((U_SS_CRON(7) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~0_combout\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(7),
	datad => \Selector79~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: FF_X17_Y22_N13
\U_SS_CRON[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector88~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(7));

-- Location: LCCOMB_X20_Y24_N2
\Selector92~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (!\ESTADO_CRON.RUN~q\ & (!\Equal2~10_combout\ & (\Equal3~10_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Equal2~10_combout\,
	datac => \Equal3~10_combout\,
	datad => \Equal1~10_combout\,
	combout => \Selector92~1_combout\);

-- Location: LCCOMB_X20_Y24_N18
\Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\Add3~4_combout\ & ((\Selector64~0_combout\) # ((U_SS_CRON(2) & \Selector79~0_combout\)))) # (!\Add3~4_combout\ & (U_SS_CRON(2) & ((\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => U_SS_CRON(2),
	datac => \Selector64~0_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X20_Y24_N16
\Selector93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\Selector93~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(2),
	datad => \Selector93~0_combout\,
	combout => \Selector93~1_combout\);

-- Location: FF_X20_Y24_N17
\U_SS_CRON[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector93~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(2));

-- Location: LCCOMB_X19_Y22_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = U_SS_CRON(0) $ (VCC)
-- \Add3~1\ = CARRY(U_SS_CRON(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X19_Y22_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (U_SS_CRON(3) & (!\Add3~5\)) # (!U_SS_CRON(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!U_SS_CRON(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X20_Y24_N28
\Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (U_SS_CRON(3) & ((\Selector79~0_combout\) # (\ESTADO_CRON.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(3),
	datac => \Selector79~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X20_Y24_N22
\Selector92~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector92~2_combout\ = (\Selector92~0_combout\) # ((\Selector92~1_combout\ & \Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector92~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Selector92~0_combout\,
	combout => \Selector92~2_combout\);

-- Location: FF_X20_Y24_N23
\U_SS_CRON[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector92~2_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(3));

-- Location: LCCOMB_X19_Y22_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (U_SS_CRON(4) & (\Add3~7\ $ (GND))) # (!U_SS_CRON(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((U_SS_CRON(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X17_Y22_N16
\Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\Equal1~10_combout\ & (!\ESTADO_CRON.RUN~q\ & (!\Equal2~10_combout\ & \Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal2~10_combout\,
	datad => \Add3~8_combout\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X17_Y22_N14
\Selector91~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\Selector91~0_combout\) # ((U_SS_CRON(4) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Selector91~0_combout\,
	datac => U_SS_CRON(4),
	datad => \Selector79~0_combout\,
	combout => \Selector91~1_combout\);

-- Location: FF_X17_Y22_N15
\U_SS_CRON[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector91~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(4));

-- Location: LCCOMB_X19_Y22_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (U_SS_CRON(5) & (!\Add3~9\)) # (!U_SS_CRON(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!U_SS_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y22_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (U_SS_CRON(6) & (\Add3~11\ $ (GND))) # (!U_SS_CRON(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((U_SS_CRON(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X19_Y22_N18
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (U_SS_CRON(9) & (!\Add3~17\)) # (!U_SS_CRON(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!U_SS_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X19_Y22_N20
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (U_SS_CRON(10) & (\Add3~19\ $ (GND))) # (!U_SS_CRON(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((U_SS_CRON(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X17_Y25_N24
\Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (!\ESTADO_CRON.RUN~q\ & (\Equal1~10_combout\ & (!\Equal2~10_combout\ & \Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Equal1~10_combout\,
	datac => \Equal2~10_combout\,
	datad => \Add3~20_combout\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X17_Y25_N26
\Selector85~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\Selector85~0_combout\) # ((U_SS_CRON(10) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Selector79~0_combout\,
	datac => U_SS_CRON(10),
	datad => \Selector85~0_combout\,
	combout => \Selector85~1_combout\);

-- Location: FF_X17_Y25_N27
\U_SS_CRON[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector85~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(10));

-- Location: LCCOMB_X19_Y22_N24
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (U_SS_CRON(12) & (\Add3~23\ $ (GND))) # (!U_SS_CRON(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((U_SS_CRON(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X20_Y22_N0
\Selector83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (U_SS_CRON(12) & ((\Selector79~0_combout\) # ((\Add3~24_combout\ & \Selector64~0_combout\)))) # (!U_SS_CRON(12) & (\Add3~24_combout\ & ((\Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(12),
	datab => \Add3~24_combout\,
	datac => \Selector79~0_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X20_Y22_N10
\Selector83~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\Selector83~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(12),
	datad => \Selector83~0_combout\,
	combout => \Selector83~1_combout\);

-- Location: FF_X20_Y22_N11
\U_SS_CRON[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector83~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(12));

-- Location: LCCOMB_X19_Y22_N26
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (U_SS_CRON(13) & (!\Add3~25\)) # (!U_SS_CRON(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!U_SS_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X20_Y22_N18
\Selector82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\Selector79~0_combout\ & ((U_SS_CRON(13)) # ((\Add3~26_combout\ & \Selector64~0_combout\)))) # (!\Selector79~0_combout\ & (((\Add3~26_combout\ & \Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~0_combout\,
	datab => U_SS_CRON(13),
	datac => \Add3~26_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X20_Y22_N24
\Selector82~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\Selector82~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(13),
	datad => \Selector82~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: FF_X20_Y22_N25
\U_SS_CRON[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector82~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(13));

-- Location: LCCOMB_X19_Y22_N28
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (U_SS_CRON(14) & (\Add3~27\ $ (GND))) # (!U_SS_CRON(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((U_SS_CRON(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X19_Y22_N30
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (U_SS_CRON(15) & (!\Add3~29\)) # (!U_SS_CRON(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!U_SS_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X20_Y22_N6
\Selector80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\Selector64~0_combout\ & ((\Add3~30_combout\) # ((U_SS_CRON(15) & \Selector79~0_combout\)))) # (!\Selector64~0_combout\ & (U_SS_CRON(15) & (\Selector79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => U_SS_CRON(15),
	datac => \Selector79~0_combout\,
	datad => \Add3~30_combout\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X20_Y22_N14
\Selector80~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\Selector80~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(15),
	datad => \Selector80~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: FF_X20_Y22_N15
\U_SS_CRON[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector80~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(15));

-- Location: LCCOMB_X19_Y21_N0
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (U_SS_CRON(16) & (\Add3~31\ $ (GND))) # (!U_SS_CRON(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((U_SS_CRON(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X19_Y21_N2
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (U_SS_CRON(17) & (!\Add3~33\)) # (!U_SS_CRON(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!U_SS_CRON(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X19_Y21_N4
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (U_SS_CRON(18) & (\Add3~35\ $ (GND))) # (!U_SS_CRON(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((U_SS_CRON(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X19_Y20_N0
\Selector77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(18)) # ((\Selector64~0_combout\ & \Add3~36_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(18),
	datad => \Add3~36_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X19_Y20_N1
\U_SS_CRON[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(18));

-- Location: LCCOMB_X19_Y21_N6
\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (U_SS_CRON(19) & (!\Add3~37\)) # (!U_SS_CRON(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!U_SS_CRON(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X19_Y20_N6
\Selector76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(19)) # ((\Selector64~0_combout\ & \Add3~38_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(19),
	datad => \Add3~38_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X19_Y20_N7
\U_SS_CRON[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(19));

-- Location: LCCOMB_X19_Y21_N8
\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (U_SS_CRON(20) & (\Add3~39\ $ (GND))) # (!U_SS_CRON(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((U_SS_CRON(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X19_Y21_N10
\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (U_SS_CRON(21) & (!\Add3~41\)) # (!U_SS_CRON(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!U_SS_CRON(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X19_Y20_N26
\Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(21)) # ((\Selector64~0_combout\ & \Add3~42_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(21),
	datad => \Add3~42_combout\,
	combout => \Selector74~0_combout\);

-- Location: FF_X19_Y20_N27
\U_SS_CRON[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(21));

-- Location: LCCOMB_X19_Y21_N12
\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (U_SS_CRON(22) & (\Add3~43\ $ (GND))) # (!U_SS_CRON(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((U_SS_CRON(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X19_Y20_N8
\Selector73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(22)) # ((\Selector64~0_combout\ & \Add3~44_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(22),
	datad => \Add3~44_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X19_Y20_N9
\U_SS_CRON[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(22));

-- Location: LCCOMB_X19_Y21_N14
\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (U_SS_CRON(23) & (!\Add3~45\)) # (!U_SS_CRON(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!U_SS_CRON(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X19_Y21_N16
\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (U_SS_CRON(24) & (\Add3~47\ $ (GND))) # (!U_SS_CRON(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((U_SS_CRON(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X20_Y21_N28
\Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\Selector64~0_combout\ & ((\Add3~48_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(24))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(24),
	datad => \Add3~48_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X20_Y21_N29
\U_SS_CRON[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(24));

-- Location: LCCOMB_X19_Y21_N18
\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (U_SS_CRON(25) & (!\Add3~49\)) # (!U_SS_CRON(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!U_SS_CRON(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X19_Y21_N20
\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (U_SS_CRON(26) & (\Add3~51\ $ (GND))) # (!U_SS_CRON(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((U_SS_CRON(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X20_Y21_N14
\Selector69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\Selector64~0_combout\ & ((\Add3~52_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(26))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(26),
	datad => \Add3~52_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X20_Y21_N15
\U_SS_CRON[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(26));

-- Location: LCCOMB_X19_Y21_N22
\Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (U_SS_CRON(27) & (!\Add3~53\)) # (!U_SS_CRON(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!U_SS_CRON(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X20_Y21_N18
\Selector68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\Selector64~0_combout\ & ((\Add3~54_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(27))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(27),
	datad => \Add3~54_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X20_Y21_N19
\U_SS_CRON[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(27));

-- Location: LCCOMB_X19_Y21_N24
\Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (U_SS_CRON(28) & (\Add3~55\ $ (GND))) # (!U_SS_CRON(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((U_SS_CRON(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X20_Y21_N0
\Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\Selector64~0_combout\ & ((\Add3~56_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(28))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(28),
	datad => \Add3~56_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X20_Y21_N1
\U_SS_CRON[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(28));

-- Location: LCCOMB_X19_Y21_N26
\Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (U_SS_CRON(29) & (!\Add3~57\)) # (!U_SS_CRON(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!U_SS_CRON(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X20_Y21_N30
\Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\Selector64~0_combout\ & ((\Add3~58_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(29))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(29),
	datad => \Add3~58_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X20_Y21_N31
\U_SS_CRON[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(29));

-- Location: LCCOMB_X19_Y21_N28
\Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (U_SS_CRON(30) & (\Add3~59\ $ (GND))) # (!U_SS_CRON(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((U_SS_CRON(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X20_Y21_N2
\Selector65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\Selector64~0_combout\ & ((\Add3~60_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(30))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(30),
	datad => \Add3~60_combout\,
	combout => \Selector65~1_combout\);

-- Location: FF_X20_Y21_N3
\U_SS_CRON[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector65~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(30));

-- Location: LCCOMB_X19_Y21_N30
\Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = U_SS_CRON(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X20_Y21_N8
\Selector64~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (\Selector64~0_combout\ & ((\Add3~62_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(31))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(31),
	datad => \Add3~62_combout\,
	combout => \Selector64~1_combout\);

-- Location: FF_X20_Y21_N9
\U_SS_CRON[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector64~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(31));

-- Location: LCCOMB_X20_Y21_N24
\Equal3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (U_SS_CRON(29)) # ((U_SS_CRON(30)) # ((U_SS_CRON(31)) # (U_SS_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(29),
	datab => U_SS_CRON(30),
	datac => U_SS_CRON(31),
	datad => U_SS_CRON(28),
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Selector78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(17)) # ((\Selector64~0_combout\ & \Add3~34_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(17),
	datad => \Add3~34_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X19_Y20_N5
\U_SS_CRON[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(17));

-- Location: LCCOMB_X19_Y20_N18
\Selector75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(20)) # ((\Selector64~0_combout\ & \Add3~40_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(20),
	datad => \Add3~40_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X19_Y20_N19
\U_SS_CRON[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(20));

-- Location: LCCOMB_X19_Y20_N24
\Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\Selector65~0_combout\ & ((U_SS_CRON(23)) # ((\Selector64~0_combout\ & \Add3~46_combout\)))) # (!\Selector65~0_combout\ & (\Selector64~0_combout\ & ((\Add3~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector64~0_combout\,
	datac => U_SS_CRON(23),
	datad => \Add3~46_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X19_Y20_N25
\U_SS_CRON[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(23));

-- Location: LCCOMB_X19_Y20_N22
\Equal3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (U_SS_CRON(21)) # ((U_SS_CRON(20)) # ((U_SS_CRON(22)) # (U_SS_CRON(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(21),
	datab => U_SS_CRON(20),
	datac => U_SS_CRON(22),
	datad => U_SS_CRON(23),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X19_Y20_N20
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (U_SS_CRON(19)) # (U_SS_CRON(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(19),
	datad => U_SS_CRON(18),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X19_Y20_N16
\Equal3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (U_SS_CRON(16)) # ((U_SS_CRON(17)) # ((\Equal3~6_combout\) # (\Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(16),
	datab => U_SS_CRON(17),
	datac => \Equal3~6_combout\,
	datad => \Equal3~5_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X17_Y22_N28
\Selector89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\Equal1~10_combout\ & (!\ESTADO_CRON.RUN~q\ & (!\Equal2~10_combout\ & \Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal2~10_combout\,
	datad => \Add3~12_combout\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X17_Y22_N22
\Selector89~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\Selector89~0_combout\) # ((U_SS_CRON(6) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Selector89~0_combout\,
	datac => U_SS_CRON(6),
	datad => \Selector79~0_combout\,
	combout => \Selector89~1_combout\);

-- Location: FF_X17_Y22_N23
\U_SS_CRON[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector89~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(6));

-- Location: LCCOMB_X17_Y22_N18
\Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (U_SS_CRON(5) & ((\Selector79~0_combout\) # ((\Add3~10_combout\ & \Selector64~0_combout\)))) # (!U_SS_CRON(5) & (\Add3~10_combout\ & (\Selector64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(5),
	datab => \Add3~10_combout\,
	datac => \Selector64~0_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X17_Y22_N20
\Selector90~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(5),
	datad => \Selector90~0_combout\,
	combout => \Selector90~1_combout\);

-- Location: FF_X17_Y22_N21
\U_SS_CRON[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector90~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(5));

-- Location: LCCOMB_X17_Y22_N0
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (U_SS_CRON(7)) # ((U_SS_CRON(4)) # ((U_SS_CRON(6)) # (U_SS_CRON(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(7),
	datab => U_SS_CRON(4),
	datac => U_SS_CRON(6),
	datad => U_SS_CRON(5),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X17_Y25_N0
\Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\Add3~16_combout\ & ((\Selector64~0_combout\) # ((U_SS_CRON(8) & \Selector79~0_combout\)))) # (!\Add3~16_combout\ & (U_SS_CRON(8) & (\Selector79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => U_SS_CRON(8),
	datac => \Selector79~0_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X17_Y25_N18
\Selector87~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(8),
	datad => \Selector87~0_combout\,
	combout => \Selector87~1_combout\);

-- Location: FF_X17_Y25_N19
\U_SS_CRON[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector87~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(8));

-- Location: LCCOMB_X17_Y25_N2
\Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\Selector64~0_combout\ & ((\Add3~18_combout\) # ((U_SS_CRON(9) & \Selector79~0_combout\)))) # (!\Selector64~0_combout\ & (U_SS_CRON(9) & (\Selector79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => U_SS_CRON(9),
	datac => \Selector79~0_combout\,
	datad => \Add3~18_combout\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X17_Y25_N28
\Selector86~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\Selector86~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(9),
	datad => \Selector86~0_combout\,
	combout => \Selector86~1_combout\);

-- Location: FF_X17_Y25_N29
\U_SS_CRON[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector86~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(9));

-- Location: LCCOMB_X17_Y25_N30
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (U_SS_CRON(10)) # ((U_SS_CRON(8)) # ((U_SS_CRON(11)) # (U_SS_CRON(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(10),
	datab => U_SS_CRON(8),
	datac => U_SS_CRON(11),
	datad => U_SS_CRON(9),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X20_Y22_N20
\Selector81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\Selector64~0_combout\ & ((\Add3~28_combout\) # ((U_SS_CRON(14) & \Selector79~0_combout\)))) # (!\Selector64~0_combout\ & (U_SS_CRON(14) & (\Selector79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => U_SS_CRON(14),
	datac => \Selector79~0_combout\,
	datad => \Add3~28_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\Selector81~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector81~0_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(14),
	datad => \Selector81~0_combout\,
	combout => \Selector81~1_combout\);

-- Location: FF_X20_Y22_N3
\U_SS_CRON[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector81~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(14));

-- Location: LCCOMB_X20_Y22_N26
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (U_SS_CRON(12)) # ((U_SS_CRON(13)) # ((U_SS_CRON(15)) # (U_SS_CRON(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(12),
	datab => U_SS_CRON(13),
	datac => U_SS_CRON(15),
	datad => U_SS_CRON(14),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X20_Y23_N2
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~0_combout\) # ((\Equal3~1_combout\) # ((\Equal3~2_combout\) # (\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Equal3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~8_combout\) # ((\Equal3~9_combout\) # ((\Equal3~7_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~8_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal3~7_combout\,
	datad => \Equal3~4_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X20_Y23_N18
\Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\Equal1~10_combout\ & (!\ESTADO_CRON.RUN~q\ & (!\Equal3~10_combout\ & !\Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal3~10_combout\,
	datad => \Equal2~10_combout\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X20_Y23_N26
\Selector127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(0)) # ((\Add4~0_combout\ & \Selector110~0_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (((\Add4~0_combout\ & \Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(0),
	datac => \Add4~0_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X20_Y23_N24
\Selector110~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~1_combout\ = (!\ESTADO_CRON.RUN~q\ & (((\Equal3~10_combout\) # (\Equal2~10_combout\)) # (!\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \ESTADO_CRON.RUN~q\,
	datac => \Equal3~10_combout\,
	datad => \Equal2~10_combout\,
	combout => \Selector110~1_combout\);

-- Location: LCCOMB_X20_Y23_N4
\Selector127~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector127~1_combout\ = (\Selector127~0_combout\) # ((D_SS_CRON(0) & \Selector110~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(0),
	datac => \Selector127~0_combout\,
	datad => \Selector110~1_combout\,
	combout => \Selector127~1_combout\);

-- Location: FF_X20_Y27_N21
\D_SS_CRON[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	asdata => \Selector127~1_combout\,
	sload => VCC,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(0));

-- Location: LCCOMB_X15_Y25_N0
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = D_HH(0) $ (VCC)
-- \Add12~1\ = CARRY(D_HH(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_HH(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X15_Y25_N2
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (D_HH(1) & (!\Add12~1\)) # (!D_HH(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!D_HH(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X15_Y25_N4
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (D_HH(2) & (\Add12~3\ $ (GND))) # (!D_HH(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((D_HH(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X16_Y24_N4
\D_HH[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~15_combout\ = ((\KEY[0]~input_o\ & \KEY[1]~input_o\)) # (!\EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \EA.S2~q\,
	combout => \D_HH[15]~15_combout\);

-- Location: LCCOMB_X16_Y21_N0
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = U_MM(0) $ (VCC)
-- \Add9~1\ = CARRY(U_MM(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_MM(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X12_Y25_N0
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = U_SS(0) $ (VCC)
-- \Add7~1\ = CARRY(U_SS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X12_Y25_N2
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (U_SS(1) & (!\Add7~1\)) # (!U_SS(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!U_SS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X12_Y22_N22
\U_SS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SS~2_combout\ = (!\Equal7~10_combout\ & \Add7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datac => \Add7~2_combout\,
	combout => \U_SS~2_combout\);

-- Location: LCCOMB_X14_Y20_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = U_CC(0) $ (VCC)
-- \Add5~1\ = CARRY(U_CC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_CC(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X15_Y20_N12
\U_CC[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CC[0]~feeder_combout\ = \Add5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~0_combout\,
	combout => \U_CC[0]~feeder_combout\);

-- Location: FF_X15_Y20_N13
\U_CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_CC[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(0));

-- Location: LCCOMB_X14_Y20_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (U_CC(1) & (!\Add5~1\)) # (!U_CC(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!U_CC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X15_Y20_N0
\U_CC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CC~1_combout\ = (!\Equal5~10_combout\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~10_combout\,
	datad => \Add5~2_combout\,
	combout => \U_CC~1_combout\);

-- Location: FF_X15_Y20_N1
\U_CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_CC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(1));

-- Location: LCCOMB_X14_Y20_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (U_CC(2) & (\Add5~3\ $ (GND))) # (!U_CC(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((U_CC(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X14_Y20_N5
\U_CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(2));

-- Location: LCCOMB_X14_Y20_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (U_CC(3) & (!\Add5~5\)) # (!U_CC(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!U_CC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X14_Y20_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (U_CC(4) & (\Add5~7\ $ (GND))) # (!U_CC(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((U_CC(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X14_Y20_N9
\U_CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(4));

-- Location: LCCOMB_X14_Y20_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (U_CC(5) & (!\Add5~9\)) # (!U_CC(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!U_CC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X14_Y20_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (U_CC(7) & (!\Add5~13\)) # (!U_CC(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!U_CC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X14_Y20_N15
\U_CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(7));

-- Location: LCCOMB_X14_Y20_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (U_CC(8) & (\Add5~15\ $ (GND))) # (!U_CC(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((U_CC(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X14_Y20_N17
\U_CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(8));

-- Location: LCCOMB_X14_Y20_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (U_CC(9) & (!\Add5~17\)) # (!U_CC(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!U_CC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: FF_X14_Y20_N19
\U_CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(9));

-- Location: LCCOMB_X14_Y20_N20
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (U_CC(10) & (\Add5~19\ $ (GND))) # (!U_CC(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((U_CC(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X14_Y20_N21
\U_CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(10));

-- Location: LCCOMB_X14_Y20_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (U_CC(12) & (\Add5~23\ $ (GND))) # (!U_CC(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((U_CC(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X14_Y20_N25
\U_CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(12));

-- Location: LCCOMB_X14_Y20_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (U_CC(14) & (\Add5~27\ $ (GND))) # (!U_CC(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((U_CC(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: FF_X14_Y20_N29
\U_CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(14));

-- Location: LCCOMB_X14_Y20_N30
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (U_CC(15) & (!\Add5~29\)) # (!U_CC(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!U_CC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X14_Y19_N0
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (U_CC(16) & (\Add5~31\ $ (GND))) # (!U_CC(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((U_CC(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: FF_X14_Y19_N1
\U_CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(16));

-- Location: LCCOMB_X14_Y19_N2
\Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (U_CC(17) & (!\Add5~33\)) # (!U_CC(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!U_CC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: FF_X14_Y19_N3
\U_CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(17));

-- Location: LCCOMB_X14_Y19_N4
\Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (U_CC(18) & (\Add5~35\ $ (GND))) # (!U_CC(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((U_CC(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: FF_X14_Y19_N5
\U_CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(18));

-- Location: LCCOMB_X14_Y19_N6
\Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (U_CC(19) & (!\Add5~37\)) # (!U_CC(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!U_CC(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X14_Y19_N8
\Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (U_CC(20) & (\Add5~39\ $ (GND))) # (!U_CC(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((U_CC(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X14_Y19_N9
\U_CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(20));

-- Location: LCCOMB_X14_Y19_N12
\Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (U_CC(22) & (\Add5~43\ $ (GND))) # (!U_CC(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((U_CC(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X14_Y19_N14
\Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (U_CC(23) & (!\Add5~45\)) # (!U_CC(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!U_CC(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X14_Y19_N15
\U_CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(23));

-- Location: LCCOMB_X14_Y19_N16
\Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (U_CC(24) & (\Add5~47\ $ (GND))) # (!U_CC(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((U_CC(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X14_Y19_N17
\U_CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(24));

-- Location: LCCOMB_X14_Y19_N18
\Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (U_CC(25) & (!\Add5~49\)) # (!U_CC(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!U_CC(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: FF_X14_Y19_N19
\U_CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(25));

-- Location: LCCOMB_X14_Y19_N20
\Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (U_CC(26) & (\Add5~51\ $ (GND))) # (!U_CC(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((U_CC(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: FF_X14_Y19_N21
\U_CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(26));

-- Location: LCCOMB_X14_Y19_N24
\Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (U_CC(28) & (\Add5~55\ $ (GND))) # (!U_CC(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((U_CC(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: FF_X14_Y19_N25
\U_CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(28));

-- Location: LCCOMB_X14_Y19_N26
\Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (U_CC(29) & (!\Add5~57\)) # (!U_CC(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!U_CC(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X14_Y19_N28
\Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (U_CC(30) & (\Add5~59\ $ (GND))) # (!U_CC(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((U_CC(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_CC(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: FF_X14_Y19_N29
\U_CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(30));

-- Location: LCCOMB_X14_Y19_N30
\Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = U_CC(31) $ (\Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: FF_X14_Y19_N31
\U_CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(31));

-- Location: FF_X14_Y19_N27
\U_CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(29));

-- Location: LCCOMB_X15_Y20_N16
\Equal5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (!U_CC(28) & (!U_CC(31) & (!U_CC(29) & !U_CC(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(28),
	datab => U_CC(31),
	datac => U_CC(29),
	datad => U_CC(30),
	combout => \Equal5~9_combout\);

-- Location: FF_X14_Y20_N11
\U_CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(5));

-- Location: LCCOMB_X15_Y20_N4
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!U_CC(6) & (!U_CC(4) & (!U_CC(5) & !U_CC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(6),
	datab => U_CC(4),
	datac => U_CC(5),
	datad => U_CC(7),
	combout => \Equal5~1_combout\);

-- Location: FF_X14_Y20_N31
\U_CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(15));

-- Location: LCCOMB_X15_Y20_N8
\Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!U_CC(13) & (!U_CC(14) & (!U_CC(15) & !U_CC(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(13),
	datab => U_CC(14),
	datac => U_CC(15),
	datad => U_CC(12),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X15_Y20_N2
\U_CC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CC~0_combout\ = (\Add5~6_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~6_combout\,
	datad => \Equal5~10_combout\,
	combout => \U_CC~0_combout\);

-- Location: FF_X15_Y20_N3
\U_CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_CC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(3));

-- Location: LCCOMB_X15_Y20_N18
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (U_CC(0) & (!U_CC(1) & (!U_CC(2) & U_CC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(0),
	datab => U_CC(1),
	datac => U_CC(2),
	datad => U_CC(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X15_Y20_N30
\Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~2_combout\ & (\Equal5~1_combout\ & (\Equal5~3_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~3_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~4_combout\);

-- Location: FF_X14_Y19_N13
\U_CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(22));

-- Location: LCCOMB_X15_Y20_N14
\Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!U_CC(21) & (!U_CC(20) & (!U_CC(22) & !U_CC(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(21),
	datab => U_CC(20),
	datac => U_CC(22),
	datad => U_CC(23),
	combout => \Equal5~6_combout\);

-- Location: FF_X14_Y19_N7
\U_CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add5~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC(19));

-- Location: LCCOMB_X15_Y20_N20
\Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!U_CC(18) & !U_CC(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U_CC(18),
	datad => U_CC(19),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X15_Y20_N28
\Equal5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!U_CC(16) & (!U_CC(17) & (\Equal5~6_combout\ & \Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC(16),
	datab => U_CC(17),
	datac => \Equal5~6_combout\,
	datad => \Equal5~5_combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X15_Y20_N6
\Equal5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~8_combout\ & (\Equal5~9_combout\ & (\Equal5~4_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~8_combout\,
	datab => \Equal5~9_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X14_Y22_N0
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = D_CC(0) $ (VCC)
-- \Add6~1\ = CARRY(D_CC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_CC(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: FF_X14_Y22_N1
\D_CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~0_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(0));

-- Location: LCCOMB_X14_Y22_N4
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (D_CC(2) & (\Add6~3\ $ (GND))) # (!D_CC(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((D_CC(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: FF_X14_Y22_N5
\D_CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~4_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(2));

-- Location: LCCOMB_X14_Y22_N6
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (D_CC(3) & (!\Add6~5\)) # (!D_CC(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!D_CC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X14_Y24_N22
\D_CC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_CC~0_combout\ = (!\Equal6~10_combout\ & \Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~10_combout\,
	datad => \Add6~6_combout\,
	combout => \D_CC~0_combout\);

-- Location: FF_X14_Y24_N23
\D_CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_CC~0_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(3));

-- Location: LCCOMB_X14_Y22_N8
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (D_CC(4) & (\Add6~7\ $ (GND))) # (!D_CC(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((D_CC(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X14_Y22_N9
\D_CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~8_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(4));

-- Location: LCCOMB_X14_Y22_N10
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (D_CC(5) & (!\Add6~9\)) # (!D_CC(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!D_CC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X14_Y22_N12
\Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (D_CC(6) & (\Add6~11\ $ (GND))) # (!D_CC(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((D_CC(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X14_Y22_N14
\Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (D_CC(7) & (!\Add6~13\)) # (!D_CC(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!D_CC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: FF_X14_Y22_N15
\D_CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~14_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(7));

-- Location: LCCOMB_X14_Y22_N16
\Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (D_CC(8) & (\Add6~15\ $ (GND))) # (!D_CC(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((D_CC(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: FF_X14_Y22_N17
\D_CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~16_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(8));

-- Location: LCCOMB_X14_Y22_N18
\Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (D_CC(9) & (!\Add6~17\)) # (!D_CC(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!D_CC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: FF_X14_Y22_N19
\D_CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~18_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(9));

-- Location: LCCOMB_X14_Y22_N20
\Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (D_CC(10) & (\Add6~19\ $ (GND))) # (!D_CC(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((D_CC(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: FF_X14_Y22_N21
\D_CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~20_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(10));

-- Location: LCCOMB_X14_Y22_N24
\Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (D_CC(12) & (\Add6~23\ $ (GND))) # (!D_CC(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((D_CC(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: FF_X14_Y22_N25
\D_CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~24_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(12));

-- Location: LCCOMB_X14_Y22_N26
\Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (D_CC(13) & (!\Add6~25\)) # (!D_CC(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!D_CC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X14_Y22_N28
\Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (D_CC(14) & (\Add6~27\ $ (GND))) # (!D_CC(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((D_CC(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: FF_X14_Y22_N29
\D_CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~28_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(14));

-- Location: LCCOMB_X14_Y22_N30
\Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (D_CC(15) & (!\Add6~29\)) # (!D_CC(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!D_CC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X14_Y21_N0
\Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (D_CC(16) & (\Add6~31\ $ (GND))) # (!D_CC(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((D_CC(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X15_Y21_N12
\D_CC[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_CC[16]~feeder_combout\ = \Add6~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~32_combout\,
	combout => \D_CC[16]~feeder_combout\);

-- Location: FF_X15_Y21_N13
\D_CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_CC[16]~feeder_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(16));

-- Location: LCCOMB_X14_Y21_N2
\Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (D_CC(17) & (!\Add6~33\)) # (!D_CC(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!D_CC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: FF_X14_Y21_N3
\D_CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~34_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(17));

-- Location: LCCOMB_X14_Y21_N4
\Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (D_CC(18) & (\Add6~35\ $ (GND))) # (!D_CC(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((D_CC(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X15_Y21_N22
\D_CC[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_CC[18]~feeder_combout\ = \Add6~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~36_combout\,
	combout => \D_CC[18]~feeder_combout\);

-- Location: FF_X15_Y21_N23
\D_CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_CC[18]~feeder_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(18));

-- Location: LCCOMB_X14_Y21_N6
\Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (D_CC(19) & (!\Add6~37\)) # (!D_CC(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!D_CC(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X14_Y21_N8
\Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (D_CC(20) & (\Add6~39\ $ (GND))) # (!D_CC(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((D_CC(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X14_Y21_N9
\D_CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~40_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(20));

-- Location: LCCOMB_X14_Y21_N10
\Add6~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (D_CC(21) & (!\Add6~41\)) # (!D_CC(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!D_CC(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X14_Y21_N12
\Add6~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (D_CC(22) & (\Add6~43\ $ (GND))) # (!D_CC(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((D_CC(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X14_Y21_N14
\Add6~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (D_CC(23) & (!\Add6~45\)) # (!D_CC(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!D_CC(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X14_Y21_N15
\D_CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~46_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(23));

-- Location: LCCOMB_X14_Y21_N16
\Add6~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (D_CC(24) & (\Add6~47\ $ (GND))) # (!D_CC(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((D_CC(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X14_Y21_N17
\D_CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~48_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(24));

-- Location: LCCOMB_X14_Y21_N18
\Add6~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (D_CC(25) & (!\Add6~49\)) # (!D_CC(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!D_CC(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X14_Y21_N19
\D_CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~50_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(25));

-- Location: LCCOMB_X14_Y21_N20
\Add6~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (D_CC(26) & (\Add6~51\ $ (GND))) # (!D_CC(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((D_CC(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X14_Y21_N21
\D_CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~52_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(26));

-- Location: LCCOMB_X14_Y21_N24
\Add6~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (D_CC(28) & (\Add6~55\ $ (GND))) # (!D_CC(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((D_CC(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X14_Y21_N25
\D_CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~56_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(28));

-- Location: LCCOMB_X14_Y21_N26
\Add6~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (D_CC(29) & (!\Add6~57\)) # (!D_CC(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!D_CC(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X14_Y21_N27
\D_CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~58_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(29));

-- Location: LCCOMB_X14_Y21_N28
\Add6~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (D_CC(30) & (\Add6~59\ $ (GND))) # (!D_CC(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((D_CC(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: FF_X14_Y21_N29
\D_CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~60_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(30));

-- Location: LCCOMB_X14_Y21_N30
\Add6~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = D_CC(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: FF_X14_Y21_N31
\D_CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~62_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(31));

-- Location: LCCOMB_X14_Y24_N24
\Equal6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (!D_CC(28) & (!D_CC(29) & (!D_CC(30) & !D_CC(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(28),
	datab => D_CC(29),
	datac => D_CC(30),
	datad => D_CC(31),
	combout => \Equal6~9_combout\);

-- Location: FF_X14_Y21_N13
\D_CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~44_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(22));

-- Location: FF_X14_Y21_N11
\D_CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~42_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(21));

-- Location: LCCOMB_X15_Y21_N26
\Equal6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!D_CC(23) & (!D_CC(22) & (!D_CC(21) & !D_CC(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(23),
	datab => D_CC(22),
	datac => D_CC(21),
	datad => D_CC(20),
	combout => \Equal6~6_combout\);

-- Location: FF_X14_Y21_N7
\D_CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~38_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(19));

-- Location: LCCOMB_X15_Y21_N0
\Equal6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!D_CC(16) & (!D_CC(19) & (!D_CC(18) & !D_CC(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(16),
	datab => D_CC(19),
	datac => D_CC(18),
	datad => D_CC(17),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X15_Y21_N8
\Equal6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\Equal6~6_combout\ & \Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~6_combout\,
	datad => \Equal6~5_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X14_Y24_N8
\Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!D_CC(11) & (!D_CC(8) & (!D_CC(10) & !D_CC(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(11),
	datab => D_CC(8),
	datac => D_CC(10),
	datad => D_CC(9),
	combout => \Equal6~2_combout\);

-- Location: FF_X14_Y22_N13
\D_CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~12_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(6));

-- Location: FF_X14_Y22_N11
\D_CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~10_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(5));

-- Location: LCCOMB_X15_Y22_N26
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!D_CC(7) & (!D_CC(6) & (!D_CC(4) & !D_CC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(7),
	datab => D_CC(6),
	datac => D_CC(4),
	datad => D_CC(5),
	combout => \Equal6~1_combout\);

-- Location: FF_X14_Y22_N27
\D_CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~26_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(13));

-- Location: FF_X14_Y22_N31
\D_CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add6~30_combout\,
	ena => \Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC(15));

-- Location: LCCOMB_X14_Y24_N10
\Equal6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!D_CC(12) & (!D_CC(13) & (!D_CC(14) & !D_CC(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC(12),
	datab => D_CC(13),
	datac => D_CC(14),
	datad => D_CC(15),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X14_Y24_N12
\Equal6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~2_combout\ & (\Equal6~1_combout\ & \Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~2_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~3_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X14_Y24_N14
\Equal6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~8_combout\ & (\Equal6~9_combout\ & (\Equal6~7_combout\ & \Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datab => \Equal6~9_combout\,
	datac => \Equal6~7_combout\,
	datad => \Equal6~4_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X16_Y24_N26
\U_SS[29]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SS[29]~0_combout\ = (\Equal5~10_combout\ & \Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~10_combout\,
	datad => \Equal6~10_combout\,
	combout => \U_SS[29]~0_combout\);

-- Location: FF_X12_Y22_N23
\U_SS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_SS~2_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(1));

-- Location: LCCOMB_X12_Y25_N4
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (U_SS(2) & (\Add7~3\ $ (GND))) # (!U_SS(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((U_SS(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X12_Y25_N6
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (U_SS(3) & (!\Add7~5\)) # (!U_SS(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!U_SS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X12_Y22_N8
\U_SS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SS~1_combout\ = (!\Equal7~10_combout\ & \Add7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Add7~6_combout\,
	combout => \U_SS~1_combout\);

-- Location: FF_X12_Y22_N9
\U_SS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_SS~1_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(3));

-- Location: LCCOMB_X12_Y25_N8
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (U_SS(4) & (\Add7~7\ $ (GND))) # (!U_SS(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((U_SS(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: FF_X12_Y25_N9
\U_SS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~8_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(4));

-- Location: LCCOMB_X12_Y25_N10
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (U_SS(5) & (!\Add7~9\)) # (!U_SS(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!U_SS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X12_Y25_N12
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (U_SS(6) & (\Add7~11\ $ (GND))) # (!U_SS(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((U_SS(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X12_Y25_N14
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (U_SS(7) & (!\Add7~13\)) # (!U_SS(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!U_SS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X12_Y25_N15
\U_SS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~14_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(7));

-- Location: LCCOMB_X12_Y25_N16
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (U_SS(8) & (\Add7~15\ $ (GND))) # (!U_SS(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((U_SS(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: FF_X12_Y25_N17
\U_SS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~16_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(8));

-- Location: LCCOMB_X12_Y25_N18
\Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (U_SS(9) & (!\Add7~17\)) # (!U_SS(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!U_SS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: FF_X12_Y25_N19
\U_SS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~18_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(9));

-- Location: LCCOMB_X12_Y25_N20
\Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (U_SS(10) & (\Add7~19\ $ (GND))) # (!U_SS(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((U_SS(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X12_Y25_N21
\U_SS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~20_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(10));

-- Location: LCCOMB_X12_Y25_N24
\Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (U_SS(12) & (\Add7~23\ $ (GND))) # (!U_SS(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((U_SS(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: FF_X12_Y25_N25
\U_SS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~24_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(12));

-- Location: LCCOMB_X12_Y25_N28
\Add7~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (U_SS(14) & (\Add7~27\ $ (GND))) # (!U_SS(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((U_SS(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: FF_X12_Y25_N29
\U_SS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~28_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(14));

-- Location: LCCOMB_X12_Y25_N30
\Add7~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (U_SS(15) & (!\Add7~29\)) # (!U_SS(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!U_SS(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X12_Y24_N0
\Add7~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (U_SS(16) & (\Add7~31\ $ (GND))) # (!U_SS(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((U_SS(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X12_Y24_N1
\U_SS[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~32_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(16));

-- Location: LCCOMB_X12_Y24_N2
\Add7~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (U_SS(17) & (!\Add7~33\)) # (!U_SS(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!U_SS(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: FF_X12_Y24_N3
\U_SS[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~34_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(17));

-- Location: LCCOMB_X12_Y24_N4
\Add7~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (U_SS(18) & (\Add7~35\ $ (GND))) # (!U_SS(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((U_SS(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: FF_X12_Y24_N5
\U_SS[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~36_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(18));

-- Location: LCCOMB_X12_Y24_N8
\Add7~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (U_SS(20) & (\Add7~39\ $ (GND))) # (!U_SS(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((U_SS(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: FF_X12_Y24_N9
\U_SS[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~40_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(20));

-- Location: LCCOMB_X12_Y24_N12
\Add7~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (U_SS(22) & (\Add7~43\ $ (GND))) # (!U_SS(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((U_SS(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: FF_X12_Y24_N13
\U_SS[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~44_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(22));

-- Location: LCCOMB_X12_Y24_N14
\Add7~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (U_SS(23) & (!\Add7~45\)) # (!U_SS(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!U_SS(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: FF_X12_Y24_N15
\U_SS[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~46_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(23));

-- Location: LCCOMB_X11_Y24_N28
\Equal7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!U_SS(21) & (!U_SS(22) & (!U_SS(20) & !U_SS(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(21),
	datab => U_SS(22),
	datac => U_SS(20),
	datad => U_SS(23),
	combout => \Equal7~6_combout\);

-- Location: FF_X12_Y25_N31
\U_SS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~30_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(15));

-- Location: LCCOMB_X11_Y24_N14
\Equal7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!U_SS(13) & (!U_SS(15) & (!U_SS(12) & !U_SS(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(13),
	datab => U_SS(15),
	datac => U_SS(12),
	datad => U_SS(14),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X12_Y22_N20
\U_SS[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SS[2]~feeder_combout\ = \Add7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add7~4_combout\,
	combout => \U_SS[2]~feeder_combout\);

-- Location: FF_X12_Y22_N21
\U_SS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_SS[2]~feeder_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(2));

-- Location: LCCOMB_X12_Y22_N10
\U_SS[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SS[0]~feeder_combout\ = \Add7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~0_combout\,
	combout => \U_SS[0]~feeder_combout\);

-- Location: FF_X12_Y22_N11
\U_SS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_SS[0]~feeder_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(0));

-- Location: LCCOMB_X12_Y22_N30
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!U_SS(1) & (!U_SS(2) & (U_SS(3) & U_SS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(1),
	datab => U_SS(2),
	datac => U_SS(3),
	datad => U_SS(0),
	combout => \Equal7~0_combout\);

-- Location: FF_X12_Y25_N11
\U_SS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~10_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(5));

-- Location: FF_X12_Y25_N13
\U_SS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~12_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(6));

-- Location: LCCOMB_X11_Y24_N6
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!U_SS(7) & (!U_SS(4) & (!U_SS(5) & !U_SS(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(7),
	datab => U_SS(4),
	datac => U_SS(5),
	datad => U_SS(6),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X11_Y24_N8
\Equal7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (\Equal7~3_combout\ & (\Equal7~0_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~3_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal7~1_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X12_Y24_N16
\Add7~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (U_SS(24) & (\Add7~47\ $ (GND))) # (!U_SS(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((U_SS(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: FF_X12_Y24_N17
\U_SS[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~48_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(24));

-- Location: LCCOMB_X12_Y24_N18
\Add7~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (U_SS(25) & (!\Add7~49\)) # (!U_SS(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!U_SS(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: FF_X12_Y24_N19
\U_SS[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~50_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(25));

-- Location: LCCOMB_X12_Y24_N20
\Add7~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (U_SS(26) & (\Add7~51\ $ (GND))) # (!U_SS(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((U_SS(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: FF_X12_Y24_N21
\U_SS[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~52_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(26));

-- Location: LCCOMB_X10_Y24_N22
\Equal7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (!U_SS(27) & (!U_SS(26) & (!U_SS(25) & !U_SS(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(27),
	datab => U_SS(26),
	datac => U_SS(25),
	datad => U_SS(24),
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X12_Y24_N24
\Add7~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (U_SS(28) & (\Add7~55\ $ (GND))) # (!U_SS(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((U_SS(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: FF_X12_Y24_N25
\U_SS[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~56_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(28));

-- Location: LCCOMB_X12_Y24_N26
\Add7~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (U_SS(29) & (!\Add7~57\)) # (!U_SS(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!U_SS(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: FF_X12_Y24_N27
\U_SS[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~58_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(29));

-- Location: LCCOMB_X12_Y24_N28
\Add7~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (U_SS(30) & (\Add7~59\ $ (GND))) # (!U_SS(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((U_SS(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_SS(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: FF_X12_Y24_N29
\U_SS[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~60_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(30));

-- Location: LCCOMB_X12_Y24_N30
\Add7~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = U_SS(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: FF_X12_Y24_N31
\U_SS[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add7~62_combout\,
	ena => \U_SS[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS(31));

-- Location: LCCOMB_X10_Y24_N16
\Equal7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!U_SS(28) & (!U_SS(29) & (!U_SS(30) & !U_SS(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS(28),
	datab => U_SS(29),
	datac => U_SS(30),
	datad => U_SS(31),
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X10_Y24_N30
\Equal7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (\Equal7~7_combout\ & \Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~7_combout\,
	datad => \Equal7~8_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X11_Y24_N26
\Equal7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~5_combout\ & (\Equal7~6_combout\ & (\Equal7~4_combout\ & \Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \Equal7~6_combout\,
	datac => \Equal7~4_combout\,
	datad => \Equal7~9_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X11_Y23_N0
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = D_SS(0) $ (VCC)
-- \Add8~1\ = CARRY(D_SS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X11_Y23_N2
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (D_SS(1) & (!\Add8~1\)) # (!D_SS(1) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!D_SS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X11_Y23_N6
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (D_SS(3) & (!\Add8~5\)) # (!D_SS(3) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!D_SS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X11_Y23_N8
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (D_SS(4) & (\Add8~7\ $ (GND))) # (!D_SS(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((D_SS(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X14_Y24_N16
\D_SS[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_SS[0]~0_combout\ = (\Equal6~10_combout\ & (\Equal7~10_combout\ & \Equal5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datac => \Equal7~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \D_SS[0]~0_combout\);

-- Location: FF_X11_Y23_N9
\D_SS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~8_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(4));

-- Location: LCCOMB_X11_Y23_N14
\Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (D_SS(7) & (!\Add8~13\)) # (!D_SS(7) & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!D_SS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(7),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: FF_X11_Y23_N15
\D_SS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~14_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(7));

-- Location: LCCOMB_X11_Y23_N16
\Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (D_SS(8) & (\Add8~15\ $ (GND))) # (!D_SS(8) & (!\Add8~15\ & VCC))
-- \Add8~17\ = CARRY((D_SS(8) & !\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(8),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: FF_X11_Y23_N17
\D_SS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~16_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(8));

-- Location: LCCOMB_X11_Y23_N18
\Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (D_SS(9) & (!\Add8~17\)) # (!D_SS(9) & ((\Add8~17\) # (GND)))
-- \Add8~19\ = CARRY((!\Add8~17\) # (!D_SS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(9),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: FF_X11_Y23_N19
\D_SS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~18_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(9));

-- Location: LCCOMB_X11_Y23_N20
\Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (D_SS(10) & (\Add8~19\ $ (GND))) # (!D_SS(10) & (!\Add8~19\ & VCC))
-- \Add8~21\ = CARRY((D_SS(10) & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(10),
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: FF_X11_Y23_N21
\D_SS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~20_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(10));

-- Location: LCCOMB_X11_Y23_N22
\Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (D_SS(11) & (!\Add8~21\)) # (!D_SS(11) & ((\Add8~21\) # (GND)))
-- \Add8~23\ = CARRY((!\Add8~21\) # (!D_SS(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(11),
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X11_Y23_N24
\Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (D_SS(12) & (\Add8~23\ $ (GND))) # (!D_SS(12) & (!\Add8~23\ & VCC))
-- \Add8~25\ = CARRY((D_SS(12) & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(12),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: FF_X11_Y23_N25
\D_SS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~24_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(12));

-- Location: LCCOMB_X11_Y23_N26
\Add8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (D_SS(13) & (!\Add8~25\)) # (!D_SS(13) & ((\Add8~25\) # (GND)))
-- \Add8~27\ = CARRY((!\Add8~25\) # (!D_SS(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(13),
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X11_Y23_N28
\Add8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (D_SS(14) & (\Add8~27\ $ (GND))) # (!D_SS(14) & (!\Add8~27\ & VCC))
-- \Add8~29\ = CARRY((D_SS(14) & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(14),
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: FF_X11_Y23_N29
\D_SS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~28_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(14));

-- Location: LCCOMB_X11_Y22_N0
\Add8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (D_SS(16) & (\Add8~31\ $ (GND))) # (!D_SS(16) & (!\Add8~31\ & VCC))
-- \Add8~33\ = CARRY((D_SS(16) & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(16),
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: FF_X11_Y22_N1
\D_SS[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~32_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(16));

-- Location: LCCOMB_X11_Y22_N2
\Add8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (D_SS(17) & (!\Add8~33\)) # (!D_SS(17) & ((\Add8~33\) # (GND)))
-- \Add8~35\ = CARRY((!\Add8~33\) # (!D_SS(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(17),
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: FF_X11_Y22_N3
\D_SS[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~34_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(17));

-- Location: LCCOMB_X11_Y22_N4
\Add8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (D_SS(18) & (\Add8~35\ $ (GND))) # (!D_SS(18) & (!\Add8~35\ & VCC))
-- \Add8~37\ = CARRY((D_SS(18) & !\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(18),
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: FF_X11_Y22_N5
\D_SS[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~36_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(18));

-- Location: LCCOMB_X11_Y22_N6
\Add8~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (D_SS(19) & (!\Add8~37\)) # (!D_SS(19) & ((\Add8~37\) # (GND)))
-- \Add8~39\ = CARRY((!\Add8~37\) # (!D_SS(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(19),
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X11_Y22_N8
\Add8~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (D_SS(20) & (\Add8~39\ $ (GND))) # (!D_SS(20) & (!\Add8~39\ & VCC))
-- \Add8~41\ = CARRY((D_SS(20) & !\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(20),
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: FF_X11_Y22_N9
\D_SS[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~40_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(20));

-- Location: LCCOMB_X11_Y22_N10
\Add8~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (D_SS(21) & (!\Add8~41\)) # (!D_SS(21) & ((\Add8~41\) # (GND)))
-- \Add8~43\ = CARRY((!\Add8~41\) # (!D_SS(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(21),
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X11_Y22_N12
\Add8~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (D_SS(22) & (\Add8~43\ $ (GND))) # (!D_SS(22) & (!\Add8~43\ & VCC))
-- \Add8~45\ = CARRY((D_SS(22) & !\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(22),
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X11_Y22_N14
\Add8~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (D_SS(23) & (!\Add8~45\)) # (!D_SS(23) & ((\Add8~45\) # (GND)))
-- \Add8~47\ = CARRY((!\Add8~45\) # (!D_SS(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(23),
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: FF_X11_Y22_N15
\D_SS[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~46_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(23));

-- Location: LCCOMB_X11_Y22_N16
\Add8~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (D_SS(24) & (\Add8~47\ $ (GND))) # (!D_SS(24) & (!\Add8~47\ & VCC))
-- \Add8~49\ = CARRY((D_SS(24) & !\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(24),
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: FF_X11_Y22_N17
\D_SS[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~48_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(24));

-- Location: LCCOMB_X11_Y22_N18
\Add8~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (D_SS(25) & (!\Add8~49\)) # (!D_SS(25) & ((\Add8~49\) # (GND)))
-- \Add8~51\ = CARRY((!\Add8~49\) # (!D_SS(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(25),
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: FF_X11_Y22_N19
\D_SS[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~50_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(25));

-- Location: LCCOMB_X11_Y22_N20
\Add8~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (D_SS(26) & (\Add8~51\ $ (GND))) # (!D_SS(26) & (!\Add8~51\ & VCC))
-- \Add8~53\ = CARRY((D_SS(26) & !\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS(26),
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: FF_X11_Y22_N21
\D_SS[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~52_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(26));

-- Location: FF_X11_Y22_N23
\D_SS[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~54_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(27));

-- Location: LCCOMB_X10_Y22_N8
\Equal8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~8_combout\ = (D_SS(26)) # ((D_SS(24)) # ((D_SS(27)) # (D_SS(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(26),
	datab => D_SS(24),
	datac => D_SS(27),
	datad => D_SS(25),
	combout => \Equal8~8_combout\);

-- Location: FF_X11_Y22_N11
\D_SS[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~42_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(21));

-- Location: FF_X11_Y22_N13
\D_SS[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~44_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(22));

-- Location: LCCOMB_X12_Y22_N26
\Equal8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = (D_SS(23)) # ((D_SS(20)) # ((D_SS(21)) # (D_SS(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(23),
	datab => D_SS(20),
	datac => D_SS(21),
	datad => D_SS(22),
	combout => \Equal8~6_combout\);

-- Location: FF_X11_Y22_N7
\D_SS[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~38_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(19));

-- Location: LCCOMB_X12_Y22_N0
\Equal8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = (D_SS(19)) # (D_SS(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_SS(19),
	datac => D_SS(18),
	combout => \Equal8~5_combout\);

-- Location: LCCOMB_X12_Y22_N24
\Equal8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~7_combout\ = (D_SS(17)) # ((D_SS(16)) # ((\Equal8~6_combout\) # (\Equal8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(17),
	datab => D_SS(16),
	datac => \Equal8~6_combout\,
	datad => \Equal8~5_combout\,
	combout => \Equal8~7_combout\);

-- Location: FF_X11_Y23_N27
\D_SS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~26_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(13));

-- Location: LCCOMB_X11_Y24_N24
\Equal8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = (D_SS(15)) # ((D_SS(12)) # ((D_SS(13)) # (D_SS(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(15),
	datab => D_SS(12),
	datac => D_SS(13),
	datad => D_SS(14),
	combout => \Equal8~3_combout\);

-- Location: FF_X11_Y23_N23
\D_SS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~22_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(11));

-- Location: LCCOMB_X10_Y23_N22
\Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (D_SS(10)) # ((D_SS(9)) # ((D_SS(11)) # (D_SS(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(10),
	datab => D_SS(9),
	datac => D_SS(11),
	datad => D_SS(8),
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X14_Y24_N28
\D_SS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_SS~1_combout\ = (\Add8~2_combout\ & \Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~2_combout\,
	datad => \Equal8~10_combout\,
	combout => \D_SS~1_combout\);

-- Location: FF_X14_Y24_N29
\D_SS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_SS~1_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(1));

-- Location: LCCOMB_X10_Y24_N8
\D_SS[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_SS[0]~feeder_combout\ = \Add8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add8~0_combout\,
	combout => \D_SS[0]~feeder_combout\);

-- Location: FF_X10_Y24_N9
\D_SS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_SS[0]~feeder_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(0));

-- Location: FF_X11_Y23_N7
\D_SS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add8~6_combout\,
	ena => \D_SS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS(3));

-- Location: LCCOMB_X14_Y24_N20
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ((D_SS(1)) # ((D_SS(3)) # (!D_SS(0)))) # (!D_SS(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS(2),
	datab => D_SS(1),
	datac => D_SS(0),
	datad => D_SS(3),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X11_Y24_N18
\Equal8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (\Equal8~1_combout\) # ((\Equal8~3_combout\) # ((\Equal8~2_combout\) # (\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal8~3_combout\,
	datac => \Equal8~2_combout\,
	datad => \Equal8~0_combout\,
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X11_Y24_N20
\Equal8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~10_combout\ = (\Equal8~9_combout\) # ((\Equal8~8_combout\) # ((\Equal8~7_combout\) # (\Equal8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~9_combout\,
	datab => \Equal8~8_combout\,
	datac => \Equal8~7_combout\,
	datad => \Equal8~4_combout\,
	combout => \Equal8~10_combout\);

-- Location: LCCOMB_X11_Y24_N16
\U_HH[30]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[30]~49_combout\ = (\Equal7~10_combout\ & !\Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Equal8~10_combout\,
	combout => \U_HH[30]~49_combout\);

-- Location: LCCOMB_X16_Y24_N18
\U_HH[30]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[30]~50_combout\ = (\U_SS[29]~0_combout\ & ((\U_HH[30]~49_combout\) # ((!\KEY[0]~input_o\ & \EA.S2~q\)))) # (!\U_SS[29]~0_combout\ & (!\KEY[0]~input_o\ & (\EA.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SS[29]~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \EA.S2~q\,
	datad => \U_HH[30]~49_combout\,
	combout => \U_HH[30]~50_combout\);

-- Location: FF_X16_Y21_N1
\U_MM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~0_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(0));

-- Location: LCCOMB_X16_Y21_N2
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (U_MM(1) & (!\Add9~1\)) # (!U_MM(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!U_MM(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X16_Y21_N4
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (U_MM(2) & (\Add9~3\ $ (GND))) # (!U_MM(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((U_MM(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: FF_X16_Y21_N5
\U_MM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~4_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(2));

-- Location: LCCOMB_X16_Y21_N6
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (U_MM(3) & (!\Add9~5\)) # (!U_MM(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!U_MM(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X16_Y21_N8
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (U_MM(4) & (\Add9~7\ $ (GND))) # (!U_MM(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((U_MM(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: FF_X16_Y21_N9
\U_MM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~8_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(4));

-- Location: LCCOMB_X16_Y21_N10
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (U_MM(5) & (!\Add9~9\)) # (!U_MM(5) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!U_MM(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X16_Y21_N14
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (U_MM(7) & (!\Add9~13\)) # (!U_MM(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!U_MM(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: FF_X16_Y21_N15
\U_MM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~14_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(7));

-- Location: LCCOMB_X16_Y21_N16
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (U_MM(8) & (\Add9~15\ $ (GND))) # (!U_MM(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((U_MM(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: FF_X16_Y21_N17
\U_MM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~16_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(8));

-- Location: LCCOMB_X16_Y21_N18
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (U_MM(9) & (!\Add9~17\)) # (!U_MM(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!U_MM(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: FF_X16_Y21_N19
\U_MM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~18_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(9));

-- Location: LCCOMB_X16_Y21_N20
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (U_MM(10) & (\Add9~19\ $ (GND))) # (!U_MM(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((U_MM(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: FF_X16_Y21_N21
\U_MM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~20_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(10));

-- Location: LCCOMB_X16_Y21_N24
\Add9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (U_MM(12) & (\Add9~23\ $ (GND))) # (!U_MM(12) & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((U_MM(12) & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: FF_X16_Y21_N25
\U_MM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~24_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(12));

-- Location: LCCOMB_X16_Y21_N26
\Add9~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (U_MM(13) & (!\Add9~25\)) # (!U_MM(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!U_MM(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X16_Y21_N28
\Add9~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (U_MM(14) & (\Add9~27\ $ (GND))) # (!U_MM(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((U_MM(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: FF_X16_Y21_N29
\U_MM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~28_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(14));

-- Location: LCCOMB_X16_Y21_N30
\Add9~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (U_MM(15) & (!\Add9~29\)) # (!U_MM(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!U_MM(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X16_Y20_N0
\Add9~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (U_MM(16) & (\Add9~31\ $ (GND))) # (!U_MM(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((U_MM(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: FF_X16_Y20_N1
\U_MM[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~32_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(16));

-- Location: LCCOMB_X16_Y20_N2
\Add9~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (U_MM(17) & (!\Add9~33\)) # (!U_MM(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!U_MM(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: FF_X16_Y20_N3
\U_MM[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~34_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(17));

-- Location: LCCOMB_X16_Y20_N4
\Add9~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (U_MM(18) & (\Add9~35\ $ (GND))) # (!U_MM(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((U_MM(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: FF_X16_Y20_N5
\U_MM[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~36_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(18));

-- Location: LCCOMB_X16_Y20_N6
\Add9~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (U_MM(19) & (!\Add9~37\)) # (!U_MM(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!U_MM(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X16_Y20_N8
\Add9~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (U_MM(20) & (\Add9~39\ $ (GND))) # (!U_MM(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((U_MM(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: FF_X16_Y20_N9
\U_MM[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~40_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(20));

-- Location: LCCOMB_X16_Y20_N10
\Add9~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (U_MM(21) & (!\Add9~41\)) # (!U_MM(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!U_MM(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X16_Y20_N12
\Add9~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (U_MM(22) & (\Add9~43\ $ (GND))) # (!U_MM(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((U_MM(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X16_Y20_N14
\Add9~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (U_MM(23) & (!\Add9~45\)) # (!U_MM(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!U_MM(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: FF_X16_Y20_N15
\U_MM[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~46_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(23));

-- Location: LCCOMB_X16_Y20_N16
\Add9~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (U_MM(24) & (\Add9~47\ $ (GND))) # (!U_MM(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((U_MM(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: FF_X16_Y20_N17
\U_MM[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~48_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(24));

-- Location: LCCOMB_X16_Y20_N18
\Add9~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (U_MM(25) & (!\Add9~49\)) # (!U_MM(25) & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!U_MM(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_MM(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: FF_X16_Y20_N19
\U_MM[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~50_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(25));

-- Location: FF_X16_Y20_N21
\U_MM[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~52_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(26));

-- Location: LCCOMB_X17_Y20_N2
\Equal9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~7_combout\ = (U_MM(27)) # ((U_MM(26)) # ((U_MM(24)) # (U_MM(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(27),
	datab => U_MM(26),
	datac => U_MM(24),
	datad => U_MM(25),
	combout => \Equal9~7_combout\);

-- Location: FF_X16_Y20_N11
\U_MM[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~42_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(21));

-- Location: LCCOMB_X17_Y20_N14
\Equal9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = (U_MM(22)) # ((U_MM(23)) # ((U_MM(21)) # (U_MM(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(22),
	datab => U_MM(23),
	datac => U_MM(21),
	datad => U_MM(20),
	combout => \Equal9~5_combout\);

-- Location: FF_X16_Y20_N7
\U_MM[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~38_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(19));

-- Location: LCCOMB_X17_Y20_N28
\Equal9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (U_MM(19)) # (U_MM(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U_MM(19),
	datad => U_MM(18),
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X17_Y20_N8
\Equal9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (U_MM(16)) # ((U_MM(17)) # ((\Equal9~5_combout\) # (\Equal9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(16),
	datab => U_MM(17),
	datac => \Equal9~5_combout\,
	datad => \Equal9~4_combout\,
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X17_Y20_N0
\U_MM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MM~0_combout\ = (\Equal9~9_combout\ & \Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~9_combout\,
	datad => \Add9~6_combout\,
	combout => \U_MM~0_combout\);

-- Location: FF_X17_Y20_N1
\U_MM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_MM~0_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(3));

-- Location: LCCOMB_X16_Y24_N28
\U_MM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MM~1_combout\ = (\Add9~2_combout\ & \Equal9~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~2_combout\,
	datad => \Equal9~9_combout\,
	combout => \U_MM~1_combout\);

-- Location: FF_X16_Y24_N29
\U_MM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_MM~1_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(1));

-- Location: LCCOMB_X17_Y20_N4
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (U_MM(2)) # (((U_MM(1)) # (!U_MM(0))) # (!U_MM(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(2),
	datab => U_MM(3),
	datac => U_MM(0),
	datad => U_MM(1),
	combout => \Equal9~0_combout\);

-- Location: FF_X16_Y21_N31
\U_MM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~30_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(15));

-- Location: LCCOMB_X17_Y21_N12
\Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (U_MM(13)) # ((U_MM(12)) # ((U_MM(14)) # (U_MM(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(13),
	datab => U_MM(12),
	datac => U_MM(14),
	datad => U_MM(15),
	combout => \Equal9~2_combout\);

-- Location: FF_X16_Y21_N11
\U_MM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~10_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(5));

-- Location: LCCOMB_X17_Y21_N20
\D4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~1_combout\ = (U_MM(6)) # ((U_MM(7)) # ((U_MM(5)) # (U_MM(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(6),
	datab => U_MM(7),
	datac => U_MM(5),
	datad => U_MM(4),
	combout => \D4|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y20_N6
\Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Equal9~1_combout\) # ((\Equal9~0_combout\) # ((\Equal9~2_combout\) # (\D4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal9~2_combout\,
	datad => \D4|Equal0~1_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X17_Y20_N22
\Equal9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~9_combout\ = (\Equal9~8_combout\) # ((\Equal9~7_combout\) # ((\Equal9~6_combout\) # (\Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~8_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~3_combout\,
	combout => \Equal9~9_combout\);

-- Location: LCCOMB_X19_Y24_N0
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = D_MM(0) $ (VCC)
-- \Add10~1\ = CARRY(D_MM(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_MM(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X16_Y24_N6
\CLK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK~1_combout\ = (!\KEY[0]~input_o\ & \EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \EA.S2~q\,
	combout => \CLK~1_combout\);

-- Location: LCCOMB_X16_Y24_N30
\D_MM[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_MM[11]~0_combout\ = (!\Equal9~9_combout\ & ((\CLK~1_combout\) # ((!\Equal8~10_combout\ & \D_SS[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~10_combout\,
	datab => \Equal9~9_combout\,
	datac => \D_SS[0]~0_combout\,
	datad => \CLK~1_combout\,
	combout => \D_MM[11]~0_combout\);

-- Location: FF_X19_Y24_N1
\D_MM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~0_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(0));

-- Location: LCCOMB_X19_Y24_N2
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (D_MM(1) & (!\Add10~1\)) # (!D_MM(1) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!D_MM(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X20_Y24_N12
\D_MM~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_MM~2_combout\ = (\Add10~2_combout\ & \Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~2_combout\,
	datad => \Equal10~10_combout\,
	combout => \D_MM~2_combout\);

-- Location: FF_X20_Y24_N13
\D_MM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_MM~2_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(1));

-- Location: LCCOMB_X19_Y24_N4
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (D_MM(2) & (\Add10~3\ $ (GND))) # (!D_MM(2) & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((D_MM(2) & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X20_Y24_N10
\D_MM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_MM~1_combout\ = (\Add10~4_combout\ & \Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~4_combout\,
	datad => \Equal10~10_combout\,
	combout => \D_MM~1_combout\);

-- Location: FF_X20_Y24_N11
\D_MM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_MM~1_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(2));

-- Location: LCCOMB_X19_Y24_N6
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (D_MM(3) & (!\Add10~5\)) # (!D_MM(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!D_MM(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X19_Y24_N8
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (D_MM(4) & (\Add10~7\ $ (GND))) # (!D_MM(4) & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((D_MM(4) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: FF_X19_Y24_N9
\D_MM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~8_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(4));

-- Location: LCCOMB_X19_Y24_N12
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (D_MM(6) & (\Add10~11\ $ (GND))) # (!D_MM(6) & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((D_MM(6) & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(6),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X19_Y24_N14
\Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (D_MM(7) & (!\Add10~13\)) # (!D_MM(7) & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!D_MM(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(7),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: FF_X19_Y24_N15
\D_MM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~14_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(7));

-- Location: LCCOMB_X19_Y24_N16
\Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (D_MM(8) & (\Add10~15\ $ (GND))) # (!D_MM(8) & (!\Add10~15\ & VCC))
-- \Add10~17\ = CARRY((D_MM(8) & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(8),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: FF_X19_Y24_N17
\D_MM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~16_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(8));

-- Location: LCCOMB_X19_Y24_N18
\Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (D_MM(9) & (!\Add10~17\)) # (!D_MM(9) & ((\Add10~17\) # (GND)))
-- \Add10~19\ = CARRY((!\Add10~17\) # (!D_MM(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(9),
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: FF_X19_Y24_N19
\D_MM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~18_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(9));

-- Location: LCCOMB_X19_Y24_N20
\Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (D_MM(10) & (\Add10~19\ $ (GND))) # (!D_MM(10) & (!\Add10~19\ & VCC))
-- \Add10~21\ = CARRY((D_MM(10) & !\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(10),
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: FF_X19_Y24_N21
\D_MM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~20_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(10));

-- Location: LCCOMB_X19_Y24_N22
\Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (D_MM(11) & (!\Add10~21\)) # (!D_MM(11) & ((\Add10~21\) # (GND)))
-- \Add10~23\ = CARRY((!\Add10~21\) # (!D_MM(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(11),
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X19_Y24_N24
\Add10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = (D_MM(12) & (\Add10~23\ $ (GND))) # (!D_MM(12) & (!\Add10~23\ & VCC))
-- \Add10~25\ = CARRY((D_MM(12) & !\Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(12),
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: FF_X19_Y24_N25
\D_MM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~24_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(12));

-- Location: LCCOMB_X19_Y24_N28
\Add10~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~28_combout\ = (D_MM(14) & (\Add10~27\ $ (GND))) # (!D_MM(14) & (!\Add10~27\ & VCC))
-- \Add10~29\ = CARRY((D_MM(14) & !\Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(14),
	datad => VCC,
	cin => \Add10~27\,
	combout => \Add10~28_combout\,
	cout => \Add10~29\);

-- Location: FF_X19_Y24_N29
\D_MM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~28_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(14));

-- Location: LCCOMB_X19_Y24_N30
\Add10~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (D_MM(15) & (!\Add10~29\)) # (!D_MM(15) & ((\Add10~29\) # (GND)))
-- \Add10~31\ = CARRY((!\Add10~29\) # (!D_MM(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(15),
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X19_Y23_N0
\Add10~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = (D_MM(16) & (\Add10~31\ $ (GND))) # (!D_MM(16) & (!\Add10~31\ & VCC))
-- \Add10~33\ = CARRY((D_MM(16) & !\Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(16),
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: FF_X19_Y23_N1
\D_MM[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~32_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(16));

-- Location: LCCOMB_X19_Y23_N2
\Add10~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~34_combout\ = (D_MM(17) & (!\Add10~33\)) # (!D_MM(17) & ((\Add10~33\) # (GND)))
-- \Add10~35\ = CARRY((!\Add10~33\) # (!D_MM(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(17),
	datad => VCC,
	cin => \Add10~33\,
	combout => \Add10~34_combout\,
	cout => \Add10~35\);

-- Location: FF_X19_Y23_N3
\D_MM[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~34_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(17));

-- Location: LCCOMB_X19_Y23_N4
\Add10~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~36_combout\ = (D_MM(18) & (\Add10~35\ $ (GND))) # (!D_MM(18) & (!\Add10~35\ & VCC))
-- \Add10~37\ = CARRY((D_MM(18) & !\Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(18),
	datad => VCC,
	cin => \Add10~35\,
	combout => \Add10~36_combout\,
	cout => \Add10~37\);

-- Location: FF_X19_Y23_N5
\D_MM[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~36_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(18));

-- Location: LCCOMB_X19_Y23_N6
\Add10~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~38_combout\ = (D_MM(19) & (!\Add10~37\)) # (!D_MM(19) & ((\Add10~37\) # (GND)))
-- \Add10~39\ = CARRY((!\Add10~37\) # (!D_MM(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(19),
	datad => VCC,
	cin => \Add10~37\,
	combout => \Add10~38_combout\,
	cout => \Add10~39\);

-- Location: LCCOMB_X19_Y23_N8
\Add10~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~40_combout\ = (D_MM(20) & (\Add10~39\ $ (GND))) # (!D_MM(20) & (!\Add10~39\ & VCC))
-- \Add10~41\ = CARRY((D_MM(20) & !\Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(20),
	datad => VCC,
	cin => \Add10~39\,
	combout => \Add10~40_combout\,
	cout => \Add10~41\);

-- Location: FF_X19_Y23_N9
\D_MM[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~40_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(20));

-- Location: LCCOMB_X19_Y23_N10
\Add10~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~42_combout\ = (D_MM(21) & (!\Add10~41\)) # (!D_MM(21) & ((\Add10~41\) # (GND)))
-- \Add10~43\ = CARRY((!\Add10~41\) # (!D_MM(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(21),
	datad => VCC,
	cin => \Add10~41\,
	combout => \Add10~42_combout\,
	cout => \Add10~43\);

-- Location: LCCOMB_X19_Y23_N12
\Add10~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~44_combout\ = (D_MM(22) & (\Add10~43\ $ (GND))) # (!D_MM(22) & (!\Add10~43\ & VCC))
-- \Add10~45\ = CARRY((D_MM(22) & !\Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(22),
	datad => VCC,
	cin => \Add10~43\,
	combout => \Add10~44_combout\,
	cout => \Add10~45\);

-- Location: LCCOMB_X19_Y23_N14
\Add10~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~46_combout\ = (D_MM(23) & (!\Add10~45\)) # (!D_MM(23) & ((\Add10~45\) # (GND)))
-- \Add10~47\ = CARRY((!\Add10~45\) # (!D_MM(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(23),
	datad => VCC,
	cin => \Add10~45\,
	combout => \Add10~46_combout\,
	cout => \Add10~47\);

-- Location: FF_X19_Y23_N15
\D_MM[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~46_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(23));

-- Location: LCCOMB_X19_Y23_N16
\Add10~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~48_combout\ = (D_MM(24) & (\Add10~47\ $ (GND))) # (!D_MM(24) & (!\Add10~47\ & VCC))
-- \Add10~49\ = CARRY((D_MM(24) & !\Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(24),
	datad => VCC,
	cin => \Add10~47\,
	combout => \Add10~48_combout\,
	cout => \Add10~49\);

-- Location: FF_X19_Y23_N17
\D_MM[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~48_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(24));

-- Location: LCCOMB_X19_Y23_N18
\Add10~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~50_combout\ = (D_MM(25) & (!\Add10~49\)) # (!D_MM(25) & ((\Add10~49\) # (GND)))
-- \Add10~51\ = CARRY((!\Add10~49\) # (!D_MM(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(25),
	datad => VCC,
	cin => \Add10~49\,
	combout => \Add10~50_combout\,
	cout => \Add10~51\);

-- Location: FF_X19_Y23_N19
\D_MM[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~50_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(25));

-- Location: LCCOMB_X19_Y23_N20
\Add10~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~52_combout\ = (D_MM(26) & (\Add10~51\ $ (GND))) # (!D_MM(26) & (!\Add10~51\ & VCC))
-- \Add10~53\ = CARRY((D_MM(26) & !\Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(26),
	datad => VCC,
	cin => \Add10~51\,
	combout => \Add10~52_combout\,
	cout => \Add10~53\);

-- Location: FF_X19_Y23_N21
\D_MM[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~52_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(26));

-- Location: LCCOMB_X19_Y23_N22
\Add10~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~54_combout\ = (D_MM(27) & (!\Add10~53\)) # (!D_MM(27) & ((\Add10~53\) # (GND)))
-- \Add10~55\ = CARRY((!\Add10~53\) # (!D_MM(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(27),
	datad => VCC,
	cin => \Add10~53\,
	combout => \Add10~54_combout\,
	cout => \Add10~55\);

-- Location: FF_X19_Y23_N23
\D_MM[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~54_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(27));

-- Location: LCCOMB_X21_Y23_N0
\Equal10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (D_MM(24)) # ((D_MM(27)) # ((D_MM(26)) # (D_MM(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(24),
	datab => D_MM(27),
	datac => D_MM(26),
	datad => D_MM(25),
	combout => \Equal10~8_combout\);

-- Location: FF_X19_Y24_N23
\D_MM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~22_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(11));

-- Location: LCCOMB_X21_Y24_N2
\Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (D_MM(8)) # ((D_MM(9)) # ((D_MM(10)) # (D_MM(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(8),
	datab => D_MM(9),
	datac => D_MM(10),
	datad => D_MM(11),
	combout => \Equal10~2_combout\);

-- Location: FF_X19_Y24_N7
\D_MM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~6_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(3));

-- Location: LCCOMB_X20_Y24_N4
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ((D_MM(3)) # ((D_MM(1)) # (!D_MM(0)))) # (!D_MM(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(2),
	datab => D_MM(3),
	datac => D_MM(0),
	datad => D_MM(1),
	combout => \Equal10~0_combout\);

-- Location: FF_X19_Y24_N31
\D_MM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~30_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(15));

-- Location: LCCOMB_X20_Y24_N8
\Equal10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (D_MM(13)) # ((D_MM(14)) # ((D_MM(15)) # (D_MM(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(13),
	datab => D_MM(14),
	datac => D_MM(15),
	datad => D_MM(12),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X21_Y24_N8
\Equal10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~1_combout\) # ((\Equal10~2_combout\) # ((\Equal10~0_combout\) # (\Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal10~2_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~3_combout\,
	combout => \Equal10~4_combout\);

-- Location: FF_X19_Y23_N13
\D_MM[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~44_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(22));

-- Location: FF_X19_Y23_N11
\D_MM[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~42_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(21));

-- Location: LCCOMB_X21_Y23_N10
\Equal10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (D_MM(21)) # (D_MM(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_MM(21),
	datad => D_MM(20),
	combout => \Equal10~6_combout\);

-- Location: FF_X19_Y23_N7
\D_MM[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~38_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(19));

-- Location: LCCOMB_X20_Y23_N0
\Equal10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (D_MM(16)) # ((D_MM(19)) # ((D_MM(18)) # (D_MM(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(16),
	datab => D_MM(19),
	datac => D_MM(18),
	datad => D_MM(17),
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X21_Y24_N18
\Equal10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (D_MM(23)) # ((D_MM(22)) # ((\Equal10~6_combout\) # (\Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(23),
	datab => D_MM(22),
	datac => \Equal10~6_combout\,
	datad => \Equal10~5_combout\,
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X21_Y24_N20
\Equal10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~10_combout\ = (\Equal10~9_combout\) # ((\Equal10~8_combout\) # ((\Equal10~4_combout\) # (\Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~9_combout\,
	datab => \Equal10~8_combout\,
	datac => \Equal10~4_combout\,
	datad => \Equal10~7_combout\,
	combout => \Equal10~10_combout\);

-- Location: LCCOMB_X16_Y24_N8
\D_HH[15]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~16_combout\ = (\KEY[1]~input_o\ & ((\Equal9~9_combout\) # ((\Equal10~10_combout\)))) # (!\KEY[1]~input_o\ & (!\EA.S2~q\ & ((\Equal9~9_combout\) # (\Equal10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Equal9~9_combout\,
	datac => \Equal10~10_combout\,
	datad => \EA.S2~q\,
	combout => \D_HH[15]~16_combout\);

-- Location: LCCOMB_X16_Y24_N12
\D_HH[15]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~22_combout\ = (((\Equal8~10_combout\) # (!\Equal5~10_combout\)) # (!\Equal7~10_combout\)) # (!\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datab => \Equal7~10_combout\,
	datac => \Equal5~10_combout\,
	datad => \Equal8~10_combout\,
	combout => \D_HH[15]~22_combout\);

-- Location: LCCOMB_X16_Y24_N0
\D_HH[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~17_combout\ = (\D_HH[15]~14_combout\ & (!\D_HH[15]~16_combout\ & ((!\D_HH[15]~22_combout\) # (!\D_HH[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~14_combout\,
	datab => \D_HH[15]~15_combout\,
	datac => \D_HH[15]~16_combout\,
	datad => \D_HH[15]~22_combout\,
	combout => \D_HH[15]~17_combout\);

-- Location: FF_X15_Y25_N5
\D_HH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~4_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(2));

-- Location: LCCOMB_X15_Y25_N6
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (D_HH(3) & (!\Add12~5\)) # (!D_HH(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!D_HH(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X15_Y25_N8
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (D_HH(4) & (\Add12~7\ $ (GND))) # (!D_HH(4) & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((D_HH(4) & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: FF_X15_Y25_N9
\D_HH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~8_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(4));

-- Location: LCCOMB_X15_Y25_N12
\Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (D_HH(6) & (\Add12~11\ $ (GND))) # (!D_HH(6) & (!\Add12~11\ & VCC))
-- \Add12~13\ = CARRY((D_HH(6) & !\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X15_Y25_N14
\Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (D_HH(7) & (!\Add12~13\)) # (!D_HH(7) & ((\Add12~13\) # (GND)))
-- \Add12~15\ = CARRY((!\Add12~13\) # (!D_HH(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(7),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: FF_X15_Y25_N15
\D_HH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~14_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(7));

-- Location: LCCOMB_X15_Y25_N16
\Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (D_HH(8) & (\Add12~15\ $ (GND))) # (!D_HH(8) & (!\Add12~15\ & VCC))
-- \Add12~17\ = CARRY((D_HH(8) & !\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: FF_X15_Y25_N17
\D_HH[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~16_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(8));

-- Location: LCCOMB_X15_Y25_N18
\Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (D_HH(9) & (!\Add12~17\)) # (!D_HH(9) & ((\Add12~17\) # (GND)))
-- \Add12~19\ = CARRY((!\Add12~17\) # (!D_HH(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(9),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: FF_X15_Y25_N19
\D_HH[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~18_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(9));

-- Location: LCCOMB_X15_Y25_N20
\Add12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = (D_HH(10) & (\Add12~19\ $ (GND))) # (!D_HH(10) & (!\Add12~19\ & VCC))
-- \Add12~21\ = CARRY((D_HH(10) & !\Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(10),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: FF_X15_Y25_N21
\D_HH[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~20_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(10));

-- Location: LCCOMB_X15_Y25_N22
\Add12~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (D_HH(11) & (!\Add12~21\)) # (!D_HH(11) & ((\Add12~21\) # (GND)))
-- \Add12~23\ = CARRY((!\Add12~21\) # (!D_HH(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~22_combout\,
	cout => \Add12~23\);

-- Location: LCCOMB_X15_Y25_N24
\Add12~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (D_HH(12) & (\Add12~23\ $ (GND))) # (!D_HH(12) & (!\Add12~23\ & VCC))
-- \Add12~25\ = CARRY((D_HH(12) & !\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: FF_X15_Y25_N25
\D_HH[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~24_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(12));

-- Location: LCCOMB_X15_Y25_N26
\Add12~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (D_HH(13) & (!\Add12~25\)) # (!D_HH(13) & ((\Add12~25\) # (GND)))
-- \Add12~27\ = CARRY((!\Add12~25\) # (!D_HH(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(13),
	datad => VCC,
	cin => \Add12~25\,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X15_Y25_N28
\Add12~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (D_HH(14) & (\Add12~27\ $ (GND))) # (!D_HH(14) & (!\Add12~27\ & VCC))
-- \Add12~29\ = CARRY((D_HH(14) & !\Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(14),
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: FF_X15_Y25_N29
\D_HH[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~28_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(14));

-- Location: LCCOMB_X16_Y26_N20
\D_HH[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[1]~21_combout\ = (\D_HH[15]~17_combout\ & (\Add12~2_combout\ & ((\D_HH[0]~19_combout\)))) # (!\D_HH[15]~17_combout\ & ((D_HH(1)) # ((\Add12~2_combout\ & \D_HH[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~17_combout\,
	datab => \Add12~2_combout\,
	datac => D_HH(1),
	datad => \D_HH[0]~19_combout\,
	combout => \D_HH[1]~21_combout\);

-- Location: FF_X16_Y26_N21
\D_HH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_HH[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(1));

-- Location: LCCOMB_X15_Y25_N30
\Add12~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (D_HH(15) & (!\Add12~29\)) # (!D_HH(15) & ((\Add12~29\) # (GND)))
-- \Add12~31\ = CARRY((!\Add12~29\) # (!D_HH(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(15),
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~30_combout\,
	cout => \Add12~31\);

-- Location: FF_X15_Y25_N31
\D_HH[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~30_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(15));

-- Location: LCCOMB_X16_Y25_N28
\Equal11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~4_combout\ = (!D_HH(0) & (!D_HH(14) & (D_HH(1) & !D_HH(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(0),
	datab => D_HH(14),
	datac => D_HH(1),
	datad => D_HH(15),
	combout => \Equal11~4_combout\);

-- Location: LCCOMB_X15_Y24_N0
\Add12~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~32_combout\ = (D_HH(16) & (\Add12~31\ $ (GND))) # (!D_HH(16) & (!\Add12~31\ & VCC))
-- \Add12~33\ = CARRY((D_HH(16) & !\Add12~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(16),
	datad => VCC,
	cin => \Add12~31\,
	combout => \Add12~32_combout\,
	cout => \Add12~33\);

-- Location: FF_X15_Y24_N1
\D_HH[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~32_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(16));

-- Location: LCCOMB_X15_Y24_N2
\Add12~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~34_combout\ = (D_HH(17) & (!\Add12~33\)) # (!D_HH(17) & ((\Add12~33\) # (GND)))
-- \Add12~35\ = CARRY((!\Add12~33\) # (!D_HH(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(17),
	datad => VCC,
	cin => \Add12~33\,
	combout => \Add12~34_combout\,
	cout => \Add12~35\);

-- Location: FF_X15_Y24_N3
\D_HH[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~34_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(17));

-- Location: LCCOMB_X15_Y24_N4
\Add12~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (D_HH(18) & (\Add12~35\ $ (GND))) # (!D_HH(18) & (!\Add12~35\ & VCC))
-- \Add12~37\ = CARRY((D_HH(18) & !\Add12~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(18),
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~36_combout\,
	cout => \Add12~37\);

-- Location: FF_X15_Y24_N5
\D_HH[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~36_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(18));

-- Location: LCCOMB_X15_Y24_N6
\Add12~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~38_combout\ = (D_HH(19) & (!\Add12~37\)) # (!D_HH(19) & ((\Add12~37\) # (GND)))
-- \Add12~39\ = CARRY((!\Add12~37\) # (!D_HH(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(19),
	datad => VCC,
	cin => \Add12~37\,
	combout => \Add12~38_combout\,
	cout => \Add12~39\);

-- Location: LCCOMB_X15_Y24_N8
\Add12~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (D_HH(20) & (\Add12~39\ $ (GND))) # (!D_HH(20) & (!\Add12~39\ & VCC))
-- \Add12~41\ = CARRY((D_HH(20) & !\Add12~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(20),
	datad => VCC,
	cin => \Add12~39\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: FF_X15_Y24_N9
\D_HH[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~40_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(20));

-- Location: LCCOMB_X15_Y24_N10
\Add12~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (D_HH(21) & (!\Add12~41\)) # (!D_HH(21) & ((\Add12~41\) # (GND)))
-- \Add12~43\ = CARRY((!\Add12~41\) # (!D_HH(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(21),
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~42_combout\,
	cout => \Add12~43\);

-- Location: FF_X15_Y24_N11
\D_HH[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~42_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(21));

-- Location: LCCOMB_X15_Y24_N12
\Add12~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~44_combout\ = (D_HH(22) & (\Add12~43\ $ (GND))) # (!D_HH(22) & (!\Add12~43\ & VCC))
-- \Add12~45\ = CARRY((D_HH(22) & !\Add12~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(22),
	datad => VCC,
	cin => \Add12~43\,
	combout => \Add12~44_combout\,
	cout => \Add12~45\);

-- Location: LCCOMB_X15_Y24_N14
\Add12~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (D_HH(23) & (!\Add12~45\)) # (!D_HH(23) & ((\Add12~45\) # (GND)))
-- \Add12~47\ = CARRY((!\Add12~45\) # (!D_HH(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(23),
	datad => VCC,
	cin => \Add12~45\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: FF_X15_Y24_N15
\D_HH[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~46_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(23));

-- Location: FF_X15_Y24_N13
\D_HH[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~44_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(22));

-- Location: LCCOMB_X16_Y25_N24
\Equal11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~6_combout\ = (!D_HH(20) & (!D_HH(21) & (!D_HH(23) & !D_HH(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(20),
	datab => D_HH(21),
	datac => D_HH(23),
	datad => D_HH(22),
	combout => \Equal11~6_combout\);

-- Location: LCCOMB_X15_Y24_N16
\Add12~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (D_HH(24) & (\Add12~47\ $ (GND))) # (!D_HH(24) & (!\Add12~47\ & VCC))
-- \Add12~49\ = CARRY((D_HH(24) & !\Add12~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(24),
	datad => VCC,
	cin => \Add12~47\,
	combout => \Add12~48_combout\,
	cout => \Add12~49\);

-- Location: FF_X15_Y24_N17
\D_HH[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~48_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(24));

-- Location: LCCOMB_X15_Y24_N18
\Add12~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~50_combout\ = (D_HH(25) & (!\Add12~49\)) # (!D_HH(25) & ((\Add12~49\) # (GND)))
-- \Add12~51\ = CARRY((!\Add12~49\) # (!D_HH(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(25),
	datad => VCC,
	cin => \Add12~49\,
	combout => \Add12~50_combout\,
	cout => \Add12~51\);

-- Location: FF_X15_Y24_N19
\D_HH[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~50_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(25));

-- Location: LCCOMB_X15_Y24_N20
\Add12~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~52_combout\ = (D_HH(26) & (\Add12~51\ $ (GND))) # (!D_HH(26) & (!\Add12~51\ & VCC))
-- \Add12~53\ = CARRY((D_HH(26) & !\Add12~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(26),
	datad => VCC,
	cin => \Add12~51\,
	combout => \Add12~52_combout\,
	cout => \Add12~53\);

-- Location: FF_X15_Y24_N21
\D_HH[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~52_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(26));

-- Location: LCCOMB_X15_Y24_N24
\Add12~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~56_combout\ = (D_HH(28) & (\Add12~55\ $ (GND))) # (!D_HH(28) & (!\Add12~55\ & VCC))
-- \Add12~57\ = CARRY((D_HH(28) & !\Add12~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(28),
	datad => VCC,
	cin => \Add12~55\,
	combout => \Add12~56_combout\,
	cout => \Add12~57\);

-- Location: FF_X15_Y24_N25
\D_HH[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~56_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(28));

-- Location: LCCOMB_X15_Y24_N26
\Add12~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~58_combout\ = (D_HH(29) & (!\Add12~57\)) # (!D_HH(29) & ((\Add12~57\) # (GND)))
-- \Add12~59\ = CARRY((!\Add12~57\) # (!D_HH(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(29),
	datad => VCC,
	cin => \Add12~57\,
	combout => \Add12~58_combout\,
	cout => \Add12~59\);

-- Location: LCCOMB_X15_Y24_N28
\Add12~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~60_combout\ = (D_HH(30) & (\Add12~59\ $ (GND))) # (!D_HH(30) & (!\Add12~59\ & VCC))
-- \Add12~61\ = CARRY((D_HH(30) & !\Add12~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_HH(30),
	datad => VCC,
	cin => \Add12~59\,
	combout => \Add12~60_combout\,
	cout => \Add12~61\);

-- Location: FF_X15_Y24_N29
\D_HH[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~60_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(30));

-- Location: FF_X15_Y24_N27
\D_HH[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~58_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(29));

-- Location: LCCOMB_X16_Y25_N4
\Equal11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~8_combout\ = (!D_HH(31) & (!D_HH(28) & (!D_HH(30) & !D_HH(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(31),
	datab => D_HH(28),
	datac => D_HH(30),
	datad => D_HH(29),
	combout => \Equal11~8_combout\);

-- Location: FF_X15_Y24_N7
\D_HH[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~38_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(19));

-- Location: LCCOMB_X16_Y25_N10
\Equal11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~5_combout\ = (!D_HH(16) & (!D_HH(17) & (!D_HH(18) & !D_HH(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(16),
	datab => D_HH(17),
	datac => D_HH(18),
	datad => D_HH(19),
	combout => \Equal11~5_combout\);

-- Location: LCCOMB_X16_Y25_N22
\Equal11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~9_combout\ = (\Equal11~7_combout\ & (\Equal11~6_combout\ & (\Equal11~8_combout\ & \Equal11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~7_combout\,
	datab => \Equal11~6_combout\,
	datac => \Equal11~8_combout\,
	datad => \Equal11~5_combout\,
	combout => \Equal11~9_combout\);

-- Location: FF_X15_Y25_N13
\D_HH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~12_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(6));

-- Location: LCCOMB_X16_Y25_N14
\Equal11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!D_HH(8) & (!D_HH(9) & (!D_HH(7) & !D_HH(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(8),
	datab => D_HH(9),
	datac => D_HH(7),
	datad => D_HH(6),
	combout => \Equal11~1_combout\);

-- Location: FF_X15_Y25_N23
\D_HH[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~22_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(11));

-- Location: FF_X15_Y25_N27
\D_HH[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~26_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(13));

-- Location: LCCOMB_X16_Y25_N0
\Equal11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!D_HH(12) & (!D_HH(10) & (!D_HH(11) & !D_HH(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(12),
	datab => D_HH(10),
	datac => D_HH(11),
	datad => D_HH(13),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X16_Y25_N12
\Equal11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (\Equal11~1_combout\ & \Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~1_combout\,
	datad => \Equal11~0_combout\,
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X16_Y25_N20
\Equal11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~10_combout\ = (\Equal11~3_combout\ & (\Equal11~4_combout\ & (\Equal11~9_combout\ & \Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \Equal11~4_combout\,
	datac => \Equal11~9_combout\,
	datad => \Equal11~2_combout\,
	combout => \Equal11~10_combout\);

-- Location: LCCOMB_X16_Y24_N16
\D_HH[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~18_combout\ = (\D_HH[15]~22_combout\ & (((\KEY[0]~input_o\ & \KEY[1]~input_o\)) # (!\EA.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \EA.S2~q\,
	datad => \D_HH[15]~22_combout\,
	combout => \D_HH[15]~18_combout\);

-- Location: LCCOMB_X16_Y26_N18
\D_HH[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[0]~19_combout\ = (\D_HH[15]~14_combout\ & (!\Equal11~10_combout\ & (!\D_HH[15]~16_combout\ & !\D_HH[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~14_combout\,
	datab => \Equal11~10_combout\,
	datac => \D_HH[15]~16_combout\,
	datad => \D_HH[15]~18_combout\,
	combout => \D_HH[0]~19_combout\);

-- Location: LCCOMB_X16_Y26_N30
\D_HH[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[0]~20_combout\ = (\D_HH[15]~17_combout\ & (\Add12~0_combout\ & ((\D_HH[0]~19_combout\)))) # (!\D_HH[15]~17_combout\ & ((D_HH(0)) # ((\Add12~0_combout\ & \D_HH[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~17_combout\,
	datab => \Add12~0_combout\,
	datac => D_HH(0),
	datad => \D_HH[0]~19_combout\,
	combout => \D_HH[0]~20_combout\);

-- Location: FF_X16_Y26_N31
\D_HH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \D_HH[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(0));

-- Location: LCCOMB_X21_Y27_N26
\primerDig[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primerDig[0]~2_combout\ = (\EA.S1~q\ & (D_SS_CRON(0))) # (!\EA.S1~q\ & ((D_HH(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(0),
	datac => \EA.S1~q\,
	datad => D_HH(0),
	combout => \primerDig[0]~2_combout\);

-- Location: LCCOMB_X19_Y27_N24
\Selector124~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\Add4~6_combout\ & ((\Selector110~0_combout\) # ((D_SS_CRON(3) & \ESTADO_CRON.PAUSE~q\)))) # (!\Add4~6_combout\ & (D_SS_CRON(3) & ((\ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => D_SS_CRON(3),
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X19_Y27_N14
\Selector124~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector124~1_combout\ = (\Selector124~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(3),
	datad => \Selector124~0_combout\,
	combout => \Selector124~1_combout\);

-- Location: FF_X19_Y27_N15
\D_SS_CRON[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector124~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(3));

-- Location: FF_X15_Y25_N7
\D_HH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~6_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(3));

-- Location: LCCOMB_X19_Y27_N20
\primerDig[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primerDig[3]~1_combout\ = (\EA.S1~q\ & (D_SS_CRON(3))) # (!\EA.S1~q\ & ((D_HH(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S1~q\,
	datac => D_SS_CRON(3),
	datad => D_HH(3),
	combout => \primerDig[3]~1_combout\);

-- Location: LCCOMB_X21_Y27_N12
\Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\Add4~14_combout\ & ((\Selector110~0_combout\) # ((D_SS_CRON(7) & \ESTADO_CRON.PAUSE~q\)))) # (!\Add4~14_combout\ & (D_SS_CRON(7) & (\ESTADO_CRON.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => D_SS_CRON(7),
	datac => \ESTADO_CRON.PAUSE~q\,
	datad => \Selector110~0_combout\,
	combout => \Selector120~0_combout\);

-- Location: LCCOMB_X21_Y27_N16
\Selector120~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector120~1_combout\ = (\Selector120~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(7),
	datad => \Selector120~0_combout\,
	combout => \Selector120~1_combout\);

-- Location: FF_X21_Y27_N17
\D_SS_CRON[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector120~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(7));

-- Location: LCCOMB_X19_Y26_N10
\Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\Add4~10_combout\ & ((\Selector110~0_combout\) # ((D_SS_CRON(5) & \ESTADO_CRON.PAUSE~q\)))) # (!\Add4~10_combout\ & (D_SS_CRON(5) & ((\ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => D_SS_CRON(5),
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X19_Y26_N0
\Selector122~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~1_combout\ = (\Selector122~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~1_combout\,
	datac => D_SS_CRON(5),
	datad => \Selector122~0_combout\,
	combout => \Selector122~1_combout\);

-- Location: FF_X19_Y26_N1
\D_SS_CRON[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector122~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(5));

-- Location: LCCOMB_X20_Y27_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (D_SS_CRON(2) & (\Add4~3\ $ (GND))) # (!D_SS_CRON(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((D_SS_CRON(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X21_Y27_N8
\Selector125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (D_SS_CRON(2) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector110~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(2),
	datad => \Selector110~1_combout\,
	combout => \Selector125~0_combout\);

-- Location: LCCOMB_X20_Y23_N10
\Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\ESTADO_CRON.PAUSE~q\) # (\Selector110~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datad => \Selector110~1_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X20_Y26_N12
\Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (D_SS_CRON(22) & (\Add4~43\ $ (GND))) # (!D_SS_CRON(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((D_SS_CRON(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X20_Y26_N14
\Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (D_SS_CRON(23) & (!\Add4~45\)) # (!D_SS_CRON(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!D_SS_CRON(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X20_Y26_N16
\Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (D_SS_CRON(24) & (\Add4~47\ $ (GND))) # (!D_SS_CRON(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((D_SS_CRON(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X20_Y26_N18
\Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (D_SS_CRON(25) & (!\Add4~49\)) # (!D_SS_CRON(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!D_SS_CRON(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X19_Y26_N28
\Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\Selector110~0_combout\ & ((\Add4~50_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(25))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(25),
	datad => \Add4~50_combout\,
	combout => \Selector102~0_combout\);

-- Location: FF_X19_Y26_N29
\D_SS_CRON[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector102~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(25));

-- Location: LCCOMB_X20_Y26_N20
\Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (D_SS_CRON(26) & (\Add4~51\ $ (GND))) # (!D_SS_CRON(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((D_SS_CRON(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X21_Y26_N26
\Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(26)) # ((\Add4~52_combout\ & \Selector110~0_combout\)))) # (!\Selector97~0_combout\ & (\Add4~52_combout\ & ((\Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Add4~52_combout\,
	datac => D_SS_CRON(26),
	datad => \Selector110~0_combout\,
	combout => \Selector101~0_combout\);

-- Location: FF_X21_Y26_N27
\D_SS_CRON[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector101~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(26));

-- Location: LCCOMB_X20_Y26_N22
\Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (D_SS_CRON(27) & (!\Add4~53\)) # (!D_SS_CRON(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!D_SS_CRON(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X21_Y26_N8
\Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(27)) # ((\Add4~54_combout\ & \Selector110~0_combout\)))) # (!\Selector97~0_combout\ & (\Add4~54_combout\ & ((\Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Add4~54_combout\,
	datac => D_SS_CRON(27),
	datad => \Selector110~0_combout\,
	combout => \Selector100~0_combout\);

-- Location: FF_X21_Y26_N9
\D_SS_CRON[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(27));

-- Location: LCCOMB_X19_Y26_N16
\Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\Selector110~0_combout\ & ((\Add4~48_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(24))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(24),
	datad => \Add4~48_combout\,
	combout => \Selector103~0_combout\);

-- Location: FF_X19_Y26_N17
\D_SS_CRON[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector103~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(24));

-- Location: LCCOMB_X21_Y26_N16
\Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!D_SS_CRON(26) & (!D_SS_CRON(25) & (!D_SS_CRON(27) & !D_SS_CRON(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(26),
	datab => D_SS_CRON(25),
	datac => D_SS_CRON(27),
	datad => D_SS_CRON(24),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X20_Y26_N24
\Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (D_SS_CRON(28) & (\Add4~55\ $ (GND))) # (!D_SS_CRON(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((D_SS_CRON(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X19_Y26_N6
\Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\Selector110~0_combout\ & ((\Add4~56_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(28))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(28),
	datad => \Add4~56_combout\,
	combout => \Selector99~0_combout\);

-- Location: FF_X19_Y26_N7
\D_SS_CRON[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(28));

-- Location: LCCOMB_X20_Y26_N26
\Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (D_SS_CRON(29) & (!\Add4~57\)) # (!D_SS_CRON(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!D_SS_CRON(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X19_Y26_N22
\Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\Selector110~0_combout\ & ((\Add4~58_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(29))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(29),
	datad => \Add4~58_combout\,
	combout => \Selector98~0_combout\);

-- Location: FF_X19_Y26_N23
\D_SS_CRON[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(29));

-- Location: LCCOMB_X20_Y26_N28
\Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (D_SS_CRON(30) & (\Add4~59\ $ (GND))) # (!D_SS_CRON(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((D_SS_CRON(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X20_Y26_N30
\Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \Add4~61\ $ (D_SS_CRON(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => D_SS_CRON(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X19_Y26_N2
\Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\Selector110~0_combout\ & ((\Add4~62_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(31))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(31),
	datad => \Add4~62_combout\,
	combout => \Selector96~0_combout\);

-- Location: FF_X19_Y26_N3
\D_SS_CRON[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(31));

-- Location: LCCOMB_X19_Y26_N8
\Selector97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\Selector110~0_combout\ & ((\Add4~60_combout\) # ((\Selector97~0_combout\ & D_SS_CRON(30))))) # (!\Selector110~0_combout\ & (\Selector97~0_combout\ & (D_SS_CRON(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~0_combout\,
	datab => \Selector97~0_combout\,
	datac => D_SS_CRON(30),
	datad => \Add4~60_combout\,
	combout => \Selector97~1_combout\);

-- Location: FF_X19_Y26_N9
\D_SS_CRON[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector97~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(30));

-- Location: LCCOMB_X19_Y26_N26
\Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!D_SS_CRON(29) & (!D_SS_CRON(31) & (!D_SS_CRON(30) & !D_SS_CRON(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(29),
	datab => D_SS_CRON(31),
	datac => D_SS_CRON(30),
	datad => D_SS_CRON(28),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X21_Y26_N0
\Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!D_SS_CRON(18) & (!D_SS_CRON(17) & (!D_SS_CRON(16) & !D_SS_CRON(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(18),
	datab => D_SS_CRON(17),
	datac => D_SS_CRON(16),
	datad => D_SS_CRON(19),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X21_Y26_N2
\Equal4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~6_combout\ & (\Equal4~7_combout\ & (\Equal4~8_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~6_combout\,
	datab => \Equal4~7_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X21_Y27_N4
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!D_SS_CRON(6) & (!D_SS_CRON(7) & (!D_SS_CRON(4) & !D_SS_CRON(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(6),
	datab => D_SS_CRON(7),
	datac => D_SS_CRON(4),
	datad => D_SS_CRON(5),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X20_Y27_N22
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (D_SS_CRON(11) & (!\Add4~21\)) # (!D_SS_CRON(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!D_SS_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X20_Y25_N2
\Selector116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(11)) # ((\Add4~22_combout\ & \Selector110~0_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (((\Add4~22_combout\ & \Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(11),
	datac => \Add4~22_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector116~0_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Selector116~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector116~1_combout\ = (\Selector116~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(11),
	datad => \Selector116~0_combout\,
	combout => \Selector116~1_combout\);

-- Location: FF_X20_Y25_N1
\D_SS_CRON[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector116~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(11));

-- Location: LCCOMB_X20_Y27_N20
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (D_SS_CRON(10) & (\Add4~19\ $ (GND))) # (!D_SS_CRON(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((D_SS_CRON(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X20_Y25_N28
\Selector117~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(10)) # ((\Selector110~0_combout\ & \Add4~20_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Selector110~0_combout\ & ((\Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(10),
	datad => \Add4~20_combout\,
	combout => \Selector117~0_combout\);

-- Location: LCCOMB_X20_Y25_N22
\Selector117~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector117~1_combout\ = (\Selector117~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(10),
	datad => \Selector117~0_combout\,
	combout => \Selector117~1_combout\);

-- Location: FF_X20_Y25_N23
\D_SS_CRON[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector117~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(10));

-- Location: LCCOMB_X20_Y27_N16
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (D_SS_CRON(8) & (\Add4~15\ $ (GND))) # (!D_SS_CRON(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((D_SS_CRON(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X20_Y25_N20
\Selector119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (D_SS_CRON(8) & ((\ESTADO_CRON.PAUSE~q\) # ((\Add4~16_combout\ & \Selector110~0_combout\)))) # (!D_SS_CRON(8) & (\Add4~16_combout\ & ((\Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(8),
	datab => \Add4~16_combout\,
	datac => \ESTADO_CRON.PAUSE~q\,
	datad => \Selector110~0_combout\,
	combout => \Selector119~0_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Selector119~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector119~1_combout\ = (\Selector119~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(8),
	datad => \Selector119~0_combout\,
	combout => \Selector119~1_combout\);

-- Location: FF_X20_Y25_N11
\D_SS_CRON[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector119~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(8));

-- Location: LCCOMB_X20_Y25_N26
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!D_SS_CRON(9) & (!D_SS_CRON(11) & (!D_SS_CRON(10) & !D_SS_CRON(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(9),
	datab => D_SS_CRON(11),
	datac => D_SS_CRON(10),
	datad => D_SS_CRON(8),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X21_Y27_N22
\Selector126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (D_SS_CRON(1) & ((\ESTADO_CRON.PAUSE~q\) # (\Selector110~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(1),
	datad => \Selector110~1_combout\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X21_Y27_N20
\Selector126~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (\Selector126~0_combout\) # ((\Add4~2_combout\ & \Selector125~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datac => \Selector126~0_combout\,
	datad => \Selector125~1_combout\,
	combout => \Selector126~1_combout\);

-- Location: FF_X21_Y27_N21
\D_SS_CRON[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector126~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(1));

-- Location: LCCOMB_X21_Y27_N2
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (D_SS_CRON(2) & (!D_SS_CRON(1) & (!D_SS_CRON(3) & D_SS_CRON(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(2),
	datab => D_SS_CRON(1),
	datac => D_SS_CRON(3),
	datad => D_SS_CRON(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X21_Y27_N30
\Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~3_combout\ & (\Equal4~1_combout\ & (\Equal4~2_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X21_Y27_N24
\Selector125~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~1_combout\ = (\Selector110~0_combout\ & ((!\Equal4~4_combout\) # (!\Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~9_combout\,
	datac => \Equal4~4_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector125~1_combout\);

-- Location: LCCOMB_X21_Y27_N28
\Selector125~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector125~2_combout\ = (\Selector125~0_combout\) # ((\Add4~4_combout\ & \Selector125~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~4_combout\,
	datac => \Selector125~0_combout\,
	datad => \Selector125~1_combout\,
	combout => \Selector125~2_combout\);

-- Location: FF_X21_Y27_N29
\D_SS_CRON[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector125~2_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(2));

-- Location: LCCOMB_X20_Y27_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (D_SS_CRON(4) & (\Add4~7\ $ (GND))) # (!D_SS_CRON(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((D_SS_CRON(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X19_Y26_N24
\Selector123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (D_SS_CRON(4) & ((\ESTADO_CRON.PAUSE~q\) # ((\Add4~8_combout\ & \Selector110~0_combout\)))) # (!D_SS_CRON(4) & (\Add4~8_combout\ & (\Selector110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(4),
	datab => \Add4~8_combout\,
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X19_Y26_N30
\Selector123~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector123~1_combout\ = (\Selector123~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector110~1_combout\,
	datac => D_SS_CRON(4),
	datad => \Selector123~0_combout\,
	combout => \Selector123~1_combout\);

-- Location: FF_X19_Y26_N31
\D_SS_CRON[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector123~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(4));

-- Location: LCCOMB_X20_Y27_N18
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (D_SS_CRON(9) & (!\Add4~17\)) # (!D_SS_CRON(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!D_SS_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X20_Y25_N18
\Selector118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(9)) # ((\Add4~18_combout\ & \Selector110~0_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (((\Add4~18_combout\ & \Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(9),
	datac => \Add4~18_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Selector118~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector118~1_combout\ = (\Selector118~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(9),
	datad => \Selector118~0_combout\,
	combout => \Selector118~1_combout\);

-- Location: FF_X20_Y25_N7
\D_SS_CRON[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector118~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(9));

-- Location: LCCOMB_X20_Y27_N24
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (D_SS_CRON(12) & (\Add4~23\ $ (GND))) # (!D_SS_CRON(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((D_SS_CRON(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X19_Y27_N28
\Selector115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (D_SS_CRON(12) & ((\ESTADO_CRON.PAUSE~q\) # ((\Add4~24_combout\ & \Selector110~0_combout\)))) # (!D_SS_CRON(12) & (\Add4~24_combout\ & (\Selector110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(12),
	datab => \Add4~24_combout\,
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector115~0_combout\);

-- Location: LCCOMB_X19_Y27_N4
\Selector115~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector115~1_combout\ = (\Selector115~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(12),
	datad => \Selector115~0_combout\,
	combout => \Selector115~1_combout\);

-- Location: FF_X19_Y27_N5
\D_SS_CRON[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector115~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(12));

-- Location: LCCOMB_X20_Y27_N28
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (D_SS_CRON(14) & (\Add4~27\ $ (GND))) # (!D_SS_CRON(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((D_SS_CRON(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X19_Y27_N0
\Selector113~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (D_SS_CRON(14) & ((\ESTADO_CRON.PAUSE~q\) # ((\Add4~28_combout\ & \Selector110~0_combout\)))) # (!D_SS_CRON(14) & (\Add4~28_combout\ & (\Selector110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(14),
	datab => \Add4~28_combout\,
	datac => \Selector110~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector113~0_combout\);

-- Location: LCCOMB_X19_Y27_N22
\Selector113~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector113~1_combout\ = (\Selector113~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(14),
	datad => \Selector113~0_combout\,
	combout => \Selector113~1_combout\);

-- Location: FF_X19_Y27_N23
\D_SS_CRON[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector113~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(14));

-- Location: LCCOMB_X20_Y26_N0
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (D_SS_CRON(16) & (\Add4~31\ $ (GND))) # (!D_SS_CRON(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((D_SS_CRON(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X21_Y22_N24
\Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(16)) # ((\Add4~32_combout\ & \Selector110~0_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (((\Add4~32_combout\ & \Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => D_SS_CRON(16),
	datac => \Add4~32_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\Selector111~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector111~1_combout\ = (\Selector111~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(16),
	datad => \Selector111~0_combout\,
	combout => \Selector111~1_combout\);

-- Location: FF_X21_Y22_N17
\D_SS_CRON[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector111~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(16));

-- Location: LCCOMB_X20_Y26_N2
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (D_SS_CRON(17) & (!\Add4~33\)) # (!D_SS_CRON(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!D_SS_CRON(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X21_Y22_N2
\Selector110~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~2_combout\ = (D_SS_CRON(17) & ((\ESTADO_CRON.PAUSE~q\) # ((\Add4~34_combout\ & \Selector110~0_combout\)))) # (!D_SS_CRON(17) & (((\Add4~34_combout\ & \Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(17),
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => \Add4~34_combout\,
	datad => \Selector110~0_combout\,
	combout => \Selector110~2_combout\);

-- Location: LCCOMB_X21_Y22_N10
\Selector110~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector110~3_combout\ = (\Selector110~2_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(17),
	datad => \Selector110~2_combout\,
	combout => \Selector110~3_combout\);

-- Location: FF_X21_Y22_N11
\D_SS_CRON[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector110~3_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(17));

-- Location: LCCOMB_X20_Y26_N4
\Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (D_SS_CRON(18) & (\Add4~35\ $ (GND))) # (!D_SS_CRON(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((D_SS_CRON(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X21_Y22_N28
\Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\ESTADO_CRON.PAUSE~q\ & ((D_SS_CRON(18)) # ((\Selector110~0_combout\ & \Add4~36_combout\)))) # (!\ESTADO_CRON.PAUSE~q\ & (\Selector110~0_combout\ & ((\Add4~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.PAUSE~q\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(18),
	datad => \Add4~36_combout\,
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X21_Y22_N22
\Selector109~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector109~1_combout\ = (\Selector109~0_combout\) # ((\Selector110~1_combout\ & D_SS_CRON(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~1_combout\,
	datac => D_SS_CRON(18),
	datad => \Selector109~0_combout\,
	combout => \Selector109~1_combout\);

-- Location: FF_X21_Y22_N23
\D_SS_CRON[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector109~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(18));

-- Location: LCCOMB_X20_Y26_N6
\Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (D_SS_CRON(19) & (!\Add4~37\)) # (!D_SS_CRON(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!D_SS_CRON(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X21_Y26_N18
\Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(19)) # ((\Add4~38_combout\ & \Selector110~0_combout\)))) # (!\Selector97~0_combout\ & (\Add4~38_combout\ & ((\Selector110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Add4~38_combout\,
	datac => D_SS_CRON(19),
	datad => \Selector110~0_combout\,
	combout => \Selector108~0_combout\);

-- Location: FF_X21_Y26_N19
\D_SS_CRON[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector108~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(19));

-- Location: LCCOMB_X20_Y26_N8
\Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (D_SS_CRON(20) & (\Add4~39\ $ (GND))) # (!D_SS_CRON(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((D_SS_CRON(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_SS_CRON(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X21_Y26_N14
\Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(20)) # ((\Selector110~0_combout\ & \Add4~40_combout\)))) # (!\Selector97~0_combout\ & (\Selector110~0_combout\ & ((\Add4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(20),
	datad => \Add4~40_combout\,
	combout => \Selector107~0_combout\);

-- Location: FF_X21_Y26_N15
\D_SS_CRON[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector107~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(20));

-- Location: LCCOMB_X20_Y26_N10
\Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (D_SS_CRON(21) & (!\Add4~41\)) # (!D_SS_CRON(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!D_SS_CRON(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X21_Y26_N30
\Selector105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(22)) # ((\Selector110~0_combout\ & \Add4~44_combout\)))) # (!\Selector97~0_combout\ & (\Selector110~0_combout\ & ((\Add4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(22),
	datad => \Add4~44_combout\,
	combout => \Selector105~0_combout\);

-- Location: FF_X21_Y26_N31
\D_SS_CRON[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector105~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(22));

-- Location: LCCOMB_X21_Y26_N28
\D1|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~21_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(22))))) # (!\EA.S1~q\ & (!D_HH(22) & ((!D_HH(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_HH(22),
	datac => D_SS_CRON(22),
	datad => D_HH(23),
	combout => \D1|Equal0~21_combout\);

-- Location: LCCOMB_X19_Y26_N14
\D1|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~19_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(25))))) # (!\EA.S1~q\ & (!D_HH(26) & (!D_HH(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_HH(26),
	datac => D_HH(25),
	datad => D_SS_CRON(25),
	combout => \D1|Equal0~19_combout\);

-- Location: LCCOMB_X21_Y26_N6
\Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(23)) # ((\Selector110~0_combout\ & \Add4~46_combout\)))) # (!\Selector97~0_combout\ & (\Selector110~0_combout\ & ((\Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(23),
	datad => \Add4~46_combout\,
	combout => \Selector104~0_combout\);

-- Location: FF_X21_Y26_N7
\D_SS_CRON[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector104~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(23));

-- Location: LCCOMB_X21_Y26_N24
\D1|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~20_combout\ = (\EA.S1~q\ & (!D_SS_CRON(24) & ((!D_SS_CRON(23))))) # (!\EA.S1~q\ & (((!D_HH(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_SS_CRON(24),
	datac => D_HH(24),
	datad => D_SS_CRON(23),
	combout => \D1|Equal0~20_combout\);

-- Location: LCCOMB_X21_Y26_N22
\D1|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~22_combout\ = (\D1|Equal0~18_combout\ & (\D1|Equal0~21_combout\ & (\D1|Equal0~19_combout\ & \D1|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~18_combout\,
	datab => \D1|Equal0~21_combout\,
	datac => \D1|Equal0~19_combout\,
	datad => \D1|Equal0~20_combout\,
	combout => \D1|Equal0~22_combout\);

-- Location: LCCOMB_X19_Y26_N4
\D1|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~15_combout\ = (\EA.S1~q\ & (!D_SS_CRON(30) & (!D_SS_CRON(29)))) # (!\EA.S1~q\ & (((!D_HH(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_SS_CRON(30),
	datac => D_SS_CRON(29),
	datad => D_HH(30),
	combout => \D1|Equal0~15_combout\);

-- Location: LCCOMB_X15_Y24_N30
\Add12~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~62_combout\ = D_HH(31) $ (\Add12~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(31),
	cin => \Add12~61\,
	combout => \Add12~62_combout\);

-- Location: FF_X15_Y24_N31
\D_HH[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add12~62_combout\,
	ena => \D_HH[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_HH(31));

-- Location: LCCOMB_X14_Y25_N8
\D1|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~14_combout\ = (\EA.S1~q\ & (!D_SS_CRON(31))) # (!\EA.S1~q\ & (((!D_HH(31) & !D_HH(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(31),
	datab => D_HH(31),
	datac => D_HH(4),
	datad => \EA.S1~q\,
	combout => \D1|Equal0~14_combout\);

-- Location: LCCOMB_X19_Y26_N20
\D1|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~13_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(4) & !D_SS_CRON(5))))) # (!\EA.S1~q\ & (!D_HH(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(5),
	datab => \EA.S1~q\,
	datac => D_SS_CRON(4),
	datad => D_SS_CRON(5),
	combout => \D1|Equal0~13_combout\);

-- Location: LCCOMB_X19_Y26_N18
\D1|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~17_combout\ = (\D1|Equal0~16_combout\ & (\D1|Equal0~15_combout\ & (\D1|Equal0~14_combout\ & \D1|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~16_combout\,
	datab => \D1|Equal0~15_combout\,
	datac => \D1|Equal0~14_combout\,
	datad => \D1|Equal0~13_combout\,
	combout => \D1|Equal0~17_combout\);

-- Location: LCCOMB_X20_Y25_N24
\D1|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~10_combout\ = (\EA.S1~q\ & (!D_SS_CRON(8) & ((!D_SS_CRON(7))))) # (!\EA.S1~q\ & (((!D_HH(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(8),
	datab => D_HH(8),
	datac => \EA.S1~q\,
	datad => D_SS_CRON(7),
	combout => \D1|Equal0~10_combout\);

-- Location: LCCOMB_X20_Y25_N8
\D1|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~9_combout\ = (\EA.S1~q\ & (!D_SS_CRON(9))) # (!\EA.S1~q\ & (((!D_HH(9) & !D_HH(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_SS_CRON(9),
	datab => D_HH(9),
	datac => \EA.S1~q\,
	datad => D_HH(10),
	combout => \D1|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y25_N12
\D1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~8_combout\ = (\EA.S1~q\ & (((!D_SS_CRON(10) & !D_SS_CRON(11))))) # (!\EA.S1~q\ & (!D_HH(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(11),
	datab => \EA.S1~q\,
	datac => D_SS_CRON(10),
	datad => D_SS_CRON(11),
	combout => \D1|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y25_N14
\D1|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~12_combout\ = (\D1|Equal0~11_combout\ & (\D1|Equal0~10_combout\ & (\D1|Equal0~9_combout\ & \D1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~11_combout\,
	datab => \D1|Equal0~10_combout\,
	datac => \D1|Equal0~9_combout\,
	datad => \D1|Equal0~8_combout\,
	combout => \D1|Equal0~12_combout\);

-- Location: LCCOMB_X21_Y22_N12
\D1|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~23_combout\ = (\D1|Equal0~7_combout\ & (\D1|Equal0~22_combout\ & (\D1|Equal0~17_combout\ & \D1|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~7_combout\,
	datab => \D1|Equal0~22_combout\,
	datac => \D1|Equal0~17_combout\,
	datad => \D1|Equal0~12_combout\,
	combout => \D1|Equal0~23_combout\);

-- Location: LCCOMB_X21_Y26_N20
\Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\Selector97~0_combout\ & ((D_SS_CRON(21)) # ((\Selector110~0_combout\ & \Add4~42_combout\)))) # (!\Selector97~0_combout\ & (\Selector110~0_combout\ & ((\Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datab => \Selector110~0_combout\,
	datac => D_SS_CRON(21),
	datad => \Add4~42_combout\,
	combout => \Selector106~0_combout\);

-- Location: FF_X21_Y26_N21
\D_SS_CRON[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector106~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_SS_CRON(21));

-- Location: LCCOMB_X21_Y26_N4
\D1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~0_combout\ = (\EA.S1~q\ & (!D_SS_CRON(21) & (!D_SS_CRON(20)))) # (!\EA.S1~q\ & (((!D_HH(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_SS_CRON(21),
	datac => D_SS_CRON(20),
	datad => D_HH(21),
	combout => \D1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y27_N8
\D1|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~24_combout\ = (\D1|Equal0~2_combout\ & (\D1|Equal0~23_combout\ & \D1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~2_combout\,
	datac => \D1|Equal0~23_combout\,
	datad => \D1|Equal0~0_combout\,
	combout => \D1|Equal0~24_combout\);

-- Location: LCCOMB_X21_Y25_N0
\primerDig[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primerDig[2]~0_combout\ = (\EA.S1~q\ & (D_SS_CRON(2))) # (!\EA.S1~q\ & ((D_HH(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datac => D_SS_CRON(2),
	datad => D_HH(2),
	combout => \primerDig[2]~0_combout\);

-- Location: LCCOMB_X22_Y27_N10
\D1|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~25_combout\ = (!\primerDig[3]~1_combout\ & (\D1|Equal0~24_combout\ & !\primerDig[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \primerDig[3]~1_combout\,
	datac => \D1|Equal0~24_combout\,
	datad => \primerDig[2]~0_combout\,
	combout => \D1|Equal0~25_combout\);

-- Location: LCCOMB_X21_Y27_N10
\primerDig[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primerDig[1]~3_combout\ = (\EA.S1~q\ & ((D_SS_CRON(1)))) # (!\EA.S1~q\ & (D_HH(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_HH(1),
	datab => D_SS_CRON(1),
	datac => \EA.S1~q\,
	combout => \primerDig[1]~3_combout\);

-- Location: LCCOMB_X22_Y27_N18
\D1|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal0~26_combout\ = (\D1|Equal0~2_combout\ & (!\primerDig[3]~1_combout\ & (\D1|Equal0~23_combout\ & \D1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|Equal0~2_combout\,
	datab => \primerDig[3]~1_combout\,
	datac => \D1|Equal0~23_combout\,
	datad => \D1|Equal0~0_combout\,
	combout => \D1|Equal0~26_combout\);

-- Location: LCCOMB_X22_Y27_N24
\D1|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideNor0~0_combout\ = (\D1|Equal0~26_combout\ & ((\primerDig[0]~2_combout\) # ((\primerDig[2]~0_combout\ & !\primerDig[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \primerDig[2]~0_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|Equal0~26_combout\,
	combout => \D1|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y27_N30
\D1|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr2~2_combout\ = ((\primerDig[2]~0_combout\ $ (\primerDig[1]~3_combout\)) # (!\D1|Equal0~26_combout\)) # (!\primerDig[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \primerDig[2]~0_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|Equal0~26_combout\,
	combout => \D1|WideOr2~2_combout\);

-- Location: LCCOMB_X22_Y27_N0
\D1|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal8~0_combout\ = (!\primerDig[1]~3_combout\ & (!\primerDig[2]~0_combout\ & (\D1|Equal0~24_combout\ & \primerDig[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[1]~3_combout\,
	datab => \primerDig[2]~0_combout\,
	datac => \D1|Equal0~24_combout\,
	datad => \primerDig[3]~1_combout\,
	combout => \D1|Equal8~0_combout\);

-- Location: LCCOMB_X22_Y27_N4
\D1|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr2~3_combout\ = (\D1|WideOr2~2_combout\ & (((\D1|WideNor0~0_combout\) # (\D1|Equal8~0_combout\)) # (!\D1|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|WideNor0~1_combout\,
	datab => \D1|WideNor0~0_combout\,
	datac => \D1|WideOr2~2_combout\,
	datad => \D1|Equal8~0_combout\,
	combout => \D1|WideOr2~3_combout\);

-- Location: LCCOMB_X24_Y27_N16
\D1|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr5~combout\ = ((!\primerDig[0]~2_combout\ & (\D1|Equal0~25_combout\ & !\primerDig[1]~3_combout\))) # (!\D1|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \D1|Equal0~25_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|WideOr2~3_combout\,
	combout => \D1|WideOr5~combout\);

-- Location: LCCOMB_X24_Y27_N2
\D1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr4~combout\ = ((\D1|Equal0~25_combout\ & \primerDig[1]~3_combout\)) # (!\D1|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|Equal0~25_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|WideOr2~3_combout\,
	combout => \D1|WideOr4~combout\);

-- Location: LCCOMB_X22_Y27_N26
\D1|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideNor0~1_combout\ = (\primerDig[0]~2_combout\) # (((\primerDig[2]~0_combout\ & !\primerDig[1]~3_combout\)) # (!\D1|Equal0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \primerDig[2]~0_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|Equal0~26_combout\,
	combout => \D1|WideNor0~1_combout\);

-- Location: LCCOMB_X22_Y27_N12
\D1|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideNor0~3_combout\ = (\D1|WideNor0~1_combout\ & ((\primerDig[0]~2_combout\) # (!\D1|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|WideNor0~1_combout\,
	datac => \primerDig[0]~2_combout\,
	datad => \D1|Equal8~0_combout\,
	combout => \D1|WideNor0~3_combout\);

-- Location: LCCOMB_X22_Y27_N14
\D1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Equal6~0_combout\ = (!\primerDig[3]~1_combout\ & (\D1|Equal0~24_combout\ & \primerDig[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \primerDig[3]~1_combout\,
	datac => \D1|Equal0~24_combout\,
	datad => \primerDig[2]~0_combout\,
	combout => \D1|Equal6~0_combout\);

-- Location: LCCOMB_X22_Y27_N20
\D1|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr2~combout\ = ((!\primerDig[0]~2_combout\ & (\D1|Equal6~0_combout\ & !\primerDig[1]~3_combout\))) # (!\D1|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \D1|Equal6~0_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|WideOr2~3_combout\,
	combout => \D1|WideOr2~combout\);

-- Location: LCCOMB_X22_Y27_N28
\D1|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideNor0~2_combout\ = (\D1|WideNor0~0_combout\) # ((\D1|Equal8~0_combout\) # (!\D1|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|WideNor0~0_combout\,
	datac => \D1|WideNor0~1_combout\,
	datad => \D1|Equal8~0_combout\,
	combout => \D1|WideNor0~2_combout\);

-- Location: LCCOMB_X22_Y27_N6
\D1|salida[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|salida\(2) = ((!\primerDig[0]~2_combout\ & (\primerDig[1]~3_combout\ & \D1|Equal0~25_combout\))) # (!\D1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \D1|WideNor0~2_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|Equal0~25_combout\,
	combout => \D1|salida\(2));

-- Location: LCCOMB_X22_Y27_N16
\D1|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr1~combout\ = ((\D1|Equal6~0_combout\ & (\primerDig[0]~2_combout\ $ (\primerDig[1]~3_combout\)))) # (!\D1|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \D1|WideNor0~2_combout\,
	datac => \D1|Equal6~0_combout\,
	datad => \primerDig[1]~3_combout\,
	combout => \D1|WideOr1~combout\);

-- Location: LCCOMB_X22_Y27_N22
\D1|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideNor0~4_combout\ = (\primerDig[1]~3_combout\) # ((\primerDig[0]~2_combout\ $ (!\primerDig[2]~0_combout\)) # (!\D1|Equal0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \primerDig[0]~2_combout\,
	datab => \primerDig[2]~0_combout\,
	datac => \primerDig[1]~3_combout\,
	datad => \D1|Equal0~26_combout\,
	combout => \D1|WideNor0~4_combout\);

-- Location: LCCOMB_X22_Y27_N2
\D1|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|WideOr0~combout\ = ((\D1|WideNor0~1_combout\ & (!\D1|WideNor0~0_combout\ & !\D1|Equal8~0_combout\))) # (!\D1|WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1|WideNor0~1_combout\,
	datab => \D1|WideNor0~0_combout\,
	datac => \D1|WideNor0~4_combout\,
	datad => \D1|Equal8~0_combout\,
	combout => \D1|WideOr0~combout\);

-- Location: LCCOMB_X21_Y24_N12
\segundoDig[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundoDig[3]~1_combout\ = (\EA.S1~q\ & ((U_SS_CRON(3)))) # (!\EA.S1~q\ & (U_HH(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(3),
	datab => U_SS_CRON(3),
	datad => \EA.S1~q\,
	combout => \segundoDig[3]~1_combout\);

-- Location: LCCOMB_X17_Y22_N4
\D2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~0_combout\ = (U_SS_CRON(6)) # ((U_SS_CRON(4)) # (U_SS_CRON(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(6),
	datab => U_SS_CRON(4),
	datad => U_SS_CRON(5),
	combout => \D2|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y22_N24
\D2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~2_combout\ = (\EA.S1~q\ & (((!\D2|Equal0~0_combout\ & !U_SS_CRON(7))))) # (!\EA.S1~q\ & (!\D2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~1_combout\,
	datab => \EA.S1~q\,
	datac => \D2|Equal0~0_combout\,
	datad => U_SS_CRON(7),
	combout => \D2|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y24_N0
\U_HH[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[0]~32_combout\ = U_HH(0) $ (VCC)
-- \U_HH[0]~33\ = CARRY(U_HH(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_HH(0),
	datad => VCC,
	combout => \U_HH[0]~32_combout\,
	cout => \U_HH[0]~33\);

-- Location: LCCOMB_X17_Y24_N6
\U_HH[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[3]~38_combout\ = (U_HH(3) & (!\U_HH[2]~37\)) # (!U_HH(3) & ((\U_HH[2]~37\) # (GND)))
-- \U_HH[3]~39\ = CARRY((!\U_HH[2]~37\) # (!U_HH(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(3),
	datad => VCC,
	cin => \U_HH[2]~37\,
	combout => \U_HH[3]~38_combout\,
	cout => \U_HH[3]~39\);

-- Location: LCCOMB_X16_Y24_N14
\U_HH[30]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[30]~48_combout\ = (\KEY[1]~input_o\) # (!\EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \EA.S2~q\,
	combout => \U_HH[30]~48_combout\);

-- Location: LCCOMB_X16_Y24_N22
\U_HH[30]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[30]~51_combout\ = ((!\Equal10~10_combout\ & (!\Equal9~9_combout\ & \U_HH[30]~50_combout\))) # (!\U_HH[30]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~10_combout\,
	datab => \Equal9~9_combout\,
	datac => \U_HH[30]~48_combout\,
	datad => \U_HH[30]~50_combout\,
	combout => \U_HH[30]~51_combout\);

-- Location: FF_X17_Y24_N7
\U_HH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[3]~38_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(3));

-- Location: LCCOMB_X17_Y24_N30
\U_HH[15]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[15]~66_combout\ = (U_HH(15) & (!\U_HH[14]~65\)) # (!U_HH(15) & ((\U_HH[14]~65\) # (GND)))
-- \U_HH[15]~67\ = CARRY((!\U_HH[14]~65\) # (!U_HH(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(15),
	datad => VCC,
	cin => \U_HH[14]~65\,
	combout => \U_HH[15]~66_combout\,
	cout => \U_HH[15]~67\);

-- Location: FF_X17_Y24_N31
\U_HH[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[15]~66_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(15));

-- Location: LCCOMB_X17_Y24_N26
\U_HH[13]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[13]~62_combout\ = (U_HH(13) & (!\U_HH[12]~61\)) # (!U_HH(13) & ((\U_HH[12]~61\) # (GND)))
-- \U_HH[13]~63\ = CARRY((!\U_HH[12]~61\) # (!U_HH(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(13),
	datad => VCC,
	cin => \U_HH[12]~61\,
	combout => \U_HH[13]~62_combout\,
	cout => \U_HH[13]~63\);

-- Location: FF_X17_Y24_N27
\U_HH[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[13]~62_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(13));

-- Location: LCCOMB_X17_Y25_N4
\D_HH[15]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~9_combout\ = (!U_HH(14) & (!U_HH(15) & (!U_HH(12) & !U_HH(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(14),
	datab => U_HH(15),
	datac => U_HH(12),
	datad => U_HH(13),
	combout => \D_HH[15]~9_combout\);

-- Location: LCCOMB_X17_Y23_N12
\U_HH[22]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[22]~80_combout\ = (U_HH(22) & (\U_HH[21]~79\ $ (GND))) # (!U_HH(22) & (!\U_HH[21]~79\ & VCC))
-- \U_HH[22]~81\ = CARRY((U_HH(22) & !\U_HH[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(22),
	datad => VCC,
	cin => \U_HH[21]~79\,
	combout => \U_HH[22]~80_combout\,
	cout => \U_HH[22]~81\);

-- Location: LCCOMB_X17_Y23_N14
\U_HH[23]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[23]~82_combout\ = (U_HH(23) & (!\U_HH[22]~81\)) # (!U_HH(23) & ((\U_HH[22]~81\) # (GND)))
-- \U_HH[23]~83\ = CARRY((!\U_HH[22]~81\) # (!U_HH(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(23),
	datad => VCC,
	cin => \U_HH[22]~81\,
	combout => \U_HH[23]~82_combout\,
	cout => \U_HH[23]~83\);

-- Location: FF_X17_Y23_N15
\U_HH[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[23]~82_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(23));

-- Location: LCCOMB_X17_Y23_N16
\U_HH[24]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[24]~84_combout\ = (U_HH(24) & (\U_HH[23]~83\ $ (GND))) # (!U_HH(24) & (!\U_HH[23]~83\ & VCC))
-- \U_HH[24]~85\ = CARRY((U_HH(24) & !\U_HH[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(24),
	datad => VCC,
	cin => \U_HH[23]~83\,
	combout => \U_HH[24]~84_combout\,
	cout => \U_HH[24]~85\);

-- Location: FF_X17_Y23_N17
\U_HH[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[24]~84_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(24));

-- Location: LCCOMB_X17_Y23_N18
\U_HH[25]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[25]~86_combout\ = (U_HH(25) & (!\U_HH[24]~85\)) # (!U_HH(25) & ((\U_HH[24]~85\) # (GND)))
-- \U_HH[25]~87\ = CARRY((!\U_HH[24]~85\) # (!U_HH(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(25),
	datad => VCC,
	cin => \U_HH[24]~85\,
	combout => \U_HH[25]~86_combout\,
	cout => \U_HH[25]~87\);

-- Location: FF_X17_Y23_N19
\U_HH[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[25]~86_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(25));

-- Location: LCCOMB_X17_Y23_N20
\U_HH[26]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[26]~88_combout\ = (U_HH(26) & (\U_HH[25]~87\ $ (GND))) # (!U_HH(26) & (!\U_HH[25]~87\ & VCC))
-- \U_HH[26]~89\ = CARRY((U_HH(26) & !\U_HH[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(26),
	datad => VCC,
	cin => \U_HH[25]~87\,
	combout => \U_HH[26]~88_combout\,
	cout => \U_HH[26]~89\);

-- Location: FF_X17_Y23_N21
\U_HH[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[26]~88_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(26));

-- Location: LCCOMB_X17_Y23_N24
\U_HH[28]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[28]~92_combout\ = (U_HH(28) & (\U_HH[27]~91\ $ (GND))) # (!U_HH(28) & (!\U_HH[27]~91\ & VCC))
-- \U_HH[28]~93\ = CARRY((U_HH(28) & !\U_HH[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(28),
	datad => VCC,
	cin => \U_HH[27]~91\,
	combout => \U_HH[28]~92_combout\,
	cout => \U_HH[28]~93\);

-- Location: FF_X17_Y23_N25
\U_HH[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[28]~92_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(28));

-- Location: LCCOMB_X17_Y23_N26
\U_HH[29]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[29]~94_combout\ = (U_HH(29) & (!\U_HH[28]~93\)) # (!U_HH(29) & ((\U_HH[28]~93\) # (GND)))
-- \U_HH[29]~95\ = CARRY((!\U_HH[28]~93\) # (!U_HH(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(29),
	datad => VCC,
	cin => \U_HH[28]~93\,
	combout => \U_HH[29]~94_combout\,
	cout => \U_HH[29]~95\);

-- Location: FF_X17_Y23_N29
\U_HH[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[30]~96_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(30));

-- Location: FF_X17_Y23_N27
\U_HH[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[29]~94_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(29));

-- Location: LCCOMB_X16_Y23_N20
\D_HH[15]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~4_combout\ = (!U_HH(31) & (!U_HH(30) & (!U_HH(28) & !U_HH(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(31),
	datab => U_HH(30),
	datac => U_HH(28),
	datad => U_HH(29),
	combout => \D_HH[15]~4_combout\);

-- Location: LCCOMB_X17_Y23_N6
\U_HH[19]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[19]~74_combout\ = (U_HH(19) & (!\U_HH[18]~73\)) # (!U_HH(19) & ((\U_HH[18]~73\) # (GND)))
-- \U_HH[19]~75\ = CARRY((!\U_HH[18]~73\) # (!U_HH(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(19),
	datad => VCC,
	cin => \U_HH[18]~73\,
	combout => \U_HH[19]~74_combout\,
	cout => \U_HH[19]~75\);

-- Location: FF_X17_Y23_N7
\U_HH[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[19]~74_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(19));

-- Location: LCCOMB_X16_Y23_N26
\D_HH[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~7_combout\ = (!U_HH(17) & (!U_HH(16) & (!U_HH(19) & !U_HH(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(17),
	datab => U_HH(16),
	datac => U_HH(19),
	datad => U_HH(18),
	combout => \D_HH[15]~7_combout\);

-- Location: LCCOMB_X17_Y23_N10
\U_HH[21]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[21]~78_combout\ = (U_HH(21) & (!\U_HH[20]~77\)) # (!U_HH(21) & ((\U_HH[20]~77\) # (GND)))
-- \U_HH[21]~79\ = CARRY((!\U_HH[20]~77\) # (!U_HH(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(21),
	datad => VCC,
	cin => \U_HH[20]~77\,
	combout => \U_HH[21]~78_combout\,
	cout => \U_HH[21]~79\);

-- Location: FF_X17_Y23_N11
\U_HH[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[21]~78_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(21));

-- Location: LCCOMB_X16_Y23_N0
\D_HH[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~6_combout\ = (!U_HH(23) & (!U_HH(20) & (!U_HH(21) & !U_HH(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(23),
	datab => U_HH(20),
	datac => U_HH(21),
	datad => U_HH(22),
	combout => \D_HH[15]~6_combout\);

-- Location: LCCOMB_X16_Y23_N12
\D_HH[15]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~8_combout\ = (\D_HH[15]~5_combout\ & (\D_HH[15]~4_combout\ & (\D_HH[15]~7_combout\ & \D_HH[15]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~5_combout\,
	datab => \D_HH[15]~4_combout\,
	datac => \D_HH[15]~7_combout\,
	datad => \D_HH[15]~6_combout\,
	combout => \D_HH[15]~8_combout\);

-- Location: LCCOMB_X17_Y25_N20
\D_HH[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~12_combout\ = (\D_HH[15]~11_combout\ & (U_HH(0) & !U_HH(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~11_combout\,
	datab => U_HH(0),
	datac => U_HH(2),
	combout => \D_HH[15]~12_combout\);

-- Location: LCCOMB_X17_Y25_N14
\D_HH[15]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~13_combout\ = (\D_HH[15]~10_combout\ & (\D_HH[15]~9_combout\ & (\D_HH[15]~8_combout\ & \D_HH[15]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_HH[15]~10_combout\,
	datab => \D_HH[15]~9_combout\,
	datac => \D_HH[15]~8_combout\,
	datad => \D_HH[15]~12_combout\,
	combout => \D_HH[15]~13_combout\);

-- Location: LCCOMB_X17_Y25_N16
\D_HH[15]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_HH[15]~14_combout\ = (\D_HH[15]~13_combout\ & ((U_HH(1) & (!U_HH(3) & \Equal11~10_combout\)) # (!U_HH(1) & (U_HH(3) & !\Equal11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(1),
	datab => U_HH(3),
	datac => \D_HH[15]~13_combout\,
	datad => \Equal11~10_combout\,
	combout => \D_HH[15]~14_combout\);

-- Location: FF_X17_Y24_N1
\U_HH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[0]~32_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(0));

-- Location: LCCOMB_X17_Y24_N2
\U_HH[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[1]~34_combout\ = (U_HH(1) & (!\U_HH[0]~33\)) # (!U_HH(1) & ((\U_HH[0]~33\) # (GND)))
-- \U_HH[1]~35\ = CARRY((!\U_HH[0]~33\) # (!U_HH(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(1),
	datad => VCC,
	cin => \U_HH[0]~33\,
	combout => \U_HH[1]~34_combout\,
	cout => \U_HH[1]~35\);

-- Location: FF_X17_Y24_N3
\U_HH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[1]~34_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(1));

-- Location: LCCOMB_X17_Y24_N4
\U_HH[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[2]~36_combout\ = (U_HH(2) & (\U_HH[1]~35\ $ (GND))) # (!U_HH(2) & (!\U_HH[1]~35\ & VCC))
-- \U_HH[2]~37\ = CARRY((U_HH(2) & !\U_HH[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(2),
	datad => VCC,
	cin => \U_HH[1]~35\,
	combout => \U_HH[2]~36_combout\,
	cout => \U_HH[2]~37\);

-- Location: FF_X17_Y24_N5
\U_HH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[2]~36_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(2));

-- Location: LCCOMB_X17_Y24_N8
\U_HH[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[4]~40_combout\ = (U_HH(4) & (\U_HH[3]~39\ $ (GND))) # (!U_HH(4) & (!\U_HH[3]~39\ & VCC))
-- \U_HH[4]~41\ = CARRY((U_HH(4) & !\U_HH[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(4),
	datad => VCC,
	cin => \U_HH[3]~39\,
	combout => \U_HH[4]~40_combout\,
	cout => \U_HH[4]~41\);

-- Location: FF_X17_Y24_N9
\U_HH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[4]~40_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(4));

-- Location: LCCOMB_X17_Y24_N14
\U_HH[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[7]~46_combout\ = (U_HH(7) & (!\U_HH[6]~45\)) # (!U_HH(7) & ((\U_HH[6]~45\) # (GND)))
-- \U_HH[7]~47\ = CARRY((!\U_HH[6]~45\) # (!U_HH(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(7),
	datad => VCC,
	cin => \U_HH[6]~45\,
	combout => \U_HH[7]~46_combout\,
	cout => \U_HH[7]~47\);

-- Location: FF_X17_Y24_N15
\U_HH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[7]~46_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(7));

-- Location: LCCOMB_X17_Y24_N16
\U_HH[8]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[8]~52_combout\ = (U_HH(8) & (\U_HH[7]~47\ $ (GND))) # (!U_HH(8) & (!\U_HH[7]~47\ & VCC))
-- \U_HH[8]~53\ = CARRY((U_HH(8) & !\U_HH[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(8),
	datad => VCC,
	cin => \U_HH[7]~47\,
	combout => \U_HH[8]~52_combout\,
	cout => \U_HH[8]~53\);

-- Location: FF_X17_Y24_N17
\U_HH[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[8]~52_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(8));

-- Location: LCCOMB_X17_Y24_N18
\U_HH[9]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[9]~54_combout\ = (U_HH(9) & (!\U_HH[8]~53\)) # (!U_HH(9) & ((\U_HH[8]~53\) # (GND)))
-- \U_HH[9]~55\ = CARRY((!\U_HH[8]~53\) # (!U_HH(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(9),
	datad => VCC,
	cin => \U_HH[8]~53\,
	combout => \U_HH[9]~54_combout\,
	cout => \U_HH[9]~55\);

-- Location: FF_X17_Y24_N19
\U_HH[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[9]~54_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(9));

-- Location: LCCOMB_X17_Y24_N20
\U_HH[10]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[10]~56_combout\ = (U_HH(10) & (\U_HH[9]~55\ $ (GND))) # (!U_HH(10) & (!\U_HH[9]~55\ & VCC))
-- \U_HH[10]~57\ = CARRY((U_HH(10) & !\U_HH[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(10),
	datad => VCC,
	cin => \U_HH[9]~55\,
	combout => \U_HH[10]~56_combout\,
	cout => \U_HH[10]~57\);

-- Location: FF_X17_Y24_N21
\U_HH[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[10]~56_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(10));

-- Location: LCCOMB_X17_Y24_N22
\U_HH[11]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[11]~58_combout\ = (U_HH(11) & (!\U_HH[10]~57\)) # (!U_HH(11) & ((\U_HH[10]~57\) # (GND)))
-- \U_HH[11]~59\ = CARRY((!\U_HH[10]~57\) # (!U_HH(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(11),
	datad => VCC,
	cin => \U_HH[10]~57\,
	combout => \U_HH[11]~58_combout\,
	cout => \U_HH[11]~59\);

-- Location: LCCOMB_X17_Y24_N24
\U_HH[12]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[12]~60_combout\ = (U_HH(12) & (\U_HH[11]~59\ $ (GND))) # (!U_HH(12) & (!\U_HH[11]~59\ & VCC))
-- \U_HH[12]~61\ = CARRY((U_HH(12) & !\U_HH[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(12),
	datad => VCC,
	cin => \U_HH[11]~59\,
	combout => \U_HH[12]~60_combout\,
	cout => \U_HH[12]~61\);

-- Location: FF_X17_Y24_N25
\U_HH[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[12]~60_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(12));

-- Location: LCCOMB_X17_Y24_N28
\U_HH[14]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[14]~64_combout\ = (U_HH(14) & (\U_HH[13]~63\ $ (GND))) # (!U_HH(14) & (!\U_HH[13]~63\ & VCC))
-- \U_HH[14]~65\ = CARRY((U_HH(14) & !\U_HH[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(14),
	datad => VCC,
	cin => \U_HH[13]~63\,
	combout => \U_HH[14]~64_combout\,
	cout => \U_HH[14]~65\);

-- Location: FF_X17_Y24_N29
\U_HH[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[14]~64_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(14));

-- Location: LCCOMB_X17_Y23_N0
\U_HH[16]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[16]~68_combout\ = (U_HH(16) & (\U_HH[15]~67\ $ (GND))) # (!U_HH(16) & (!\U_HH[15]~67\ & VCC))
-- \U_HH[16]~69\ = CARRY((U_HH(16) & !\U_HH[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(16),
	datad => VCC,
	cin => \U_HH[15]~67\,
	combout => \U_HH[16]~68_combout\,
	cout => \U_HH[16]~69\);

-- Location: FF_X17_Y23_N1
\U_HH[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[16]~68_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(16));

-- Location: LCCOMB_X17_Y23_N2
\U_HH[17]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[17]~70_combout\ = (U_HH(17) & (!\U_HH[16]~69\)) # (!U_HH(17) & ((\U_HH[16]~69\) # (GND)))
-- \U_HH[17]~71\ = CARRY((!\U_HH[16]~69\) # (!U_HH(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(17),
	datad => VCC,
	cin => \U_HH[16]~69\,
	combout => \U_HH[17]~70_combout\,
	cout => \U_HH[17]~71\);

-- Location: FF_X17_Y23_N3
\U_HH[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[17]~70_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(17));

-- Location: LCCOMB_X17_Y23_N4
\U_HH[18]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[18]~72_combout\ = (U_HH(18) & (\U_HH[17]~71\ $ (GND))) # (!U_HH(18) & (!\U_HH[17]~71\ & VCC))
-- \U_HH[18]~73\ = CARRY((U_HH(18) & !\U_HH[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(18),
	datad => VCC,
	cin => \U_HH[17]~71\,
	combout => \U_HH[18]~72_combout\,
	cout => \U_HH[18]~73\);

-- Location: FF_X17_Y23_N5
\U_HH[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[18]~72_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(18));

-- Location: LCCOMB_X17_Y23_N8
\U_HH[20]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HH[20]~76_combout\ = (U_HH(20) & (\U_HH[19]~75\ $ (GND))) # (!U_HH(20) & (!\U_HH[19]~75\ & VCC))
-- \U_HH[20]~77\ = CARRY((U_HH(20) & !\U_HH[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U_HH(20),
	datad => VCC,
	cin => \U_HH[19]~75\,
	combout => \U_HH[20]~76_combout\,
	cout => \U_HH[20]~77\);

-- Location: FF_X17_Y23_N9
\U_HH[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[20]~76_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(20));

-- Location: FF_X17_Y23_N13
\U_HH[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[22]~80_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(22));

-- Location: LCCOMB_X19_Y20_N28
\D2|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~10_combout\ = (\EA.S1~q\ & (!U_SS_CRON(21) & ((!U_SS_CRON(22))))) # (!\EA.S1~q\ & (((!U_HH(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(21),
	datab => U_HH(22),
	datac => U_SS_CRON(22),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~10_combout\);

-- Location: LCCOMB_X16_Y23_N24
\D2|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~11_combout\ = (\EA.S1~q\ & (!U_SS_CRON(20))) # (!\EA.S1~q\ & (((!U_HH(20) & !U_HH(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(20),
	datab => U_HH(20),
	datac => U_HH(21),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~11_combout\);

-- Location: LCCOMB_X20_Y21_N6
\Selector70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\Selector64~0_combout\ & ((\Add3~50_combout\) # ((\Selector65~0_combout\ & U_SS_CRON(25))))) # (!\Selector64~0_combout\ & (\Selector65~0_combout\ & (U_SS_CRON(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datab => \Selector65~0_combout\,
	datac => U_SS_CRON(25),
	datad => \Add3~50_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X20_Y21_N7
\U_SS_CRON[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(25));

-- Location: LCCOMB_X20_Y21_N10
\D2|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~8_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(24) & !U_SS_CRON(25))))) # (!\EA.S1~q\ & (!U_HH(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(25),
	datab => U_SS_CRON(24),
	datac => \EA.S1~q\,
	datad => U_SS_CRON(25),
	combout => \D2|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y20_N12
\D2|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~12_combout\ = (\D2|Equal0~9_combout\ & (\D2|Equal0~10_combout\ & (\D2|Equal0~11_combout\ & \D2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~9_combout\,
	datab => \D2|Equal0~10_combout\,
	datac => \D2|Equal0~11_combout\,
	datad => \D2|Equal0~8_combout\,
	combout => \D2|Equal0~12_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Selector79~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector79~0_combout\ & ((U_SS_CRON(16)) # ((\Add3~32_combout\ & \Selector64~0_combout\)))) # (!\Selector79~0_combout\ & (((\Add3~32_combout\ & \Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~0_combout\,
	datab => U_SS_CRON(16),
	datac => \Add3~32_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X20_Y22_N4
\Selector79~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector79~2_combout\ = (\Selector79~1_combout\) # ((\ESTADO_CRON.PAUSE~q\ & U_SS_CRON(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(16),
	datad => \Selector79~1_combout\,
	combout => \Selector79~2_combout\);

-- Location: FF_X20_Y22_N5
\U_SS_CRON[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector79~2_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(16));

-- Location: LCCOMB_X20_Y22_N8
\D2|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~15_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(16) & !U_SS_CRON(15))))) # (!\EA.S1~q\ & (!U_HH(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(16),
	datab => U_SS_CRON(16),
	datac => U_SS_CRON(15),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~15_combout\);

-- Location: LCCOMB_X16_Y23_N30
\D2|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~14_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(17))))) # (!\EA.S1~q\ & (!U_HH(18) & ((!U_HH(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(18),
	datab => \EA.S1~q\,
	datac => U_SS_CRON(17),
	datad => U_HH(17),
	combout => \D2|Equal0~14_combout\);

-- Location: LCCOMB_X20_Y22_N12
\D2|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~16_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(14))))) # (!\EA.S1~q\ & (!U_HH(15) & (!U_HH(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(15),
	datab => \EA.S1~q\,
	datac => U_HH(14),
	datad => U_SS_CRON(14),
	combout => \D2|Equal0~16_combout\);

-- Location: LCCOMB_X20_Y22_N30
\D2|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~17_combout\ = (\D2|Equal0~13_combout\ & (\D2|Equal0~15_combout\ & (\D2|Equal0~14_combout\ & \D2|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~13_combout\,
	datab => \D2|Equal0~15_combout\,
	datac => \D2|Equal0~14_combout\,
	datad => \D2|Equal0~16_combout\,
	combout => \D2|Equal0~17_combout\);

-- Location: FF_X17_Y24_N23
\U_HH[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \U_HH[11]~58_combout\,
	sclr => \D_HH[15]~14_combout\,
	ena => \U_HH[30]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_HH(11));

-- Location: LCCOMB_X20_Y25_N16
\D2|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~19_combout\ = (\EA.S1~q\ & (!U_SS_CRON(11))) # (!\EA.S1~q\ & (((!U_HH(12) & !U_HH(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(11),
	datab => U_HH(12),
	datac => U_HH(11),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~19_combout\);

-- Location: LCCOMB_X20_Y22_N16
\D2|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~18_combout\ = (\EA.S1~q\ & (!U_SS_CRON(12) & (!U_SS_CRON(13)))) # (!\EA.S1~q\ & (((!U_HH(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(12),
	datab => U_SS_CRON(13),
	datac => U_HH(13),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~18_combout\);

-- Location: LCCOMB_X17_Y22_N30
\D2|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~20_combout\ = (\EA.S1~q\ & (((!U_SS_CRON(10) & !U_SS_CRON(9))))) # (!\EA.S1~q\ & (!U_HH(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_HH(10),
	datab => U_SS_CRON(10),
	datac => U_SS_CRON(9),
	datad => \EA.S1~q\,
	combout => \D2|Equal0~20_combout\);

-- Location: LCCOMB_X20_Y25_N30
\D2|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~22_combout\ = (\D2|Equal0~21_combout\ & (\D2|Equal0~19_combout\ & (\D2|Equal0~18_combout\ & \D2|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~21_combout\,
	datab => \D2|Equal0~19_combout\,
	datac => \D2|Equal0~18_combout\,
	datad => \D2|Equal0~20_combout\,
	combout => \D2|Equal0~22_combout\);

-- Location: LCCOMB_X19_Y20_N14
\D2|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~23_combout\ = (\D2|Equal0~7_combout\ & (\D2|Equal0~12_combout\ & (\D2|Equal0~17_combout\ & \D2|Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~7_combout\,
	datab => \D2|Equal0~12_combout\,
	datac => \D2|Equal0~17_combout\,
	datad => \D2|Equal0~22_combout\,
	combout => \D2|Equal0~23_combout\);

-- Location: LCCOMB_X23_Y25_N0
\D2|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal0~24_combout\ = (!\segundoDig[2]~0_combout\ & (!\segundoDig[3]~1_combout\ & (\D2|Equal0~2_combout\ & \D2|Equal0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundoDig[2]~0_combout\,
	datab => \segundoDig[3]~1_combout\,
	datac => \D2|Equal0~2_combout\,
	datad => \D2|Equal0~23_combout\,
	combout => \D2|Equal0~24_combout\);

-- Location: LCCOMB_X21_Y24_N10
\segundoDig[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundoDig[1]~3_combout\ = (\EA.S1~q\ & (U_SS_CRON(1))) # (!\EA.S1~q\ & ((U_HH(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_SS_CRON(1),
	datab => U_HH(1),
	datad => \EA.S1~q\,
	combout => \segundoDig[1]~3_combout\);

-- Location: LCCOMB_X19_Y25_N22
\segundoDig[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundoDig[2]~0_combout\ = (\EA.S1~q\ & (U_SS_CRON(2))) # (!\EA.S1~q\ & ((U_HH(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datac => U_SS_CRON(2),
	datad => U_HH(2),
	combout => \segundoDig[2]~0_combout\);

-- Location: LCCOMB_X20_Y24_N20
\Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (!\ESTADO_CRON.RUN~q\ & (!\Equal2~10_combout\ & (\Add3~0_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Equal2~10_combout\,
	datac => \Add3~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Selector95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (\Selector95~0_combout\) # ((U_SS_CRON(0) & ((\Selector79~0_combout\) # (\ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~0_combout\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_SS_CRON(0),
	datad => \Selector95~0_combout\,
	combout => \Selector95~1_combout\);

-- Location: FF_X20_Y24_N1
\U_SS_CRON[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector95~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(0));

-- Location: LCCOMB_X22_Y25_N24
\segundoDig[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundoDig[0]~2_combout\ = (\EA.S1~q\ & (U_SS_CRON(0))) # (!\EA.S1~q\ & ((U_HH(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S1~q\,
	datac => U_SS_CRON(0),
	datad => U_HH(0),
	combout => \segundoDig[0]~2_combout\);

-- Location: LCCOMB_X23_Y25_N16
\D2|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideNor0~0_combout\ = (\D2|Equal0~25_combout\ & ((\segundoDig[0]~2_combout\) # ((!\segundoDig[1]~3_combout\ & \segundoDig[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~25_combout\,
	datab => \segundoDig[1]~3_combout\,
	datac => \segundoDig[2]~0_combout\,
	datad => \segundoDig[0]~2_combout\,
	combout => \D2|WideNor0~0_combout\);

-- Location: LCCOMB_X23_Y25_N22
\D2|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideNor0~1_combout\ = ((\segundoDig[0]~2_combout\) # ((!\segundoDig[1]~3_combout\ & \segundoDig[2]~0_combout\))) # (!\D2|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~25_combout\,
	datab => \segundoDig[1]~3_combout\,
	datac => \segundoDig[2]~0_combout\,
	datad => \segundoDig[0]~2_combout\,
	combout => \D2|WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y25_N6
\D2|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr2~2_combout\ = ((\segundoDig[1]~3_combout\ $ (\segundoDig[2]~0_combout\)) # (!\segundoDig[0]~2_combout\)) # (!\D2|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~25_combout\,
	datab => \segundoDig[1]~3_combout\,
	datac => \segundoDig[2]~0_combout\,
	datad => \segundoDig[0]~2_combout\,
	combout => \D2|WideOr2~2_combout\);

-- Location: LCCOMB_X23_Y25_N20
\D2|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr2~3_combout\ = (\D2|WideOr2~2_combout\ & ((\D2|Equal8~1_combout\) # ((\D2|WideNor0~0_combout\) # (!\D2|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal8~1_combout\,
	datab => \D2|WideNor0~0_combout\,
	datac => \D2|WideNor0~1_combout\,
	datad => \D2|WideOr2~2_combout\,
	combout => \D2|WideOr2~3_combout\);

-- Location: LCCOMB_X23_Y25_N24
\D2|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr5~combout\ = ((\D2|Equal0~24_combout\ & (!\segundoDig[1]~3_combout\ & !\segundoDig[0]~2_combout\))) # (!\D2|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~24_combout\,
	datab => \D2|WideOr2~3_combout\,
	datac => \segundoDig[1]~3_combout\,
	datad => \segundoDig[0]~2_combout\,
	combout => \D2|WideOr5~combout\);

-- Location: LCCOMB_X23_Y25_N26
\D2|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr4~combout\ = ((\segundoDig[1]~3_combout\ & \D2|Equal0~24_combout\)) # (!\D2|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2|WideOr2~3_combout\,
	datac => \segundoDig[1]~3_combout\,
	datad => \D2|Equal0~24_combout\,
	combout => \D2|WideOr4~combout\);

-- Location: LCCOMB_X20_Y24_N6
\Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (U_SS_CRON(1) & ((\Selector79~0_combout\) # (\ESTADO_CRON.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_SS_CRON(1),
	datac => \Selector79~0_combout\,
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X20_Y24_N14
\Selector94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\Selector94~0_combout\) # ((\Add3~2_combout\ & \Selector92~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Selector92~1_combout\,
	datad => \Selector94~0_combout\,
	combout => \Selector94~1_combout\);

-- Location: FF_X20_Y24_N15
\U_SS_CRON[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector94~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_SS_CRON(1));

-- Location: LCCOMB_X21_Y24_N28
\D2|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal8~0_combout\ = (!\segundoDig[2]~0_combout\ & ((\EA.S1~q\ & ((!U_SS_CRON(1)))) # (!\EA.S1~q\ & (!U_HH(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_HH(1),
	datac => \segundoDig[2]~0_combout\,
	datad => U_SS_CRON(1),
	combout => \D2|Equal8~0_combout\);

-- Location: LCCOMB_X21_Y24_N26
\D2|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal8~1_combout\ = (\segundoDig[3]~1_combout\ & (\D2|Equal0~2_combout\ & (\D2|Equal0~23_combout\ & \D2|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundoDig[3]~1_combout\,
	datab => \D2|Equal0~2_combout\,
	datac => \D2|Equal0~23_combout\,
	datad => \D2|Equal8~0_combout\,
	combout => \D2|Equal8~1_combout\);

-- Location: LCCOMB_X23_Y25_N28
\D2|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideNor0~3_combout\ = (\D2|WideNor0~1_combout\ & ((\segundoDig[0]~2_combout\) # (!\D2|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|WideNor0~1_combout\,
	datab => \segundoDig[0]~2_combout\,
	datac => \D2|Equal8~1_combout\,
	combout => \D2|WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y25_N18
\D2|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Equal6~0_combout\ = (\segundoDig[2]~0_combout\ & (!\segundoDig[3]~1_combout\ & (\D2|Equal0~2_combout\ & \D2|Equal0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundoDig[2]~0_combout\,
	datab => \segundoDig[3]~1_combout\,
	datac => \D2|Equal0~2_combout\,
	datad => \D2|Equal0~23_combout\,
	combout => \D2|Equal6~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\D2|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr2~combout\ = ((\D2|Equal6~0_combout\ & (!\segundoDig[0]~2_combout\ & !\segundoDig[1]~3_combout\))) # (!\D2|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal6~0_combout\,
	datab => \segundoDig[0]~2_combout\,
	datac => \segundoDig[1]~3_combout\,
	datad => \D2|WideOr2~3_combout\,
	combout => \D2|WideOr2~combout\);

-- Location: LCCOMB_X23_Y25_N12
\D2|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideNor0~2_combout\ = ((\D2|WideNor0~0_combout\) # (\D2|Equal8~1_combout\)) # (!\D2|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|WideNor0~1_combout\,
	datab => \D2|WideNor0~0_combout\,
	datac => \D2|Equal8~1_combout\,
	combout => \D2|WideNor0~2_combout\);

-- Location: LCCOMB_X23_Y25_N14
\D2|salida[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|salida\(2) = ((!\segundoDig[0]~2_combout\ & (\segundoDig[1]~3_combout\ & \D2|Equal0~24_combout\))) # (!\D2|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|WideNor0~2_combout\,
	datab => \segundoDig[0]~2_combout\,
	datac => \segundoDig[1]~3_combout\,
	datad => \D2|Equal0~24_combout\,
	combout => \D2|salida\(2));

-- Location: LCCOMB_X23_Y25_N8
\D2|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr1~combout\ = ((\D2|Equal6~0_combout\ & (\segundoDig[0]~2_combout\ $ (\segundoDig[1]~3_combout\)))) # (!\D2|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|WideNor0~2_combout\,
	datab => \segundoDig[0]~2_combout\,
	datac => \segundoDig[1]~3_combout\,
	datad => \D2|Equal6~0_combout\,
	combout => \D2|WideOr1~combout\);

-- Location: LCCOMB_X23_Y25_N10
\D2|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideNor0~4_combout\ = ((\segundoDig[1]~3_combout\) # (\segundoDig[2]~0_combout\ $ (!\segundoDig[0]~2_combout\))) # (!\D2|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal0~25_combout\,
	datab => \segundoDig[1]~3_combout\,
	datac => \segundoDig[2]~0_combout\,
	datad => \segundoDig[0]~2_combout\,
	combout => \D2|WideNor0~4_combout\);

-- Location: LCCOMB_X23_Y25_N2
\D2|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|WideOr0~combout\ = ((!\D2|Equal8~1_combout\ & (!\D2|WideNor0~0_combout\ & \D2|WideNor0~1_combout\))) # (!\D2|WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|Equal8~1_combout\,
	datab => \D2|WideNor0~0_combout\,
	datac => \D2|WideNor0~1_combout\,
	datad => \D2|WideNor0~4_combout\,
	combout => \D2|WideOr0~combout\);

-- Location: LCCOMB_X19_Y25_N4
\tercerDig[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tercerDig[2]~1_combout\ = (\EA.S1~q\ & (D_CC_CRON(2))) # (!\EA.S1~q\ & ((D_MM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_CC_CRON(2),
	datad => D_MM(2),
	combout => \tercerDig[2]~1_combout\);

-- Location: FF_X19_Y24_N13
\D_MM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~12_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(6));

-- Location: LCCOMB_X24_Y24_N6
\Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Selector32~0_combout\ & ((\Add2~10_combout\) # ((D_CC_CRON(5) & \Selector33~0_combout\)))) # (!\Selector32~0_combout\ & (((D_CC_CRON(5) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Add2~10_combout\,
	datac => D_CC_CRON(5),
	datad => \Selector33~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X24_Y24_N7
\D_CC_CRON[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(5));

-- Location: LCCOMB_X24_Y24_N28
\D3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~2_combout\ = (\EA.S1~q\ & (!D_CC_CRON(6) & ((!D_CC_CRON(5))))) # (!\EA.S1~q\ & (((!D_MM(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_CC_CRON(6),
	datac => D_MM(6),
	datad => D_CC_CRON(5),
	combout => \D3|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y24_N16
\tercerDig[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tercerDig[3]~0_combout\ = (\EA.S1~q\ & ((D_CC_CRON(3)))) # (!\EA.S1~q\ & (D_MM(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_MM(3),
	datac => D_CC_CRON(3),
	datad => \EA.S1~q\,
	combout => \tercerDig[3]~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\D3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~3_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(4))))) # (!\EA.S1~q\ & (!D_MM(5) & ((!D_MM(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(5),
	datab => D_CC_CRON(4),
	datac => D_MM(4),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y23_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (D_CC_CRON(24) & (\Add2~47\ $ (GND))) # (!D_CC_CRON(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((D_CC_CRON(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X22_Y23_N4
\Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(24)) # ((\Selector32~0_combout\ & \Add2~48_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(24),
	datad => \Add2~48_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X22_Y23_N5
\D_CC_CRON[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(24));

-- Location: LCCOMB_X23_Y23_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (D_CC_CRON(25) & (!\Add2~49\)) # (!D_CC_CRON(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!D_CC_CRON(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X23_Y23_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (D_CC_CRON(26) & (\Add2~51\ $ (GND))) # (!D_CC_CRON(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((D_CC_CRON(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X21_Y23_N24
\Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(26)) # ((\Selector32~0_combout\ & \Add2~52_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(26),
	datad => \Add2~52_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X21_Y23_N25
\D_CC_CRON[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(26));

-- Location: LCCOMB_X16_Y23_N22
\D3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~4_combout\ = (\D3|Equal0~3_combout\ & ((\EA.S1~q\ & (!D_CC_CRON(26))) # (!\EA.S1~q\ & ((!D_MM(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => \D3|Equal0~3_combout\,
	datac => D_CC_CRON(26),
	datad => D_MM(26),
	combout => \D3|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y23_N8
\D3|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~26_combout\ = (\D3|Equal0~25_combout\ & (\D3|Equal0~2_combout\ & (!\tercerDig[3]~0_combout\ & \D3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~25_combout\,
	datab => \D3|Equal0~2_combout\,
	datac => \tercerDig[3]~0_combout\,
	datad => \D3|Equal0~4_combout\,
	combout => \D3|Equal0~26_combout\);

-- Location: LCCOMB_X24_Y24_N2
\tercerDig[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tercerDig[0]~2_combout\ = (\EA.S1~q\ & ((D_CC_CRON(0)))) # (!\EA.S1~q\ & (D_MM(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_MM(0),
	datac => D_CC_CRON(0),
	datad => \EA.S1~q\,
	combout => \tercerDig[0]~2_combout\);

-- Location: LCCOMB_X14_Y25_N14
\D3|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideNor0~0_combout\ = (\D3|Equal0~26_combout\ & ((\tercerDig[0]~2_combout\) # ((!\tercerDig[1]~3_combout\ & \tercerDig[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tercerDig[1]~3_combout\,
	datab => \tercerDig[2]~1_combout\,
	datac => \D3|Equal0~26_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideNor0~0_combout\);

-- Location: LCCOMB_X20_Y25_N4
\D3|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~16_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(16))))) # (!\EA.S1~q\ & (!D_MM(16) & (!D_MM(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(16),
	datab => D_MM(17),
	datac => \EA.S1~q\,
	datad => D_CC_CRON(16),
	combout => \D3|Equal0~16_combout\);

-- Location: LCCOMB_X22_Y23_N28
\D3|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~15_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(18) & !D_CC_CRON(17))))) # (!\EA.S1~q\ & (!D_MM(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(18),
	datab => D_CC_CRON(18),
	datac => D_CC_CRON(17),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~15_combout\);

-- Location: LCCOMB_X22_Y24_N0
\D3|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~17_combout\ = (\EA.S1~q\ & (!D_CC_CRON(14) & (!D_CC_CRON(15)))) # (!\EA.S1~q\ & (((!D_MM(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(14),
	datab => D_CC_CRON(15),
	datac => D_MM(15),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~17_combout\);

-- Location: LCCOMB_X22_Y25_N2
\D3|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~19_combout\ = (\D3|Equal0~18_combout\ & (\D3|Equal0~16_combout\ & (\D3|Equal0~15_combout\ & \D3|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~18_combout\,
	datab => \D3|Equal0~16_combout\,
	datac => \D3|Equal0~15_combout\,
	datad => \D3|Equal0~17_combout\,
	combout => \D3|Equal0~19_combout\);

-- Location: LCCOMB_X21_Y24_N24
\D3|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~23_combout\ = (\EA.S1~q\ & (!D_CC_CRON(7))) # (!\EA.S1~q\ & (((!D_MM(8) & !D_MM(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_CC_CRON(7),
	datac => D_MM(8),
	datad => D_MM(7),
	combout => \D3|Equal0~23_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\Add2~16_combout\ & ((\Selector32~0_combout\) # ((D_CC_CRON(8) & \Selector33~0_combout\)))) # (!\Add2~16_combout\ & (((D_CC_CRON(8) & \Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(8),
	datad => \Selector33~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X22_Y23_N1
\D_CC_CRON[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(8));

-- Location: LCCOMB_X22_Y23_N18
\D3|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~22_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(8) & !D_CC_CRON(9))))) # (!\EA.S1~q\ & (!D_MM(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(9),
	datab => D_CC_CRON(8),
	datac => D_CC_CRON(9),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~22_combout\);

-- Location: LCCOMB_X22_Y23_N6
\Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\Add2~22_combout\ & ((\Selector32~0_combout\) # ((\Selector33~0_combout\ & D_CC_CRON(11))))) # (!\Add2~22_combout\ & (\Selector33~0_combout\ & (D_CC_CRON(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Selector33~0_combout\,
	datac => D_CC_CRON(11),
	datad => \Selector32~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X22_Y23_N7
\D_CC_CRON[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(11));

-- Location: LCCOMB_X21_Y24_N16
\D3|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~20_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(12) & !D_CC_CRON(11))))) # (!\EA.S1~q\ & (!D_MM(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(12),
	datab => D_CC_CRON(12),
	datac => D_CC_CRON(11),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~20_combout\);

-- Location: LCCOMB_X21_Y24_N6
\D3|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~24_combout\ = (\D3|Equal0~21_combout\ & (\D3|Equal0~23_combout\ & (\D3|Equal0~22_combout\ & \D3|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~21_combout\,
	datab => \D3|Equal0~23_combout\,
	datac => \D3|Equal0~22_combout\,
	datad => \D3|Equal0~20_combout\,
	combout => \D3|Equal0~24_combout\);

-- Location: LCCOMB_X19_Y23_N24
\Add10~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~56_combout\ = (D_MM(28) & (\Add10~55\ $ (GND))) # (!D_MM(28) & (!\Add10~55\ & VCC))
-- \Add10~57\ = CARRY((D_MM(28) & !\Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(28),
	datad => VCC,
	cin => \Add10~55\,
	combout => \Add10~56_combout\,
	cout => \Add10~57\);

-- Location: FF_X19_Y23_N25
\D_MM[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~56_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(28));

-- Location: LCCOMB_X19_Y23_N28
\Add10~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~60_combout\ = (D_MM(30) & (\Add10~59\ $ (GND))) # (!D_MM(30) & (!\Add10~59\ & VCC))
-- \Add10~61\ = CARRY((D_MM(30) & !\Add10~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_MM(30),
	datad => VCC,
	cin => \Add10~59\,
	combout => \Add10~60_combout\,
	cout => \Add10~61\);

-- Location: FF_X19_Y23_N29
\D_MM[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~60_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(30));

-- Location: LCCOMB_X19_Y23_N30
\Add10~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~62_combout\ = D_MM(31) $ (\Add10~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(31),
	cin => \Add10~61\,
	combout => \Add10~62_combout\);

-- Location: FF_X19_Y23_N31
\D_MM[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add10~62_combout\,
	ena => \D_MM[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_MM(31));

-- Location: LCCOMB_X23_Y23_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (D_CC_CRON(27) & (!\Add2~53\)) # (!D_CC_CRON(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!D_CC_CRON(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X23_Y23_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (D_CC_CRON(28) & (\Add2~55\ $ (GND))) # (!D_CC_CRON(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((D_CC_CRON(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X22_Y23_N24
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(28)) # ((\Selector32~0_combout\ & \Add2~56_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(28),
	datad => \Add2~56_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X22_Y23_N25
\D_CC_CRON[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(28));

-- Location: LCCOMB_X23_Y23_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (D_CC_CRON(29) & (!\Add2~57\)) # (!D_CC_CRON(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!D_CC_CRON(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_CC_CRON(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X22_Y23_N22
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(29)) # ((\Selector32~0_combout\ & \Add2~58_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(29),
	datad => \Add2~58_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X22_Y23_N23
\D_CC_CRON[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(29));

-- Location: LCCOMB_X21_Y23_N22
\Selector33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(30)) # ((\Selector32~0_combout\ & \Add2~60_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(30),
	datad => \Add2~60_combout\,
	combout => \Selector33~1_combout\);

-- Location: FF_X21_Y23_N23
\D_CC_CRON[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector33~1_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(30));

-- Location: LCCOMB_X21_Y23_N16
\D3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~5_combout\ = (\EA.S1~q\ & (!D_CC_CRON(31) & ((!D_CC_CRON(30))))) # (!\EA.S1~q\ & (((!D_MM(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(31),
	datab => D_MM(31),
	datac => D_CC_CRON(30),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(27)) # ((\Selector32~0_combout\ & \Add2~54_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(27),
	datad => \Add2~54_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X21_Y23_N5
\D_CC_CRON[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(27));

-- Location: LCCOMB_X21_Y23_N30
\D3|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~7_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(27) & !D_CC_CRON(28))))) # (!\EA.S1~q\ & (!D_MM(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_MM(28),
	datac => D_CC_CRON(27),
	datad => D_CC_CRON(28),
	combout => \D3|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Selector33~0_combout\ & ((D_CC_CRON(25)) # ((\Selector32~0_combout\ & \Add2~50_combout\)))) # (!\Selector33~0_combout\ & (\Selector32~0_combout\ & ((\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector32~0_combout\,
	datac => D_CC_CRON(25),
	datad => \Add2~50_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X22_Y23_N11
\D_CC_CRON[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D_CC_CRON(25));

-- Location: LCCOMB_X21_Y23_N12
\D3|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~8_combout\ = (\EA.S1~q\ & (((!D_CC_CRON(25))))) # (!\EA.S1~q\ & (!D_MM(25) & ((!D_MM(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => D_MM(25),
	datac => D_CC_CRON(25),
	datad => D_MM(27),
	combout => \D3|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y23_N18
\D3|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~9_combout\ = (\D3|Equal0~6_combout\ & (\D3|Equal0~5_combout\ & (\D3|Equal0~7_combout\ & \D3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~6_combout\,
	datab => \D3|Equal0~5_combout\,
	datac => \D3|Equal0~7_combout\,
	datad => \D3|Equal0~8_combout\,
	combout => \D3|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y25_N4
\D3|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~25_combout\ = (\D3|Equal0~14_combout\ & (\D3|Equal0~19_combout\ & (\D3|Equal0~24_combout\ & \D3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal0~14_combout\,
	datab => \D3|Equal0~19_combout\,
	datac => \D3|Equal0~24_combout\,
	datad => \D3|Equal0~9_combout\,
	combout => \D3|Equal0~25_combout\);

-- Location: LCCOMB_X16_Y23_N18
\D3|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal8~1_combout\ = (\D3|Equal8~0_combout\ & (\D3|Equal0~4_combout\ & (\D3|Equal0~2_combout\ & \D3|Equal0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Equal8~0_combout\,
	datab => \D3|Equal0~4_combout\,
	datac => \D3|Equal0~2_combout\,
	datad => \D3|Equal0~25_combout\,
	combout => \D3|Equal8~1_combout\);

-- Location: LCCOMB_X14_Y25_N20
\D3|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideNor0~1_combout\ = ((\tercerDig[0]~2_combout\) # ((!\tercerDig[1]~3_combout\ & \tercerDig[2]~1_combout\))) # (!\D3|Equal0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tercerDig[1]~3_combout\,
	datab => \tercerDig[2]~1_combout\,
	datac => \D3|Equal0~26_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideNor0~1_combout\);

-- Location: LCCOMB_X14_Y25_N22
\D3|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr2~3_combout\ = (\D3|WideOr2~2_combout\ & ((\D3|WideNor0~0_combout\) # ((\D3|Equal8~1_combout\) # (!\D3|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideOr2~2_combout\,
	datab => \D3|WideNor0~0_combout\,
	datac => \D3|Equal8~1_combout\,
	datad => \D3|WideNor0~1_combout\,
	combout => \D3|WideOr2~3_combout\);

-- Location: LCCOMB_X14_Y25_N16
\D3|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal0~27_combout\ = (\D3|Equal0~26_combout\ & ((\EA.S1~q\ & (!D_CC_CRON(2))) # (!\EA.S1~q\ & ((!D_MM(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(2),
	datab => \D3|Equal0~26_combout\,
	datac => D_MM(2),
	datad => \EA.S1~q\,
	combout => \D3|Equal0~27_combout\);

-- Location: LCCOMB_X21_Y24_N0
\tercerDig[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tercerDig[1]~3_combout\ = (\EA.S1~q\ & ((D_CC_CRON(1)))) # (!\EA.S1~q\ & (D_MM(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_MM(1),
	datab => D_CC_CRON(1),
	datad => \EA.S1~q\,
	combout => \tercerDig[1]~3_combout\);

-- Location: LCCOMB_X14_Y25_N6
\D3|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr5~combout\ = ((\D3|Equal0~27_combout\ & (!\tercerDig[1]~3_combout\ & !\tercerDig[0]~2_combout\))) # (!\D3|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideOr2~3_combout\,
	datab => \D3|Equal0~27_combout\,
	datac => \tercerDig[1]~3_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideOr5~combout\);

-- Location: LCCOMB_X14_Y25_N24
\D3|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr4~combout\ = ((\tercerDig[1]~3_combout\ & \D3|Equal0~27_combout\)) # (!\D3|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideOr2~3_combout\,
	datac => \tercerDig[1]~3_combout\,
	datad => \D3|Equal0~27_combout\,
	combout => \D3|WideOr4~combout\);

-- Location: LCCOMB_X14_Y25_N26
\D3|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideNor0~3_combout\ = (\D3|WideNor0~1_combout\ & ((\tercerDig[0]~2_combout\) # (!\D3|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D3|WideNor0~1_combout\,
	datac => \D3|Equal8~1_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideNor0~3_combout\);

-- Location: LCCOMB_X14_Y25_N4
\D3|Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Equal6~2_combout\ = (\D3|Equal0~26_combout\ & ((\EA.S1~q\ & (D_CC_CRON(2))) # (!\EA.S1~q\ & ((D_MM(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_CC_CRON(2),
	datab => \D3|Equal0~26_combout\,
	datac => D_MM(2),
	datad => \EA.S1~q\,
	combout => \D3|Equal6~2_combout\);

-- Location: LCCOMB_X14_Y25_N0
\D3|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr2~combout\ = ((\D3|Equal6~2_combout\ & (!\tercerDig[1]~3_combout\ & !\tercerDig[0]~2_combout\))) # (!\D3|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideOr2~3_combout\,
	datab => \D3|Equal6~2_combout\,
	datac => \tercerDig[1]~3_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideOr2~combout\);

-- Location: LCCOMB_X14_Y25_N10
\D3|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideNor0~2_combout\ = (\D3|WideNor0~0_combout\) # ((\D3|Equal8~1_combout\) # (!\D3|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D3|WideNor0~0_combout\,
	datac => \D3|Equal8~1_combout\,
	datad => \D3|WideNor0~1_combout\,
	combout => \D3|WideNor0~2_combout\);

-- Location: LCCOMB_X14_Y25_N2
\D3|salida[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|salida\(2) = ((\D3|Equal0~27_combout\ & (\tercerDig[1]~3_combout\ & !\tercerDig[0]~2_combout\))) # (!\D3|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideNor0~2_combout\,
	datab => \D3|Equal0~27_combout\,
	datac => \tercerDig[1]~3_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|salida\(2));

-- Location: LCCOMB_X14_Y25_N28
\D3|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr1~combout\ = ((\D3|Equal6~2_combout\ & (\tercerDig[1]~3_combout\ $ (\tercerDig[0]~2_combout\)))) # (!\D3|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideNor0~2_combout\,
	datab => \D3|Equal6~2_combout\,
	datac => \tercerDig[1]~3_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideOr1~combout\);

-- Location: LCCOMB_X14_Y25_N30
\D3|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideNor0~4_combout\ = (\tercerDig[1]~3_combout\) # ((\tercerDig[2]~1_combout\ $ (!\tercerDig[0]~2_combout\)) # (!\D3|Equal0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tercerDig[1]~3_combout\,
	datab => \tercerDig[2]~1_combout\,
	datac => \D3|Equal0~26_combout\,
	datad => \tercerDig[0]~2_combout\,
	combout => \D3|WideNor0~4_combout\);

-- Location: LCCOMB_X14_Y25_N18
\D3|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|WideOr0~combout\ = ((!\D3|WideNor0~0_combout\ & (!\D3|Equal8~1_combout\ & \D3|WideNor0~1_combout\))) # (!\D3|WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|WideNor0~4_combout\,
	datab => \D3|WideNor0~0_combout\,
	datac => \D3|Equal8~1_combout\,
	datad => \D3|WideNor0~1_combout\,
	combout => \D3|WideOr0~combout\);

-- Location: LCCOMB_X23_Y21_N28
\cuartoDig[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cuartoDig[1]~3_combout\ = (\EA.S1~q\ & ((U_CC_CRON(1)))) # (!\EA.S1~q\ & (U_MM(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S1~q\,
	datac => U_MM(1),
	datad => U_CC_CRON(1),
	combout => \cuartoDig[1]~3_combout\);

-- Location: LCCOMB_X21_Y21_N16
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\ESTADO_CRON.RUN~q\ & (((U_CC_CRON(5) & \ESTADO_CRON.PAUSE~q\)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~10_combout\) # ((U_CC_CRON(5) & \ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Add1~10_combout\,
	datac => U_CC_CRON(5),
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X21_Y21_N17
\U_CC_CRON[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(5));

-- Location: LCCOMB_X21_Y21_N14
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\ESTADO_CRON.RUN~q\ & (((U_CC_CRON(4) & \ESTADO_CRON.PAUSE~q\)))) # (!\ESTADO_CRON.RUN~q\ & ((\Add1~8_combout\) # ((U_CC_CRON(4) & \ESTADO_CRON.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ESTADO_CRON.RUN~q\,
	datab => \Add1~8_combout\,
	datac => U_CC_CRON(4),
	datad => \ESTADO_CRON.PAUSE~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X21_Y21_N15
\U_CC_CRON[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(4));

-- Location: LCCOMB_X21_Y21_N28
\D4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~0_combout\ = (U_CC_CRON(5)) # ((U_CC_CRON(4)) # (U_CC_CRON(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(5),
	datac => U_CC_CRON(4),
	datad => U_CC_CRON(6),
	combout => \D4|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\D4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~2_combout\ = (\EA.S1~q\ & (!U_CC_CRON(7) & ((!\D4|Equal0~0_combout\)))) # (!\EA.S1~q\ & (((!\D4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_CC_CRON(7),
	datac => \D4|Equal0~1_combout\,
	datad => \D4|Equal0~0_combout\,
	combout => \D4|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y21_N8
\D4|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~21_combout\ = (\EA.S1~q\ & (!U_CC_CRON(8))) # (!\EA.S1~q\ & (((!U_MM(8) & !U_MM(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(8),
	datab => \EA.S1~q\,
	datac => U_MM(8),
	datad => U_MM(9),
	combout => \D4|Equal0~21_combout\);

-- Location: LCCOMB_X21_Y21_N26
\D4|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~20_combout\ = (\EA.S1~q\ & (!U_CC_CRON(9) & ((!U_CC_CRON(10))))) # (!\EA.S1~q\ & (((!U_MM(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_CC_CRON(9),
	datac => U_MM(10),
	datad => U_CC_CRON(10),
	combout => \D4|Equal0~20_combout\);

-- Location: FF_X16_Y21_N27
\U_MM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~26_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(13));

-- Location: LCCOMB_X20_Y20_N0
\D4|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~18_combout\ = (\EA.S1~q\ & (!U_CC_CRON(12) & ((!U_CC_CRON(13))))) # (!\EA.S1~q\ & (((!U_MM(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(12),
	datab => U_MM(13),
	datac => U_CC_CRON(13),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~18_combout\);

-- Location: LCCOMB_X21_Y21_N10
\D4|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~22_combout\ = (\D4|Equal0~19_combout\ & (\D4|Equal0~21_combout\ & (\D4|Equal0~20_combout\ & \D4|Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal0~19_combout\,
	datab => \D4|Equal0~21_combout\,
	datac => \D4|Equal0~20_combout\,
	datad => \D4|Equal0~18_combout\,
	combout => \D4|Equal0~22_combout\);

-- Location: LCCOMB_X20_Y20_N16
\D4|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~14_combout\ = (\EA.S1~q\ & (((!U_CC_CRON(17))))) # (!\EA.S1~q\ & (!U_MM(18) & ((!U_MM(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(18),
	datab => U_CC_CRON(17),
	datac => U_MM(17),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~14_combout\);

-- Location: LCCOMB_X21_Y20_N0
\D4|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~15_combout\ = (\EA.S1~q\ & (!U_CC_CRON(16) & ((!U_CC_CRON(15))))) # (!\EA.S1~q\ & (((!U_MM(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datab => U_CC_CRON(16),
	datac => U_MM(16),
	datad => U_CC_CRON(15),
	combout => \D4|Equal0~15_combout\);

-- Location: LCCOMB_X20_Y20_N18
\D4|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~13_combout\ = (\EA.S1~q\ & (!U_CC_CRON(18) & (!U_CC_CRON(19)))) # (!\EA.S1~q\ & (((!U_MM(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(18),
	datab => \EA.S1~q\,
	datac => U_CC_CRON(19),
	datad => U_MM(19),
	combout => \D4|Equal0~13_combout\);

-- Location: LCCOMB_X20_Y20_N26
\D4|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~17_combout\ = (\D4|Equal0~16_combout\ & (\D4|Equal0~14_combout\ & (\D4|Equal0~15_combout\ & \D4|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal0~16_combout\,
	datab => \D4|Equal0~14_combout\,
	datac => \D4|Equal0~15_combout\,
	datad => \D4|Equal0~13_combout\,
	combout => \D4|Equal0~17_combout\);

-- Location: FF_X16_Y20_N13
\U_MM[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Add9~44_combout\,
	ena => \U_HH[30]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_MM(22));

-- Location: LCCOMB_X20_Y20_N4
\D4|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~10_combout\ = (\EA.S1~q\ & (!U_CC_CRON(21) & (!U_CC_CRON(22)))) # (!\EA.S1~q\ & (((!U_MM(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_CC_CRON(21),
	datab => \EA.S1~q\,
	datac => U_CC_CRON(22),
	datad => U_MM(22),
	combout => \D4|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y20_N24
\D4|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~9_combout\ = (\EA.S1~q\ & (((!U_CC_CRON(23))))) # (!\EA.S1~q\ & (!U_MM(24) & (!U_MM(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(24),
	datab => U_MM(23),
	datac => U_CC_CRON(23),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y20_N10
\D4|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~8_combout\ = (\EA.S1~q\ & (((!U_CC_CRON(24) & !U_CC_CRON(25))))) # (!\EA.S1~q\ & (!U_MM(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(25),
	datab => U_CC_CRON(24),
	datac => U_CC_CRON(25),
	datad => \EA.S1~q\,
	combout => \D4|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y22_N30
\D4|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~12_combout\ = (\D4|Equal0~11_combout\ & (\D4|Equal0~10_combout\ & (\D4|Equal0~9_combout\ & \D4|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal0~11_combout\,
	datab => \D4|Equal0~10_combout\,
	datac => \D4|Equal0~9_combout\,
	datad => \D4|Equal0~8_combout\,
	combout => \D4|Equal0~12_combout\);

-- Location: LCCOMB_X20_Y21_N12
\D4|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~23_combout\ = (\D4|Equal0~7_combout\ & (\D4|Equal0~22_combout\ & (\D4|Equal0~17_combout\ & \D4|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal0~7_combout\,
	datab => \D4|Equal0~22_combout\,
	datac => \D4|Equal0~17_combout\,
	datad => \D4|Equal0~12_combout\,
	combout => \D4|Equal0~23_combout\);

-- Location: LCCOMB_X23_Y21_N10
\cuartoDig[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cuartoDig[3]~1_combout\ = (\EA.S1~q\ & ((U_CC_CRON(3)))) # (!\EA.S1~q\ & (U_MM(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(3),
	datab => U_CC_CRON(3),
	datad => \EA.S1~q\,
	combout => \cuartoDig[3]~1_combout\);

-- Location: LCCOMB_X23_Y21_N22
\D4|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~25_combout\ = (\D4|Equal0~2_combout\ & (\D4|Equal0~23_combout\ & !\cuartoDig[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D4|Equal0~2_combout\,
	datac => \D4|Equal0~23_combout\,
	datad => \cuartoDig[3]~1_combout\,
	combout => \D4|Equal0~25_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add1~0_combout\ & (((\ESTADO_CRON.PAUSE~q\ & U_CC_CRON(0))) # (!\ESTADO_CRON.RUN~q\))) # (!\Add1~0_combout\ & (\ESTADO_CRON.PAUSE~q\ & (U_CC_CRON(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \ESTADO_CRON.PAUSE~q\,
	datac => U_CC_CRON(0),
	datad => \ESTADO_CRON.RUN~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X23_Y21_N31
\U_CC_CRON[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_CC_CRON(0));

-- Location: LCCOMB_X23_Y21_N24
\cuartoDig[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cuartoDig[0]~2_combout\ = (\EA.S1~q\ & ((U_CC_CRON(0)))) # (!\EA.S1~q\ & (U_MM(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_MM(0),
	datac => U_CC_CRON(0),
	datad => \EA.S1~q\,
	combout => \cuartoDig[0]~2_combout\);

-- Location: LCCOMB_X23_Y26_N16
\D4|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideNor0~0_combout\ = (\D4|Equal0~25_combout\ & ((\cuartoDig[0]~2_combout\) # ((\cuartoDig[2]~0_combout\ & !\cuartoDig[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[2]~0_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal0~25_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideNor0~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\D4|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal8~1_combout\ = (\D4|Equal8~0_combout\ & (\D4|Equal0~2_combout\ & (\D4|Equal0~23_combout\ & \cuartoDig[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|Equal8~0_combout\,
	datab => \D4|Equal0~2_combout\,
	datac => \D4|Equal0~23_combout\,
	datad => \cuartoDig[3]~1_combout\,
	combout => \D4|Equal8~1_combout\);

-- Location: LCCOMB_X23_Y26_N2
\D4|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideNor0~1_combout\ = ((\cuartoDig[0]~2_combout\) # ((\cuartoDig[2]~0_combout\ & !\cuartoDig[1]~3_combout\))) # (!\D4|Equal0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[2]~0_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal0~25_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y26_N22
\D4|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr2~3_combout\ = (\D4|WideOr2~2_combout\ & ((\D4|WideNor0~0_combout\) # ((\D4|Equal8~1_combout\) # (!\D4|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideOr2~2_combout\,
	datab => \D4|WideNor0~0_combout\,
	datac => \D4|Equal8~1_combout\,
	datad => \D4|WideNor0~1_combout\,
	combout => \D4|WideOr2~3_combout\);

-- Location: LCCOMB_X23_Y21_N26
\cuartoDig[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cuartoDig[2]~0_combout\ = (\EA.S1~q\ & (U_CC_CRON(2))) # (!\EA.S1~q\ & ((U_MM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_CC_CRON(2),
	datac => U_MM(2),
	datad => \EA.S1~q\,
	combout => \cuartoDig[2]~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\D4|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal0~24_combout\ = (!\cuartoDig[3]~1_combout\ & (\D4|Equal0~2_combout\ & (\D4|Equal0~23_combout\ & !\cuartoDig[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[3]~1_combout\,
	datab => \D4|Equal0~2_combout\,
	datac => \D4|Equal0~23_combout\,
	datad => \cuartoDig[2]~0_combout\,
	combout => \D4|Equal0~24_combout\);

-- Location: LCCOMB_X23_Y26_N0
\D4|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr5~combout\ = ((\D4|Equal0~24_combout\ & (!\cuartoDig[1]~3_combout\ & !\cuartoDig[0]~2_combout\))) # (!\D4|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideOr2~3_combout\,
	datab => \D4|Equal0~24_combout\,
	datac => \cuartoDig[1]~3_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideOr5~combout\);

-- Location: LCCOMB_X23_Y26_N10
\D4|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr4~combout\ = ((\D4|Equal0~24_combout\ & \cuartoDig[1]~3_combout\)) # (!\D4|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideOr2~3_combout\,
	datab => \D4|Equal0~24_combout\,
	datac => \cuartoDig[1]~3_combout\,
	combout => \D4|WideOr4~combout\);

-- Location: LCCOMB_X23_Y26_N8
\D4|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideNor0~3_combout\ = (\D4|WideNor0~1_combout\ & ((\cuartoDig[0]~2_combout\) # (!\D4|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuartoDig[0]~2_combout\,
	datac => \D4|Equal8~1_combout\,
	datad => \D4|WideNor0~1_combout\,
	combout => \D4|WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y21_N16
\D4|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|Equal6~0_combout\ = (!\cuartoDig[3]~1_combout\ & (\D4|Equal0~2_combout\ & (\D4|Equal0~23_combout\ & \cuartoDig[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[3]~1_combout\,
	datab => \D4|Equal0~2_combout\,
	datac => \D4|Equal0~23_combout\,
	datad => \cuartoDig[2]~0_combout\,
	combout => \D4|Equal6~0_combout\);

-- Location: LCCOMB_X23_Y26_N30
\D4|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr2~combout\ = ((!\cuartoDig[1]~3_combout\ & (\D4|Equal6~0_combout\ & !\cuartoDig[0]~2_combout\))) # (!\D4|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideOr2~3_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal6~0_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideOr2~combout\);

-- Location: LCCOMB_X23_Y26_N24
\D4|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideNor0~2_combout\ = (\D4|WideNor0~0_combout\) # ((\D4|Equal8~1_combout\) # (!\D4|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D4|WideNor0~0_combout\,
	datac => \D4|Equal8~1_combout\,
	datad => \D4|WideNor0~1_combout\,
	combout => \D4|WideNor0~2_combout\);

-- Location: LCCOMB_X23_Y26_N20
\D4|salida[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|salida\(2) = ((\cuartoDig[1]~3_combout\ & (\D4|Equal0~24_combout\ & !\cuartoDig[0]~2_combout\))) # (!\D4|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideNor0~2_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal0~24_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|salida\(2));

-- Location: LCCOMB_X23_Y26_N18
\D4|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr1~combout\ = ((\D4|Equal6~0_combout\ & (\cuartoDig[1]~3_combout\ $ (\cuartoDig[0]~2_combout\)))) # (!\D4|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideNor0~2_combout\,
	datab => \D4|Equal6~0_combout\,
	datac => \cuartoDig[1]~3_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideOr1~combout\);

-- Location: LCCOMB_X23_Y26_N12
\D4|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideNor0~4_combout\ = (\cuartoDig[1]~3_combout\) # ((\cuartoDig[2]~0_combout\ $ (!\cuartoDig[0]~2_combout\)) # (!\D4|Equal0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuartoDig[2]~0_combout\,
	datab => \cuartoDig[1]~3_combout\,
	datac => \D4|Equal0~25_combout\,
	datad => \cuartoDig[0]~2_combout\,
	combout => \D4|WideNor0~4_combout\);

-- Location: LCCOMB_X23_Y26_N28
\D4|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D4|WideOr0~combout\ = ((!\D4|WideNor0~0_combout\ & (!\D4|Equal8~1_combout\ & \D4|WideNor0~1_combout\))) # (!\D4|WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4|WideNor0~4_combout\,
	datab => \D4|WideNor0~0_combout\,
	datac => \D4|Equal8~1_combout\,
	datad => \D4|WideNor0~1_combout\,
	combout => \D4|WideOr0~combout\);

-- Location: LCCOMB_X16_Y24_N2
\estado[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado[0]$latch~combout\ = (\EA.S1~q\ & (\estado[0]$latch~combout\)) # (!\EA.S1~q\ & ((\EA.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado[0]$latch~combout\,
	datac => \EA.S2~q\,
	datad => \EA.S1~q\,
	combout => \estado[0]$latch~combout\);

-- Location: LCCOMB_X22_Y13_N4
\CLOCK_MS~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK_MS~feeder_combout\ = \CLOCK_MS~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_MS~0_combout\,
	combout => \CLOCK_MS~feeder_combout\);

-- Location: FF_X22_Y13_N5
CLOCK_MS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_MS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_MS~q\);

-- Location: CLKCTRL_G17
\CLOCK_MS~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_MS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_MS~clkctrl_outclk\);

-- Location: DDIOOUTCELL_X16_Y29_N4
\clk_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \ALT_INV_ESTADO_CRON.RUN~q\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out[0]~reg0_q\);

-- Location: DDIOOUTCELL_X14_Y29_N11
\clk_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => \ESTADO_CRON.PAUSE~q\,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out[1]~reg0_q\);

-- Location: DDIOOUTCELL_X14_Y29_N25
\clk_out[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_MS~clkctrl_outclk\,
	d => GND,
	ena => \EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out[31]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_U_S1(0) <= \U_S1[0]~output_o\;

ww_U_S1(1) <= \U_S1[1]~output_o\;

ww_U_S1(2) <= \U_S1[2]~output_o\;

ww_U_S1(3) <= \U_S1[3]~output_o\;

ww_U_S1(4) <= \U_S1[4]~output_o\;

ww_U_S1(5) <= \U_S1[5]~output_o\;

ww_U_S1(6) <= \U_S1[6]~output_o\;

ww_U_S1(7) <= \U_S1[7]~output_o\;

ww_U_S1(8) <= \U_S1[8]~output_o\;

ww_U_S1(9) <= \U_S1[9]~output_o\;

ww_U_S1(10) <= \U_S1[10]~output_o\;

ww_U_S1(11) <= \U_S1[11]~output_o\;

ww_U_S1(12) <= \U_S1[12]~output_o\;

ww_U_S1(13) <= \U_S1[13]~output_o\;

ww_U_S1(14) <= \U_S1[14]~output_o\;

ww_U_S1(15) <= \U_S1[15]~output_o\;

ww_U_S1(16) <= \U_S1[16]~output_o\;

ww_U_S1(17) <= \U_S1[17]~output_o\;

ww_U_S1(18) <= \U_S1[18]~output_o\;

ww_U_S1(19) <= \U_S1[19]~output_o\;

ww_U_S1(20) <= \U_S1[20]~output_o\;

ww_U_S1(21) <= \U_S1[21]~output_o\;

ww_U_S1(22) <= \U_S1[22]~output_o\;

ww_U_S1(23) <= \U_S1[23]~output_o\;

ww_U_S1(24) <= \U_S1[24]~output_o\;

ww_U_S1(25) <= \U_S1[25]~output_o\;

ww_U_S1(26) <= \U_S1[26]~output_o\;

ww_U_S1(27) <= \U_S1[27]~output_o\;

ww_U_S1(28) <= \U_S1[28]~output_o\;

ww_U_S1(29) <= \U_S1[29]~output_o\;

ww_U_S1(30) <= \U_S1[30]~output_o\;

ww_U_S1(31) <= \U_S1[31]~output_o\;

ww_D_S1(0) <= \D_S1[0]~output_o\;

ww_D_S1(1) <= \D_S1[1]~output_o\;

ww_D_S1(2) <= \D_S1[2]~output_o\;

ww_D_S1(3) <= \D_S1[3]~output_o\;

ww_D_S1(4) <= \D_S1[4]~output_o\;

ww_D_S1(5) <= \D_S1[5]~output_o\;

ww_D_S1(6) <= \D_S1[6]~output_o\;

ww_D_S1(7) <= \D_S1[7]~output_o\;

ww_D_S1(8) <= \D_S1[8]~output_o\;

ww_D_S1(9) <= \D_S1[9]~output_o\;

ww_D_S1(10) <= \D_S1[10]~output_o\;

ww_D_S1(11) <= \D_S1[11]~output_o\;

ww_D_S1(12) <= \D_S1[12]~output_o\;

ww_D_S1(13) <= \D_S1[13]~output_o\;

ww_D_S1(14) <= \D_S1[14]~output_o\;

ww_D_S1(15) <= \D_S1[15]~output_o\;

ww_D_S1(16) <= \D_S1[16]~output_o\;

ww_D_S1(17) <= \D_S1[17]~output_o\;

ww_D_S1(18) <= \D_S1[18]~output_o\;

ww_D_S1(19) <= \D_S1[19]~output_o\;

ww_D_S1(20) <= \D_S1[20]~output_o\;

ww_D_S1(21) <= \D_S1[21]~output_o\;

ww_D_S1(22) <= \D_S1[22]~output_o\;

ww_D_S1(23) <= \D_S1[23]~output_o\;

ww_D_S1(24) <= \D_S1[24]~output_o\;

ww_D_S1(25) <= \D_S1[25]~output_o\;

ww_D_S1(26) <= \D_S1[26]~output_o\;

ww_D_S1(27) <= \D_S1[27]~output_o\;

ww_D_S1(28) <= \D_S1[28]~output_o\;

ww_D_S1(29) <= \D_S1[29]~output_o\;

ww_D_S1(30) <= \D_S1[30]~output_o\;

ww_D_S1(31) <= \D_S1[31]~output_o\;

ww_U_M1(0) <= \U_M1[0]~output_o\;

ww_U_M1(1) <= \U_M1[1]~output_o\;

ww_U_M1(2) <= \U_M1[2]~output_o\;

ww_U_M1(3) <= \U_M1[3]~output_o\;

ww_U_M1(4) <= \U_M1[4]~output_o\;

ww_U_M1(5) <= \U_M1[5]~output_o\;

ww_U_M1(6) <= \U_M1[6]~output_o\;

ww_U_M1(7) <= \U_M1[7]~output_o\;

ww_U_M1(8) <= \U_M1[8]~output_o\;

ww_U_M1(9) <= \U_M1[9]~output_o\;

ww_U_M1(10) <= \U_M1[10]~output_o\;

ww_U_M1(11) <= \U_M1[11]~output_o\;

ww_U_M1(12) <= \U_M1[12]~output_o\;

ww_U_M1(13) <= \U_M1[13]~output_o\;

ww_U_M1(14) <= \U_M1[14]~output_o\;

ww_U_M1(15) <= \U_M1[15]~output_o\;

ww_U_M1(16) <= \U_M1[16]~output_o\;

ww_U_M1(17) <= \U_M1[17]~output_o\;

ww_U_M1(18) <= \U_M1[18]~output_o\;

ww_U_M1(19) <= \U_M1[19]~output_o\;

ww_U_M1(20) <= \U_M1[20]~output_o\;

ww_U_M1(21) <= \U_M1[21]~output_o\;

ww_U_M1(22) <= \U_M1[22]~output_o\;

ww_U_M1(23) <= \U_M1[23]~output_o\;

ww_U_M1(24) <= \U_M1[24]~output_o\;

ww_U_M1(25) <= \U_M1[25]~output_o\;

ww_U_M1(26) <= \U_M1[26]~output_o\;

ww_U_M1(27) <= \U_M1[27]~output_o\;

ww_U_M1(28) <= \U_M1[28]~output_o\;

ww_U_M1(29) <= \U_M1[29]~output_o\;

ww_U_M1(30) <= \U_M1[30]~output_o\;

ww_U_M1(31) <= \U_M1[31]~output_o\;

ww_estado(0) <= \estado[0]~output_o\;

ww_estado(1) <= \estado[1]~output_o\;

ww_estado(2) <= \estado[2]~output_o\;

ww_estado(3) <= \estado[3]~output_o\;

ww_estado(4) <= \estado[4]~output_o\;

ww_estado(5) <= \estado[5]~output_o\;

ww_estado(6) <= \estado[6]~output_o\;

ww_estado(7) <= \estado[7]~output_o\;

ww_estado(8) <= \estado[8]~output_o\;

ww_estado(9) <= \estado[9]~output_o\;

ww_estado(10) <= \estado[10]~output_o\;

ww_estado(11) <= \estado[11]~output_o\;

ww_estado(12) <= \estado[12]~output_o\;

ww_estado(13) <= \estado[13]~output_o\;

ww_estado(14) <= \estado[14]~output_o\;

ww_estado(15) <= \estado[15]~output_o\;

ww_estado(16) <= \estado[16]~output_o\;

ww_estado(17) <= \estado[17]~output_o\;

ww_estado(18) <= \estado[18]~output_o\;

ww_estado(19) <= \estado[19]~output_o\;

ww_estado(20) <= \estado[20]~output_o\;

ww_estado(21) <= \estado[21]~output_o\;

ww_estado(22) <= \estado[22]~output_o\;

ww_estado(23) <= \estado[23]~output_o\;

ww_estado(24) <= \estado[24]~output_o\;

ww_estado(25) <= \estado[25]~output_o\;

ww_estado(26) <= \estado[26]~output_o\;

ww_estado(27) <= \estado[27]~output_o\;

ww_estado(28) <= \estado[28]~output_o\;

ww_estado(29) <= \estado[29]~output_o\;

ww_estado(30) <= \estado[30]~output_o\;

ww_estado(31) <= \estado[31]~output_o\;

ww_clk_out(0) <= \clk_out[0]~output_o\;

ww_clk_out(1) <= \clk_out[1]~output_o\;

ww_clk_out(2) <= \clk_out[2]~output_o\;

ww_clk_out(3) <= \clk_out[3]~output_o\;

ww_clk_out(4) <= \clk_out[4]~output_o\;

ww_clk_out(5) <= \clk_out[5]~output_o\;

ww_clk_out(6) <= \clk_out[6]~output_o\;

ww_clk_out(7) <= \clk_out[7]~output_o\;

ww_clk_out(8) <= \clk_out[8]~output_o\;

ww_clk_out(9) <= \clk_out[9]~output_o\;

ww_clk_out(10) <= \clk_out[10]~output_o\;

ww_clk_out(11) <= \clk_out[11]~output_o\;

ww_clk_out(12) <= \clk_out[12]~output_o\;

ww_clk_out(13) <= \clk_out[13]~output_o\;

ww_clk_out(14) <= \clk_out[14]~output_o\;

ww_clk_out(15) <= \clk_out[15]~output_o\;

ww_clk_out(16) <= \clk_out[16]~output_o\;

ww_clk_out(17) <= \clk_out[17]~output_o\;

ww_clk_out(18) <= \clk_out[18]~output_o\;

ww_clk_out(19) <= \clk_out[19]~output_o\;

ww_clk_out(20) <= \clk_out[20]~output_o\;

ww_clk_out(21) <= \clk_out[21]~output_o\;

ww_clk_out(22) <= \clk_out[22]~output_o\;

ww_clk_out(23) <= \clk_out[23]~output_o\;

ww_clk_out(24) <= \clk_out[24]~output_o\;

ww_clk_out(25) <= \clk_out[25]~output_o\;

ww_clk_out(26) <= \clk_out[26]~output_o\;

ww_clk_out(27) <= \clk_out[27]~output_o\;

ww_clk_out(28) <= \clk_out[28]~output_o\;

ww_clk_out(29) <= \clk_out[29]~output_o\;

ww_clk_out(30) <= \clk_out[30]~output_o\;

ww_clk_out(31) <= \clk_out[31]~output_o\;
END structure;


