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

-- DATE "10/28/2013 16:30:59"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reloj IS
    PORT (
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	CLOCK_50 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	clk_out : OUT std_logic
	);
END reloj;

-- Design Ports Information
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW0	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY2	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \CLOCK_10~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \hora[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \hora[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \hora[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \segundo[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \segundo[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \centesima[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \hora[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \CLOCK_10~0_combout\ : std_logic;
SIGNAL \CLOCK_10~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \CLOCK_10~_Duplicate_1_q\ : std_logic;
SIGNAL \CLOCK_10~clkctrl_outclk\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \hora~3_combout\ : std_logic;
SIGNAL \hora[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \minuto~0_combout\ : std_logic;
SIGNAL \minuto[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \centesima[16]~feeder_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \centesima~3_combout\ : std_logic;
SIGNAL \centesima[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \centesima[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \centesima[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \centesima~2_combout\ : std_logic;
SIGNAL \centesima[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \centesima[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \centesima~1_combout\ : std_logic;
SIGNAL \centesima[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \centesima[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \segundo[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \segundo~3_combout\ : std_logic;
SIGNAL \segundo[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \segundo[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \segundo~2_combout\ : std_logic;
SIGNAL \segundo[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \segundo~0_combout\ : std_logic;
SIGNAL \segundo[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \segundo~1_combout\ : std_logic;
SIGNAL \segundo[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \segundo[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \hora[2]~4_combout\ : std_logic;
SIGNAL \minuto[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \minuto[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \minuto~1_combout\ : std_logic;
SIGNAL \minuto[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \minuto~2_combout\ : std_logic;
SIGNAL \minuto[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \minuto~3_combout\ : std_logic;
SIGNAL \minuto[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \minuto~4_combout\ : std_logic;
SIGNAL \minuto[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \minuto[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \minuto[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \hora[0]~1_combout\ : std_logic;
SIGNAL \hora[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \hora[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \hora[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \hora~2_combout\ : std_logic;
SIGNAL \hora[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \hora[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \hora~0_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \segundo~4_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \centesima~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_10~q\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL segundo : std_logic_vector(31 DOWNTO 0);
SIGNAL centesima : std_logic_vector(31 DOWNTO 0);
SIGNAL hora : std_logic_vector(31 DOWNTO 0);
SIGNAL minuto : std_logic_vector(31 DOWNTO 0);

BEGIN

HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_10~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_10~_Duplicate_1_q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: LCCOMB_X32_Y28_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\hora[4]~_Duplicate_1_q\ & (\Add4~7\ $ (GND))) # (!\hora[4]~_Duplicate_1_q\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\hora[4]~_Duplicate_1_q\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hora[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X29_Y28_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\centesima[6]~_Duplicate_1_q\ & (\Add1~11\ $ (GND))) # (!\centesima[6]~_Duplicate_1_q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\centesima[6]~_Duplicate_1_q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \centesima[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X32_Y28_N22
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (hora(11) & (!\Add4~21\)) # (!hora(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!hora(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X32_Y28_N26
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (hora(13) & (!\Add4~25\)) # (!hora(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!hora(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X32_Y28_N30
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (hora(15) & (!\Add4~29\)) # (!hora(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!hora(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X32_Y27_N10
\Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (hora(21) & (!\Add4~41\)) # (!hora(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!hora(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X32_Y27_N22
\Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (hora(27) & (!\Add4~53\)) # (!hora(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!hora(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X32_Y27_N26
\Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (hora(29) & (!\Add4~57\)) # (!hora(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!hora(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X29_Y28_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (centesima(15) & (!\Add1~29\)) # (!centesima(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!centesima(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X29_Y27_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (centesima(17) & (!\Add1~33\)) # (!centesima(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!centesima(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X29_Y27_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (centesima(19) & (!\Add1~37\)) # (!centesima(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!centesima(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X29_Y27_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (centesima(22) & (\Add1~43\ $ (GND))) # (!centesima(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((centesima(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X29_Y27_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (centesima(30) & (\Add1~59\ $ (GND))) # (!centesima(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((centesima(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X29_Y27_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = centesima(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X26_Y28_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (segundo(13) & (!\Add2~25\)) # (!segundo(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!segundo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X26_Y27_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (segundo(19) & (!\Add2~37\)) # (!segundo(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!segundo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X26_Y27_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (segundo(22) & (\Add2~43\ $ (GND))) # (!segundo(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((segundo(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X26_Y27_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (segundo(29) & (!\Add2~57\)) # (!segundo(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!segundo(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X30_Y28_N26
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (minuto(13) & (!\Add3~25\)) # (!minuto(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!minuto(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X30_Y27_N10
\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (minuto(21) & (!\Add3~41\)) # (!minuto(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!minuto(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X30_Y27_N12
\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (minuto(22) & (\Add3~43\ $ (GND))) # (!minuto(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((minuto(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X2_Y14_N6
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

-- Location: LCCOMB_X2_Y14_N12
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

-- Location: LCCOMB_X2_Y14_N30
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

-- Location: LCCOMB_X2_Y13_N22
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

-- Location: FF_X33_Y28_N21
\hora[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \hora[0]~_Duplicate_1feeder_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[0]~_Duplicate_1_q\);

-- Location: FF_X32_Y28_N11
\hora[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~10_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[5]~_Duplicate_1_q\);

-- Location: FF_X32_Y28_N13
\hora[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~12_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[6]~_Duplicate_1_q\);

-- Location: FF_X27_Y28_N5
\segundo[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~4_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[5]~_Duplicate_1_q\);

-- Location: FF_X26_Y28_N13
\segundo[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[6]~_Duplicate_1_q\);

-- Location: FF_X28_Y28_N13
\centesima[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y28_N24
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\hora[1]~_Duplicate_1_q\ & (!\hora[2]~_Duplicate_1_q\ & (\hora[3]~_Duplicate_1_q\ & !\hora[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hora[1]~_Duplicate_1_q\,
	datab => \hora[2]~_Duplicate_1_q\,
	datac => \hora[3]~_Duplicate_1_q\,
	datad => \hora[0]~_Duplicate_1_q\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X33_Y28_N10
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\hora[7]~_Duplicate_1_q\ & (\hora[4]~_Duplicate_1_q\ & (!\hora[5]~_Duplicate_1_q\ & !\hora[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hora[7]~_Duplicate_1_q\,
	datab => \hora[4]~_Duplicate_1_q\,
	datac => \hora[5]~_Duplicate_1_q\,
	datad => \hora[6]~_Duplicate_1_q\,
	combout => \Equal4~1_combout\);

-- Location: FF_X32_Y28_N23
\hora[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~22_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(11));

-- Location: LCCOMB_X33_Y28_N8
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!hora(8) & (!hora(11) & (!hora(10) & !hora(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(8),
	datab => hora(11),
	datac => hora(10),
	datad => hora(9),
	combout => \Equal4~2_combout\);

-- Location: FF_X32_Y28_N27
\hora[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~26_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(13));

-- Location: FF_X32_Y28_N31
\hora[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~30_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(15));

-- Location: LCCOMB_X33_Y28_N22
\Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!hora(13) & (!hora(14) & (!hora(15) & !hora(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(13),
	datab => hora(14),
	datac => hora(15),
	datad => hora(12),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X33_Y28_N12
\Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~3_combout\ & (\Equal4~0_combout\ & (\Equal4~2_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~4_combout\);

-- Location: FF_X32_Y27_N11
\hora[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~42_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(21));

-- Location: FF_X32_Y27_N23
\hora[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~54_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(27));

-- Location: FF_X32_Y27_N27
\hora[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~58_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(29));

-- Location: LCCOMB_X28_Y28_N30
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\centesima[6]~_Duplicate_1_q\ & (\centesima[5]~_Duplicate_1_q\ & (!\centesima[7]~_Duplicate_1_q\ & !\centesima[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesima[6]~_Duplicate_1_q\,
	datab => \centesima[5]~_Duplicate_1_q\,
	datac => \centesima[7]~_Duplicate_1_q\,
	datad => \centesima[4]~_Duplicate_1_q\,
	combout => \Equal1~1_combout\);

-- Location: FF_X29_Y28_N31
\centesima[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(15));

-- Location: FF_X29_Y28_N1
\centesima[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \Add1~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(17));

-- Location: FF_X28_Y28_N27
\centesima[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \Add1~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(19));

-- Location: LCCOMB_X28_Y28_N26
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!centesima(16) & (!centesima(17) & (!centesima(19) & !centesima(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(16),
	datab => centesima(17),
	datac => centesima(19),
	datad => centesima(18),
	combout => \Equal1~5_combout\);

-- Location: FF_X29_Y27_N13
\centesima[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(22));

-- Location: FF_X29_Y27_N31
\centesima[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(31));

-- Location: LCCOMB_X27_Y28_N10
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\segundo[4]~_Duplicate_1_q\ & (\segundo[5]~_Duplicate_1_q\ & (!\segundo[7]~_Duplicate_1_q\ & !\segundo[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[4]~_Duplicate_1_q\,
	datab => \segundo[5]~_Duplicate_1_q\,
	datac => \segundo[7]~_Duplicate_1_q\,
	datad => \segundo[6]~_Duplicate_1_q\,
	combout => \Equal2~1_combout\);

-- Location: FF_X26_Y28_N27
\segundo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(13));

-- Location: FF_X26_Y27_N7
\segundo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~38_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(19));

-- Location: LCCOMB_X27_Y28_N6
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!segundo(17) & (!segundo(18) & (!segundo(16) & !segundo(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(17),
	datab => segundo(18),
	datac => segundo(16),
	datad => segundo(19),
	combout => \Equal2~5_combout\);

-- Location: FF_X26_Y27_N13
\segundo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~44_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(22));

-- Location: FF_X26_Y27_N27
\segundo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~58_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(29));

-- Location: LCCOMB_X31_Y28_N26
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\minuto[3]~_Duplicate_1_q\ & (!\minuto[0]~_Duplicate_1_q\ & (\minuto[2]~_Duplicate_1_q\ & !\minuto[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuto[3]~_Duplicate_1_q\,
	datab => \minuto[0]~_Duplicate_1_q\,
	datac => \minuto[2]~_Duplicate_1_q\,
	datad => \minuto[1]~_Duplicate_1_q\,
	combout => \Equal3~0_combout\);

-- Location: FF_X30_Y28_N27
\minuto[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~26_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(13));

-- Location: FF_X30_Y27_N11
\minuto[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~42_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(21));

-- Location: FF_X30_Y27_N13
\minuto[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~44_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(22));

-- Location: LCCOMB_X31_Y27_N2
\Equal3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!minuto(23) & (!minuto(20) & (!minuto(21) & !minuto(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(23),
	datab => minuto(20),
	datac => minuto(21),
	datad => minuto(22),
	combout => \Equal3~6_combout\);

-- Location: FF_X1_Y14_N17
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y14_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(1) & (count(3) & (count(0) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(0),
	datad => count(2),
	combout => \Equal0~0_combout\);

-- Location: FF_X2_Y14_N13
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

-- Location: FF_X2_Y14_N31
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

-- Location: FF_X2_Y13_N23
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

-- Location: LCCOMB_X1_Y14_N12
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(27) & (!count(24) & (!count(26) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(24),
	datac => count(26),
	datad => count(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X1_Y14_N16
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~1_combout\);

-- Location: LCCOMB_X33_Y28_N20
\hora[0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora[0]~_Duplicate_1feeder_combout\ = \hora~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hora~0_combout\,
	combout => \hora[0]~_Duplicate_1feeder_combout\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(5),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\HEX3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => hora(7),
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => minuto(7),
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\HEX1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => segundo(7),
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\HEX0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => centesima(7),
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\clk_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_10~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: LCCOMB_X2_Y14_N0
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

-- Location: LCCOMB_X3_Y14_N12
\count[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = !\Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \count[0]~2_combout\);

-- Location: FF_X2_Y14_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \count[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X2_Y14_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y14_N6
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~2_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~0_combout\);

-- Location: FF_X1_Y14_N7
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

-- Location: LCCOMB_X2_Y14_N4
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

-- Location: FF_X2_Y14_N5
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

-- Location: LCCOMB_X2_Y14_N8
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

-- Location: FF_X2_Y14_N9
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

-- Location: LCCOMB_X2_Y14_N10
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

-- Location: LCCOMB_X2_Y14_N14
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

-- Location: FF_X2_Y14_N15
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

-- Location: LCCOMB_X2_Y14_N16
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

-- Location: FF_X2_Y14_N17
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

-- Location: LCCOMB_X2_Y14_N18
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

-- Location: FF_X2_Y14_N19
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

-- Location: LCCOMB_X2_Y14_N20
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

-- Location: FF_X2_Y14_N21
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

-- Location: LCCOMB_X2_Y14_N22
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

-- Location: LCCOMB_X2_Y14_N24
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

-- Location: FF_X2_Y14_N25
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

-- Location: LCCOMB_X2_Y14_N26
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

-- Location: LCCOMB_X2_Y14_N28
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

-- Location: FF_X2_Y14_N29
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

-- Location: LCCOMB_X2_Y13_N0
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

-- Location: FF_X2_Y13_N1
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

-- Location: LCCOMB_X2_Y13_N2
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

-- Location: FF_X2_Y13_N3
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

-- Location: LCCOMB_X2_Y13_N4
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

-- Location: FF_X2_Y13_N5
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

-- Location: LCCOMB_X2_Y13_N6
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

-- Location: LCCOMB_X2_Y13_N8
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

-- Location: FF_X2_Y13_N9
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

-- Location: LCCOMB_X2_Y13_N10
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

-- Location: LCCOMB_X2_Y13_N12
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

-- Location: LCCOMB_X2_Y13_N14
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

-- Location: FF_X2_Y13_N15
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

-- Location: LCCOMB_X2_Y13_N16
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

-- Location: FF_X2_Y13_N17
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

-- Location: LCCOMB_X2_Y13_N18
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

-- Location: FF_X2_Y13_N19
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

-- Location: LCCOMB_X2_Y13_N20
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

-- Location: FF_X2_Y13_N21
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

-- Location: LCCOMB_X2_Y13_N24
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

-- Location: FF_X2_Y13_N25
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

-- Location: LCCOMB_X2_Y13_N26
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

-- Location: FF_X2_Y13_N27
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

-- Location: LCCOMB_X2_Y13_N28
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

-- Location: FF_X2_Y13_N29
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

-- Location: LCCOMB_X2_Y13_N30
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

-- Location: FF_X2_Y13_N31
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

-- Location: LCCOMB_X1_Y14_N28
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(28) & (!count(29) & (!count(30) & !count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => count(29),
	datac => count(30),
	datad => count(31),
	combout => \Equal0~9_combout\);

-- Location: FF_X2_Y13_N13
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

-- Location: FF_X2_Y13_N11
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

-- Location: LCCOMB_X1_Y14_N26
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(21) & !count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(21),
	datad => count(20),
	combout => \Equal0~6_combout\);

-- Location: FF_X2_Y13_N7
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

-- Location: LCCOMB_X1_Y14_N10
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(17) & (!count(19) & (!count(16) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(19),
	datac => count(16),
	datad => count(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y14_N8
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(23) & (!count(22) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(22),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: FF_X2_Y14_N27
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

-- Location: LCCOMB_X1_Y14_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(15) & (!count(13) & (!count(12) & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(13),
	datac => count(12),
	datad => count(14),
	combout => \Equal0~3_combout\);

-- Location: FF_X2_Y14_N23
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

-- Location: LCCOMB_X1_Y14_N4
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

-- Location: FF_X2_Y14_N11
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

-- Location: LCCOMB_X1_Y14_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(6) & (!count(7) & (!count(5) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(7),
	datac => count(5),
	datad => count(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y14_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y14_N2
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~9_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X1_Y14_N18
\CLOCK_10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK_10~0_combout\ = \CLOCK_10~_Duplicate_1_q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_10~_Duplicate_1_q\,
	datad => \Equal0~10_combout\,
	combout => \CLOCK_10~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\CLOCK_10~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLOCK_10~_Duplicate_1feeder_combout\ = \CLOCK_10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLOCK_10~0_combout\,
	combout => \CLOCK_10~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y14_N15
\CLOCK_10~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_10~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_10~_Duplicate_1_q\);

-- Location: CLKCTRL_G1
\CLOCK_10~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_10~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_10~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y28_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \hora[0]~_Duplicate_1_q\ $ (VCC)
-- \Add4~1\ = CARRY(\hora[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hora[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X33_Y28_N6
\hora~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora~3_combout\ = (\Add4~8_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datad => \Equal4~10_combout\,
	combout => \hora~3_combout\);

-- Location: LCCOMB_X33_Y28_N14
\hora[4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora[4]~_Duplicate_1feeder_combout\ = \hora~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hora~3_combout\,
	combout => \hora[4]~_Duplicate_1feeder_combout\);

-- Location: LCCOMB_X30_Y28_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \minuto[0]~_Duplicate_1_q\ $ (VCC)
-- \Add3~1\ = CARRY(\minuto[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minuto[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X31_Y28_N20
\minuto~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto~0_combout\ = (\Add3~0_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \Equal3~10_combout\,
	combout => \minuto~0_combout\);

-- Location: LCCOMB_X31_Y28_N28
\minuto[0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto[0]~_Duplicate_1feeder_combout\ = \minuto~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \minuto~0_combout\,
	combout => \minuto[0]~_Duplicate_1feeder_combout\);

-- Location: LCCOMB_X26_Y28_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \segundo[0]~_Duplicate_1_q\ $ (VCC)
-- \Add2~1\ = CARRY(\segundo[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y28_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\segundo[1]~_Duplicate_1_q\ & (!\Add2~1\)) # (!\segundo[1]~_Duplicate_1_q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\segundo[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segundo[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X29_Y28_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (centesima(9) & (!\Add1~17\)) # (!centesima(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!centesima(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X29_Y28_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (centesima(10) & (\Add1~19\ $ (GND))) # (!centesima(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((centesima(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X29_Y28_N21
\centesima[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(10));

-- Location: LCCOMB_X29_Y28_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (centesima(11) & (!\Add1~21\)) # (!centesima(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!centesima(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X29_Y28_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (centesima(12) & (\Add1~23\ $ (GND))) # (!centesima(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((centesima(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X29_Y28_N25
\centesima[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(12));

-- Location: LCCOMB_X29_Y28_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (centesima(13) & (!\Add1~25\)) # (!centesima(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!centesima(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X29_Y28_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (centesima(14) & (\Add1~27\ $ (GND))) # (!centesima(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((centesima(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X29_Y28_N29
\centesima[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(14));

-- Location: LCCOMB_X29_Y27_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (centesima(16) & (\Add1~31\ $ (GND))) # (!centesima(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((centesima(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X28_Y28_N22
\centesima[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \centesima[16]~feeder_combout\ = \Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~32_combout\,
	combout => \centesima[16]~feeder_combout\);

-- Location: FF_X28_Y28_N23
\centesima[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(16));

-- Location: LCCOMB_X29_Y27_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (centesima(18) & (\Add1~35\ $ (GND))) # (!centesima(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((centesima(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X28_Y28_N29
\centesima[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \Add1~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(18));

-- Location: LCCOMB_X29_Y27_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (centesima(20) & (\Add1~39\ $ (GND))) # (!centesima(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((centesima(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X29_Y27_N9
\centesima[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(20));

-- Location: LCCOMB_X29_Y27_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (centesima(21) & (!\Add1~41\)) # (!centesima(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!centesima(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X29_Y27_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (centesima(23) & (!\Add1~45\)) # (!centesima(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!centesima(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X29_Y27_N15
\centesima[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(23));

-- Location: LCCOMB_X29_Y27_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (centesima(24) & (\Add1~47\ $ (GND))) # (!centesima(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((centesima(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X29_Y27_N17
\centesima[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(24));

-- Location: LCCOMB_X29_Y27_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (centesima(25) & (!\Add1~49\)) # (!centesima(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!centesima(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X29_Y27_N19
\centesima[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(25));

-- Location: LCCOMB_X29_Y27_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (centesima(26) & (\Add1~51\ $ (GND))) # (!centesima(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((centesima(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X29_Y27_N21
\centesima[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(26));

-- Location: LCCOMB_X29_Y27_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (centesima(27) & (!\Add1~53\)) # (!centesima(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!centesima(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X29_Y27_N23
\centesima[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(27));

-- Location: LCCOMB_X28_Y28_N18
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!centesima(25) & (!centesima(27) & (!centesima(26) & !centesima(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(25),
	datab => centesima(27),
	datac => centesima(26),
	datad => centesima(24),
	combout => \Equal1~7_combout\);

-- Location: FF_X29_Y27_N11
\centesima[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(21));

-- Location: LCCOMB_X28_Y28_N8
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!centesima(22) & (!centesima(20) & (!centesima(21) & !centesima(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(22),
	datab => centesima(20),
	datac => centesima(21),
	datad => centesima(23),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X29_Y27_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (centesima(28) & (\Add1~55\ $ (GND))) # (!centesima(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((centesima(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X29_Y27_N25
\centesima[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(28));

-- Location: LCCOMB_X29_Y27_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (centesima(29) & (!\Add1~57\)) # (!centesima(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!centesima(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => centesima(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X29_Y27_N27
\centesima[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(29));

-- Location: FF_X29_Y27_N29
\centesima[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(30));

-- Location: LCCOMB_X28_Y28_N20
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!centesima(31) & (!centesima(28) & (!centesima(29) & !centesima(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(31),
	datab => centesima(28),
	datac => centesima(29),
	datad => centesima(30),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X28_Y28_N10
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (\Equal1~7_combout\ & (\Equal1~6_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X28_Y28_N6
\centesima~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \centesima~3_combout\ = (\Add1~12_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \centesima~3_combout\);

-- Location: FF_X28_Y28_N7
\centesima[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y28_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \centesima[0]~_Duplicate_1_q\ $ (VCC)
-- \Add1~1\ = CARRY(\centesima[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesima[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X29_Y28_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\centesima[1]~_Duplicate_1_q\ & (!\Add1~1\)) # (!\centesima[1]~_Duplicate_1_q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\centesima[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \centesima[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X29_Y28_N3
\centesima[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y28_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\centesima[2]~_Duplicate_1_q\ & (\Add1~3\ $ (GND))) # (!\centesima[2]~_Duplicate_1_q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\centesima[2]~_Duplicate_1_q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \centesima[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X29_Y28_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\centesima[3]~_Duplicate_1_q\ & (!\Add1~5\)) # (!\centesima[3]~_Duplicate_1_q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\centesima[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \centesima[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X29_Y28_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\centesima[4]~_Duplicate_1_q\ & (\Add1~7\ $ (GND))) # (!\centesima[4]~_Duplicate_1_q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\centesima[4]~_Duplicate_1_q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \centesima[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X29_Y28_N9
\centesima[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y28_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\centesima[5]~_Duplicate_1_q\ & (!\Add1~9\)) # (!\centesima[5]~_Duplicate_1_q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\centesima[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \centesima[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X28_Y28_N4
\centesima~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \centesima~2_combout\ = (\Add1~10_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal1~9_combout\,
	combout => \centesima~2_combout\);

-- Location: FF_X28_Y28_N5
\centesima[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y28_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\centesima[7]~_Duplicate_1_q\ & (!\Add1~13\)) # (!\centesima[7]~_Duplicate_1_q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\centesima[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \centesima[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X29_Y28_N15
\centesima[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y28_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (centesima(8) & (\Add1~15\ $ (GND))) # (!centesima(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((centesima(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => centesima(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X29_Y28_N17
\centesima[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(8));

-- Location: FF_X29_Y28_N19
\centesima[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(9));

-- Location: FF_X29_Y28_N23
\centesima[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(11));

-- Location: LCCOMB_X28_Y28_N0
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!centesima(8) & (!centesima(9) & (!centesima(10) & !centesima(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(8),
	datab => centesima(9),
	datac => centesima(10),
	datad => centesima(11),
	combout => \Equal1~2_combout\);

-- Location: FF_X29_Y28_N27
\centesima[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(13));

-- Location: LCCOMB_X28_Y28_N2
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!centesima(15) & (!centesima(14) & (!centesima(13) & !centesima(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centesima(15),
	datab => centesima(14),
	datac => centesima(13),
	datad => centesima(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X28_Y28_N14
\centesima~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \centesima~1_combout\ = (\Add1~4_combout\ & ((!\Equal1~4_combout\) # (!\Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~4_combout\,
	datad => \Add1~4_combout\,
	combout => \centesima~1_combout\);

-- Location: FF_X28_Y28_N15
\centesima[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[2]~_Duplicate_1_q\);

-- Location: FF_X29_Y28_N7
\centesima[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesima[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X28_Y28_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\centesima[0]~_Duplicate_1_q\ & (\centesima[2]~_Duplicate_1_q\ & (!\centesima[3]~_Duplicate_1_q\ & !\centesima[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesima[0]~_Duplicate_1_q\,
	datab => \centesima[2]~_Duplicate_1_q\,
	datac => \centesima[3]~_Duplicate_1_q\,
	datad => \centesima[1]~_Duplicate_1_q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~2_combout\ & (\Equal1~3_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X28_Y28_N28
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & \Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: FF_X26_Y28_N3
\segundo[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y28_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\segundo[2]~_Duplicate_1_q\ & (\Add2~3\ $ (GND))) # (!\segundo[2]~_Duplicate_1_q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\segundo[2]~_Duplicate_1_q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X26_Y28_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\segundo[3]~_Duplicate_1_q\ & (!\Add2~5\)) # (!\segundo[3]~_Duplicate_1_q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\segundo[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segundo[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X26_Y28_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\segundo[4]~_Duplicate_1_q\ & (\Add2~7\ $ (GND))) # (!\segundo[4]~_Duplicate_1_q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\segundo[4]~_Duplicate_1_q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segundo[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X27_Y28_N22
\segundo~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo~3_combout\ = (\Add2~8_combout\ & ((!\Equal2~9_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~8_combout\,
	datad => \Equal2~9_combout\,
	combout => \segundo~3_combout\);

-- Location: FF_X27_Y28_N23
\segundo[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~3_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y28_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\segundo[5]~_Duplicate_1_q\ & (!\Add2~9\)) # (!\segundo[5]~_Duplicate_1_q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\segundo[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X26_Y28_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\segundo[6]~_Duplicate_1_q\ & (\Add2~11\ $ (GND))) # (!\segundo[6]~_Duplicate_1_q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\segundo[6]~_Duplicate_1_q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y28_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\segundo[7]~_Duplicate_1_q\ & (!\Add2~13\)) # (!\segundo[7]~_Duplicate_1_q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\segundo[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \segundo[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X26_Y28_N15
\segundo[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y28_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (segundo(8) & (\Add2~15\ $ (GND))) # (!segundo(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((segundo(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X26_Y28_N17
\segundo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(8));

-- Location: LCCOMB_X26_Y28_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (segundo(9) & (!\Add2~17\)) # (!segundo(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!segundo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X26_Y28_N19
\segundo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(9));

-- Location: LCCOMB_X26_Y28_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (segundo(10) & (\Add2~19\ $ (GND))) # (!segundo(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((segundo(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X26_Y28_N21
\segundo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(10));

-- Location: LCCOMB_X26_Y28_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (segundo(11) & (!\Add2~21\)) # (!segundo(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!segundo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X26_Y28_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (segundo(12) & (\Add2~23\ $ (GND))) # (!segundo(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((segundo(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X26_Y28_N25
\segundo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(12));

-- Location: LCCOMB_X26_Y28_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (segundo(14) & (\Add2~27\ $ (GND))) # (!segundo(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((segundo(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X26_Y28_N29
\segundo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~28_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(14));

-- Location: LCCOMB_X26_Y28_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (segundo(15) & (!\Add2~29\)) # (!segundo(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!segundo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X26_Y27_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (segundo(16) & (\Add2~31\ $ (GND))) # (!segundo(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((segundo(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X26_Y27_N1
\segundo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~32_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(16));

-- Location: LCCOMB_X26_Y27_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (segundo(17) & (!\Add2~33\)) # (!segundo(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!segundo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X26_Y27_N3
\segundo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~34_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(17));

-- Location: LCCOMB_X26_Y27_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (segundo(18) & (\Add2~35\ $ (GND))) # (!segundo(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((segundo(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X26_Y27_N5
\segundo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~36_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(18));

-- Location: LCCOMB_X26_Y27_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (segundo(20) & (\Add2~39\ $ (GND))) # (!segundo(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((segundo(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X26_Y27_N9
\segundo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~40_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(20));

-- Location: LCCOMB_X26_Y27_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (segundo(21) & (!\Add2~41\)) # (!segundo(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!segundo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X26_Y27_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (segundo(23) & (!\Add2~45\)) # (!segundo(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!segundo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X26_Y27_N15
\segundo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~46_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(23));

-- Location: FF_X26_Y27_N11
\segundo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~42_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(21));

-- Location: LCCOMB_X27_Y28_N8
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!segundo(22) & (!segundo(23) & (!segundo(21) & !segundo(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(22),
	datab => segundo(23),
	datac => segundo(21),
	datad => segundo(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X26_Y27_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (segundo(24) & (\Add2~47\ $ (GND))) # (!segundo(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((segundo(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X26_Y27_N17
\segundo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~48_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(24));

-- Location: LCCOMB_X26_Y27_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (segundo(25) & (!\Add2~49\)) # (!segundo(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!segundo(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X26_Y27_N19
\segundo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~50_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(25));

-- Location: LCCOMB_X26_Y27_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (segundo(26) & (\Add2~51\ $ (GND))) # (!segundo(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((segundo(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X26_Y27_N21
\segundo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~52_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(26));

-- Location: LCCOMB_X26_Y27_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (segundo(27) & (!\Add2~53\)) # (!segundo(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!segundo(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X26_Y27_N23
\segundo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~54_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(27));

-- Location: LCCOMB_X27_Y28_N30
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!segundo(25) & (!segundo(24) & (!segundo(26) & !segundo(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(25),
	datab => segundo(24),
	datac => segundo(26),
	datad => segundo(27),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X26_Y27_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (segundo(28) & (\Add2~55\ $ (GND))) # (!segundo(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((segundo(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X26_Y27_N25
\segundo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~56_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(28));

-- Location: LCCOMB_X26_Y27_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (segundo(30) & (\Add2~59\ $ (GND))) # (!segundo(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((segundo(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => segundo(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X26_Y27_N29
\segundo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~60_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(30));

-- Location: LCCOMB_X26_Y27_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = segundo(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => segundo(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X26_Y27_N31
\segundo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~62_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(31));

-- Location: LCCOMB_X27_Y27_N0
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!segundo(29) & (!segundo(28) & (!segundo(31) & !segundo(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(29),
	datab => segundo(28),
	datac => segundo(31),
	datad => segundo(30),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X27_Y28_N12
\Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~5_combout\ & (\Equal2~6_combout\ & (\Equal2~7_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X27_Y28_N28
\segundo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo~2_combout\ = (\Add2~6_combout\ & ((!\Equal2~9_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Equal2~9_combout\,
	combout => \segundo~2_combout\);

-- Location: FF_X27_Y28_N29
\segundo[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y28_N16
\segundo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo~0_combout\ = (\Add2~0_combout\ & ((!\Equal2~9_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \segundo~0_combout\);

-- Location: FF_X27_Y28_N21
\segundo[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \segundo~0_combout\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y28_N26
\segundo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo~1_combout\ = (\Add2~4_combout\ & ((!\Equal2~9_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~4_combout\,
	datad => \Equal2~9_combout\,
	combout => \segundo~1_combout\);

-- Location: LCCOMB_X27_Y28_N2
\segundo[2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo[2]~_Duplicate_1feeder_combout\ = \segundo~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segundo~1_combout\,
	combout => \segundo[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y28_N3
\segundo[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo[2]~_Duplicate_1feeder_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundo[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y28_N20
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\segundo[1]~_Duplicate_1_q\ & (\segundo[3]~_Duplicate_1_q\ & (!\segundo[0]~_Duplicate_1_q\ & \segundo[2]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundo[1]~_Duplicate_1_q\,
	datab => \segundo[3]~_Duplicate_1_q\,
	datac => \segundo[0]~_Duplicate_1_q\,
	datad => \segundo[2]~_Duplicate_1_q\,
	combout => \Equal2~0_combout\);

-- Location: FF_X26_Y28_N31
\segundo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~30_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(15));

-- Location: LCCOMB_X27_Y28_N14
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!segundo(13) & (!segundo(14) & (!segundo(15) & !segundo(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(13),
	datab => segundo(14),
	datac => segundo(15),
	datad => segundo(12),
	combout => \Equal2~3_combout\);

-- Location: FF_X26_Y28_N23
\segundo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(11));

-- Location: LCCOMB_X27_Y28_N24
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!segundo(8) & (!segundo(10) & (!segundo(11) & !segundo(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => segundo(8),
	datab => segundo(10),
	datac => segundo(11),
	datad => segundo(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X27_Y28_N18
\hora[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora[2]~4_combout\ = (\Equal2~9_combout\ & (\Equal2~4_combout\ & (\Equal1~9_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~4_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \hora[2]~4_combout\);

-- Location: FF_X31_Y28_N29
\minuto[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto[0]~_Duplicate_1feeder_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\minuto[1]~_Duplicate_1_q\ & (!\Add3~1\)) # (!\minuto[1]~_Duplicate_1_q\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\minuto[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X30_Y28_N3
\minuto[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\minuto[2]~_Duplicate_1_q\ & (\Add3~3\ $ (GND))) # (!\minuto[2]~_Duplicate_1_q\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\minuto[2]~_Duplicate_1_q\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X31_Y28_N22
\minuto~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto~1_combout\ = (\Add3~4_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datad => \Equal3~10_combout\,
	combout => \minuto~1_combout\);

-- Location: FF_X31_Y28_N27
\minuto[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \minuto~1_combout\,
	sload => VCC,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\minuto[3]~_Duplicate_1_q\ & (!\Add3~5\)) # (!\minuto[3]~_Duplicate_1_q\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\minuto[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X31_Y28_N12
\minuto~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto~2_combout\ = (\Add3~6_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \Equal3~10_combout\,
	combout => \minuto~2_combout\);

-- Location: FF_X31_Y28_N13
\minuto[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~2_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\minuto[4]~_Duplicate_1_q\ & (\Add3~7\ $ (GND))) # (!\minuto[4]~_Duplicate_1_q\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\minuto[4]~_Duplicate_1_q\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X31_Y28_N10
\minuto~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto~3_combout\ = (!\Equal3~10_combout\ & \Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \minuto~3_combout\);

-- Location: FF_X31_Y28_N11
\minuto[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~3_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\minuto[5]~_Duplicate_1_q\ & (!\Add3~9\)) # (!\minuto[5]~_Duplicate_1_q\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\minuto[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X31_Y28_N24
\minuto~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minuto~4_combout\ = (\Add3~10_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \Equal3~10_combout\,
	combout => \minuto~4_combout\);

-- Location: FF_X31_Y28_N25
\minuto[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~4_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\minuto[6]~_Duplicate_1_q\ & (\Add3~11\ $ (GND))) # (!\minuto[6]~_Duplicate_1_q\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\minuto[6]~_Duplicate_1_q\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minuto[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X30_Y28_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\minuto[7]~_Duplicate_1_q\ & (!\Add3~13\)) # (!\minuto[7]~_Duplicate_1_q\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\minuto[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minuto[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X30_Y28_N15
\minuto[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~14_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y28_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (minuto(8) & (\Add3~15\ $ (GND))) # (!minuto(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((minuto(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X30_Y28_N17
\minuto[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~16_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(8));

-- Location: LCCOMB_X30_Y28_N18
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (minuto(9) & (!\Add3~17\)) # (!minuto(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!minuto(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X30_Y28_N19
\minuto[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~18_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(9));

-- Location: LCCOMB_X30_Y28_N20
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (minuto(10) & (\Add3~19\ $ (GND))) # (!minuto(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((minuto(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X30_Y28_N21
\minuto[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~20_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(10));

-- Location: LCCOMB_X30_Y28_N22
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (minuto(11) & (!\Add3~21\)) # (!minuto(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!minuto(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X30_Y28_N24
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (minuto(12) & (\Add3~23\ $ (GND))) # (!minuto(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((minuto(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X30_Y28_N25
\minuto[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~24_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(12));

-- Location: LCCOMB_X30_Y28_N28
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (minuto(14) & (\Add3~27\ $ (GND))) # (!minuto(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((minuto(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X30_Y28_N29
\minuto[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~28_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(14));

-- Location: LCCOMB_X30_Y28_N30
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (minuto(15) & (!\Add3~29\)) # (!minuto(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!minuto(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X30_Y27_N0
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (minuto(16) & (\Add3~31\ $ (GND))) # (!minuto(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((minuto(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X30_Y27_N1
\minuto[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~32_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(16));

-- Location: LCCOMB_X30_Y27_N2
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (minuto(17) & (!\Add3~33\)) # (!minuto(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!minuto(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X30_Y27_N3
\minuto[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~34_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(17));

-- Location: LCCOMB_X30_Y27_N4
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (minuto(18) & (\Add3~35\ $ (GND))) # (!minuto(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((minuto(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X30_Y27_N5
\minuto[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~36_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(18));

-- Location: LCCOMB_X30_Y27_N6
\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (minuto(19) & (!\Add3~37\)) # (!minuto(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!minuto(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X30_Y27_N7
\minuto[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~38_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(19));

-- Location: LCCOMB_X31_Y27_N0
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!minuto(16) & (!minuto(19) & (!minuto(18) & !minuto(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(16),
	datab => minuto(19),
	datac => minuto(18),
	datad => minuto(17),
	combout => \Equal3~5_combout\);

-- Location: FF_X30_Y28_N23
\minuto[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~22_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(11));

-- Location: LCCOMB_X31_Y28_N16
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!minuto(8) & (!minuto(11) & (!minuto(10) & !minuto(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(8),
	datab => minuto(11),
	datac => minuto(10),
	datad => minuto(9),
	combout => \Equal3~2_combout\);

-- Location: FF_X30_Y28_N31
\minuto[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~30_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(15));

-- Location: LCCOMB_X31_Y28_N30
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!minuto(13) & (!minuto(14) & (!minuto(15) & !minuto(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(13),
	datab => minuto(14),
	datac => minuto(15),
	datad => minuto(12),
	combout => \Equal3~3_combout\);

-- Location: FF_X30_Y28_N13
\minuto[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~12_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minuto[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X31_Y28_N6
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\minuto[4]~_Duplicate_1_q\ & (\minuto[5]~_Duplicate_1_q\ & (!\minuto[7]~_Duplicate_1_q\ & !\minuto[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minuto[4]~_Duplicate_1_q\,
	datab => \minuto[5]~_Duplicate_1_q\,
	datac => \minuto[7]~_Duplicate_1_q\,
	datad => \minuto[6]~_Duplicate_1_q\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X31_Y28_N8
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~0_combout\ & (\Equal3~2_combout\ & (\Equal3~3_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X30_Y27_N8
\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (minuto(20) & (\Add3~39\ $ (GND))) # (!minuto(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((minuto(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X30_Y27_N9
\minuto[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~40_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(20));

-- Location: LCCOMB_X30_Y27_N14
\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (minuto(23) & (!\Add3~45\)) # (!minuto(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!minuto(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X30_Y27_N15
\minuto[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~46_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(23));

-- Location: LCCOMB_X30_Y27_N16
\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (minuto(24) & (\Add3~47\ $ (GND))) # (!minuto(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((minuto(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X30_Y27_N17
\minuto[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~48_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(24));

-- Location: LCCOMB_X30_Y27_N18
\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (minuto(25) & (!\Add3~49\)) # (!minuto(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!minuto(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X30_Y27_N19
\minuto[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~50_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(25));

-- Location: LCCOMB_X30_Y27_N20
\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (minuto(26) & (\Add3~51\ $ (GND))) # (!minuto(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((minuto(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: FF_X30_Y27_N21
\minuto[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~52_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(26));

-- Location: LCCOMB_X30_Y27_N22
\Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (minuto(27) & (!\Add3~53\)) # (!minuto(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!minuto(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X30_Y27_N24
\Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (minuto(28) & (\Add3~55\ $ (GND))) # (!minuto(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((minuto(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: FF_X30_Y27_N25
\minuto[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~56_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(28));

-- Location: LCCOMB_X30_Y27_N26
\Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (minuto(29) & (!\Add3~57\)) # (!minuto(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!minuto(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X30_Y27_N27
\minuto[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~58_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(29));

-- Location: LCCOMB_X30_Y27_N28
\Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (minuto(30) & (\Add3~59\ $ (GND))) # (!minuto(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((minuto(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => minuto(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: FF_X30_Y27_N29
\minuto[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~60_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(30));

-- Location: LCCOMB_X30_Y27_N30
\Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = minuto(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => minuto(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: FF_X30_Y27_N31
\minuto[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~62_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(31));

-- Location: LCCOMB_X31_Y28_N4
\Equal3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!minuto(28) & (!minuto(29) & (!minuto(31) & !minuto(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(28),
	datab => minuto(29),
	datac => minuto(31),
	datad => minuto(30),
	combout => \Equal3~8_combout\);

-- Location: FF_X30_Y27_N23
\minuto[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~54_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(27));

-- Location: LCCOMB_X31_Y28_N2
\Equal3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!minuto(24) & !minuto(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => minuto(24),
	datad => minuto(25),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X31_Y28_N18
\Equal3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!minuto(26) & (\Equal3~8_combout\ & (!minuto(27) & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minuto(26),
	datab => \Equal3~8_combout\,
	datac => minuto(27),
	datad => \Equal3~7_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X31_Y28_N0
\Equal3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~6_combout\ & (\Equal3~5_combout\ & (\Equal3~4_combout\ & \Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Equal3~5_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~9_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X31_Y28_N14
\hora[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora[0]~1_combout\ = (\Equal2~4_combout\ & (\Equal3~10_combout\ & (\Equal2~9_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal3~10_combout\,
	datac => \Equal2~9_combout\,
	datad => \Equal1~10_combout\,
	combout => \hora[0]~1_combout\);

-- Location: FF_X33_Y28_N15
\hora[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \hora[4]~_Duplicate_1feeder_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y28_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\hora[1]~_Duplicate_1_q\ & (!\Add4~1\)) # (!\hora[1]~_Duplicate_1_q\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\hora[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hora[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X32_Y28_N3
\hora[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~2_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y28_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\hora[2]~_Duplicate_1_q\ & (\Add4~3\ $ (GND))) # (!\hora[2]~_Duplicate_1_q\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\hora[2]~_Duplicate_1_q\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hora[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X32_Y28_N5
\hora[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~4_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y28_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\hora[3]~_Duplicate_1_q\ & (!\Add4~5\)) # (!\hora[3]~_Duplicate_1_q\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\hora[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hora[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X33_Y28_N16
\hora~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora~2_combout\ = (\Add4~6_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~6_combout\,
	datad => \Equal4~10_combout\,
	combout => \hora~2_combout\);

-- Location: FF_X32_Y28_N9
\hora[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	asdata => \hora~2_combout\,
	sload => VCC,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y28_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\hora[5]~_Duplicate_1_q\ & (!\Add4~9\)) # (!\hora[5]~_Duplicate_1_q\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\hora[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hora[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X32_Y28_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\hora[6]~_Duplicate_1_q\ & (\Add4~11\ $ (GND))) # (!\hora[6]~_Duplicate_1_q\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\hora[6]~_Duplicate_1_q\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hora[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X32_Y28_N14
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\hora[7]~_Duplicate_1_q\ & (!\Add4~13\)) # (!\hora[7]~_Duplicate_1_q\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\hora[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hora[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X32_Y28_N15
\hora[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~14_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hora[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y28_N16
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (hora(8) & (\Add4~15\ $ (GND))) # (!hora(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((hora(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X32_Y28_N17
\hora[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~16_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(8));

-- Location: LCCOMB_X32_Y28_N18
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (hora(9) & (!\Add4~17\)) # (!hora(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!hora(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X32_Y28_N19
\hora[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~18_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(9));

-- Location: LCCOMB_X32_Y28_N20
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (hora(10) & (\Add4~19\ $ (GND))) # (!hora(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((hora(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X32_Y28_N21
\hora[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~20_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(10));

-- Location: LCCOMB_X32_Y28_N24
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (hora(12) & (\Add4~23\ $ (GND))) # (!hora(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((hora(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X32_Y28_N25
\hora[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~24_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(12));

-- Location: LCCOMB_X32_Y28_N28
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (hora(14) & (\Add4~27\ $ (GND))) # (!hora(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((hora(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X32_Y28_N29
\hora[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~28_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(14));

-- Location: LCCOMB_X32_Y27_N0
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (hora(16) & (\Add4~31\ $ (GND))) # (!hora(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((hora(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X32_Y27_N1
\hora[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~32_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(16));

-- Location: LCCOMB_X32_Y27_N2
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (hora(17) & (!\Add4~33\)) # (!hora(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!hora(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X32_Y27_N3
\hora[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~34_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(17));

-- Location: LCCOMB_X32_Y27_N4
\Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (hora(18) & (\Add4~35\ $ (GND))) # (!hora(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((hora(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X32_Y27_N5
\hora[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~36_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(18));

-- Location: LCCOMB_X32_Y27_N6
\Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (hora(19) & (!\Add4~37\)) # (!hora(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!hora(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X32_Y27_N8
\Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (hora(20) & (\Add4~39\ $ (GND))) # (!hora(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((hora(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X32_Y27_N9
\hora[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~40_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(20));

-- Location: LCCOMB_X32_Y27_N12
\Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (hora(22) & (\Add4~43\ $ (GND))) # (!hora(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((hora(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X32_Y27_N14
\Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (hora(23) & (!\Add4~45\)) # (!hora(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!hora(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X32_Y27_N15
\hora[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~46_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(23));

-- Location: LCCOMB_X32_Y27_N16
\Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (hora(24) & (\Add4~47\ $ (GND))) # (!hora(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((hora(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X32_Y27_N17
\hora[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~48_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(24));

-- Location: LCCOMB_X32_Y27_N18
\Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (hora(25) & (!\Add4~49\)) # (!hora(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!hora(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X32_Y27_N19
\hora[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~50_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(25));

-- Location: LCCOMB_X32_Y27_N20
\Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (hora(26) & (\Add4~51\ $ (GND))) # (!hora(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((hora(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X32_Y27_N21
\hora[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~52_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(26));

-- Location: LCCOMB_X32_Y27_N24
\Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (hora(28) & (\Add4~55\ $ (GND))) # (!hora(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((hora(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X32_Y27_N25
\hora[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~56_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(28));

-- Location: LCCOMB_X32_Y27_N28
\Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (hora(30) & (\Add4~59\ $ (GND))) # (!hora(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((hora(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hora(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: FF_X32_Y27_N29
\hora[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~60_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(30));

-- Location: LCCOMB_X32_Y27_N30
\Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = hora(31) $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hora(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: FF_X32_Y27_N31
\hora[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~62_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(31));

-- Location: LCCOMB_X33_Y27_N22
\Equal4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (!hora(29) & (!hora(30) & (!hora(31) & !hora(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(29),
	datab => hora(30),
	datac => hora(31),
	datad => hora(28),
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X33_Y27_N16
\Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!hora(27) & (!hora(26) & (!hora(24) & !hora(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(27),
	datab => hora(26),
	datac => hora(24),
	datad => hora(25),
	combout => \Equal4~8_combout\);

-- Location: FF_X32_Y27_N13
\hora[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~44_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(22));

-- Location: LCCOMB_X33_Y27_N30
\Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!hora(21) & !hora(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(21),
	datad => hora(20),
	combout => \Equal4~6_combout\);

-- Location: FF_X32_Y27_N7
\hora[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~38_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(19));

-- Location: LCCOMB_X33_Y27_N0
\Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!hora(16) & (!hora(19) & (!hora(18) & !hora(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(16),
	datab => hora(19),
	datac => hora(18),
	datad => hora(17),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X33_Y28_N18
\Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!hora(23) & (!hora(22) & (\Equal4~6_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hora(23),
	datab => hora(22),
	datac => \Equal4~6_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X33_Y28_N28
\Equal4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~4_combout\ & (\Equal4~9_combout\ & (\Equal4~8_combout\ & \Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \Equal4~9_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X33_Y28_N26
\hora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hora~0_combout\ = (\Add4~0_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~0_combout\,
	datad => \Equal4~10_combout\,
	combout => \hora~0_combout\);

-- Location: DDIOOUTCELL_X32_Y29_N25
\hora[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \hora~0_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(0));

-- Location: DDIOOUTCELL_X39_Y29_N18
\hora[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~2_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(1));

-- Location: DDIOOUTCELL_X32_Y29_N11
\hora[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~4_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(2));

-- Location: DDIOOUTCELL_X32_Y29_N4
\hora[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \hora~2_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(3));

-- Location: DDIOOUTCELL_X37_Y29_N25
\hora[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \hora~3_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(4));

-- Location: DDIOOUTCELL_X37_Y29_N32
\hora[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~10_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(5));

-- Location: DDIOOUTCELL_X39_Y29_N32
\hora[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~12_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(6));

-- Location: DDIOOUTCELL_X39_Y29_N25
\hora[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add4~14_combout\,
	ena => \hora[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hora(7));

-- Location: DDIOOUTCELL_X32_Y29_N32
\minuto[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~0_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(0));

-- Location: DDIOOUTCELL_X30_Y29_N32
\minuto[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(1));

-- Location: DDIOOUTCELL_X28_Y29_N4
\minuto[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~1_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(2));

-- Location: DDIOOUTCELL_X30_Y29_N4
\minuto[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~2_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(3));

-- Location: DDIOOUTCELL_X30_Y29_N18
\minuto[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~3_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(4));

-- Location: DDIOOUTCELL_X30_Y29_N25
\minuto[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \minuto~4_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(5));

-- Location: DDIOOUTCELL_X37_Y29_N4
\minuto[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~12_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(6));

-- Location: DDIOOUTCELL_X32_Y29_N18
\minuto[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add3~14_combout\,
	ena => \hora[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minuto(7));

-- Location: DDIOOUTCELL_X21_Y29_N4
\segundo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~0_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(0));

-- Location: DDIOOUTCELL_X21_Y29_N11
\segundo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(1));

-- Location: DDIOOUTCELL_X23_Y29_N4
\segundo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~1_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(2));

-- Location: DDIOOUTCELL_X23_Y29_N25
\segundo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~2_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(3));

-- Location: DDIOOUTCELL_X23_Y29_N32
\segundo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~3_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(4));

-- Location: LCCOMB_X27_Y28_N4
\segundo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segundo~4_combout\ = (\Add2~10_combout\ & ((!\Equal2~4_combout\) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~4_combout\,
	datad => \Add2~10_combout\,
	combout => \segundo~4_combout\);

-- Location: DDIOOUTCELL_X28_Y29_N18
\segundo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \segundo~4_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(5));

-- Location: DDIOOUTCELL_X26_Y29_N25
\segundo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(6));

-- Location: DDIOOUTCELL_X26_Y29_N32
\segundo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => segundo(7));

-- Location: LCCOMB_X28_Y28_N12
\centesima~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \centesima~0_combout\ = (\Add1~0_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal1~9_combout\,
	combout => \centesima~0_combout\);

-- Location: DDIOOUTCELL_X21_Y29_N25
\centesima[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(0));

-- Location: DDIOOUTCELL_X21_Y29_N32
\centesima[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(1));

-- Location: DDIOOUTCELL_X26_Y29_N4
\centesima[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(2));

-- Location: DDIOOUTCELL_X28_Y29_N32
\centesima[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(3));

-- Location: DDIOOUTCELL_X26_Y29_N11
\centesima[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(4));

-- Location: DDIOOUTCELL_X28_Y29_N25
\centesima[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(5));

-- Location: DDIOOUTCELL_X26_Y29_N18
\centesima[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \centesima~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(6));

-- Location: DDIOOUTCELL_X23_Y29_N11
\centesima[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_10~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centesima(7));

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

-- Location: DDIOOUTCELL_X0_Y13_N18
CLOCK_10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_10~q\);

-- Location: IOIBUF_X5_Y29_N15
\SW0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\SW1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\KEY1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\KEY2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_clk_out <= \clk_out~output_o\;
END structure;


